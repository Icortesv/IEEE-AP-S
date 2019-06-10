/***************************** 		 dactest	  ****************************
									Copyright 2018
								Telekom IEEE AP-S Contest
								   All rights reserved

   $Id: dactest.c 2018-04-23 cortesio $
   Author(s):   Inigo Cortes
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

////////////////////////////////////////////////////
// elementary data types
////////////////////////////////////////////////////
typedef unsigned char           tBool;
typedef unsigned char           tUInt8;
typedef signed char             tInt8;
typedef unsigned short          tUInt16;
typedef signed short            tInt16;
typedef unsigned int            tUInt32;
typedef signed int              tInt32;
typedef unsigned long long      tUInt64;
typedef signed long long        tInt64;


//****** GPIO: DEFINE ******//
// DEFINE PIN NUMBER
//#define ADC_CONTROL 901 // 41210000
#define ANTENNA_CONTROL 902 // 41200000

// DEFINE GPIOCHIP SIZE (ngpio)
//#define SIZE_ADC_CONTROL_GPIO 1
#define SIZE_ANTENNA_CONTROL_GPIO 4

// DEFINE ANTENNA DIRECTIVITIES 
#define DIRECTIVITY_1 0x07 //0111
#define DIRECTIVITY_2 0x0E //1110
#define DIRECTIVITY_3 0x0D //1101
#define DIRECTIVITY_4 0x0B //1011 

// DEFINE PATHS
#define EXPORT_PATH "/sys/class/gpio/export"
#define INIT_PATH "/sys/class/gpio/gpio"
#define DIRECTION_PATH "/direction"
#define VALUE_PATH "/value"

#define TRANSFER_NUM 5 // Mandamos 5 secuencias. 
#define PN9_SIZE 511
#define RUPSAMP 12

int set_multi_export (int base, int size);
int set_multi_direction (int base, int size, char direction[]);
int set_multi_value(int base, int size, int value);
int gpio_init(void);


int main(int argc,char** argv)
{
	//AUX VARIABLES
	int ret;
	int arg;
	//GPIO VARIABLES
	int error_value;

	ret = gpio_init();
	if (ret<0) exit(1);
	
	for(arg=1; arg < argc; arg++) {
		if(argv[arg][0]=='-'){
			//COMMAND TABLE
			switch (argv[arg][1]) {
			// MODE ON 
			case '1':				
				error_value = set_multi_value(ANTENNA_CONTROL, SIZE_ANTENNA_CONTROL_GPIO, DIRECTIVITY_1);
				if (error_value)
					exit(1);
				break;
			case '2':
				error_value = set_multi_value(ANTENNA_CONTROL, SIZE_ANTENNA_CONTROL_GPIO, DIRECTIVITY_2);
				if (error_value)
					exit(1);				
				break; 
			case '3': 
				error_value = set_multi_value(ANTENNA_CONTROL, SIZE_ANTENNA_CONTROL_GPIO, DIRECTIVITY_3);
				if (error_value)
					exit(1);
				break; 
			case '4': 
				error_value = set_multi_value(ANTENNA_CONTROL, SIZE_ANTENNA_CONTROL_GPIO, DIRECTIVITY_4);
				if (error_value)
					exit(1);
				break; 
			default:
				printf("Unexpected command %s\n", argv[arg]);
				fprintf(stderr,"Please run with %s ADC_ENABLE.\n",argv[0]);
				fprintf(stderr," ADC_ENABLE  is probably on or off.\n");
				break;
			}
		}
		else{			
			printf("Unexpected command %s\n", argv[arg]);
			fprintf(stderr,"Please run with %s antenna directivity.\n",argv[0]);
			fprintf(stderr," Antenna directivity  is probably 1,2,3 or 4.\n");
		}	
	}
	fprintf(stderr,"Finished... \n");
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


/*static int get_gpio_value(int base, int size)
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
}*/

//***************** GPIO INITIALIZATION *****************//
int gpio_init(void){

	// GPIO VARIABLES
	int error_export, error_direction;

	// I2C_CONTROL IN/OUT EXPORT
	//error_export = set_multi_export (ADC_CONTROL,SIZE_ADC_CONTROL_GPIO);
	//if (error_export)
	//exit(1);

	error_export = set_multi_export (ANTENNA_CONTROL, SIZE_ANTENNA_CONTROL_GPIO);
	if (error_export)
	exit(1);

	// SET DIRECTION OUT I2C_CONTROL_IN
	//error_direction = set_multi_direction(ADC_CONTROL,SIZE_ADC_CONTROL_GPIO, "out");
	//if (error_direction)
	//exit(1);

	error_direction = set_multi_direction(ANTENNA_CONTROL, SIZE_ANTENNA_CONTROL_GPIO, "out");
	if (error_direction)
	exit(1);

	printf("OPL GPIO initialized \n");
	return 0;

}

