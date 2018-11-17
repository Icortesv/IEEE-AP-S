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
#define ENABLE "on"
#define YES 1
//#define ANTENNA_ENABLE_VALUE 1
//#define ANTENNA_DISABLE_VALUE 0

// DEFINE PATHS
#define EXPORT_PATH "/sys/class/gpio/export"
#define INIT_PATH "/sys/class/gpio/gpio"
#define DIRECTION_PATH "/direction"
#define VALUE_PATH "/value"

// DEFINE ANTENNA DIRECTIVITIES 
#define DIRECTIVITY_1 0x07 //0111
#define DIRECTIVITY_2 0x0E //1110
#define DIRECTIVITY_3 0x0D //1101
#define DIRECTIVITY_4 0x0B //1011

int set_multi_export (int base, int size);
int set_multi_direction (int base, int size, char direction[]);
int set_multi_value(int base, int size, int value);
static int get_gpio_value(int base, int size);
int gpio_init(void);


int set_multi_export(int base, int size)
{
	int exportfd, i;
	char strn[12];
	exportfd = open(EXPORT_PATH, O_WRONLY);
	if (exportfd <0)
	{
		printf("Cannot open GPIO to export it\n");
		return 1;
	}

	for(i = 0; i < size; i++)
	{
		sprintf(strn, "%d", i + base);
		write(exportfd, strn, (strlen(strn) + 1));
	}

	close(exportfd);
	return 0;
}

int set_multi_direction(int base, int size, char direction[])
{
	int directionfd, i;
	char str[80];
	char strn[12];

	for (i = 0; i < size; i++)
	{
		sprintf(strn, "%d", i + base);
		strcpy(str, INIT_PATH);
		strcat(str, strn);
		strcat(str, DIRECTION_PATH);
		directionfd = open(str, O_RDWR);
		if(directionfd < 0)
		{
			printf("Cannot open GPIO direction \n");
			return 1;
			//break;
		}
		write(directionfd, direction, (strlen(direction) + 1));
		close(directionfd);
	}

	return 0;
}

int set_multi_value(int base, int size, int value)
{
	// if the mask doesn't have the same size as "size", return 1.
	int valuefd, c;
	char str[80];
	char strn[12];
	char val_str[2];
	int gpio_max;
	gpio_max = base + size;
	for(c = base; c < gpio_max; c++)
	{
			//printf("mask %c \n", mask[i]);
			//printf("pin %d \n",  c);
			sprintf(strn, "%d", c);
			strcpy(str, INIT_PATH);
			strcat(str, strn);
			strcat(str, VALUE_PATH);
			valuefd = open(str, O_RDWR);
			if(valuefd < 0)
			{
				printf("Cannot open GPIO value \n");
				return 1;
			}
			sprintf(val_str, "%d", (value & 1));
			write(valuefd, val_str, 2);
			close(valuefd);
			value >>= 1;
		}
	return 0;
}

static int get_gpio_value(int base, int size)
{
	char gpio_val_file[128];
	int val_fd = 0;
	int gpio_max;
	char val_str[2];
	char *cptr;
	int value = 0;
	int c;

	gpio_max = base + size;

	for(c = gpio_max - 1; c >= base; c--)
	{
		sprintf(gpio_val_file, "/sys/class/gpio/gpio%d/value", c);
		val_fd=open(gpio_val_file, O_RDWR);
		if (val_fd < 0)
		{
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
