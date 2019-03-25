APP = dspapp

# Add any other object files to this list below
APP_OBJS = dspapp.o

CFLAGS = -Werror -Wall

LIBS= -lm

# Cross-compilation in ARM
CC = arm-linux-gnueabihf-gcc

all: build

build: $(APP)

$(APP) : $(APP_OBJS)
	$(CC) -pthread -O3 -o $@ $(APP_OBJS) $(LIBS) $(CFLAGS)
dspapp.o : dspapp.c
	$(CC) -pthread -O3 -c -o $@ $^ $(LIBS) $(CFLAGS)

clean:
	-rm -f $(APP) *.elf *.gdb *.o *.a
