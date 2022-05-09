; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/gpio/hw_gpio.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hw_gpio_pin = type { ptr, i32, i32, i32, i8, ptr }
%struct.hw_gpio = type { %struct.hw_gpio_pin, %struct.anon, i8, ptr }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gpio_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dal_hw_gpio_destruct.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_gpio.c\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [59 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_gpio.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 202, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_hw_gpio_open(ptr noundef %ptr, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 5
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %MASK_shift.i = getelementptr inbounds %struct.gpio_registers, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %MASK_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %MASK_shift.i, align 4
  %conv.i = trunc i32 %7 to i8
  %MASK_mask.i = getelementptr inbounds %struct.gpio_registers, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %MASK_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %MASK_mask.i, align 4
  %store.i = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 1
  %call.i = tail call i32 @generic_reg_get(ptr noundef %1, i32 noundef %5, i8 noundef zeroext %conv.i, i32 noundef %9, ptr noundef %store.i) #3
  %10 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i, align 4
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %A_reg.i = getelementptr inbounds %struct.gpio_registers, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %A_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %A_reg.i, align 4
  %A_shift.i = getelementptr inbounds %struct.gpio_registers, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %A_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %A_shift.i, align 4
  %conv7.i = trunc i32 %17 to i8
  %A_mask.i = getelementptr inbounds %struct.gpio_registers, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %A_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %A_mask.i, align 4
  %a.i = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 1, i32 1
  %call10.i = tail call i32 @generic_reg_get(ptr noundef %11, i32 noundef %15, i8 noundef zeroext %conv7.i, i32 noundef %19, ptr noundef %a.i) #3
  %20 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx.i, align 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %EN_reg.i = getelementptr inbounds %struct.gpio_registers, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %EN_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %EN_reg.i, align 4
  %EN_shift.i = getelementptr inbounds %struct.gpio_registers, ptr %23, i32 0, i32 8
  %26 = ptrtoint ptr %EN_shift.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %EN_shift.i, align 4
  %conv15.i = trunc i32 %27 to i8
  %EN_mask.i = getelementptr inbounds %struct.gpio_registers, ptr %23, i32 0, i32 7
  %28 = ptrtoint ptr %EN_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %EN_mask.i, align 4
  %en.i = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 1, i32 2
  %call18.i = tail call i32 @generic_reg_get(ptr noundef %21, i32 noundef %25, i8 noundef zeroext %conv15.i, i32 noundef %29, ptr noundef %en.i) #3
  %call = tail call i32 @dal_hw_gpio_config_mode(ptr noundef %ptr, i32 noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %opened = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 4
  %frombool = zext i1 %cmp to i8
  %30 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool, ptr %opened, align 4
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_hw_gpio_config_mode(ptr nocapture noundef %gpio, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.hw_gpio_pin, ptr %gpio, i32 0, i32 3
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mode, ptr %mode1, align 4
  %1 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb30
    i32 3, label %sw.bb51
    i32 4, label %sw.bb62
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ctx = getelementptr inbounds %struct.hw_gpio_pin, ptr %gpio, i32 0, i32 5
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.hw_gpio, ptr %gpio, i32 0, i32 3
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %EN_reg = getelementptr inbounds %struct.gpio_registers, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %EN_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %EN_reg, align 4
  %EN_shift = getelementptr inbounds %struct.gpio_registers, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %EN_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %EN_shift, align 4
  %conv = trunc i32 %9 to i8
  %EN_mask = getelementptr inbounds %struct.gpio_registers, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %EN_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %EN_mask, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %3, i32 noundef %7, i32 noundef 1, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef 0) #3
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %MASK_shift = getelementptr inbounds %struct.gpio_registers, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %MASK_shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %MASK_shift, align 4
  %conv9 = trunc i32 %19 to i8
  %MASK_mask = getelementptr inbounds %struct.gpio_registers, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %MASK_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %MASK_mask, align 4
  %call11 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %13, i32 noundef %17, i32 noundef 1, i8 noundef zeroext %conv9, i32 noundef %21, i32 noundef 1) #3
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ctx14 = getelementptr inbounds %struct.hw_gpio_pin, ptr %gpio, i32 0, i32 5
  %22 = ptrtoint ptr %ctx14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx14, align 4
  %regs15 = getelementptr inbounds %struct.hw_gpio, ptr %gpio, i32 0, i32 3
  %24 = ptrtoint ptr %regs15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs15, align 4
  %A_reg = getelementptr inbounds %struct.gpio_registers, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %A_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %A_reg, align 4
  %A_shift = getelementptr inbounds %struct.gpio_registers, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %A_shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %A_shift, align 4
  %conv17 = trunc i32 %29 to i8
  %A_mask = getelementptr inbounds %struct.gpio_registers, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %A_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %A_mask, align 4
  %call19 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %23, i32 noundef %27, i32 noundef 1, i8 noundef zeroext %conv17, i32 noundef %31, i32 noundef 0) #3
  %32 = ptrtoint ptr %ctx14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx14, align 4
  %34 = ptrtoint ptr %regs15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs15, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %MASK_shift25 = getelementptr inbounds %struct.gpio_registers, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %MASK_shift25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %MASK_shift25, align 4
  %conv26 = trunc i32 %39 to i8
  %MASK_mask28 = getelementptr inbounds %struct.gpio_registers, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %MASK_mask28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %MASK_mask28, align 4
  %call29 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %33, i32 noundef %37, i32 noundef 1, i8 noundef zeroext %conv26, i32 noundef %41, i32 noundef 1) #3
  br label %return

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ctx32 = getelementptr inbounds %struct.hw_gpio_pin, ptr %gpio, i32 0, i32 5
  %42 = ptrtoint ptr %ctx32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx32, align 4
  %regs33 = getelementptr inbounds %struct.hw_gpio, ptr %gpio, i32 0, i32 3
  %44 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs33, align 4
  %A_reg34 = getelementptr inbounds %struct.gpio_registers, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %A_reg34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %A_reg34, align 4
  %A_shift36 = getelementptr inbounds %struct.gpio_registers, ptr %45, i32 0, i32 5
  %48 = ptrtoint ptr %A_shift36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %A_shift36, align 4
  %conv37 = trunc i32 %49 to i8
  %A_mask39 = getelementptr inbounds %struct.gpio_registers, ptr %45, i32 0, i32 4
  %50 = ptrtoint ptr %A_mask39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %A_mask39, align 4
  %call40 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %43, i32 noundef %47, i32 noundef 1, i8 noundef zeroext %conv37, i32 noundef %51, i32 noundef 0) #3
  %52 = ptrtoint ptr %ctx32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx32, align 4
  %54 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs33, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %MASK_shift46 = getelementptr inbounds %struct.gpio_registers, ptr %55, i32 0, i32 2
  %58 = ptrtoint ptr %MASK_shift46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %MASK_shift46, align 4
  %conv47 = trunc i32 %59 to i8
  %MASK_mask49 = getelementptr inbounds %struct.gpio_registers, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %MASK_mask49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %MASK_mask49, align 4
  %call50 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %53, i32 noundef %57, i32 noundef 1, i8 noundef zeroext %conv47, i32 noundef %61, i32 noundef 1) #3
  br label %return

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ctx53 = getelementptr inbounds %struct.hw_gpio_pin, ptr %gpio, i32 0, i32 5
  %62 = ptrtoint ptr %ctx53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx53, align 4
  %regs54 = getelementptr inbounds %struct.hw_gpio, ptr %gpio, i32 0, i32 3
  %64 = ptrtoint ptr %regs54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs54, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %MASK_shift57 = getelementptr inbounds %struct.gpio_registers, ptr %65, i32 0, i32 2
  %68 = ptrtoint ptr %MASK_shift57 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %MASK_shift57, align 4
  %conv58 = trunc i32 %69 to i8
  %MASK_mask60 = getelementptr inbounds %struct.gpio_registers, ptr %65, i32 0, i32 1
  %70 = ptrtoint ptr %MASK_mask60 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %MASK_mask60, align 4
  %call61 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %63, i32 noundef %67, i32 noundef 1, i8 noundef zeroext %conv58, i32 noundef %71, i32 noundef 0) #3
  br label %return

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ctx64 = getelementptr inbounds %struct.hw_gpio_pin, ptr %gpio, i32 0, i32 5
  %72 = ptrtoint ptr %ctx64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctx64, align 4
  %regs65 = getelementptr inbounds %struct.hw_gpio, ptr %gpio, i32 0, i32 3
  %74 = ptrtoint ptr %regs65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs65, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %MASK_shift68 = getelementptr inbounds %struct.gpio_registers, ptr %75, i32 0, i32 2
  %78 = ptrtoint ptr %MASK_shift68 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %MASK_shift68, align 4
  %conv69 = trunc i32 %79 to i8
  %MASK_mask71 = getelementptr inbounds %struct.gpio_registers, ptr %75, i32 0, i32 1
  %80 = ptrtoint ptr %MASK_mask71 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %MASK_mask71, align 4
  %call72 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %73, i32 noundef %77, i32 noundef 1, i8 noundef zeroext %conv69, i32 noundef %81, i32 noundef 0) #3
  br label %return

