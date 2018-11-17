#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "energy_calc.h"

#define PN9_SIZE 511
#define RUPSAMP 12
#define BUFFER_SIZE 24528
#define RESOLUTION 32768
#define SIGN_MASK 0x8000
#define MASK_ONES 0xFFFF 

double energy_calc(double *data){
	
	double square = 0; 
	double accumulator = 0; 
	double energy; 
	
	for (int i = 0; i<PN9_SIZE*RUPSAMP; i=i+1){
		square = data[i]*data[i]; 
		accumulator = accumulator + square; 		
	}
	
	energy = accumulator/(PN9_SIZE*RUPSAMP); 
	return energy;
}