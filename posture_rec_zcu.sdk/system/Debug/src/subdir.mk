################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/common.c \
../src/data_store.c \
../src/gpio.c \
../src/interruptDef.c \
../src/main.c \
../src/sdcard.c 

OBJS += \
./src/common.o \
./src/data_store.o \
./src/gpio.o \
./src/interruptDef.o \
./src/main.o \
./src/sdcard.o 

C_DEPS += \
./src/common.d \
./src/data_store.d \
./src/gpio.d \
./src/interruptDef.d \
./src/main.d \
./src/sdcard.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../system_bsp/psu_cortexa53_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


