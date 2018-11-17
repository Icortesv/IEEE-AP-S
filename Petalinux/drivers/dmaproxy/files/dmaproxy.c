// Copyright (c) 2014, John Linn
// Copyright (c) 2016, Alexandre Schnegg
//
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this
//   list of conditions and the following disclaimer.
// 2. Redistributions in binary form must reproduce the above copyright notice,
//   this list of conditions and the following disclaimer in the documentation
//   and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
// ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
// ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#include <linux/dmaengine.h>
#include <linux/module.h>
#include <linux/version.h>
#include <linux/kernel.h>
#include <linux/dma-mapping.h>
#include <linux/slab.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/fs.h>
#include <linux/workqueue.h>
#include <linux/of_dma.h>
#include <linux/platform_device.h>
#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/of_irq.h>


#define CACHED_BUFFERS
// #define INTERNAL_TEST

/* This header file is shared between the DMA Proxy test application and the DMA Proxy device driver. It defines the
 * shared interface to allow DMA transfers to be done from user space.
 *
 * Note: the buffer in the data structure should be 1st in the channel interface so that the buffer is cached aligned,
 * otherwise there may be issues when using cached memory. The issues were typically the 1st 32 bytes of the buffer
 * not working in the driver test.
 */



#define TEST_SIZE (30000)

struct dma_proxy_channel_interface {
	unsigned char buffer[TEST_SIZE];
	enum proxy_status { PROXY_NO_ERROR = 0, PROXY_BUSY = 1, PROXY_TIMEOUT = 2, PROXY_ERROR = 3 } status;
	unsigned int length;
};

/* The following module parameter controls where the allocated interface memory area is cached or not
 * such that both can be illustrated.  Add cached_buffers=1 to the command line insert of the module
 * to cause the allocated memory to be cached.
 */
static unsigned cached_buffers = 0;
module_param(cached_buffers, int, S_IRUGO);

MODULE_LICENSE("GPL");

#define DRIVER_NAME 		"dma_proxy"
#define CHANNEL_COUNT 		2
#define ERROR 			-1
#define NOT_LAST_CHANNEL 	0
#define LAST_CHANNEL 		1

/* The following data structure represents a single channel of DMA, transmit or receive in the case
 * when using AXI DMA.  It contains all the data to be maintained for the channel.
 */
struct dma_proxy_channel {
	struct dma_proxy_channel_interface *interface_p;	/* user to kernel space interface */
	dma_addr_t interface_phys_addr;

	struct device *proxy_device_p;				/* character device support */
	struct device *dma_device_p;
	dev_t dev_node;
	struct cdev cdev;
	struct class *class_p;

	struct dma_chan *channel_p;				/* dma support */
	struct completion cmp;
	dma_cookie_t cookie;
	dma_addr_t dma_handle;
	u32 direction;						/* DMA_MEM_TO_DEV or DMA_DEV_TO_MEM */

	int irq;						/* INTERRUPT */
};

/* Allocate the channels for this example statically rather than dynamically for simplicity.
 */
static struct dma_proxy_channel channels[CHANNEL_COUNT];

/* Handle a callback and indicate the DMA transfer is complete to another
 * thread of control
 */
static void sync_callback(void *completion)
{
	/* Indicate the DMA transaction completed to allow the other
	 * thread of control to finish processing
	 */
	//printk("Callback ");
	complete(completion);
}

/* Prepare a DMA buffer to be used in a DMA transaction, submit it to the DMA engine
 * to queued and return a cookie that can be used to track that status of the
 * transaction
 */
