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

#include "adcMapping.h"

// 5 sequences are received
#define TRANSFER_NUM 5

// DEFINE SEQUENCE PARAMETERS
#define PN9_SIZE 511
#define RUPSAMP 12

//****** DAB: DEFINE ******//
// Maximum buffer size of RX and TX channels (size of bytes)
#define BUFFER_SIZE 24528
// Buffer size of TX channel
#define MESSAGE_SIZE_RX 24528

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

// Received data (upsampled)
static double rx_I[PN9_SIZE * RUPSAMP];
static double rx_Q[PN9_SIZE * RUPSAMP];

//Received sequence 
static unsigned char pn_sequence[BUFFER_SIZE];

int main(int argc, char** argv) {

   char file_name[100];
   FILE *fp, *fpRxQ, *fpRxI, *fpRxITest, *fpRxQTest;
   int size_read;
   // To test the adcMapping app, a custom pn_sequence_test is created
   unsigned char pn_sequence_test[BUFFER_SIZE];  
   for (int i = 0; i < BUFFER_SIZE; i++) {
       pn_sequence_test[i] = 0x7F;
   }
   // 
   printf("Enter name of a file you wish to see\n");
   if (scanf("%s", file_name) < 0) {
      perror("Error while finding the file.\n");
      exit(EXIT_FAILURE);
   }

   fp = fopen(file_name, "r"); // read mode
   fpRxI = fopen("rx_I.map", "w");
   fpRxQ = fopen("rx_Q.map", "w");
   fpRxITest = fopen("rx_I_test.map", "w");
   fpRxQTest = fopen("rx_Q_test.map", "w");

   if (fp == NULL) {
      perror("Error while opening the file.\n");
      exit(EXIT_FAILURE);
   }

   size_read = fread(pn_sequence, sizeof(char), MESSAGE_SIZE_RX, fp);
   if (size_read != MESSAGE_SIZE_RX) {
      perror("Error while reading the file.\n");
      exit(EXIT_FAILURE);
   }
   adcMapping(pn_sequence, rx_I, rx_Q);
   printf("%f \n",rx_I[10]);
   for (int i = 0; i < (PN9_SIZE * RUPSAMP); i++) {
       fprintf(fpRxI, "%f \n", rx_I[i]);
       fprintf(fpRxQ, "%f \n", rx_Q[i]);
   }

   adcMapping(pn_sequence_test, rx_I, rx_Q);
   printf("%f \n",rx_I[10]);
   for (int i = 0; i < (PN9_SIZE * RUPSAMP); i++) {
       fprintf(fpRxITest, "%f \n", rx_I[i]);
       fprintf(fpRxQTest, "%f \n", rx_Q[i]);
   }

   //fwrite(rx_I, sizeof(double), PN9_SIZE * RUPSAMP, fpRxI);
   //fwrite(rx_Q, sizeof(double), PN9_SIZE * RUPSAMP, fpRxQ);
   fclose(fp);
   fclose(fpRxI);
   fclose(fpRxQ);
   fclose(fpRxITest);
   fclose(fpRxQTest);
   return 0;
}
