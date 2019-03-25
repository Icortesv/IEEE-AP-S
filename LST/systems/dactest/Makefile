APP = dactest

# Add any other object files to this list below
APP_OBJS = dactest.o

CFLAGS = -Werror -Wall

LIBS= -lm

# Cross-compilation in ARM
# CC = arm-linux-gnueabihf-gcc
CC = gcc

all: build

build: $(APP)

$(APP) : $(APP_OBJS)
	$(CC) -pthread -O3 -o $@ $(APP_OBJS) $(LIBS) $(CFLAGS)
dactest.o : dactest.c
	$(CC) -pthread -O3 -c -o $@ $^ $(LIBS) $(CFLAGS)

clean:
	-rm -f $(APP) *.elf *.gdb *.o *.a *.map
