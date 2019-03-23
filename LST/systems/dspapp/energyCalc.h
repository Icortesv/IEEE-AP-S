#include <math.h>
#include <stdlib.h>
#include <string.h>

#define PN9_SIZE 511
#define RUPSAMP 12

void energyCalc(double *data, double *energy, int num) {
    double accumulator = 0;
    for (int i = 0; i < PN9_SIZE * RUPSAMP; i = i + 1) {
        accumulator += pow(data[i], 2);
    }
    energy[num] = accumulator / (PN9_SIZE * RUPSAMP);
}

void energyCalcAbs(double *dataI, double *dataQ, double *energy, int num) {
    double accumulator = 0;
    for (int i = 0; i < PN9_SIZE * RUPSAMP; i = i + 1) {
        accumulator += accumulator + pow(pow(dataI[i], 2) + pow(dataQ[i], 2), 0.5);
    }
    energy[num] = accumulator / (PN9_SIZE * RUPSAMP);
}
