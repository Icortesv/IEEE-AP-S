APP = antennadir

# Add any other object files to this list below
APP_OBJS = antennadir.o

CFLAGS = -Werror -Wall
#INCLUDES= -Ihome/inigo/ZYNQ/projects/dab_project/project-spec/meta-user/recipes-apps/dabaudio/files -Ihome/inigo/ZYNQ/projects/dab_project/project-spec/meta-user/recipes-apps/dabaudio/files/CDK_DABplusDec_Lib/include/ -Ihome/inigo/ZYNQ/projects/dab_project/project-spec/meta-user/recipes-apps/dabaudio/files/CDK_sysLib/include/

#INCLUDES= -ICDK_DABplusDec_Lib/include/ -ICDK_sysLib/include/

#LDFLAGS= -LCDK_DABplusDec_Lib/lib/arm_linux-gnueabihf_gcc/
LIBS= -lm

#CFLAGS= -mcpu=cortex-a8 -marm -mfpu=neon -O3 -Wall -Wshadow -Wcast-qual -Wno-long-long

CC = arm-linux-gnueabihf-gcc

all: build

build: $(APP)
	

$(APP) : $(APP_OBJS)
	$(CC) -pthread -O3 -o $@ $(APP_OBJS) $(LIBS) $(CFLAGS) 

antennadir.o : antennadir.c 
	$(CC) -pthread -O3 -c -o $@ $^ $(LIBS) $(CFLAGS) 


clean: 
	-rm -f $(APP) *.elf *.gdb *.o *.a


