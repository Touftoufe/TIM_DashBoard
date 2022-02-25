################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/sdl/lv_draw_sdl.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_arc.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_bg.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_blend.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_composite.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_img.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_label.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_line.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_mask.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_rect.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.c \
../Core/lvgl/src/draw/sdl/lv_draw_sdl_utils.c 

OBJS += \
./Core/lvgl/src/draw/sdl/lv_draw_sdl.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_arc.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_bg.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_blend.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_composite.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_img.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_label.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_line.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_mask.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_rect.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.o \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_utils.o 

C_DEPS += \
./Core/lvgl/src/draw/sdl/lv_draw_sdl.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_arc.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_bg.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_blend.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_composite.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_img.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_label.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_line.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_mask.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_rect.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.d \
./Core/lvgl/src/draw/sdl/lv_draw_sdl_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/sdl/%.o: ../Core/lvgl/src/draw/sdl/%.c Core/lvgl/src/draw/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"/home/prince/Downloads/lvgl/lvgl_f103/Core/lvgl" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw-2f-sdl

clean-Core-2f-lvgl-2f-src-2f-draw-2f-sdl:
	-$(RM) ./Core/lvgl/src/draw/sdl/lv_draw_sdl.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_arc.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_arc.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_bg.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_bg.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_blend.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_blend.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_composite.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_composite.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_img.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_img.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_label.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_label.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_line.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_line.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_mask.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_mask.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_rect.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_rect.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.o ./Core/lvgl/src/draw/sdl/lv_draw_sdl_utils.d ./Core/lvgl/src/draw/sdl/lv_draw_sdl_utils.o

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw-2f-sdl