return:                                           ; preds = %sw.bb62, %sw.bb51, %sw.bb30, %sw.bb12, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb62 ], [ 0, %sw.bb51 ], [ 0, %sw.bb30 ], [ 0, %sw.bb12 ], [ 0, %sw.bb ], [ 6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_hw_gpio_get_value(ptr nocapture noundef readonly %ptr, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ctx = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 5
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 3
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %Y_reg = getelementptr inbounds %struct.gpio_registers, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %Y_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %Y_reg, align 4
  %Y_shift = getelementptr inbounds %struct.gpio_registers, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %Y_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %Y_shift, align 4
  %conv = trunc i32 %9 to i8
  %Y_mask = getelementptr inbounds %struct.gpio_registers, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %Y_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %Y_mask, align 4
  %call = tail call i32 @generic_reg_get(ptr noundef %3, i32 noundef %7, i8 noundef zeroext %conv, i32 noundef %11, ptr noundef %value) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb ], [ 6, %entry.sw.epilog_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_hw_gpio_set_value(ptr nocapture noundef readonly %ptr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ctx = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 5
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 3
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %A_reg = getelementptr inbounds %struct.gpio_registers, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %A_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %A_reg, align 4
  %A_shift = getelementptr inbounds %struct.gpio_registers, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %A_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %A_shift, align 4
  %conv = trunc i32 %10 to i8
  %A_mask = getelementptr inbounds %struct.gpio_registers, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %A_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %A_mask, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %4, i32 noundef %8, i32 noundef 1, i8 noundef zeroext %conv, i32 noundef %12, i32 noundef %value) #3
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ctx5 = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 5
  %13 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx5, align 4
  %regs6 = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 3
  %15 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs6, align 4
  %EN_reg = getelementptr inbounds %struct.gpio_registers, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %EN_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %EN_reg, align 4
  %EN_shift = getelementptr inbounds %struct.gpio_registers, ptr %16, i32 0, i32 8
  %19 = ptrtoint ptr %EN_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %EN_shift, align 4
  %conv8 = trunc i32 %20 to i8
  %EN_mask = getelementptr inbounds %struct.gpio_registers, ptr %16, i32 0, i32 7
  %21 = ptrtoint ptr %EN_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %EN_mask, align 4
  %neg = xor i32 %value, -1
  %call10 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %14, i32 noundef %18, i32 noundef 1, i8 noundef zeroext %conv8, i32 noundef %22, i32 noundef %neg) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ 6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_hw_gpio_change_mode(ptr nocapture noundef %ptr, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dal_hw_gpio_config_mode(ptr noundef %ptr, i32 noundef %mode)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_hw_gpio_close(ptr nocapture noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 5
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %MASK_shift.i = getelementptr inbounds %struct.gpio_registers, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %MASK_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %MASK_shift.i, align 4
  %conv.i = trunc i32 %7 to i8
  %MASK_mask.i = getelementptr inbounds %struct.gpio_registers, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %MASK_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %MASK_mask.i, align 4
  %store.i = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 1
  %10 = ptrtoint ptr %store.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %store.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %conv.i, i32 noundef %9, i32 noundef %11) #3
  %12 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx.i, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %A_reg.i = getelementptr inbounds %struct.gpio_registers, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %A_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %A_reg.i, align 4
  %A_shift.i = getelementptr inbounds %struct.gpio_registers, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %A_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %A_shift.i, align 4
  %conv7.i = trunc i32 %19 to i8
  %A_mask.i = getelementptr inbounds %struct.gpio_registers, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %A_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %A_mask.i, align 4
  %a.i = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %a.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %a.i, align 4
  %call10.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %13, i32 noundef %17, i32 noundef 1, i8 noundef zeroext %conv7.i, i32 noundef %21, i32 noundef %23) #3
  %24 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx.i, align 4
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %EN_reg.i = getelementptr inbounds %struct.gpio_registers, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %EN_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %EN_reg.i, align 4
  %EN_shift.i = getelementptr inbounds %struct.gpio_registers, ptr %27, i32 0, i32 8
  %30 = ptrtoint ptr %EN_shift.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %EN_shift.i, align 4
  %conv15.i = trunc i32 %31 to i8
  %EN_mask.i = getelementptr inbounds %struct.gpio_registers, ptr %27, i32 0, i32 7
  %32 = ptrtoint ptr %EN_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %EN_mask.i, align 4
  %en.i = getelementptr inbounds %struct.hw_gpio, ptr %ptr, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %en.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %en.i, align 4
  %call18.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %25, i32 noundef %29, i32 noundef 1, i8 noundef zeroext %conv15.i, i32 noundef %33, i32 noundef %35) #3
  %mode = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 3
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %mode, align 4
  %opened = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 4
  %37 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %opened, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dal_hw_gpio_construct(ptr nocapture noundef writeonly %pin, i32 noundef %id, i32 noundef %en, ptr noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.hw_gpio_pin, ptr %pin, i32 0, i32 5
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1, align 4
  %id3 = getelementptr inbounds %struct.hw_gpio_pin, ptr %pin, i32 0, i32 1
  %1 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %id, ptr %id3, align 4
  %en5 = getelementptr inbounds %struct.hw_gpio_pin, ptr %pin, i32 0, i32 2
  %2 = ptrtoint ptr %en5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %en, ptr %en5, align 4
  %mode = getelementptr inbounds %struct.hw_gpio_pin, ptr %pin, i32 0, i32 3
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mode, align 4
  %opened = getelementptr inbounds %struct.hw_gpio_pin, ptr %pin, i32 0, i32 4
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %opened, align 4
  %store = getelementptr inbounds %struct.hw_gpio, ptr %pin, i32 0, i32 1
  %5 = call ptr @memset(ptr %store, i32 0, i32 17)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_hw_gpio_destruct(ptr nocapture noundef readonly %pin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %opened = getelementptr inbounds %struct.hw_gpio_pin, ptr %pin, i32 0, i32 4
  %0 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %opened, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.end43_crit_edge, label %land.rhs

entry.do.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end43

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @dal_hw_gpio_destruct.__already_done, align 1
  br i1 %.b46, label %land.rhs.if.then40_crit_edge, label %if.then, !prof !13

land.rhs.if.then40_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then40

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @dal_hw_gpio_destruct.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #3
  br label %if.then40

if.then40:                                        ; preds = %if.then, %land.rhs.if.then40_crit_edge
  tail call void @kgdb_breakpoint() #3
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %entry.do.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_gpio.c", i32 202, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 2000, i32 1}
