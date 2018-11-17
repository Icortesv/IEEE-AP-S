
/* OPL Test Application
 *
 * This application is intended to be used with the DMA Proxy device driver.
 * It shows how to use the device driver to do user space DMA operations.
 *
 * It has been tested with an AXI DMA system with an operational IP between transmit and receive.
 * The device driver implements a read and a write function in order to receive data from the
 * DMA and transmit data to the DMA respectively.
 *
 * Extra: implement ioctl() function in order to have information about the channels or control them.
 */

#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <pthread.h>
#include <errno.h>

#include <stdlib.h>
#include <string.h>

//****** GPIO: DEFINE ******//
// DEFINE PIN NUMBER
#define I2C_CONTROL_IN 999
#define I2C_CONTROL_OUT 991

// DEFINE GPIOCHIP SIZE (ngpio)
#define SIZE_I2C_CONTROL_IN 25
#define SIZE_I2C_CONTROL_OUT 8

// DEFINE VALUES
#define WRITE_ENABLE 0x00 //0xff
#define READ_ENABLE 0x01 // 0x8ff
#define START_I2C  0x01
//#define ENABLE_REFSYM 0x8FF // 0x8ff
//#define ENABLE_NXTCIF 0x20FF // 0x20ff
//#define ENABLE_FICAVAILABLE 0x10FF // 0x10ff

//DEFINE SHIFTS
#define SHIFT_ENABLE_I2C 24
#define SHIFT_ADDRESS 8
#define SHIFT_ENABLE_RD_WR_N 23
//DEFINE MASKS
#define MASK_ENABLE_I2C 0x1000000
#define MASK_RD_WR_N 0x800000
#define MASK_ADDRESS 0x7FFF00
#define MASK_VALUE 0xFF
// DEFINE PATHS
#define EXPORT_PATH "/sys/class/gpio/export"
#define INIT_PATH "/sys/class/gpio/gpio"
#define DIRECTION_PATH "/direction"
#define VALUE_PATH "/value"


int set_multi_export (int base, int size);
int set_multi_direction (int base, int size, char direction[]);
int set_multi_value(int base, int size, int value);
static int get_gpio_value(int base, int size);
//int welcome_menu(void);
int gpio_init(void);


/* The following function uses the dma proxy device driver to perform DMA transfers
 * from user space. This app and the driver are tested with a system containing an
 * AXI DMA without scatter gather and with an ip operational block between transmit and receive.
 */
int main(int argc, char *argv[])
{


 	char * address_c;
	char * value_c;
	int address;
	int value;
	int read_value;
	int write_val;

	//GPIO VARIABLES
	int error_value;

	int write_opt=0;
	int read_opt=0;


	//AUX VARIABLES
	int ret;
	int arg;

	ret = gpio_init();
	if (ret<0) exit(1);

	for(arg=1; arg<argc; arg++){
		if(argv[arg][0]=='-'){
			//COMMAND TABLE
			switch (argv[arg][1]){
			// ADDRESS REGISTER IN OPL
			case 'a':
				address_c = argv[arg+1];
				address = strtoul(address_c,NULL,16);
				//printf("%08x\n",address);
				arg = arg+1;
				break;
			//WRITE VALUE IN REGISTER
			case 'w':
				value_c = argv[arg+1];
				value = strtoul(value_c,NULL,16);
				write_opt =1;
				arg = arg+1;
				break;
			//READ VALUE OF REGISTER
			case 'r':
				read_opt = 1;
				arg = arg+1;
				break;
			default:
				printf("Unexpected command %s\n", argv[arg]);
				break;
			}
		}
		else
			printf("Unexpected command %s\n", argv[arg]);
	}


	error_value = set_multi_value(I2C_CONTROL_IN,SIZE_I2C_CONTROL_IN,0x00);
	if (error_value)
	exit(1);

	if (write_opt == 1){
		// poner lo del shif
		write_val = ((START_I2C<<SHIFT_ENABLE_I2C)& MASK_ENABLE_I2C) | ((WRITE_ENABLE<<SHIFT_ENABLE_RD_WR_N)& MASK_RD_WR_N) | ((address << SHIFT_ADDRESS) & MASK_ADDRESS) | (value & MASK_VALUE);
		//printf("write value = %08x\n", write_val);
		error_value = set_multi_value(I2C_CONTROL_IN,SIZE_I2C_CONTROL_IN,write_val);//0x10300FF
		if (error_value)
		exit(1);
		printf("The value has been written!\n");
	}
	else if(read_opt ==1){
		write_val = ((START_I2C<<SHIFT_ENABLE_I2C) & MASK_ENABLE_I2C) | ((READ_ENABLE<<SHIFT_ENABLE_RD_WR_N)& MASK_RD_WR_N) | ((address << SHIFT_ADDRESS) & MASK_ADDRESS);
		//printf("write value = %08x\n", write_val);
		error_value = set_multi_value(I2C_CONTROL_IN,SIZE_I2C_CONTROL_IN,write_val);
		if (error_value)
		exit(1);
		printf("Reading value...\n");
		read_value=get_gpio_value(I2C_CONTROL_OUT,SIZE_I2C_CONTROL_OUT);
		printf("Value= %02x\n",read_value);
	}




	printf("FINISHED, See you!\n");
	return 0;
}


