; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_abm.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.abm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.abm = type { ptr, ptr, i8 }
%struct.dce_abm = type { %struct.abm, ptr, ptr, ptr }
%struct.dce_abm_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_abm_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_abm_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce_abm_create = private unnamed_addr constant [15 x i8] c"dce_abm_create\00", align 1
@dce_funcs = internal constant { %struct.abm_funcs, [60 x i8] } { %struct.abm_funcs { ptr @dce_abm_init, ptr @dce_abm_set_level, ptr @dce_abm_immediate_disable, ptr @dce_abm_set_pipe, ptr @dce_abm_set_backlight_level_pwm, ptr @dce_abm_get_current_backlight, ptr @dce_abm_get_target_backlight, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.dce_abm_init = private unnamed_addr constant [13 x i8] c"dce_abm_init\00", align 1
@__func__.dce_abm_set_level = private unnamed_addr constant [18 x i8] c"dce_abm_set_level\00", align 1
@__func__.dce_abm_set_pipe = private unnamed_addr constant [17 x i8] c"dce_abm_set_pipe\00", align 1
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"New Backlight level: %d (0x%X)\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.dmcu_set_backlight_level = private unnamed_addr constant [25 x i8] c"dmcu_set_backlight_level\00", align 1
@__func__.dce_abm_get_current_backlight = private unnamed_addr constant [30 x i8] c"dce_abm_get_current_backlight\00", align 1
@__func__.dce_abm_get_target_backlight = private unnamed_addr constant [29 x i8] c"dce_abm_get_target_backlight\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 289, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"dce_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 251, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [58 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 239, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @dce_funcs, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dce_abm_create(ptr noundef %ctx, ptr noundef %regs, ptr noundef %abm_shift, ptr noundef %abm_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 24) #6
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce_abm_create, i32 noundef 289) #3
  tail call void @kgdb_breakpoint() #3
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %call7.i.i, align 8
  %funcs.i = getelementptr inbounds %struct.abm, ptr %call7.i.i, i32 0, i32 1
  %dmcu_is_running.i = getelementptr inbounds %struct.abm, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dmcu_is_running.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %dmcu_is_running.i, align 8
  %regs3.i = getelementptr inbounds %struct.dce_abm, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %regs3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regs, ptr %regs3.i, align 4
  %abm_shift4.i = getelementptr inbounds %struct.dce_abm, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %abm_shift4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %abm_shift, ptr %abm_shift4.i, align 8
  %abm_mask5.i = getelementptr inbounds %struct.dce_abm, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %abm_mask5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %abm_mask, ptr %abm_mask5.i, align 4
  %6 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dce_funcs, ptr %funcs.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_abm_destroy(ptr nocapture noundef %abm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  tail call void @kfree(ptr noundef %1) #3
  %2 = ptrtoint ptr %abm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %abm, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_abm_init(ptr nocapture noundef readonly %abm, i32 noundef %backlight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %regs = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %5, i32 noundef 259, ptr noundef nonnull @__func__.dce_abm_init) #3
  %6 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %abm, align 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call void @dm_write_reg_func(ptr noundef %7, i32 noundef %11, i32 noundef 257, ptr noundef nonnull @__func__.dce_abm_init) #3
  %12 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %abm, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %DC_ABM1_LS_SAMPLE_RATE = getelementptr inbounds %struct.dce_abm_registers, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %DC_ABM1_LS_SAMPLE_RATE to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DC_ABM1_LS_SAMPLE_RATE, align 4
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef %17, i32 noundef 259, ptr noundef nonnull @__func__.dce_abm_init) #3
  %18 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %abm, align 4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %DC_ABM1_LS_SAMPLE_RATE11 = getelementptr inbounds %struct.dce_abm_registers, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %DC_ABM1_LS_SAMPLE_RATE11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DC_ABM1_LS_SAMPLE_RATE11, align 4
  tail call void @dm_write_reg_func(ptr noundef %19, i32 noundef %23, i32 noundef 257, ptr noundef nonnull @__func__.dce_abm_init) #3
  %24 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %abm, align 4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %BL1_PWM_BL_UPDATE_SAMPLE_RATE = getelementptr inbounds %struct.dce_abm_registers, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %BL1_PWM_BL_UPDATE_SAMPLE_RATE to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %BL1_PWM_BL_UPDATE_SAMPLE_RATE, align 4
  tail call void @dm_write_reg_func(ptr noundef %25, i32 noundef %29, i32 noundef 257, ptr noundef nonnull @__func__.dce_abm_init) #3
  %30 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %abm, align 4
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %DC_ABM1_HG_MISC_CTRL = getelementptr inbounds %struct.dce_abm_registers, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %DC_ABM1_HG_MISC_CTRL to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %DC_ABM1_HG_MISC_CTRL, align 4
  %abm_shift = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 2
  %36 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %abm_shift, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %abm_mask = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 3
  %40 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %abm_mask, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %ABM1_HG_VMAX_SEL = getelementptr inbounds %struct.dce_abm_shift, ptr %37, i32 0, i32 1
  %44 = ptrtoint ptr %ABM1_HG_VMAX_SEL to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ABM1_HG_VMAX_SEL, align 1
  %conv = zext i8 %45 to i32
  %ABM1_HG_VMAX_SEL21 = getelementptr inbounds %struct.dce_abm_mask, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %ABM1_HG_VMAX_SEL21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ABM1_HG_VMAX_SEL21, align 4
  %ABM1_HG_BIN_BITWIDTH_SIZE_SEL = getelementptr inbounds %struct.dce_abm_shift, ptr %37, i32 0, i32 2
  %48 = ptrtoint ptr %ABM1_HG_BIN_BITWIDTH_SIZE_SEL to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ABM1_HG_BIN_BITWIDTH_SIZE_SEL, align 1
  %conv23 = zext i8 %49 to i32
  %ABM1_HG_BIN_BITWIDTH_SIZE_SEL25 = getelementptr inbounds %struct.dce_abm_mask, ptr %41, i32 0, i32 2
  %50 = ptrtoint ptr %ABM1_HG_BIN_BITWIDTH_SIZE_SEL25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ABM1_HG_BIN_BITWIDTH_SIZE_SEL25, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %31, i32 noundef %35, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %39, i32 noundef %43, i32 noundef 0, i32 noundef %conv, i32 noundef %47, i32 noundef 1, i32 noundef %conv23, i32 noundef %51, i32 noundef 0) #3
  %52 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %abm, align 4
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %DC_ABM1_IPCSC_COEFF_SEL = getelementptr inbounds %struct.dce_abm_registers, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %DC_ABM1_IPCSC_COEFF_SEL to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %DC_ABM1_IPCSC_COEFF_SEL, align 4
  %58 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %abm_shift, align 4
  %ABM1_IPCSC_COEFF_SEL_R = getelementptr inbounds %struct.dce_abm_shift, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %ABM1_IPCSC_COEFF_SEL_R to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ABM1_IPCSC_COEFF_SEL_R, align 1
  %62 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %abm_mask, align 4
  %ABM1_IPCSC_COEFF_SEL_R31 = getelementptr inbounds %struct.dce_abm_mask, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %ABM1_IPCSC_COEFF_SEL_R31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ABM1_IPCSC_COEFF_SEL_R31, align 4
  %ABM1_IPCSC_COEFF_SEL_G = getelementptr inbounds %struct.dce_abm_shift, ptr %59, i32 0, i32 4
  %66 = ptrtoint ptr %ABM1_IPCSC_COEFF_SEL_G to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ABM1_IPCSC_COEFF_SEL_G, align 1
  %conv33 = zext i8 %67 to i32
  %ABM1_IPCSC_COEFF_SEL_G35 = getelementptr inbounds %struct.dce_abm_mask, ptr %63, i32 0, i32 4
  %68 = ptrtoint ptr %ABM1_IPCSC_COEFF_SEL_G35 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ABM1_IPCSC_COEFF_SEL_G35, align 4
  %ABM1_IPCSC_COEFF_SEL_B = getelementptr inbounds %struct.dce_abm_shift, ptr %59, i32 0, i32 5
  %70 = ptrtoint ptr %ABM1_IPCSC_COEFF_SEL_B to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ABM1_IPCSC_COEFF_SEL_B, align 1
  %conv37 = zext i8 %71 to i32
  %ABM1_IPCSC_COEFF_SEL_B39 = getelementptr inbounds %struct.dce_abm_mask, ptr %63, i32 0, i32 5
  %72 = ptrtoint ptr %ABM1_IPCSC_COEFF_SEL_B39 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ABM1_IPCSC_COEFF_SEL_B39, align 4
  %call40 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %53, i32 noundef %57, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %61, i32 noundef %65, i32 noundef 2, i32 noundef %conv33, i32 noundef %69, i32 noundef 4, i32 noundef %conv37, i32 noundef %73, i32 noundef 2) #3
  %74 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %abm, align 4
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %BL1_PWM_CURRENT_ABM_LEVEL = getelementptr inbounds %struct.dce_abm_registers, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %BL1_PWM_CURRENT_ABM_LEVEL to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %BL1_PWM_CURRENT_ABM_LEVEL, align 4
  %80 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %abm_shift, align 4
  %BL1_PWM_CURRENT_ABM_LEVEL45 = getelementptr inbounds %struct.dce_abm_shift, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %BL1_PWM_CURRENT_ABM_LEVEL45 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %BL1_PWM_CURRENT_ABM_LEVEL45, align 1
  %84 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %abm_mask, align 4
  %BL1_PWM_CURRENT_ABM_LEVEL47 = getelementptr inbounds %struct.dce_abm_mask, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %BL1_PWM_CURRENT_ABM_LEVEL47 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %BL1_PWM_CURRENT_ABM_LEVEL47, align 4
  %call48 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %75, i32 noundef %79, i32 noundef 1, i8 noundef zeroext %83, i32 noundef %87, i32 noundef %backlight) #3
  %88 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %abm, align 4
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 4
  %BL1_PWM_TARGET_ABM_LEVEL = getelementptr inbounds %struct.dce_abm_registers, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %BL1_PWM_TARGET_ABM_LEVEL to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %BL1_PWM_TARGET_ABM_LEVEL, align 4
  %94 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %abm_shift, align 4
  %BL1_PWM_TARGET_ABM_LEVEL53 = getelementptr inbounds %struct.dce_abm_shift, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %BL1_PWM_TARGET_ABM_LEVEL53 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %BL1_PWM_TARGET_ABM_LEVEL53, align 1
  %98 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %abm_mask, align 4
  %BL1_PWM_TARGET_ABM_LEVEL55 = getelementptr inbounds %struct.dce_abm_mask, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %BL1_PWM_TARGET_ABM_LEVEL55 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %BL1_PWM_TARGET_ABM_LEVEL55, align 4
  %call56 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %89, i32 noundef %93, i32 noundef 1, i8 noundef zeroext %97, i32 noundef %101, i32 noundef %backlight) #3
  %102 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %abm, align 4
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  %BL1_PWM_USER_LEVEL = getelementptr inbounds %struct.dce_abm_registers, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %BL1_PWM_USER_LEVEL to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %BL1_PWM_USER_LEVEL, align 4
  %108 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %abm_shift, align 4
  %BL1_PWM_USER_LEVEL61 = getelementptr inbounds %struct.dce_abm_shift, ptr %109, i32 0, i32 8
  %110 = ptrtoint ptr %BL1_PWM_USER_LEVEL61 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %BL1_PWM_USER_LEVEL61, align 1
  %112 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %abm_mask, align 4
  %BL1_PWM_USER_LEVEL63 = getelementptr inbounds %struct.dce_abm_mask, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %BL1_PWM_USER_LEVEL63 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %BL1_PWM_USER_LEVEL63, align 4
  %call64 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %103, i32 noundef %107, i32 noundef 1, i8 noundef zeroext %111, i32 noundef %115, i32 noundef %backlight) #3
  %116 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %abm, align 4
  %118 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs, align 4
  %DC_ABM1_LS_MIN_MAX_PIXEL_VALUE_THRES = getelementptr inbounds %struct.dce_abm_registers, ptr %119, i32 0, i32 8
  %120 = ptrtoint ptr %DC_ABM1_LS_MIN_MAX_PIXEL_VALUE_THRES to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %DC_ABM1_LS_MIN_MAX_PIXEL_VALUE_THRES, align 4
  %122 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %abm_shift, align 4
  %ABM1_LS_MIN_PIXEL_VALUE_THRES = getelementptr inbounds %struct.dce_abm_shift, ptr %123, i32 0, i32 9
  %124 = ptrtoint ptr %ABM1_LS_MIN_PIXEL_VALUE_THRES to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ABM1_LS_MIN_PIXEL_VALUE_THRES, align 1
  %126 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %abm_mask, align 4
  %ABM1_LS_MIN_PIXEL_VALUE_THRES70 = getelementptr inbounds %struct.dce_abm_mask, ptr %127, i32 0, i32 9
  %128 = ptrtoint ptr %ABM1_LS_MIN_PIXEL_VALUE_THRES70 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ABM1_LS_MIN_PIXEL_VALUE_THRES70, align 4
  %ABM1_LS_MAX_PIXEL_VALUE_THRES = getelementptr inbounds %struct.dce_abm_shift, ptr %123, i32 0, i32 10
  %130 = ptrtoint ptr %ABM1_LS_MAX_PIXEL_VALUE_THRES to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %ABM1_LS_MAX_PIXEL_VALUE_THRES, align 1
  %conv72 = zext i8 %131 to i32
  %ABM1_LS_MAX_PIXEL_VALUE_THRES74 = getelementptr inbounds %struct.dce_abm_mask, ptr %127, i32 0, i32 10
  %132 = ptrtoint ptr %ABM1_LS_MAX_PIXEL_VALUE_THRES74 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ABM1_LS_MAX_PIXEL_VALUE_THRES74, align 4
  %call75 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %117, i32 noundef %121, i32 noundef 2, i8 noundef zeroext %125, i32 noundef %129, i32 noundef 0, i32 noundef %conv72, i32 noundef %133, i32 noundef 1000) #3
  %134 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %abm, align 4
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  %DC_ABM1_HGLS_REG_READ_PROGRESS = getelementptr inbounds %struct.dce_abm_registers, ptr %137, i32 0, i32 9
  %138 = ptrtoint ptr %DC_ABM1_HGLS_REG_READ_PROGRESS to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %DC_ABM1_HGLS_REG_READ_PROGRESS, align 4
  %140 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %abm_shift, align 4
  %ABM1_HG_REG_READ_MISSED_FRAME_CLEAR = getelementptr inbounds %struct.dce_abm_shift, ptr %141, i32 0, i32 11
  %142 = ptrtoint ptr %ABM1_HG_REG_READ_MISSED_FRAME_CLEAR to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %ABM1_HG_REG_READ_MISSED_FRAME_CLEAR, align 1
  %144 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %abm_mask, align 4
  %ABM1_HG_REG_READ_MISSED_FRAME_CLEAR81 = getelementptr inbounds %struct.dce_abm_mask, ptr %145, i32 0, i32 11
  %146 = ptrtoint ptr %ABM1_HG_REG_READ_MISSED_FRAME_CLEAR81 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ABM1_HG_REG_READ_MISSED_FRAME_CLEAR81, align 4
  %ABM1_LS_REG_READ_MISSED_FRAME_CLEAR = getelementptr inbounds %struct.dce_abm_shift, ptr %141, i32 0, i32 12
  %148 = ptrtoint ptr %ABM1_LS_REG_READ_MISSED_FRAME_CLEAR to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ABM1_LS_REG_READ_MISSED_FRAME_CLEAR, align 1
  %conv83 = zext i8 %149 to i32
  %ABM1_LS_REG_READ_MISSED_FRAME_CLEAR85 = getelementptr inbounds %struct.dce_abm_mask, ptr %145, i32 0, i32 12
  %150 = ptrtoint ptr %ABM1_LS_REG_READ_MISSED_FRAME_CLEAR85 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ABM1_LS_REG_READ_MISSED_FRAME_CLEAR85, align 4
  %ABM1_BL_REG_READ_MISSED_FRAME_CLEAR = getelementptr inbounds %struct.dce_abm_shift, ptr %141, i32 0, i32 13
  %152 = ptrtoint ptr %ABM1_BL_REG_READ_MISSED_FRAME_CLEAR to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %ABM1_BL_REG_READ_MISSED_FRAME_CLEAR, align 1
  %conv87 = zext i8 %153 to i32
  %ABM1_BL_REG_READ_MISSED_FRAME_CLEAR89 = getelementptr inbounds %struct.dce_abm_mask, ptr %145, i32 0, i32 13
  %154 = ptrtoint ptr %ABM1_BL_REG_READ_MISSED_FRAME_CLEAR89 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ABM1_BL_REG_READ_MISSED_FRAME_CLEAR89, align 4
  %call90 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %135, i32 noundef %139, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %143, i32 noundef %147, i32 noundef 1, i32 noundef %conv83, i32 noundef %151, i32 noundef 1, i32 noundef %conv87, i32 noundef %155, i32 noundef 1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_abm_set_level(ptr nocapture noundef readonly %abm, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dmcu_is_running = getelementptr inbounds %struct.abm, ptr %abm, i32 0, i32 2
  %0 = ptrtoint ptr %dmcu_is_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dmcu_is_running, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %abm, align 4
  %regs = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CNTL_REG = getelementptr inbounds %struct.dce_abm_registers, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %MASTER_COMM_CNTL_REG to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %MASTER_COMM_CNTL_REG, align 4
  %abm_shift = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 2
  %8 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %abm_shift, align 4
  %MASTER_COMM_INTERRUPT = getelementptr inbounds %struct.dce_abm_shift, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %MASTER_COMM_INTERRUPT to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %MASTER_COMM_INTERRUPT, align 1
  %conv2 = zext i8 %11 to i32
  %abm_mask = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 3
  %12 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %abm_mask, align 4
  %MASTER_COMM_INTERRUPT3 = getelementptr inbounds %struct.dce_abm_mask, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %MASTER_COMM_INTERRUPT3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %MASTER_COMM_INTERRUPT3, align 4
  tail call void @generic_reg_wait(ptr noundef %3, i32 noundef %7, i32 noundef %conv2, i32 noundef %15, i32 noundef 0, i32 noundef 1, i32 noundef 80000, ptr noundef nonnull @__func__.dce_abm_set_level, i32 noundef 207) #3
  %16 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %abm, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CMD_REG = getelementptr inbounds %struct.dce_abm_registers, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %MASTER_COMM_CMD_REG to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %MASTER_COMM_CMD_REG, align 4
  %22 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %abm_shift, align 4
  %MASTER_COMM_CMD_REG_BYTE0 = getelementptr inbounds %struct.dce_abm_shift, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %MASTER_COMM_CMD_REG_BYTE0, align 1
  %26 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %abm_mask, align 4
  %MASTER_COMM_CMD_REG_BYTE09 = getelementptr inbounds %struct.dce_abm_mask, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE09 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %MASTER_COMM_CMD_REG_BYTE09, align 4
  %MASTER_COMM_CMD_REG_BYTE2 = getelementptr inbounds %struct.dce_abm_shift, ptr %23, i32 0, i32 17
  %30 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %MASTER_COMM_CMD_REG_BYTE2, align 1
  %conv11 = zext i8 %31 to i32
  %MASTER_COMM_CMD_REG_BYTE213 = getelementptr inbounds %struct.dce_abm_mask, ptr %27, i32 0, i32 17
  %32 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE213 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %MASTER_COMM_CMD_REG_BYTE213, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %17, i32 noundef %21, i32 noundef 2, i8 noundef zeroext %25, i32 noundef %29, i32 noundef 101, i32 noundef %conv11, i32 noundef %33, i32 noundef %level) #3
  %34 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %abm, align 4
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CNTL_REG17 = getelementptr inbounds %struct.dce_abm_registers, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %MASTER_COMM_CNTL_REG17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %MASTER_COMM_CNTL_REG17, align 4
  %40 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %abm_shift, align 4
  %MASTER_COMM_INTERRUPT19 = getelementptr inbounds %struct.dce_abm_shift, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %MASTER_COMM_INTERRUPT19 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %MASTER_COMM_INTERRUPT19, align 1
  %44 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %abm_mask, align 4
  %MASTER_COMM_INTERRUPT21 = getelementptr inbounds %struct.dce_abm_mask, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %MASTER_COMM_INTERRUPT21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %MASTER_COMM_INTERRUPT21, align 4
  %call22 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %35, i32 noundef %39, i32 noundef 1, i8 noundef zeroext %43, i32 noundef %47, i32 noundef 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_abm_immediate_disable(ptr nocapture noundef readonly %abm, i32 noundef %panel_inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dmcu_is_running = getelementptr inbounds %struct.abm, ptr %abm, i32 0, i32 2
  %0 = ptrtoint ptr %dmcu_is_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dmcu_is_running, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call zeroext i1 @dce_abm_set_pipe(ptr noundef %abm, i32 noundef 255, i32 noundef %panel_inst)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_abm_set_pipe(ptr nocapture noundef readonly %abm, i32 noundef %controller_id, i32 noundef %panel_inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dmcu_is_running = getelementptr inbounds %struct.abm, ptr %abm, i32 0, i32 2
  %0 = ptrtoint ptr %dmcu_is_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dmcu_is_running, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %abm, align 4
  %regs = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CNTL_REG = getelementptr inbounds %struct.dce_abm_registers, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %MASTER_COMM_CNTL_REG to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %MASTER_COMM_CNTL_REG, align 4
  %abm_shift = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 2
  %8 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %abm_shift, align 4
  %MASTER_COMM_INTERRUPT = getelementptr inbounds %struct.dce_abm_shift, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %MASTER_COMM_INTERRUPT to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %MASTER_COMM_INTERRUPT, align 1
  %conv2 = zext i8 %11 to i32
  %abm_mask = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 3
  %12 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %abm_mask, align 4
  %MASTER_COMM_INTERRUPT3 = getelementptr inbounds %struct.dce_abm_mask, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %MASTER_COMM_INTERRUPT3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %MASTER_COMM_INTERRUPT3, align 4
  tail call void @generic_reg_wait(ptr noundef %3, i32 noundef %7, i32 noundef %conv2, i32 noundef %15, i32 noundef 0, i32 noundef 1, i32 noundef 80000, ptr noundef nonnull @__func__.dce_abm_set_pipe, i32 noundef 67) #3
  %16 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %abm, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %MASTER_COMM_DATA_REG1 = getelementptr inbounds %struct.dce_abm_registers, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %MASTER_COMM_DATA_REG1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %MASTER_COMM_DATA_REG1, align 4
  tail call void @dm_write_reg_func(ptr noundef %17, i32 noundef %21, i32 noundef 65535, ptr noundef nonnull @__func__.dce_abm_set_pipe) #3
  %22 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %abm, align 4
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CMD_REG = getelementptr inbounds %struct.dce_abm_registers, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %MASTER_COMM_CMD_REG to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %MASTER_COMM_CMD_REG, align 4
  %28 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %abm_shift, align 4
  %MASTER_COMM_CMD_REG_BYTE0 = getelementptr inbounds %struct.dce_abm_shift, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %MASTER_COMM_CMD_REG_BYTE0, align 1
  %32 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %abm_mask, align 4
  %MASTER_COMM_CMD_REG_BYTE012 = getelementptr inbounds %struct.dce_abm_mask, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE012 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %MASTER_COMM_CMD_REG_BYTE012, align 4
  %MASTER_COMM_CMD_REG_BYTE1 = getelementptr inbounds %struct.dce_abm_shift, ptr %29, i32 0, i32 16
  %36 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %MASTER_COMM_CMD_REG_BYTE1, align 1
  %conv14 = zext i8 %37 to i32
  %MASTER_COMM_CMD_REG_BYTE116 = getelementptr inbounds %struct.dce_abm_mask, ptr %33, i32 0, i32 16
  %38 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE116 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %MASTER_COMM_CMD_REG_BYTE116, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %23, i32 noundef %27, i32 noundef 2, i8 noundef zeroext %31, i32 noundef %35, i32 noundef 102, i32 noundef %conv14, i32 noundef %39, i32 noundef %controller_id) #3
  %40 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %abm, align 4
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CNTL_REG20 = getelementptr inbounds %struct.dce_abm_registers, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %MASTER_COMM_CNTL_REG20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %MASTER_COMM_CNTL_REG20, align 4
  %46 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %abm_shift, align 4
  %MASTER_COMM_INTERRUPT22 = getelementptr inbounds %struct.dce_abm_shift, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %MASTER_COMM_INTERRUPT22 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %MASTER_COMM_INTERRUPT22, align 1
  %50 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %abm_mask, align 4
  %MASTER_COMM_INTERRUPT24 = getelementptr inbounds %struct.dce_abm_mask, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %MASTER_COMM_INTERRUPT24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %MASTER_COMM_INTERRUPT24, align 4
  %call25 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %41, i32 noundef %45, i32 noundef 1, i8 noundef zeroext %49, i32 noundef %53, i32 noundef 1) #3
  %54 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %abm, align 4
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %MASTER_COMM_CNTL_REG29 = getelementptr inbounds %struct.dce_abm_registers, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %MASTER_COMM_CNTL_REG29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %MASTER_COMM_CNTL_REG29, align 4
  %60 = ptrtoint ptr %abm_shift to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %abm_shift, align 4
  %MASTER_COMM_INTERRUPT31 = getelementptr inbounds %struct.dce_abm_shift, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %MASTER_COMM_INTERRUPT31 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %MASTER_COMM_INTERRUPT31, align 1
  %conv32 = zext i8 %63 to i32
  %64 = ptrtoint ptr %abm_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %abm_mask, align 4
  %MASTER_COMM_INTERRUPT34 = getelementptr inbounds %struct.dce_abm_mask, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %MASTER_COMM_INTERRUPT34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %MASTER_COMM_INTERRUPT34, align 4
  tail call void @generic_reg_wait(ptr noundef %55, i32 noundef %59, i32 noundef %conv32, i32 noundef %67, i32 noundef 0, i32 noundef 1, i32 noundef 80000, ptr noundef nonnull @__func__.dce_abm_set_pipe, i32 noundef 81) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce_abm_set_backlight_level_pwm(ptr nocapture noundef readonly %abm, i32 noundef %backlight_pwm_u16_16, i32 noundef %frame_ramp, i32 noundef %controller_id, i32 noundef %panel_inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %backlight_pwm_u16_16, i32 noundef %backlight_pwm_u16_16) #3
  %and.i = and i32 %backlight_pwm_u16_16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %backlight_pwm_u16_16, 65280
  %backlight_8_bit.0.i = select i1 %tobool.not.i, i32 %and1.i, i32 65280
  %call.i = tail call zeroext i1 @dce_abm_set_pipe(ptr noundef %abm, i32 noundef %controller_id, i32 noundef %panel_inst) #3
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %regs.i = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %MASTER_COMM_CNTL_REG.i = getelementptr inbounds %struct.dce_abm_registers, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %MASTER_COMM_CNTL_REG.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %MASTER_COMM_CNTL_REG.i, align 4
  %abm_shift.i = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 2
  %6 = ptrtoint ptr %abm_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %abm_shift.i, align 4
  %MASTER_COMM_INTERRUPT.i = getelementptr inbounds %struct.dce_abm_shift, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %MASTER_COMM_INTERRUPT.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %MASTER_COMM_INTERRUPT.i, align 1
  %conv.i = zext i8 %9 to i32
  %abm_mask.i = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 3
  %10 = ptrtoint ptr %abm_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %abm_mask.i, align 4
  %MASTER_COMM_INTERRUPT3.i = getelementptr inbounds %struct.dce_abm_mask, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %MASTER_COMM_INTERRUPT3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %MASTER_COMM_INTERRUPT3.i, align 4
  tail call void @generic_reg_wait(ptr noundef %1, i32 noundef %5, i32 noundef %conv.i, i32 noundef %13, i32 noundef 0, i32 noundef 1, i32 noundef 80000, ptr noundef nonnull @__func__.dmcu_set_backlight_level, i32 noundef 107) #3
  %14 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %abm, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %BL1_PWM_USER_LEVEL.i = getelementptr inbounds %struct.dce_abm_registers, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %BL1_PWM_USER_LEVEL.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %BL1_PWM_USER_LEVEL.i, align 4
  %20 = ptrtoint ptr %abm_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %abm_shift.i, align 4
  %BL1_PWM_USER_LEVEL8.i = getelementptr inbounds %struct.dce_abm_shift, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %BL1_PWM_USER_LEVEL8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %BL1_PWM_USER_LEVEL8.i, align 1
  %24 = ptrtoint ptr %abm_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %abm_mask.i, align 4
  %BL1_PWM_USER_LEVEL10.i = getelementptr inbounds %struct.dce_abm_mask, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %BL1_PWM_USER_LEVEL10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %BL1_PWM_USER_LEVEL10.i, align 4
  %call11.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %15, i32 noundef %19, i32 noundef 1, i8 noundef zeroext %23, i32 noundef %27, i32 noundef %backlight_pwm_u16_16) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %controller_id)
  %cmp.i = icmp eq i32 %controller_id, 0
  %frame_ramp.addr.0.i = select i1 %cmp.i, i32 0, i32 %frame_ramp
  %28 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %abm, align 4
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %MASTER_COMM_DATA_REG1.i = getelementptr inbounds %struct.dce_abm_registers, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %MASTER_COMM_DATA_REG1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %MASTER_COMM_DATA_REG1.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %29, i32 noundef %33, i32 noundef %frame_ramp.addr.0.i, ptr noundef nonnull @__func__.dmcu_set_backlight_level) #3
  %34 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %abm, align 4
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %MASTER_COMM_CMD_REG.i = getelementptr inbounds %struct.dce_abm_registers, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %MASTER_COMM_CMD_REG.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %MASTER_COMM_CMD_REG.i, align 4
  %40 = ptrtoint ptr %abm_shift.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %abm_shift.i, align 4
  %MASTER_COMM_CMD_REG_BYTE0.i = getelementptr inbounds %struct.dce_abm_shift, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE0.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %MASTER_COMM_CMD_REG_BYTE0.i, align 1
  %44 = ptrtoint ptr %abm_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %abm_mask.i, align 4
  %MASTER_COMM_CMD_REG_BYTE023.i = getelementptr inbounds %struct.dce_abm_mask, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %MASTER_COMM_CMD_REG_BYTE023.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %MASTER_COMM_CMD_REG_BYTE023.i, align 4
  %call24.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %35, i32 noundef %39, i32 noundef 1, i8 noundef zeroext %43, i32 noundef %47, i32 noundef 103) #3
  %48 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %abm, align 4
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %MASTER_COMM_CNTL_REG28.i = getelementptr inbounds %struct.dce_abm_registers, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %MASTER_COMM_CNTL_REG28.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %MASTER_COMM_CNTL_REG28.i, align 4
  %54 = ptrtoint ptr %abm_shift.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %abm_shift.i, align 4
  %MASTER_COMM_INTERRUPT30.i = getelementptr inbounds %struct.dce_abm_shift, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %MASTER_COMM_INTERRUPT30.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %MASTER_COMM_INTERRUPT30.i, align 1
  %58 = ptrtoint ptr %abm_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %abm_mask.i, align 4
  %MASTER_COMM_INTERRUPT32.i = getelementptr inbounds %struct.dce_abm_mask, ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %MASTER_COMM_INTERRUPT32.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %MASTER_COMM_INTERRUPT32.i, align 4
  %call33.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %49, i32 noundef %53, i32 noundef 1, i8 noundef zeroext %57, i32 noundef %61, i32 noundef 1) #3
  %62 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %abm, align 4
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %BIOS_SCRATCH_2.i = getelementptr inbounds %struct.dce_abm_registers, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %BIOS_SCRATCH_2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %BIOS_SCRATCH_2.i, align 4
  %call37.i = tail call i32 @dm_read_reg_func(ptr noundef %63, i32 noundef %67, ptr noundef nonnull @__func__.dmcu_set_backlight_level) #3
  %and38.i = and i32 %call37.i, -65281
  %or.i = or i32 %and38.i, %backlight_8_bit.0.i
  %68 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %abm, align 4
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %BIOS_SCRATCH_243.i = getelementptr inbounds %struct.dce_abm_registers, ptr %71, i32 0, i32 15
  %72 = ptrtoint ptr %BIOS_SCRATCH_243.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %BIOS_SCRATCH_243.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %69, i32 noundef %73, i32 noundef %or.i, ptr noundef nonnull @__func__.dmcu_set_backlight_level) #3
  %74 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %abm, align 4
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 4
  %MASTER_COMM_CNTL_REG47.i = getelementptr inbounds %struct.dce_abm_registers, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %MASTER_COMM_CNTL_REG47.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %MASTER_COMM_CNTL_REG47.i, align 4
  %80 = ptrtoint ptr %abm_shift.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %abm_shift.i, align 4
  %MASTER_COMM_INTERRUPT49.i = getelementptr inbounds %struct.dce_abm_shift, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %MASTER_COMM_INTERRUPT49.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %MASTER_COMM_INTERRUPT49.i, align 1
  %conv50.i = zext i8 %83 to i32
  %84 = ptrtoint ptr %abm_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %abm_mask.i, align 4
  %MASTER_COMM_INTERRUPT52.i = getelementptr inbounds %struct.dce_abm_mask, ptr %85, i32 0, i32 14
  %86 = ptrtoint ptr %MASTER_COMM_INTERRUPT52.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %MASTER_COMM_INTERRUPT52.i, align 4
  tail call void @generic_reg_wait(ptr noundef %75, i32 noundef %79, i32 noundef %conv50.i, i32 noundef %87, i32 noundef 0, i32 noundef 1, i32 noundef 80000, ptr noundef nonnull @__func__.dmcu_set_backlight_level, i32 noundef 135) #3
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_abm_get_current_backlight(ptr nocapture noundef readonly %abm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %regs = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %BL1_PWM_CURRENT_ABM_LEVEL = getelementptr inbounds %struct.dce_abm_registers, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %BL1_PWM_CURRENT_ABM_LEVEL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %BL1_PWM_CURRENT_ABM_LEVEL, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @__func__.dce_abm_get_current_backlight) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_abm_get_target_backlight(ptr nocapture noundef readonly %abm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %regs = getelementptr inbounds %struct.dce_abm, ptr %abm, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %BL1_PWM_TARGET_ABM_LEVEL = getelementptr inbounds %struct.dce_abm_registers, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %BL1_PWM_TARGET_ABM_LEVEL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %BL1_PWM_TARGET_ABM_LEVEL, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @__func__.dce_abm_get_target_backlight) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c", i32 289, i32 3}
!2 = !{ptr @__func__.dce_abm_create, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @dce_funcs, !4, !"dce_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c", i32 251, i32 31}
!5 = !{ptr @__func__.dce_abm_init, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c", i32 142, i32 2}
!7 = !{ptr @__func__.dce_abm_set_level, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c", i32 206, i32 2}
!9 = !{ptr @__func__.dce_abm_set_pipe, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c", i32 66, i32 2}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c", i32 239, i32 2}
!13 = !{ptr @__func__.dmcu_set_backlight_level, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c", i32 106, i32 2}
!15 = !{ptr @__func__.dce_abm_get_current_backlight, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c", i32 180, i32 27}
!17 = !{ptr @__func__.dce_abm_get_target_backlight, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_abm.c", i32 191, i32 27}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