static dma_cookie_t start_transfer(struct dma_proxy_channel *pchannel_p)
{
	enum dma_ctrl_flags flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;
	struct dma_async_tx_descriptor *chan_desc;
	dma_cookie_t cookie;

	struct dma_proxy_channel_interface *interface_p = pchannel_p->interface_p;

	/* Create a buffer (channel)  descriptor for the buffer since only a
	 * single buffer is being used for this transfer
	 */
	chan_desc = dmaengine_prep_slave_single(pchannel_p->channel_p, pchannel_p->dma_handle,interface_p->length,pchannel_p->direction,flags);

	/* Make sure the operation was completed successfully
	 */
	if (!chan_desc) {
		printk(KERN_ERR "dmaengine_prep_slave_single error\n");
		cookie = -EBUSY;
	} else {
		chan_desc->callback = sync_callback;
		chan_desc->callback_param = &pchannel_p->cmp;

		/* Initialize the completion for the transfer and before using it
		 * then submit the transaction to the DMA engine so that it's queued
		 * up to be processed later and get a cookie to track it's status
		 */
		init_completion(&pchannel_p->cmp);
		cookie = dmaengine_submit(chan_desc);

		/* Start the DMA transaction which was previously queued up in the DMA engine
		 */
		dma_async_issue_pending(pchannel_p->channel_p);

		//printk(KERN_INFO "dma_proxy start_transfer function done.\n");
	}
	return cookie;
}

/* Wait for a DMA transfer that was previously submitted to the DMA engine
 * wait for it complete, timeout or have an error
 */
static void wait_for_transfer(struct dma_proxy_channel *pchannel_p)
{
	unsigned long timeout = msecs_to_jiffies(30000);
	enum dma_status status;

	pchannel_p->interface_p->status = PROXY_BUSY;

	/* Wait for the transaction to complete, or timeout, or get an error
	 */
	timeout = wait_for_completion_timeout(&pchannel_p->cmp, timeout);
	status = dma_async_is_tx_complete(pchannel_p->channel_p, pchannel_p->cookie, NULL, NULL);

	if (timeout == 0)  {
		pchannel_p->interface_p->status  = PROXY_TIMEOUT;
		printk(KERN_ERR "DMA timed out\n");
	} else if (status != DMA_COMPLETE) {
		pchannel_p->interface_p->status = PROXY_ERROR;
		printk(KERN_ERR "DMA returned completion callback status of: %s\n",status == DMA_ERROR ? "error" : "in progress");
	} else{
		pchannel_p->interface_p->status = PROXY_NO_ERROR;
		//printk(KERN_INFO "NO ERROR\n");
	}
	//printk(KERN_INFO "wait_for_transfer done.\n");
	if (cached_buffers) {

		/* Cached buffers need to be unmapped after the transfer is done so that the CPU
		 * can see the new data when being received. This is done in this function to
		 * allow this function to be called from another thread of control also (non-blocking).
		 */
		u32 map_direction;
		if (pchannel_p->direction == DMA_MEM_TO_DEV)
			map_direction = DMA_TO_DEVICE;
		else
			map_direction = DMA_FROM_DEVICE;

		dma_unmap_single(pchannel_p->dma_device_p, pchannel_p->dma_handle,pchannel_p->interface_p->length,map_direction);
	}
}

/* For debug only, print out the channel details
 */
void print_channel(struct dma_proxy_channel *pchannel_p)
{
	struct dma_proxy_channel_interface *interface_p = pchannel_p->interface_p;

	printk("length = %d ", interface_p->length);
	if (pchannel_p->direction == DMA_MEM_TO_DEV)
		printk("tx direction ");
	else
		printk("rx direction ");
}

/* Setup the DMA transfer for the channel by taking care of any cache operations
 * and the start it.
 */
static void transfer(struct dma_proxy_channel *pchannel_p)
{
	struct dma_proxy_channel_interface *interface_p = pchannel_p->interface_p;
	u32 map_direction;

	//print_channel(pchannel_p);

	if (cached_buffers) {

		/* Cached buffers need to be handled before starting the transfer so that
		 * any cached data is pushed to memory.
		 */
		if (pchannel_p->direction == DMA_MEM_TO_DEV)
			map_direction = DMA_TO_DEVICE;
		else
			map_direction = DMA_FROM_DEVICE;
		pchannel_p->dma_handle = dma_map_single(pchannel_p->dma_device_p,interface_p->buffer,interface_p->length,map_direction);
	} else {

		/* The physical address of the buffer in the interface is needed for the dma transfer
		 * as the buffer may not be the first data in the interface
		 */
		u32 offset = (u32)&interface_p->buffer - (u32)interface_p;
		pchannel_p->dma_handle = (dma_addr_t)(pchannel_p->interface_phys_addr + offset);
	}

	/* Start the DMA transfer and make sure there were not any errors
	 */
	//printk(KERN_INFO "Starting DMA transfers\n");
	pchannel_p->cookie = start_transfer(pchannel_p);

	if (dma_submit_error(pchannel_p->cookie)) {
		printk(KERN_ERR "xdma_prep_buffer error\n");
		return;
	}

	wait_for_transfer(pchannel_p);
}