int set_multi_export(int base, int size){
	int exportfd, i;
	char strn[12];
	exportfd = open(EXPORT_PATH, O_WRONLY);
	if (exportfd <0)
	{
		printf("Cannot open GPIO to export it\n");
		return 1;
	}

	for(i=0;i<size;i++){
		sprintf(strn,"%d",i+base);
		write(exportfd, strn, (strlen(strn)+1));
	}

	close(exportfd);
	return 0;
}

int set_multi_direction(int base, int size, char direction[]){
	int directionfd, i;
	char str[80];
	char strn[12];

	for (i=0;i<size;i++){
		sprintf(strn,"%d", i+base);
		strcpy(str,INIT_PATH);
		strcat(str,strn);
		strcat(str,DIRECTION_PATH);
		directionfd = open(str,O_RDWR);
		if(directionfd<0)
		{
			printf("Cannot open GPIO direction \n");
			return 1;
			//break;
		}
		write(directionfd, direction, (strlen(direction)+1));
		close(directionfd);
	}

	return 0;
}

int set_multi_value(int base, int size, int value){
	// if the mask doesn't have the same size as "size", return 1.

	int valuefd, c;
	char str[80];
	char strn[12];
	char val_str[2];
	int gpio_max;
	gpio_max = base + size;
	for(c = base; c < gpio_max; c++){
			//printf("mask %c \n", mask[i]);
			//printf("pin %d \n",  c);
			sprintf(strn,"%d", c);
			strcpy(str,INIT_PATH);
			strcat(str,strn);
			strcat(str,VALUE_PATH);
			valuefd = open(str,O_RDWR);
			if(valuefd<0)
			{
				printf("Cannot open GPIO value \n");
				return 1;
			}
			sprintf(val_str,"%d", (value & 1));
			write(valuefd, val_str,2);
			close(valuefd);
			value >>= 1;
		}
	return 0;
}


static int get_gpio_value(int base, int size)
{
	char gpio_val_file[128];
	int val_fd=0;
	int gpio_max;
	char val_str[2];
	char *cptr;
	int value = 0;
	int c;

	gpio_max = base + size;

	for(c = gpio_max-1; c >= base; c--) {
		sprintf(gpio_val_file, "/sys/class/gpio/gpio%d/value",c);
		val_fd=open(gpio_val_file, O_RDWR);
		if (val_fd < 0) {
			fprintf(stderr, "Cannot open GPIO to export %d\n", c);
			return -1;
		}
		read(val_fd, val_str, sizeof(val_str));
		value <<= 1;
		value += (int)strtoul(val_str, &cptr, 0);
		close(val_fd);
	}
	return value;
}

//***************** GPIO INITIALIZATION *****************//
int gpio_init(void){

	// GPIO VARIABLES
	int error_export, error_direction;

	// I2C_CONTROL IN/OUT EXPORT
	error_export = set_multi_export (I2C_CONTROL_IN, SIZE_I2C_CONTROL_IN);
	if (error_export)
	exit(1);

	error_export = set_multi_export (I2C_CONTROL_OUT, SIZE_I2C_CONTROL_OUT);
	if (error_export)
	exit(1);

	// SET DIRECTION OUT I2C_CONTROL_IN
	error_direction = set_multi_direction(I2C_CONTROL_IN, SIZE_I2C_CONTROL_IN, "out");
	if (error_direction)
	exit(1);

	printf("OPL GPIO initialized \n");
	return 0;

}
