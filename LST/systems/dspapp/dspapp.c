/***************************** 		 dactest	  ****************************
									Copyright 2018
								Telekom IEEE AP-S Contest
								   All rights reserved
   Author(s):   Inigo Cortes, Fatima Villa and Alvaro Urain
   Description:
   This software and/or program is protected by copyright law and international
   treaties. Any reproduction or distribution of this software and/or program,
   or any portion of it, may result in severe civil and criminal penalties, and
   will be prosecuted to the maximum extent possible under law.
******************************************************************************/

////////////////////////////////////////////////////
// 			HEADERS
////////////////////////////////////////////////////
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <pthread.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

#include "funcDsp.h"
#include "funcDebug.h"
#include "adcMapping.h"
#include "gpioFuncs.h"
#include "energyCalc.h"

////////////////////////////////////////////////////
// elementary data types
////////////////////////////////////////////////////
typedef unsigned char      tBool;
typedef unsigned char      tUInt8;
typedef signed char        tInt8;
typedef unsigned short     tUInt16;
typedef signed short       tInt16;
typedef unsigned int       tUInt32;
typedef signed int         tInt32;
typedef unsigned long long tUInt64;
typedef signed long long   tInt64;


//****** GPIO: DEFINE ******//
// DEFINE PIN NUMBER
#define ADC_CONTROL 901 // 41210000
#define ANTENNA_CONTROL 902 // 41200000

// DEFINE GPIOCHIP SIZE (ngpio)
#define SIZE_ADC_CONTROL_GPIO 1
#define SIZE_ANTENNA_CONTROL_GPIO 4

// DEFINE VALUES
#define ADC_ENABLE_VALUE 1
#define ADC_DISABLE_VALUE 0
//#define ANTENNA_ENABLE_VALUE 1
//#define ANTENNA_DISABLE_VALUE 0
#define ENABLE "on"
#define YES 1

#define THRESHOLD_CORR 250

// 5 sequences are received
#define TRANSFER_NUM 5
// Repeating 5 times for each antenna
#define ITER_ANT 10 

// DEFINE SEQUENCE PARAMETERS
#define PN9_SIZE 511
#define RUPSAMP 12

// DEFINE CONTROL SEQUENCE 
#define ANTENNA_SELECTION 1 
#define START_TRANSFER 2 
#define WAIT_FOR_TRANSFER 3 
#define AQUISITION_DISABLE 4 
#define CONTINUE 5

// DEFINE ANTENNA DIRECTIVITIES 
#define DIRECTIVITY_1 0x07 //0111
#define DIRECTIVITY_2 0x0E //1110
#define DIRECTIVITY_3 0x0D //1101
#define DIRECTIVITY_4 0x0B //1011 

int gpio_init(void);

//****** DAB: DEFINE ******//
// Maximum buffer size of RX and TX channels (size of bytes)
#define BUFFER_SIZE 24528
// Buffer size of TX channel
#define MESSAGE_SIZE_RX 24528


// structure of the dma_proxy_channel_interface: the same structure as the dma_channel interface in the dmaproxy device driver. 
struct dma_proxy_channel_interface {
	tUInt8 buffer[BUFFER_SIZE];
	enum proxy_status { PROXY_NO_ERROR = 0, PROXY_BUSY = 1, PROXY_TIMEOUT = 2, PROXY_ERROR = 3 } status;
	tUInt32 length;
	volatile unsigned busy;
};


// RX interface
static struct dma_proxy_channel_interface *rx_interface;
static int rx_fd;

//Received sequence 
static unsigned char pn_sequences[TRANSFER_NUM][BUFFER_SIZE];

// Received data (upsampled)
static double rx_I[PN9_SIZE * RUPSAMP];
static double rx_Q[PN9_SIZE * RUPSAMP];

static double energyI[TRANSFER_NUM]; 
static double energyQ[TRANSFER_NUM];
static double energyABS[TRANSFER_NUM];

// This thread reads data from the AXI DMA 
void* rx_thread()
{	
    int i;
    int p = 0; 
    int dummy;
    // Set rx bufer to null
    for (i = 0; i < MESSAGE_SIZE_RX; i++)
        rx_interface->buffer[i] = 0;

    // Read the data from the DMA TRANSFER_NUM times
    while (p < TRANSFER_NUM) {
        // Read data 
        ioctl(rx_fd, 0, &dummy);
        // If the rx transfer is correct, continue. if not, finish here.
        if (rx_interface->status != PROXY_NO_ERROR){
            fprintf(stderr, "Proxy rx transfer timeout\n");
            break;
        }
        memcpy(pn_sequences[p], rx_interface->buffer, BUFFER_SIZE);  		
        p = p + 1;
    }
    // Close the thread
    pthread_exit(NULL);
    return 0;
}

