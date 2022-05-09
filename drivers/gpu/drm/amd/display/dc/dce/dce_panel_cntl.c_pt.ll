; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_panel_cntl.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_panel_cntl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.panel_cntl_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panel_cntl = type { ptr, ptr, i32, %struct.panel_cntl_backlight_registers }
%struct.panel_cntl_backlight_registers = type { i32, i32, i32, i32 }
%struct.dce_panel_cntl = type { %struct.panel_cntl, ptr, ptr, ptr }
%struct.panel_cntl_init_data = type { ptr, i32 }
%struct.dce_panel_cntl_registers = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_panel_cntl_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_panel_cntl_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dce_link_panel_cntl_funcs = internal constant { %struct.panel_cntl_funcs, [36 x i8] } { %struct.panel_cntl_funcs { ptr @dce_panel_cntl_destroy, ptr @dce_panel_cntl_hw_init, ptr @dce_is_panel_backlight_on, ptr @dce_is_panel_powered_on, ptr @dce_store_backlight_level, ptr @dce_driver_set_backlight, ptr @dce_get_16_bit_backlight_from_pwm }, [36 x i8] zeroinitializer }, align 32
@__func__.dce_panel_cntl_hw_init = private unnamed_addr constant [23 x i8] c"dce_panel_cntl_hw_init\00", align 1
@__func__.dce_store_backlight_level = private unnamed_addr constant [26 x i8] c"dce_store_backlight_level\00", align 1
@__func__.dce_driver_set_backlight = private unnamed_addr constant [25 x i8] c"dce_driver_set_backlight\00", align 1
@__func__.dce_get_16_bit_backlight_from_pwm = private unnamed_addr constant [34 x i8] c"dce_get_16_bit_backlight_from_pwm\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"dce_link_panel_cntl_funcs\00", align 1
@___asan_gen_.2 = private constant [65 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_panel_cntl.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 262, i32 38 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @dce_link_panel_cntl_funcs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_link_panel_cntl_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce_panel_cntl_construct(ptr nocapture noundef writeonly %dce_panel_cntl, ptr nocapture noundef readonly %init_data, ptr noundef %regs, ptr noundef %shift, ptr noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stored_backlight_registers = getelementptr inbounds %struct.panel_cntl, ptr %dce_panel_cntl, i32 0, i32 3
  %regs5 = getelementptr inbounds %struct.dce_panel_cntl, ptr %dce_panel_cntl, i32 0, i32 1
  %0 = call ptr @memset(ptr %stored_backlight_registers, i32 0, i32 16)
  %1 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %regs, ptr %regs5, align 4
  %shift6 = getelementptr inbounds %struct.dce_panel_cntl, ptr %dce_panel_cntl, i32 0, i32 2
  %2 = ptrtoint ptr %shift6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %shift, ptr %shift6, align 4
  %mask7 = getelementptr inbounds %struct.dce_panel_cntl, ptr %dce_panel_cntl, i32 0, i32 3
  %3 = ptrtoint ptr %mask7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mask, ptr %mask7, align 4
  %4 = ptrtoint ptr %dce_panel_cntl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dce_link_panel_cntl_funcs, ptr %dce_panel_cntl, align 4
  %5 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_data, align 4
  %ctx10 = getelementptr inbounds %struct.panel_cntl, ptr %dce_panel_cntl, i32 0, i32 1
  %7 = ptrtoint ptr %ctx10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ctx10, align 4
  %inst = getelementptr inbounds %struct.panel_cntl_init_data, ptr %init_data, i32 0, i32 1
  %8 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inst, align 4
  %inst12 = getelementptr inbounds %struct.panel_cntl, ptr %dce_panel_cntl, i32 0, i32 2
  %10 = ptrtoint ptr %inst12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %inst12, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_panel_cntl_destroy(ptr nocapture noundef %panel_cntl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %panel_cntl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel_cntl, align 4
  tail call void @kfree(ptr noundef %1) #4
  %2 = ptrtoint ptr %panel_cntl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %panel_cntl, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_panel_cntl_hw_init(ptr noundef %panel_cntl) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #4
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !19
  %ctx = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %BL_PWM_CNTL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %BL_PWM_CNTL, align 4
  %shift = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 2
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shift, align 4
  %BL_ACTIVE_INT_FRAC_CNT = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %BL_ACTIVE_INT_FRAC_CNT to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %BL_ACTIVE_INT_FRAC_CNT, align 1
  %mask = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 3
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mask, align 4
  %BL_ACTIVE_INT_FRAC_CNT1 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %BL_ACTIVE_INT_FRAC_CNT1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %BL_ACTIVE_INT_FRAC_CNT1, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext %10, i32 noundef %14, ptr noundef nonnull %value) #4
  %stored_backlight_registers = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3
  %15 = ptrtoint ptr %stored_backlight_registers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stored_backlight_registers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL6 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %BL_PWM_CNTL6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %BL_PWM_CNTL6, align 4
  call void @dm_write_reg_func(ptr noundef %18, i32 noundef %22, i32 noundef %16, ptr noundef nonnull @__func__.dce_panel_cntl_hw_init) #4
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL212 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %BL_PWM_CNTL212 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %BL_PWM_CNTL212, align 4
  %BL_PWM_CNTL214 = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %BL_PWM_CNTL214 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %BL_PWM_CNTL214, align 4
  call void @dm_write_reg_func(ptr noundef %24, i32 noundef %28, i32 noundef %30, ptr noundef nonnull @__func__.dce_panel_cntl_hw_init) #4
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %BL_PWM_PERIOD_CNTL = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %BL_PWM_PERIOD_CNTL to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %BL_PWM_PERIOD_CNTL, align 4
  %BL_PWM_PERIOD_CNTL19 = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %BL_PWM_PERIOD_CNTL19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %BL_PWM_PERIOD_CNTL19, align 4
  call void @dm_write_reg_func(ptr noundef %32, i32 noundef %36, i32 noundef %38, ptr noundef nonnull @__func__.dce_panel_cntl_hw_init) #4
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %PWRSEQ_REF_DIV = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %PWRSEQ_REF_DIV to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %PWRSEQ_REF_DIV, align 4
  %45 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shift, align 4
  %BL_PWM_REF_DIV = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %BL_PWM_REF_DIV to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %BL_PWM_REF_DIV, align 1
  %49 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mask, align 4
  %BL_PWM_REF_DIV25 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %BL_PWM_REF_DIV25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %BL_PWM_REF_DIV25, align 4
  %LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV, align 4
  %call27 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %40, i32 noundef %44, i32 noundef 1, i8 noundef zeroext %48, i32 noundef %52, i32 noundef %54) #4
  br label %if.end72

if.else:                                          ; preds = %entry
  %55 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %switch = icmp ult i32 %56, 2
  %57 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx, align 4
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL67 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %BL_PWM_CNTL67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %BL_PWM_CNTL67, align 4
  br i1 %switch, label %if.else63, label %if.then30

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = call i32 @dm_read_reg_func(ptr noundef %58, i32 noundef %62, ptr noundef nonnull @__func__.dce_panel_cntl_hw_init) #4
  %63 = ptrtoint ptr %stored_backlight_registers to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call35, ptr %stored_backlight_registers, align 4
  %64 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx, align 4
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL241 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %BL_PWM_CNTL241 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %BL_PWM_CNTL241, align 4
  %call42 = call i32 @dm_read_reg_func(ptr noundef %65, i32 noundef %69, ptr noundef nonnull @__func__.dce_panel_cntl_hw_init) #4
  %BL_PWM_CNTL244 = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %BL_PWM_CNTL244 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call42, ptr %BL_PWM_CNTL244, align 4
  %71 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx, align 4
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  %BL_PWM_PERIOD_CNTL48 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %BL_PWM_PERIOD_CNTL48 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %BL_PWM_PERIOD_CNTL48, align 4
  %call49 = call i32 @dm_read_reg_func(ptr noundef %72, i32 noundef %76, ptr noundef nonnull @__func__.dce_panel_cntl_hw_init) #4
  %BL_PWM_PERIOD_CNTL51 = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3, i32 2
  %77 = ptrtoint ptr %BL_PWM_PERIOD_CNTL51 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call49, ptr %BL_PWM_PERIOD_CNTL51, align 4
  %78 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx, align 4
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %PWRSEQ_REF_DIV55 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %PWRSEQ_REF_DIV55 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %PWRSEQ_REF_DIV55, align 4
  %84 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %shift, align 4
  %BL_PWM_REF_DIV57 = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %BL_PWM_REF_DIV57 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %BL_PWM_REF_DIV57, align 1
  %88 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mask, align 4
  %BL_PWM_REF_DIV59 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %BL_PWM_REF_DIV59 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %BL_PWM_REF_DIV59, align 4
  %LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV61 = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3, i32 3
  %call62 = call i32 @generic_reg_get(ptr noundef %79, i32 noundef %83, i8 noundef zeroext %87, i32 noundef %91, ptr noundef %LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV61) #4
  br label %if.end72

if.else63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @dm_write_reg_func(ptr noundef %58, i32 noundef %62, i32 noundef -2147419648, ptr noundef nonnull @__func__.dce_panel_cntl_hw_init) #4
  %92 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctx, align 4
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs, align 4
  %BL_PWM_PERIOD_CNTL71 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %BL_PWM_PERIOD_CNTL71 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %BL_PWM_PERIOD_CNTL71, align 4
  call void @dm_write_reg_func(ptr noundef %93, i32 noundef %97, i32 noundef 790432, ptr noundef nonnull @__func__.dce_panel_cntl_hw_init) #4
  br label %if.end72

if.end72:                                         ; preds = %if.else63, %if.then30, %if.then
  %98 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ctx, align 4
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 4
  %BIOS_SCRATCH_2 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %101, i32 0, i32 7
  %102 = ptrtoint ptr %BIOS_SCRATCH_2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %BIOS_SCRATCH_2, align 4
  %call76 = call i32 @dm_read_reg_func(ptr noundef %99, i32 noundef %103, ptr noundef nonnull @__func__.dce_panel_cntl_hw_init) #4
  %or = or i32 %call76, 536870912
  %104 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or, ptr %value, align 4
  %105 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ctx, align 4
  %107 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs, align 4
  %BIOS_SCRATCH_280 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %108, i32 0, i32 7
  %109 = ptrtoint ptr %BIOS_SCRATCH_280 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %BIOS_SCRATCH_280, align 4
  call void @dm_write_reg_func(ptr noundef %106, i32 noundef %110, i32 noundef %or, ptr noundef nonnull @__func__.dce_panel_cntl_hw_init) #4
  %111 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctx, align 4
  %113 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL84 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %BL_PWM_CNTL84 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %BL_PWM_CNTL84, align 4
  %117 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %shift, align 4
  %BL_PWM_EN = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %118, i32 0, i32 7
  %119 = ptrtoint ptr %BL_PWM_EN to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %BL_PWM_EN, align 1
  %121 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mask, align 4
  %BL_PWM_EN87 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %BL_PWM_EN87 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %BL_PWM_EN87, align 4
  %call88 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %112, i32 noundef %116, i32 noundef 1, i8 noundef zeroext %120, i32 noundef %124, i32 noundef 1) #4
  %125 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ctx, align 4
  %127 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs, align 4
  %BL_PWM_GRP1_REG_LOCK = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %BL_PWM_GRP1_REG_LOCK to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %BL_PWM_GRP1_REG_LOCK, align 4
  %131 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %shift, align 4
  %BL_PWM_GRP1_REG_LOCK93 = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %132, i32 0, i32 13
  %133 = ptrtoint ptr %BL_PWM_GRP1_REG_LOCK93 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %BL_PWM_GRP1_REG_LOCK93, align 1
  %135 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mask, align 4
  %BL_PWM_GRP1_REG_LOCK95 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %136, i32 0, i32 13
  %137 = ptrtoint ptr %BL_PWM_GRP1_REG_LOCK95 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %BL_PWM_GRP1_REG_LOCK95, align 4
  %call96 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %126, i32 noundef %130, i32 noundef 1, i8 noundef zeroext %134, i32 noundef %138, i32 noundef 0) #4
  %call97 = call i32 @dce_get_16_bit_backlight_from_pwm(ptr noundef %panel_cntl)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #4
  ret i32 %call97
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_is_panel_backlight_on(ptr nocapture noundef readonly %panel_cntl) #2 align 64 {
entry:
  %blon = alloca i32, align 4
  %blon_ovrd = alloca i32, align 4
  %pwrseq_target_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blon) #4
  %0 = ptrtoint ptr %blon to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %blon, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blon_ovrd) #4
  %1 = ptrtoint ptr %blon_ovrd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %blon_ovrd, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwrseq_target_state) #4
  %2 = ptrtoint ptr %pwrseq_target_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pwrseq_target_state, align 4, !annotation !19
  %ctx = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shift = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 2
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shift, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %mask = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 3
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mask, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %LVTMA_BLON_OVRD = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %LVTMA_BLON_OVRD to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %LVTMA_BLON_OVRD, align 1
  %LVTMA_BLON_OVRD4 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %LVTMA_BLON_OVRD4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %LVTMA_BLON_OVRD4, align 4
  %call = call i32 @generic_reg_get2(ptr noundef %4, i32 noundef %8, i8 noundef zeroext %12, i32 noundef %16, ptr noundef nonnull %blon, i8 noundef zeroext %18, i32 noundef %20, ptr noundef nonnull %blon_ovrd) #4
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shift, align 4
  %LVTMA_PWRSEQ_TARGET_STATE = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %LVTMA_PWRSEQ_TARGET_STATE to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %LVTMA_PWRSEQ_TARGET_STATE, align 1
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mask, align 4
  %LVTMA_PWRSEQ_TARGET_STATE11 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %LVTMA_PWRSEQ_TARGET_STATE11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %LVTMA_PWRSEQ_TARGET_STATE11, align 4
  %call12 = call i32 @generic_reg_get(ptr noundef %22, i32 noundef %26, i8 noundef zeroext %30, i32 noundef %34, ptr noundef nonnull %pwrseq_target_state) #4
  %35 = ptrtoint ptr %blon_ovrd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blon_ovrd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %pwrseq_target_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %pwrseq_target_state.val = load i32, ptr %pwrseq_target_state, align 4
  %38 = ptrtoint ptr %blon to i32
  call void @__asan_load4_noabort(i32 %38)
  %blon.val = load i32, ptr %blon, align 4
  %retval.0.in = select i1 %tobool.not, i32 %pwrseq_target_state.val, i32 %blon.val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in)
  %retval.0 = icmp ne i32 %retval.0.in, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwrseq_target_state) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blon_ovrd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blon) #4
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_is_panel_powered_on(ptr nocapture noundef readonly %panel_cntl) #2 align 64 {
entry:
  %pwr_seq_state = alloca i32, align 4
  %dig_on = alloca i32, align 4
  %dig_on_ovrd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwr_seq_state) #4
  %0 = ptrtoint ptr %pwr_seq_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pwr_seq_state, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dig_on) #4
  %1 = ptrtoint ptr %dig_on to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dig_on, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dig_on_ovrd) #4
  %2 = ptrtoint ptr %dig_on_ovrd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dig_on_ovrd, align 4, !annotation !19
  %ctx = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %PWRSEQ_STATE = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %PWRSEQ_STATE to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %PWRSEQ_STATE, align 4
  %shift = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 2
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shift, align 4
  %LVTMA_PWRSEQ_TARGET_STATE_R = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %LVTMA_PWRSEQ_TARGET_STATE_R to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %LVTMA_PWRSEQ_TARGET_STATE_R, align 1
  %mask = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 3
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mask, align 4
  %LVTMA_PWRSEQ_TARGET_STATE_R1 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %LVTMA_PWRSEQ_TARGET_STATE_R1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %LVTMA_PWRSEQ_TARGET_STATE_R1, align 4
  %call = call i32 @generic_reg_get(ptr noundef %4, i32 noundef %8, i8 noundef zeroext %12, i32 noundef %16, ptr noundef nonnull %pwr_seq_state) #4
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shift, align 4
  %LVTMA_DIGON = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %LVTMA_DIGON to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %LVTMA_DIGON, align 1
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mask, align 4
  %LVTMA_DIGON7 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %LVTMA_DIGON7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %LVTMA_DIGON7, align 4
  %LVTMA_DIGON_OVRD = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %24, i32 0, i32 3
  %31 = ptrtoint ptr %LVTMA_DIGON_OVRD to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %LVTMA_DIGON_OVRD, align 1
  %LVTMA_DIGON_OVRD10 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %28, i32 0, i32 3
  %33 = ptrtoint ptr %LVTMA_DIGON_OVRD10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %LVTMA_DIGON_OVRD10, align 4
  %call11 = call i32 @generic_reg_get2(ptr noundef %18, i32 noundef %22, i8 noundef zeroext %26, i32 noundef %30, ptr noundef nonnull %dig_on, i8 noundef zeroext %32, i32 noundef %34, ptr noundef nonnull %dig_on_ovrd) #4
  %35 = ptrtoint ptr %pwr_seq_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pwr_seq_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp = icmp eq i32 %36, 1
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  %37 = ptrtoint ptr %dig_on to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dig_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp12 = icmp eq i32 %38, 1
  br i1 %cmp12, label %land.rhs, label %lor.rhs.lor.end_crit_edge

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %dig_on_ovrd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dig_on_ovrd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp13 = icmp eq i32 %40, 1
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %lor.rhs.lor.end_crit_edge, %entry.lor.end_crit_edge
  %41 = phi i1 [ true, %entry.lor.end_crit_edge ], [ false, %lor.rhs.lor.end_crit_edge ], [ %cmp13, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dig_on_ovrd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dig_on) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwr_seq_state) #4
  ret i1 %41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_store_backlight_level(ptr noundef %panel_cntl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %BL_PWM_CNTL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %BL_PWM_CNTL, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @__func__.dce_store_backlight_level) #4
  %stored_backlight_registers = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3
  %6 = ptrtoint ptr %stored_backlight_registers to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %stored_backlight_registers, align 4
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL2 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %BL_PWM_CNTL2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %BL_PWM_CNTL2, align 4
  %call5 = tail call i32 @dm_read_reg_func(ptr noundef %8, i32 noundef %12, ptr noundef nonnull @__func__.dce_store_backlight_level) #4
  %BL_PWM_CNTL27 = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %BL_PWM_CNTL27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call5, ptr %BL_PWM_CNTL27, align 4
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %BL_PWM_PERIOD_CNTL = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %BL_PWM_PERIOD_CNTL to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %BL_PWM_PERIOD_CNTL, align 4
  %call11 = tail call i32 @dm_read_reg_func(ptr noundef %15, i32 noundef %19, ptr noundef nonnull @__func__.dce_store_backlight_level) #4
  %BL_PWM_PERIOD_CNTL13 = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %BL_PWM_PERIOD_CNTL13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call11, ptr %BL_PWM_PERIOD_CNTL13, align 4
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %PWRSEQ_REF_DIV = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %PWRSEQ_REF_DIV to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %PWRSEQ_REF_DIV, align 4
  %shift = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 2
  %27 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shift, align 4
  %BL_PWM_REF_DIV = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %BL_PWM_REF_DIV to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %BL_PWM_REF_DIV, align 1
  %mask = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 3
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mask, align 4
  %BL_PWM_REF_DIV17 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %BL_PWM_REF_DIV17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %BL_PWM_REF_DIV17, align 4
  %LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 3, i32 3
  %call19 = tail call i32 @generic_reg_get(ptr noundef %22, i32 noundef %26, i8 noundef zeroext %30, i32 noundef %34, ptr noundef %LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_driver_set_backlight(ptr nocapture noundef readonly %panel_cntl, i32 noundef %backlight_pwm_u16_16) #2 align 64 {
entry:
  %masked_pwm_period = alloca i32, align 4
  %pwm_period_bitcnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %masked_pwm_period) #4
  %0 = ptrtoint ptr %masked_pwm_period to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %masked_pwm_period, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwm_period_bitcnt) #4
  %1 = ptrtoint ptr %pwm_period_bitcnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pwm_period_bitcnt, align 4, !annotation !19
  %ctx = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %BL_PWM_PERIOD_CNTL = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %BL_PWM_PERIOD_CNTL to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %BL_PWM_PERIOD_CNTL, align 4
  %shift = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 2
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shift, align 4
  %BL_PWM_PERIOD_BITCNT = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %BL_PWM_PERIOD_BITCNT to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %BL_PWM_PERIOD_BITCNT, align 1
  %mask = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 3
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mask, align 4
  %BL_PWM_PERIOD_BITCNT1 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %BL_PWM_PERIOD_BITCNT1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %BL_PWM_PERIOD_BITCNT1, align 4
  %BL_PWM_PERIOD = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %9, i32 0, i32 10
  %16 = ptrtoint ptr %BL_PWM_PERIOD to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %BL_PWM_PERIOD, align 1
  %BL_PWM_PERIOD4 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %BL_PWM_PERIOD4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %BL_PWM_PERIOD4, align 4
  %call = call i32 @generic_reg_get2(ptr noundef %3, i32 noundef %7, i8 noundef zeroext %11, i32 noundef %15, ptr noundef nonnull %pwm_period_bitcnt, i8 noundef zeroext %17, i32 noundef %19, ptr noundef nonnull %masked_pwm_period) #4
  %20 = ptrtoint ptr %pwm_period_bitcnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pwm_period_bitcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  %phi.cast = and i32 %21, 255
  %bit_count.0 = select i1 %cmp, i32 16, i32 %phi.cast
  %22 = ptrtoint ptr %masked_pwm_period to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %masked_pwm_period, align 4
  %notmask = shl nsw i32 -1, %bit_count.0
  %sub = xor i32 %notmask, -1
  %and = and i32 %23, %sub
  store i32 %and, ptr %masked_pwm_period, align 4
  %mul = mul i32 %and, %backlight_pwm_u16_16
  %conv6 = zext i32 %mul to i64
  %sh_prom = zext i32 %bit_count.0 to i64
  %shr = lshr i64 %conv6, %sh_prom
  %sub11 = add nsw i32 %bit_count.0, -1
  %sh_prom12 = zext i32 %sub11 to i64
  %shr13 = lshr i64 %conv6, %sh_prom12
  %and14 = and i64 %shr13, 1
  %conv15 = and i64 %shr, 65535
  %add = add nuw nsw i64 %conv15, %and14
  %conv16 = trunc i64 %add to i32
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %BL_PWM_GRP1_REG_LOCK = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %BL_PWM_GRP1_REG_LOCK to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %BL_PWM_GRP1_REG_LOCK, align 4
  %30 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shift, align 4
  %BL_PWM_GRP1_IGNORE_MASTER_LOCK_EN = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %BL_PWM_GRP1_IGNORE_MASTER_LOCK_EN to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %BL_PWM_GRP1_IGNORE_MASTER_LOCK_EN, align 1
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mask, align 4
  %BL_PWM_GRP1_IGNORE_MASTER_LOCK_EN22 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %BL_PWM_GRP1_IGNORE_MASTER_LOCK_EN22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %BL_PWM_GRP1_IGNORE_MASTER_LOCK_EN22, align 4
  %BL_PWM_GRP1_REG_LOCK24 = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %31, i32 0, i32 13
  %38 = ptrtoint ptr %BL_PWM_GRP1_REG_LOCK24 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %BL_PWM_GRP1_REG_LOCK24, align 1
  %conv25 = zext i8 %39 to i32
  %BL_PWM_GRP1_REG_LOCK27 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %35, i32 0, i32 13
  %40 = ptrtoint ptr %BL_PWM_GRP1_REG_LOCK27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %BL_PWM_GRP1_REG_LOCK27, align 4
  %call28 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %25, i32 noundef %29, i32 noundef 2, i8 noundef zeroext %33, i32 noundef %37, i32 noundef 1, i32 noundef %conv25, i32 noundef %41, i32 noundef 1) #4
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %BL_PWM_CNTL to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %BL_PWM_CNTL, align 4
  %48 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %shift, align 4
  %BL_ACTIVE_INT_FRAC_CNT = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %BL_ACTIVE_INT_FRAC_CNT to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %BL_ACTIVE_INT_FRAC_CNT, align 1
  %52 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mask, align 4
  %BL_ACTIVE_INT_FRAC_CNT34 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %BL_ACTIVE_INT_FRAC_CNT34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %BL_ACTIVE_INT_FRAC_CNT34, align 4
  %call35 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %43, i32 noundef %47, i32 noundef 1, i8 noundef zeroext %51, i32 noundef %55, i32 noundef %conv16) #4
  %56 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx, align 4
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %BL_PWM_GRP1_REG_LOCK39 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %BL_PWM_GRP1_REG_LOCK39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %BL_PWM_GRP1_REG_LOCK39, align 4
  %62 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shift, align 4
  %BL_PWM_GRP1_REG_LOCK41 = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %63, i32 0, i32 13
  %64 = ptrtoint ptr %BL_PWM_GRP1_REG_LOCK41 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %BL_PWM_GRP1_REG_LOCK41, align 1
  %66 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mask, align 4
  %BL_PWM_GRP1_REG_LOCK43 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %BL_PWM_GRP1_REG_LOCK43 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %BL_PWM_GRP1_REG_LOCK43, align 4
  %call44 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %57, i32 noundef %61, i32 noundef 1, i8 noundef zeroext %65, i32 noundef %69, i32 noundef 0) #4
  %70 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx, align 4
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %BL_PWM_GRP1_REG_LOCK48 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %BL_PWM_GRP1_REG_LOCK48 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %BL_PWM_GRP1_REG_LOCK48, align 4
  %76 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %shift, align 4
  %BL_PWM_GRP1_REG_UPDATE_PENDING = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %77, i32 0, i32 14
  %78 = ptrtoint ptr %BL_PWM_GRP1_REG_UPDATE_PENDING to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %BL_PWM_GRP1_REG_UPDATE_PENDING, align 1
  %conv50 = zext i8 %79 to i32
  %80 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mask, align 4
  %BL_PWM_GRP1_REG_UPDATE_PENDING52 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %BL_PWM_GRP1_REG_UPDATE_PENDING52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %BL_PWM_GRP1_REG_UPDATE_PENDING52, align 4
  call void @generic_reg_wait(ptr noundef %71, i32 noundef %75, i32 noundef %conv50, i32 noundef %83, i32 noundef 0, i32 noundef 1, i32 noundef 10000, ptr noundef nonnull @__func__.dce_driver_set_backlight, i32 noundef 251) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_period_bitcnt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %masked_pwm_period) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_get_16_bit_backlight_from_pwm(ptr nocapture noundef readonly %panel_cntl) #2 align 64 {