/* The following functions are designed to test the driver from within the device
 * driver without any user space.
 */
//#ifdef INTERNAL_TEST
static void tx_test(struct work_struct *unused)
{
	transfer(&channels[0]);
}
static void test(void)
{
	printk(KERN_INFO "TEST INIT.\n");
	/*int p;
	u32 num = 24;
	u32 num2 = 32;
	u32 x,y,x2,y2;
	const int test_size = TEST_SIZE;
	struct work_struct work;*/

	int i;
	const int test_size_rx = 96;
	const int test_size_tx = 2400;
	int packet_count = 25;
	struct work_struct work;

	/* Initialize the transmit buffer with a pattern and then start
	 * the seperate thread of control to handle the transmit transfer
	 * since the functions block waiting for the transfer to complete.
	 */
	/*for (p = 0; p < 4; p++){
		channels[0].interface_p->buffer[p] = (num>>24-(8*p)) & 0xFF;
		//channels[0].interface_p->buffer[p+4] = (num2>>24-(8*p)) & 0xFF;
	}

	channels[0].interface_p->length = test_size;

	INIT_WORK(&work, tx_test);
	schedule_work(&work);*/

	/* Initialize the receive buffer with zeroes so that we can be sure
	 * the transfer worked, then start the receive transfer.
	 */
	/*for (p = 0; p < test_size; p++)
		channels[1].interface_p->buffer[p] = 0;

	channels[1].interface_p->length = test_size;
	printk(KERN_INFO "TRANSFER BEGIN.\n");
	transfer(&channels[1]);*/
	//sleep(1);

	/* Verify the receiver buffer matches the transmit buffer to
	 * verify the transfer was good
	 */
	/*for (p = 0; p < 4; p++){
		x |= channels[0].interface_p->buffer[p]<<24-8*p; 
		//x2 |= channels[0].interface_p->buffer[p+4]<<24-8*p;
		//printk("TX (%d)= %d\n", p, channels[0].interface_p->buffer[p]);
	}

	for (p = 0; p < 4; p++){
		y |= channels[1].interface_p->buffer[p]<<24-8*p;
		//y2 |= channels[1].interface_p->buffer[p+4]<<24-8*p;
		//printk("RX (%d)= %d\n", p, channels[1].interface_p->buffer[p]);
	}

	printk ("TX_1 = %d , RX_1 = %d\n", x,y);
	//printk ("TX_2 = %d , RX_2 = %d\n", x2,y2);*/

	/* Initialize the transmit buffer with a pattern and then start
	 * the seperate thread of control to handle the transmit transfer
	 * since the functions block waiting for the transfer to complete.
	 */
	for (i = 0; i < test_size_tx; i++)
		channels[0].interface_p->buffer[i] = 127;

		
	channels[0].interface_p->length = test_size_tx;
		//INIT_WORK(&work, tx_test);
		//schedule_work(&work);

	transfer(&channels[0]);
	/* Initialize the receive buffer with zeroes so that we can be sure
	 * the transfer worked, then start the receive transfer.
	 */
	for (i = 0; i < test_size_rx; i++)
		channels[1].interface_p->buffer[i] = 0;

	channels[1].interface_p->length = test_size_rx;
	transfer(&channels[1]);

	/* Verify the receiver buffer matches the transmit buffer to
	 * verify the transfer was good
	 */
	for (i = 0; i < test_size_tx; i++)
			printk("index = %d, TX =%d\n", i, channels[0].interface_p->buffer[i]);

	for (i = 0; i < test_size_rx; i++)
			printk("index = %d, RX=%d\n", i, channels[1].interface_p->buffer[i]);

}
//#endif