int main(int argc, char** argv)
{	
    // RX THREAD 
    pthread_t rid;
    
    int i = 0;
    int k = 0; 
    
    //double sineWave[6]   = {1, 0.5, -0.5, -1, -0.5, 0.5};
    //double cosineWave[6] = {0, 0.86603, 0.86603, 5.6655e-16, -0.86603, -0.86603};
    
    //double rx_I_bb[PN9_SIZE * RUPSAMP] = {0};
    //double rx_Q_bb[PN9_SIZE * RUPSAMP] = {0};
    
    double compare_energies_I [SIZE_ANTENNA_CONTROL_GPIO]  = {0};
    double compare_energies_Q [SIZE_ANTENNA_CONTROL_GPIO]  = {0};
    double compare_energies_ABS[SIZE_ANTENNA_CONTROL_GPIO] = {0};
    double average_energy_Q [SIZE_ANTENNA_CONTROL_GPIO]    = {0};
    double average_energy_I [SIZE_ANTENNA_CONTROL_GPIO]    = {0};
    //double rx_I_bb_cor[PN9_SIZE * RUPSAMP] = { 0 };
    //double rx_Q_bb_cor[PN9_SIZE * RUPSAMP] = { 0 };
    
    
    /* Step 1, open the DMA proxy device for the transmit and receive channels with
     * read/write permissions
     */
    rx_fd = open("/dev/dma_proxy_rx", O_RDWR);
    if (rx_fd < 1) {
    	fprintf(stderr, "Unable to open DMA proxy device file");
    	return -1;
    }
    
    /* Step 2, map the transmit and receive channels memory into user space so it's accessible
     */
    rx_interface = (struct dma_proxy_channel_interface *)mmap(0, sizeof(struct dma_proxy_channel_interface), PROT_READ | PROT_WRITE, MAP_SHARED, rx_fd, 0);
    if ((rx_interface == MAP_FAILED)) {
    	fprintf(stderr, "Failed to mmap\n");
    	return -1;
    }
    
    //AUX VARIABLES
    int ret;
    // Continue or not variable
    char yes_no;
    int option = ANTENNA_SELECTION; //switch variable
    //GPIO VARIABLES
    int errorValue;
    
    //double maxValue_I = 0; 
    //double maxValue_Q = 0; 
    // Variable to detect the position of the maximum value of the correlation and do the time offset correction
    //int posCorr = 0;
    // Real part of the original sequence (original length, upsampled, freq. domain)
    //double  pn9[PN9_SIZE] = { 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, 1, -1, -1, -1, 1, 1, -1, -1, 1, -1, -1, -1, 1, 1, 1, -1, 1, -1, 1, -1, 1, 1, -1, 1, 1, -1, -1, -1, 1, 1, 1, -1, -1, -1, 1, -1, -1, 1, -1, 1, -1, 1, -1, -1, -1, 1, 1, -1, 1, 1, -1, -1, 1, 1, 1, 1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, 1, -1, 1, 1, -1, 1, 1, 1, -1, -1, 1, -1, 1, -1, -1, 1, -1, -1, -1, -1, -1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, 1, 1, 1, 1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, 1, 1, 1, -1, -1, -1, -1, 1, -1, 1, 1, -1, -1, 1, 1, -1, 1, 1, -1, 1, 1, 1, 1, -1, 1, -1, -1, -1, -1, 1, 1, 1, -1, -1, 1, 1, -1, -1, -1, -1, 1, -1, -1, 1, -1, -1, -1, 1, -1, 1, -1, 1, 1, 1, -1, 1, -1, 1, 1, 1, 1, -1, -1, 1, -1, -1, 1, -1, 1, 1, 1, -1, -1, 1, 1, 1, -1, -1, -1, -1, -1, -1, 1, 1, 1, -1, 1, 1, 1, -1, 1, -1, -1, 1, 1, 1, 1, -1, 1, -1, 1, -1, -1, 1, -1, 1, -1, -1, -1, -1, -1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, 1, 1, 1, 1, -1, 1, -1, 1, 1, -1, 1, -1, -1, -1, -1, -1, 1, 1, -1, 1, 1, 1, -1, 1, 1, -1, 1, 1, -1, 1, -1, 1, 1, -1, -1, -1, -1, -1, 1, -1, 1, 1, 1, -1, 1, 1, 1, 1, 1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, 1, -1, 1, -1, -1, 1, 1, -1, 1, -1, 1, 1, 1, -1, -1, -1, 1, 1, -1, 1, -1, -1, -1, 1, -1, 1, 1, 1, 1, 1, 1, 1, -1, 1, -1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, 1, -1, -1, 1, 1, -1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, -1, 1, -1, 1, 1, -1, -1, 1, -1, -1, 1, 1, 1, 1, 1, 1, -1, 1, 1, -1, 1, -1, -1, 1, -1, -1, 1, -1, -1, 1, 1, -1, 1, 1, 1, 1, 1, 1, -1, -1, 1, -1, 1, 1, -1, 1, -1, 1, -1, -1, -1, -1, 1, -1, 1, -1, -1, -1, 1, -1, -1, 1, 1, 1, -1, 1, 1, -1, -1, 1, -1, 1, 1, 1, 1, -1, 1, 1, -1, -1, -1, -1, 1, 1, -1, 1, -1, 1, -1, 1, -1, -1, 1, 1, 1, -1, -1, 1, -1, -1, -1, -1, 1, 1, -1, -1, -1, 1, -1, -1, -1, -1, 0 };
    //double pnSeqSynchro [PN9_SIZE*RUPSAMP] = { 0 };
    
    // Antenna Direction 
    int direction=1;
    int iteration_same_antenna = 0; 
    int finished = 0; 
    
    double max_average_I = 0; 
    int max_index_I = 0;
    double max_average_Q = 0; 
    int max_index_Q = 0;	
    
    // Set the rx buffer to null
    for (i = 0; i < MESSAGE_SIZE_RX; i++)
    rx_interface->buffer[i] = 0;
    
    ret = gpio_init();
    if (ret<0) exit(1);
    
    // Set lengths of the data transfer for rx and tx
    rx_interface->length = MESSAGE_SIZE_RX;

    while (1) {
        switch (option) {
	    case ANTENNA_SELECTION:
                //printf("Antenna Selection: Direction %d \n", direction);
                if (direction == 1) {
                	errorValue = set_multi_value(ANTENNA_CONTROL,SIZE_ANTENNA_CONTROL_GPIO,DIRECTIVITY_1);
                	if (errorValue)
                	exit(1);
                }
                else if (direction == 2) {
                	errorValue = set_multi_value(ANTENNA_CONTROL,SIZE_ANTENNA_CONTROL_GPIO,DIRECTIVITY_2);
                	if (errorValue)
                	exit(1);
                }
                else if (direction == 3) {
                	errorValue = set_multi_value(ANTENNA_CONTROL,SIZE_ANTENNA_CONTROL_GPIO,DIRECTIVITY_3);
                	if (errorValue)
                	exit(1);	
                }
                else if (direction == 4) {
                	errorValue = set_multi_value(ANTENNA_CONTROL,SIZE_ANTENNA_CONTROL_GPIO,DIRECTIVITY_4);
                	if (errorValue)
                	exit(1);
                }
                option = START_TRANSFER;
                break;
            case START_TRANSFER:
                pthread_create(&rid, NULL, rx_thread, NULL);
                printf("Starting transfer: %d \n", direction);
                // Enable ADC and receive the data
                errorValue = set_multi_value(ADC_CONTROL,SIZE_ADC_CONTROL_GPIO,ADC_ENABLE_VALUE);
                if (errorValue)
                exit(1);
                option = WAIT_FOR_TRANSFER;
                break; 
            case WAIT_FOR_TRANSFER: 
                // Waiting to finish the thread. LOCKED
                if(pthread_join(rid,NULL)) {
                	fprintf(stderr, "Error Joining thread \n");
                	return 0;
                }
                printf(" WAITING: Direction %d \n", direction);
                for (k=0;k<TRANSFER_NUM;k++) {
                    // Map the received data from 2nd complement to decimal
                    // Return the In-phase and Quadrature component
		    adcMapping(pn_sequences[k], rx_I, rx_Q);
                    // Downconvert the signal to baseband --> cos(2*pi*f)
                    //for (i = 0; i < PN9_SIZE * RUPSAMP; i++) {
                        //rx_I_bb[i] = rx_I[i] * cos(2 * M_PI * FREQ * i);
                        //rx_Q_bb[i] = rx_Q[i] * cos(2 * M_PI * FREQ * i);
                    //    rx_I_bb[i] = rx_I[i] * cosineWave[i % 6] + rx_Q[i] * sineWave[i % 6];
                    //    rx_Q_bb[i] = rx_Q[i] * cosineWave[i % 6] - rx_I[i] * sineWave[i % 6];
                    //}
                    // Perform the correlation
                    //corr(pnseq,rx_I_bb,rx_I_bb_cor,pnSeqSynchro, &maxValue_I); 
                    //corr(pnseq,rx_Q_bb,rx_Q_bb_cor,pnSeqSynchro, &maxValue_Q); 
                    //printf("test2!\n");
                    //if (maxValue_I > THRESHOLD_CORR){
                    //    energyCalc(rx_I, energyI, k); 
                    //}
                    //else {
                    //	energyI[k]=0; 
                    //}
                    //if (maxValue_Q > THRESHOLD_CORR){
                    //    energyCalc(rx_Q, energyQ, k); 
                    //}
                    //else {
                    //	energyQ[k]=0;
                    //}

                    energyCalcAbs(rx_I, rx_Q, energyABS, k);
                    energyCalc(rx_Q, energyQ, k); 
                    energyCalc(rx_I, energyI, k);
 
                    //Write mapping
                    for(i = 0;i < TRANSFER_NUM; i = i + 1) {
                        compare_energies_I[direction - 1]   = compare_energies_I[direction - 1] + energyI[i];
                        compare_energies_Q[direction - 1]   = compare_energies_Q[direction - 1] + energyQ[i];
                        compare_energies_ABS[direction - 1] = compare_energies_ABS[direction - 1] + energyABS[i];
                    }
                    //Write in files
                    print_info(pn_sequences[k], rx_I, rx_Q, energyI[k], energyQ[k], direction - 1);
                }
                option = AQUISITION_DISABLE;
                break;
            case AQUISITION_DISABLE:
                // Disable ADC
                errorValue = set_multi_value(ADC_CONTROL, SIZE_ADC_CONTROL_GPIO, ADC_DISABLE_VALUE);
                if (errorValue)
                exit(1);
                // Antenna direction is changed
                if (iteration_same_antenna < ITER_ANT) {
                    iteration_same_antenna = iteration_same_antenna + 1; 
                    option = START_TRANSFER;
                }
                else {
                    sleep(1);
                    iteration_same_antenna = 0;
                    if (direction == 4) {
                        direction = 1;
                        option = CONTINUE;					
                    }
                    else {
                        direction = direction + 1;
                        option = START_TRANSFER;
                    }				
                }
                break;
            case CONTINUE: 
                for (i = 0; i < SIZE_ANTENNA_CONTROL_GPIO; i++) {
                    average_energy_I[i] = compare_energies_I[i] / (TRANSFER_NUM * ITER_ANT);
                    average_energy_Q[i] = compare_energies_Q[i] / (TRANSFER_NUM * ITER_ANT);
                    printf("Directivity %d: I -> %f , Q -> %f \n", i, average_energy_I[i], average_energy_Q[i]);
                    if (max_average_I < average_energy_I[i]) {
                        max_average_I =  average_energy_I[i];
                        max_index_I   = i + 1; 
                    }	
                    if (max_average_Q < average_energy_Q[i]) {
                        max_average_Q =  average_energy_Q[i];
                        max_index_Q   = i + 1;
                    }
                }
                printf("Maximum Directivity in I branch %d:\n", max_index_I);
                printf("Maximum Directivity in Q branch %d:\n", max_index_Q);
                printf("Localisation finished. Do you want to restart (1) or exit (0)?\n");
                yes_no = getchar();
                printf("data %d \n", yes_no);
                if(yes_no == 49) {
                    option = ANTENNA_SELECTION;
                    finished = 0;
                    max_average_Q = 0;					
                    for(i = 0; i < SIZE_ANTENNA_CONTROL_GPIO; i = i + 1) {
                        compare_energies_I[i] = 0;
                        compare_energies_Q[i] = 0;
                    }
                }
                else {
                    finished = 1; 
                }
                break; 
	}	
	if (finished == 1)
	break; 
    }

    close(rx_fd);
    fprintf(stderr, "Finished... \n");
   
    /* Unmap the proxy channel interface memory and close the device files before leaving
     */
    munmap(rx_interface, sizeof(struct dma_proxy_channel_interface));
    return 0;
}


//***************** GPIO INITIALIZATION *****************//
int gpio_init(void)
{
    // GPIO VARIABLES
    int error_export, error_direction;
    
    // I2C_CONTROL IN/OUT EXPORT
    error_export = set_multi_export (ADC_CONTROL,SIZE_ADC_CONTROL_GPIO);
    if (error_export)
    exit(1);
    
    error_export = set_multi_export (ANTENNA_CONTROL, SIZE_ANTENNA_CONTROL_GPIO);
    if (error_export)
    exit(1);
    
    // SET DIRECTION OUT I2C_CONTROL_IN
    error_direction = set_multi_direction(ADC_CONTROL,SIZE_ADC_CONTROL_GPIO, "out");
    if (error_direction)
    exit(1);
    
    error_direction = set_multi_direction(ANTENNA_CONTROL, SIZE_ANTENNA_CONTROL_GPIO, "out");
    if (error_direction)
    exit(1);
    
    printf("OPL GPIO initialized \n");
    return 0;
}
