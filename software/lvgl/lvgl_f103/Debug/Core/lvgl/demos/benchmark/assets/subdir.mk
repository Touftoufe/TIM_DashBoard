################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.c \
../Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.c \
../Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.c \
../Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.c \
../Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.c \
../Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.c \
../Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.c \
../Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.c 

OBJS += \
./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.o \
./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.o \
./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.o \
./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.o \
./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.o \
./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.o \
./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.o \
./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.o 

C_DEPS += \
./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.d \
./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.d \
./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.d \
./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.d \
./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.d \
./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.d \
./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.d \
./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/demos/benchmark/assets/%.o: ../Core/lvgl/demos/benchmark/assets/%.c Core/lvgl/demos/benchmark/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-demos-2f-benchmark-2f-assets

clean-Core-2f-lvgl-2f-demos-2f-benchmark-2f-assets:
	-$(RM) ./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.d ./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha16.o ./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.d ./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.o ./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.d ./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_chroma_keyed.o ./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.d ./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.o ./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.d ./Core/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.o ./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.d ./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.o ./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.d ./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.o ./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.d ./Core/lvgl/demos/benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.o

.PHONY: clean-Core-2f-lvgl-2f-demos-2f-benchmark-2f-assets