static irqreturn_t dmaproxy_irq(int irq, struct dma_proxy_channel *pchannel_p)
{
	printk("dmaproxy interrupt\n");
	return IRQ_HANDLED;
}


/* Map the memory for the channel interface into user space such that user space can
 * access it taking into account if the memory is not cached.
 */
static int mmap(struct file *file_p, struct vm_area_struct *vma)
{
	struct dma_proxy_channel *pchannel_p = (struct dma_proxy_channel *)file_p->private_data;

	/* The virtual address to map into is good, but the page frame will not be good since
	 * user space passes a physical address of 0, so get the physical address of the buffer
	 * that was allocated and convert to a page frame number.
	 */
	if (cached_buffers) {
		if (remap_pfn_range(vma, vma->vm_start,	virt_to_phys((void *)pchannel_p->interface_p)>>PAGE_SHIFT,vma->vm_end - vma->vm_start, vma->vm_page_prot))
			return -EAGAIN;
		return 0;
	} else

		/* Step 3, use the DMA utility to map the DMA memory into space so that the
		 * user space application can use it
		 */
		return dma_mmap_coherent(pchannel_p->dma_device_p, vma,pchannel_p->interface_p, pchannel_p->interface_phys_addr,vma->vm_end - vma->vm_start);
}

/* Open the device file and set up the data pointer to the proxy channel data for the
 * proxy channel such that the ioctl function can access the data structure later.
 */
static int local_open(struct inode *ino, struct file *file)
{
	file->private_data = container_of(ino->i_cdev, struct dma_proxy_channel, cdev);

	return 0;
}

/* Close the file and there's nothing to do for it
 */
static int release(struct inode *ino, struct file *file)
{
	return 0;
}

/* Perform I/O control to start a DMA transfer.
 */
static long ioctl(struct file *file, unsigned int unused , unsigned long arg)
{
	struct dma_proxy_channel *pchannel_p = (struct dma_proxy_channel *)file->private_data;

	dev_dbg(pchannel_p->dma_device_p, "ioctl\n");

	/* Step 2, call the transfer function for the channel to start the DMA and wait
	 * for it to finish (blocking in the function).
	 */
	transfer(pchannel_p);

	return 0;
}
static struct file_operations dm_fops = {
	.owner    = THIS_MODULE,
	.open     = local_open,
	.release  = release,
	.unlocked_ioctl = ioctl,
	.mmap	= mmap
};


/* Initialize the driver to be a character device such that is responds to
 * file operations.
 */
static int cdevice_init(struct dma_proxy_channel *pchannel_p, char *name)
{
	int rc;
	char device_name[32] = "dma_proxy";
	static struct class *local_class_p = NULL;

	/* Allocate a character device from the kernel for this
	 * driver
	 */
	rc = alloc_chrdev_region(&pchannel_p->dev_node, 0, 1, "dma_proxy");

	if (rc) {
		dev_err(pchannel_p->dma_device_p, "unable to get a char device number\n");
		return rc;
	}

	/* Initialize the ter device data structure before
	 * registering the character device with the kernel
	 */
	cdev_init(&pchannel_p->cdev, &dm_fops);
	pchannel_p->cdev.owner = THIS_MODULE;
	rc = cdev_add(&pchannel_p->cdev, pchannel_p->dev_node, 1);

	if (rc) {
		dev_err(pchannel_p->dma_device_p, "unable to add char device\n");
		goto init_error1;
	}

	/* Only one class in sysfs is to be created for multiple channels,
	 * create the device in sysfs which will allow the device node
	 * in /dev to be created
	 */
	if (!local_class_p) {
		local_class_p = class_create(THIS_MODULE, DRIVER_NAME);

		if (IS_ERR(pchannel_p->dma_device_p->class)) {
			dev_err(pchannel_p->dma_device_p, "unable to create class\n");
			rc = ERROR;
			goto init_error2;
		}
	}
	printk(KERN_INFO "CLASS done.\n");
	pchannel_p->class_p = local_class_p;

	/* Create the device node in /dev so the device is accessible
	 * as a character device
	 */
	strcat(device_name, name);
	pchannel_p->proxy_device_p = device_create(pchannel_p->class_p, NULL,pchannel_p->dev_node, NULL, device_name);

	if (IS_ERR(pchannel_p->proxy_device_p)) {
		dev_err(pchannel_p->dma_device_p, "unable to create the device\n");
		goto init_error3;
	}
	printk(KERN_INFO "device driver done.\n");

	return 0;

init_error3:
	class_destroy(pchannel_p->class_p);

init_error2:
	cdev_del(&pchannel_p->cdev);

init_error1:
	unregister_chrdev_region(pchannel_p->dev_node, 1);
	return rc;
}

