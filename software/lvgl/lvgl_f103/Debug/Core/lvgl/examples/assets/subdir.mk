################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/examples/assets/animimg001.c \
../Core/lvgl/examples/assets/animimg002.c \
../Core/lvgl/examples/assets/animimg003.c \
../Core/lvgl/examples/assets/img_caret_down.c \
../Core/lvgl/examples/assets/img_cogwheel_alpha16.c \
../Core/lvgl/examples/assets/img_cogwheel_argb.c \
../Core/lvgl/examples/assets/img_cogwheel_chroma_keyed.c \
../Core/lvgl/examples/assets/img_cogwheel_indexed16.c \
../Core/lvgl/examples/assets/img_cogwheel_rgb.c \
../Core/lvgl/examples/assets/img_hand.c \
../Core/lvgl/examples/assets/img_skew_strip.c \
../Core/lvgl/examples/assets/img_star.c \
../Core/lvgl/examples/assets/imgbtn_left.c \
../Core/lvgl/examples/assets/imgbtn_mid.c \
../Core/lvgl/examples/assets/imgbtn_right.c 

OBJS += \
./Core/lvgl/examples/assets/animimg001.o \
./Core/lvgl/examples/assets/animimg002.o \
./Core/lvgl/examples/assets/animimg003.o \
./Core/lvgl/examples/assets/img_caret_down.o \
./Core/lvgl/examples/assets/img_cogwheel_alpha16.o \
./Core/lvgl/examples/assets/img_cogwheel_argb.o \
./Core/lvgl/examples/assets/img_cogwheel_chroma_keyed.o \
./Core/lvgl/examples/assets/img_cogwheel_indexed16.o \
./Core/lvgl/examples/assets/img_cogwheel_rgb.o \
./Core/lvgl/examples/assets/img_hand.o \
./Core/lvgl/examples/assets/img_skew_strip.o \
./Core/lvgl/examples/assets/img_star.o \
./Core/lvgl/examples/assets/imgbtn_left.o \
./Core/lvgl/examples/assets/imgbtn_mid.o \
./Core/lvgl/examples/assets/imgbtn_right.o 

C_DEPS += \
./Core/lvgl/examples/assets/animimg001.d \
./Core/lvgl/examples/assets/animimg002.d \
./Core/lvgl/examples/assets/animimg003.d \
./Core/lvgl/examples/assets/img_caret_down.d \
./Core/lvgl/examples/assets/img_cogwheel_alpha16.d \
./Core/lvgl/examples/assets/img_cogwheel_argb.d \
./Core/lvgl/examples/assets/img_cogwheel_chroma_keyed.d \
./Core/lvgl/examples/assets/img_cogwheel_indexed16.d \
./Core/lvgl/examples/assets/img_cogwheel_rgb.d \
./Core/lvgl/examples/assets/img_hand.d \
./Core/lvgl/examples/assets/img_skew_strip.d \
./Core/lvgl/examples/assets/img_star.d \
./Core/lvgl/examples/assets/imgbtn_left.d \
./Core/lvgl/examples/assets/imgbtn_mid.d \
./Core/lvgl/examples/assets/imgbtn_right.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/examples/assets/%.o: ../Core/lvgl/examples/assets/%.c Core/lvgl/examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-examples-2f-assets

clean-Core-2f-lvgl-2f-examples-2f-assets:
	-$(RM) ./Core/lvgl/examples/assets/animimg001.d ./Core/lvgl/examples/assets/animimg001.o ./Core/lvgl/examples/assets/animimg002.d ./Core/lvgl/examples/assets/animimg002.o ./Core/lvgl/examples/assets/animimg003.d ./Core/lvgl/examples/assets/animimg003.o ./Core/lvgl/examples/assets/img_caret_down.d ./Core/lvgl/examples/assets/img_caret_down.o ./Core/lvgl/examples/assets/img_cogwheel_alpha16.d ./Core/lvgl/examples/assets/img_cogwheel_alpha16.o ./Core/lvgl/examples/assets/img_cogwheel_argb.d ./Core/lvgl/examples/assets/img_cogwheel_argb.o ./Core/lvgl/examples/assets/img_cogwheel_chroma_keyed.d ./Core/lvgl/examples/assets/img_cogwheel_chroma_keyed.o ./Core/lvgl/examples/assets/img_cogwheel_indexed16.d ./Core/lvgl/examples/assets/img_cogwheel_indexed16.o ./Core/lvgl/examples/assets/img_cogwheel_rgb.d ./Core/lvgl/examples/assets/img_cogwheel_rgb.o ./Core/lvgl/examples/assets/img_hand.d ./Core/lvgl/examples/assets/img_hand.o ./Core/lvgl/examples/assets/img_skew_strip.d ./Core/lvgl/examples/assets/img_skew_strip.o ./Core/lvgl/examples/assets/img_star.d ./Core/lvgl/examples/assets/img_star.o ./Core/lvgl/examples/assets/imgbtn_left.d ./Core/lvgl/examples/assets/imgbtn_left.o ./Core/lvgl/examples/assets/imgbtn_mid.d ./Core/lvgl/examples/assets/imgbtn_mid.o ./Core/lvgl/examples/assets/imgbtn_right.d ./Core/lvgl/examples/assets/imgbtn_right.o

.PHONY: clean-Core-2f-lvgl-2f-examples-2f-assets

