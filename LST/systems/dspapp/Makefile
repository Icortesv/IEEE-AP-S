APP = dspapp

# Add any other object files to this list below
APP_OBJS = dspapp.o
APP_OBJS += adc_mapping.o
APP_OBJS += func_dsp.o
#APP_OBJS += energy_calc.o

CFLAGS = -Werror -Wall

LIBS= -lm

CC = arm-linux-gnueabihf-gcc

all: build

build: $(APP)
	

$(APP) : $(APP_OBJS)
	$(CC) -pthread -O3 -o $@ $(APP_OBJS) $(LIBS) $(CFLAGS) 

dspapp.o : dspapp.c 
	$(CC) -pthread -O3 -c -o $@ $^ $(LIBS) $(CFLAGS) 
adc_mapping.o : adc_mapping.c 
	$(CC) -pthread -I -O3 -c -o $@ $^ $(LIBS) $(CFLAGS)
func_dsp.o : func_dsp.c 
	$(CC) -pthread -I -O3 -c -o $@ $^ $(LIBS) $(CFLAGS)

clean: 
	-rm -f $(APP) *.elf *.gdb *.o *.a