/* Exit the character device by freeing up the resources that it created and
 * disconnecting itself from the kernel.
 */
static void cdevice_exit(struct dma_proxy_channel *pchannel_p, int last_channel)
{
	/* Take everything down in the reverse order
	 * from how it was created for the char device
	 */
	if (pchannel_p->proxy_device_p) {
		device_destroy(pchannel_p->class_p, pchannel_p->dev_node);
		if (last_channel)
			class_destroy(pchannel_p->class_p);

		cdev_del(&pchannel_p->cdev);
		unregister_chrdev_region(pchannel_p->dev_node, 1);
	}
}

/* Create a DMA channel by getting a DMA channel from the DMA Engine and then setting
 * up the channel as a character device to allow user space control.
 */
static int create_channel(struct dma_proxy_channel *pchannel_p, char *name, u32 direction,struct platform_device *pdev,char *channelName)
{
	int rc;
	dma_cap_mask_t mask;
	struct resource r_irq; /* Interrupt resources */

	int r_irq_1;

	/* Zero out the capability mask then initialize it for a slave channel that is
	 * private.
	 */
	dma_cap_zero(mask);
	dma_cap_set(DMA_SLAVE | DMA_PRIVATE, mask);

	/* Request the DMA channel from the DMA engine and then use the device from
	 * the channel for the proxy channel also.
	 */
	pchannel_p->channel_p = dma_request_slave_channel(&pdev->dev, channelName);
	//pchannel_p->channel_p = dma_request_channel(mask, NULL, NULL);
	if (!pchannel_p->channel_p) {
		dev_err(pchannel_p->dma_device_p, "DMA channel request error\n");
		return ERROR;
	}
	printk(KERN_INFO "channel achieved.\n");
	pchannel_p->dma_device_p = &pchannel_p->channel_p->dev->device;

	/* Initialize the character device for the dma proxy channel
	 */
	rc = cdevice_init(pchannel_p, name);
	if (rc) {
		return rc;
	}

	pchannel_p->direction = direction;



	/* Get IRQ for the device */
	//r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
	//r_irq_1 = of_irq_to_resource(pchannel_p->dma_device_p->of_node,0,&r_irq);

	//printk("interrupt: %d\n", r_irq_1);

	//if (!r_irq_1) {
	//	dev_info(&pdev->dev, "no IRQ found\n");
		//dev_info(dev, "simpmod at 0x%08x mapped to 0x%08x\n",
		//	(unsigned int __force)lp->mem_start,
		//	(unsigned int __force)lp->base_addr);
		//return 0;
	//}

	//pchannel_p->irq = r_irq->start;
	//rc = request_irq(r_irq_1, dmaproxy_irq, 0, DRIVER_NAME, pchannel_p);
	//if (rc) {
	//	dev_err(&pdev->dev, "testmodule: Could not allocate interrupt %d.\n",
	//		pchannel_p->irq);
	//	goto error1;
	//}


	//dev_info(&pdev->dev,"dmaproxy  irq=%d\n", pchannel_p->irq);




	/* Allocate memory for the proxy channel interface for the channel as either
	 * cached or non-cache depending on input parameter. Use the managed
	 * device memory when possible but right now there's a bug that's not understood
	 * when using devm_kzalloc rather than kzalloc, so stay with kzalloc.
	 */
	if (cached_buffers) {
		pchannel_p->interface_p = (struct dma_proxy_channel_interface *)kzalloc(sizeof(struct dma_proxy_channel_interface),GFP_KERNEL);
		printk(KERN_INFO "Allocating cached memory at 0x%08X\n",(unsigned int)pchannel_p->interface_p);
	} else {

		/* Step 1, set dma memory allocation for the channel so that all of memory
		 * is available for allocation, and then allocate the uncached memory (DMA)
		 * for the channel interface
		 */
		dma_set_coherent_mask(pchannel_p->proxy_device_p, 0xFFFFFFFF);
		pchannel_p->interface_p = (struct dma_proxy_channel_interface *)dma_alloc_coherent(pchannel_p->proxy_device_p,	sizeof(struct dma_proxy_channel_interface),&pchannel_p->interface_phys_addr, GFP_KERNEL);
		printk(KERN_INFO "Allocating uncached memory at 0x%08X\n",(unsigned int)pchannel_p->interface_p);
	}
	if (!pchannel_p->interface_p) {
		dev_err(pchannel_p->dma_device_p, "DMA allocation error\n");
		return ERROR;
	}

error1: 
	free_irq(pchannel_p->irq, pchannel_p);

	return 0;

}

