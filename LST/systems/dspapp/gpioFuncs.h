//****** GPIO: DEFINE ******//
// DEFINE PATHS
#define EXPORT_PATH "/sys/class/gpio/export"
#define INIT_PATH "/sys/class/gpio/gpio"
#define DIRECTION_PATH "/direction"
#define VALUE_PATH "/value"

int set_multi_export(int base, int size) {
    int export_error, exportfd, i;
    char strn[12];
    exportfd = open(EXPORT_PATH, O_WRONLY);
    if (exportfd <0) {
        printf("Cannot open GPIO to export it\n");
        return 1;
    }
    for(i = 0; i < size; i++) {
        sprintf(strn, "%d", i + base);
        export_error = write(exportfd, strn, (strlen(strn) + 1));
        if (export_error < 0)
        exit(1);
    }
    close(exportfd);
    return 0;
}


int set_multi_direction(int base, int size, char direction[]) {
    int export_error, directionfd, i;
    char str[80];
    char strn[12];
    
    for (i = 0; i < size; i++) {
        sprintf(strn, "%d", i + base);
        strcpy(str, INIT_PATH);
        strcat(str, strn);
        strcat(str, DIRECTION_PATH);
        directionfd = open(str, O_RDWR);
        if(directionfd < 0) {
            printf("Cannot open GPIO direction \n");
            return 1;
            //break;
        }
        export_error = write(directionfd, direction, (strlen(direction) + 1));
        if (export_error < 0)
        exit(1);
        close(directionfd);
    }
    return 0;
}


int set_multi_value(int base, int size, int value) {
    // if the mask doesn't have the same size as "size", return 1.
    int export_error, valuefd, c;
    char str[80];
    char strn[12];
    char val_str[2];
    int gpio_max;
    gpio_max = base + size;
    for(c = base; c < gpio_max; c++) {
        //printf("mask %c \n", mask[i]);
        //printf("pin %d \n",  c);
        sprintf(strn, "%d", c);
        strcpy(str, INIT_PATH);
        strcat(str, strn);
        strcat(str, VALUE_PATH);
        valuefd = open(str, O_RDWR);
        if(valuefd < 0) {
            printf("Cannot open GPIO value \n");
            return 1;
        }
        sprintf(val_str, "%d", (value & 1));
        export_error = write(valuefd, val_str, 2);
        if (export_error < 0)
        exit(1);
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
