#include <stdio.h>
#include <stdlib.h> 
#include <string.h>

#define TMP_DATA "/tmp/data"
#define TMP_DATA_I "/tmp/dataI"
#define TMP_DATA_Q "/tmp/dataQ"
#define TMP_ENER_I "/tmp/enerI"
#define TMP_ENER_Q "/tmp/enerQ"

#define PN9_SIZE 511
#define RUPSAMP 12
#define MESSAGE_SIZE_RX 24528 


void print_info(unsigned char *pnSequence, double *dataI, double *dataQ, double enerI, double enerQ, int direction) {
     // WRITE THE OUTPUT IN THIS .dac FILE
    FILE *fp;
    FILE *fp_map_I;
    FILE *fp_map_Q;
    FILE *fp_energy_I; 
    FILE *fp_energy_Q;
    //FILE *fp_energy_ABS;

    char str[80], strI[80], strQ[80], strEnerI[80], strEnerQ[80], dir;

    sprintf(&dir, "%d", direction);
    strcpy(str, TMP_DATA);
    strcpy(strI, TMP_DATA_I);
    strcpy(strQ, TMP_DATA_Q);
    strcpy(strEnerI, TMP_ENER_I);
    strcpy(strEnerQ, TMP_ENER_Q);
    strcat(str, &dir);
    strcat(strI, &dir);
    strcat(strQ, &dir);
    strcat(strEnerI, &dir);
    strcat(strEnerQ, &dir);
    strcat(str, ".dac");
    strcat(strI, ".map");
    strcat(strQ, ".map");
    strcat(strEnerI, ".ener");
    strcat(strEnerQ, ".ener");
    
    fp            = fopen(str, "a+");
    fp_map_I      = fopen(strI, "a+");
    fp_map_Q      = fopen(strQ, "a+");
    fp_energy_I   = fopen(strEnerI, "a+");
    fp_energy_Q   = fopen(strEnerQ, "a+");
    //fp_energy_ABS = fopen("/tmp/channel_1_ABS.ener", "w");
    
    fwrite(pnSequence, sizeof(char), MESSAGE_SIZE_RX, fp);
    for (int i = 0; i < (PN9_SIZE * RUPSAMP); i++) {
        fprintf(fp_map_I, "%f \n", dataI[i]);
        fprintf(fp_map_Q, "%f \n", dataQ[i]);
    }
    fprintf(fp_energy_I, "%f \n", enerI);
    fprintf(fp_energy_Q, "%f \n", enerQ);

    fclose(fp);
    fclose(fp_map_I);
    fclose(fp_map_Q);
    fclose(fp_energy_I);
    fclose(fp_energy_Q);
    //fclose(fp_energy_ABS);
}