entry:
  %bl_period = alloca i32, align 4
  %bl_int_count = alloca i32, align 4
  %bl_pwm = alloca i32, align 4
  %fractional_duty_cycle_en = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bl_period) #4
  %0 = ptrtoint ptr %bl_period to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bl_period, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bl_int_count) #4
  %1 = ptrtoint ptr %bl_int_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bl_int_count, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bl_pwm) #4
  %2 = ptrtoint ptr %bl_pwm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bl_pwm, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fractional_duty_cycle_en) #4
  %3 = ptrtoint ptr %fractional_duty_cycle_en to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fractional_duty_cycle_en, align 4, !annotation !19
  %ctx = getelementptr inbounds %struct.panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %BL_PWM_PERIOD_CNTL = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %BL_PWM_PERIOD_CNTL to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %BL_PWM_PERIOD_CNTL, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %9, ptr noundef nonnull @__func__.dce_get_16_bit_backlight_from_pwm) #4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %BL_PWM_PERIOD_CNTL4 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %BL_PWM_PERIOD_CNTL4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %BL_PWM_PERIOD_CNTL4, align 4
  %shift = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 2
  %16 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shift, align 4
  %BL_PWM_PERIOD = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %BL_PWM_PERIOD to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %BL_PWM_PERIOD, align 1
  %mask = getelementptr inbounds %struct.dce_panel_cntl, ptr %panel_cntl, i32 0, i32 3
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mask, align 4
  %BL_PWM_PERIOD5 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %BL_PWM_PERIOD5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %BL_PWM_PERIOD5, align 4
  %call6 = call i32 @generic_reg_get(ptr noundef %11, i32 noundef %15, i8 noundef zeroext %19, i32 noundef %23, ptr noundef nonnull %bl_period) #4
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %BL_PWM_PERIOD_CNTL10 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %BL_PWM_PERIOD_CNTL10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %BL_PWM_PERIOD_CNTL10, align 4
  %30 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shift, align 4
  %BL_PWM_PERIOD_BITCNT = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %BL_PWM_PERIOD_BITCNT to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %BL_PWM_PERIOD_BITCNT, align 1
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mask, align 4
  %BL_PWM_PERIOD_BITCNT13 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %BL_PWM_PERIOD_BITCNT13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %BL_PWM_PERIOD_BITCNT13, align 4
  %call14 = call i32 @generic_reg_get(ptr noundef %25, i32 noundef %29, i8 noundef zeroext %33, i32 noundef %37, ptr noundef nonnull %bl_int_count) #4
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %BL_PWM_CNTL to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %BL_PWM_CNTL, align 4
  %call18 = call i32 @dm_read_reg_func(ptr noundef %39, i32 noundef %43, ptr noundef nonnull @__func__.dce_get_16_bit_backlight_from_pwm) #4
  %44 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx, align 4
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL22 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %BL_PWM_CNTL22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %BL_PWM_CNTL22, align 4
  %50 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %shift, align 4
  %BL_ACTIVE_INT_FRAC_CNT = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %BL_ACTIVE_INT_FRAC_CNT to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %BL_ACTIVE_INT_FRAC_CNT, align 1
  %54 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mask, align 4
  %BL_ACTIVE_INT_FRAC_CNT25 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %BL_ACTIVE_INT_FRAC_CNT25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %BL_ACTIVE_INT_FRAC_CNT25, align 4
  %call26 = call i32 @generic_reg_get(ptr noundef %45, i32 noundef %49, i8 noundef zeroext %53, i32 noundef %57, ptr noundef nonnull %bl_pwm) #4
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 4
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %BL_PWM_CNTL30 = getelementptr inbounds %struct.dce_panel_cntl_registers, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %BL_PWM_CNTL30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %BL_PWM_CNTL30, align 4
  %64 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shift, align 4
  %BL_PWM_FRACTIONAL_EN = getelementptr inbounds %struct.dce_panel_cntl_shift, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %BL_PWM_FRACTIONAL_EN to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %BL_PWM_FRACTIONAL_EN, align 1
  %68 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mask, align 4
  %BL_PWM_FRACTIONAL_EN33 = getelementptr inbounds %struct.dce_panel_cntl_mask, ptr %69, i32 0, i32 9
  %70 = ptrtoint ptr %BL_PWM_FRACTIONAL_EN33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %BL_PWM_FRACTIONAL_EN33, align 4
  %call34 = call i32 @generic_reg_get(ptr noundef %59, i32 noundef %63, i8 noundef zeroext %67, i32 noundef %71, ptr noundef nonnull %fractional_duty_cycle_en) #4
  %72 = ptrtoint ptr %bl_int_count to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bl_int_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp = icmp eq i32 %73, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %bl_int_count to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 16, ptr %bl_int_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %75 = ptrtoint ptr %bl_int_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bl_int_count, align 4
  %notmask = shl nsw i32 -1, %76
  %sub = xor i32 %notmask, -1
  %77 = ptrtoint ptr %bl_period to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bl_period, align 4
  %and = and i32 %78, %sub
  store i32 %and, ptr %bl_period, align 4
  %79 = ptrtoint ptr %fractional_duty_cycle_en to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fractional_duty_cycle_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp37 = icmp eq i32 %80, 0
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sub35 = sub i32 16, %76
  %shl36 = shl i32 %sub, %sub35
  %81 = ptrtoint ptr %bl_pwm to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bl_pwm, align 4
  %and39 = and i32 %82, %shl36
  br label %if.end41

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %bl_pwm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bl_pwm, align 4
  %and40 = and i32 %84, 65535
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then38
  %storemerge = phi i32 [ %and40, %if.else ], [ %and39, %if.then38 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp43 = icmp eq i32 %and, 0
  br i1 %cmp43, label %if.then45, label %if.end41.if.end46_crit_edge

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %85 = ptrtoint ptr %bl_period to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 65535, ptr %bl_period, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41.if.end46_crit_edge
  %conv = zext i32 %storemerge to i64
  %add = add i32 %76, 1
  %sh_prom = zext i32 %add to i64
  %shl42 = shl i64 %conv, %sh_prom
  %86 = ptrtoint ptr %bl_period to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bl_period, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl42)
  %cmp164.i.i = icmp ult i64 %shl42, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !20

if.then168.i.i:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %conv169.i.i = trunc i64 %shl42 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %87
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %88 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %87, i64 %shl42) #7, !srcloc !21
  %asmresult1.i.i.i = extractvalue { i64, i64 } %88, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %add48 = add i64 %dividend.addr.0.i.i, 1
  %shr = lshr i64 %add48, 1
  %conv49 = trunc i64 %shr to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fractional_duty_cycle_en) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bl_pwm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bl_int_count) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bl_period) #4
  ret i32 %conv49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get2(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @dce_link_panel_cntl_funcs, !1, !"dce_link_panel_cntl_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_panel_cntl.c", i32 262, i32 38}
!2 = !{ptr @__func__.dce_panel_cntl_hw_init, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_panel_cntl.c", i32 102, i32 3}
!4 = !{ptr @__func__.dce_store_backlight_level, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_panel_cntl.c", i32 178, i32 3}
!6 = !{ptr @__func__.dce_driver_set_backlight, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_panel_cntl.c", i32 249, i32 2}
!8 = !{ptr @__func__.dce_get_16_bit_backlight_from_pwm, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_panel_cntl.c", i32 57, i32 2}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148794662, i64 2148794942, i64 2148795276, i64 2148795610}
