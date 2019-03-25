#include <math.h>
#include <stdlib.h>
#include <string.h>

#define PN9_SIZE 511
#define RUPSAMP 12
#define BUFFER_SIZE 24528
#define RESOLUTION 32768
#define SIGN_MASK 0x8000
#define MASK_ONES 0xFFFF 

void adcMapping(unsigned char *buffer, double *I_data, double *Q_data) {
    unsigned short rx_two_comp_I; 
    unsigned short rx_two_comp_Q;
    unsigned short rx_s[BUFFER_SIZE / 2];
    // copy the buffer into rx_s
    memcpy(rx_s, buffer, BUFFER_SIZE);
    // PERFORM THE MAPPING
    for (int i = 0; i < PN9_SIZE*RUPSAMP; i = i + 1) {
        // I channel
        if ((rx_s[2 * i] & SIGN_MASK) == SIGN_MASK ) {
        	// Negative number		
            rx_two_comp_I = (rx_s[2 * i] - 1) ^ MASK_ONES;
            I_data[i] = -(double)rx_two_comp_I / RESOLUTION;
        }
        else {
        	//Positive numbers
            I_data[i] = (double)rx_s[2 * i] / RESOLUTION;
        }
        // Q channel 
        if ((rx_s[2 * i + 1] & SIGN_MASK) == SIGN_MASK ) {
            // Negative number		
            rx_two_comp_Q = (rx_s[2 * i + 1] - 1) ^ MASK_ONES;
            Q_data[i] = -(double)rx_two_comp_Q/RESOLUTION;
        }
        else {
            //Positive number
            Q_data[i] = (double)rx_s[2 * i + 1]/RESOLUTION;
        }
    }	
}