/* Initialize the dma proxy device driver module.
 */
static int dma_proxy_probe(struct platform_device *pdev)
{
	int rc;

	printk(KERN_INFO "dma_proxy module initialized\n");

	/* Create 2 channels, the first is a transmit channel
	 * the second is the receive channel.
	 */
	printk(KERN_INFO "TX channel.\n");
	rc = create_channel(&channels[0], "_tx", DMA_MEM_TO_DEV,pdev,"axidma0");
	if (rc) {
		return rc;
	}
	//rc = request_irq(61, dmaproxy_irq, 0, DRIVER_NAME, &channels[0]);


	printk(KERN_INFO "RX channel.\n");
	rc = create_channel(&channels[1], "_rx", DMA_DEV_TO_MEM,pdev,"axidma1");
	if (rc) {
		return rc;
	}
	//rc = request_irq(62, dmaproxy_irq, 0, DRIVER_NAME, &channels[1]);
//#ifdef INTERNAL_TEST
//printk(KERN_INFO "TEST:\n");
	//test();
//#endif

	return 0;
}

/* Exit the dma proxy device driver module.
 */
static int dma_proxy_remove(struct platform_device *pdev)
{
	int i;

	printk(KERN_INFO "dma_proxy module exited\n");

	/* Take care of the char device infrastructure for each
	 * channel except for the last channel. Handle the last
	 * channel seperately.
	 */
	for (i = 0; i < CHANNEL_COUNT - 1; i++) {
		if (channels[i].proxy_device_p)
			cdevice_exit(&channels[i], NOT_LAST_CHANNEL);
	}
	cdevice_exit(&channels[i], LAST_CHANNEL);

	/* Take care of the DMA channels and the any buffers allocated
	 * for the DMA transfers. The DMA buffers are using managed
	 * memory such that it's automatically done.
	 */
	for (i = 0; i < CHANNEL_COUNT; i++) {
		if (channels[i].channel_p)
			dma_release_channel(channels[i].channel_p);

		if (channels[i].interface_p && cached_buffers)
			kfree((void *)channels[i].interface_p);
	}

	free_irq(channels[0].irq, &channels[0]);

	free_irq(channels[1].irq, &channels[1]);

	return 0;
}

static const struct of_device_id xilinx_axidmatest_of_ids[] = {
	{ .compatible = "xlnx,axi-dma-test-1.00.a",},
	{}
};

static struct platform_driver xilinx_axidmatest_driver = {
	.driver = {
		.name = "dma_proxy",
		.owner = THIS_MODULE,
		.of_match_table = xilinx_axidmatest_of_ids,
	},
	.probe = dma_proxy_probe,
	.remove = dma_proxy_remove,
};


static int __init dma_proxy_init(void)
{
	return platform_driver_register(&xilinx_axidmatest_driver);

}

static void __exit dma_proxy_exit(void)
{
	platform_driver_unregister(&xilinx_axidmatest_driver);
}

late_initcall(dma_proxy_init);
module_exit(dma_proxy_exit);
MODULE_LICENSE("GPL");

