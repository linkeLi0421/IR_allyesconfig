; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_opp.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_opp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.opp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dce110_opp = type { %struct.output_pixel_processor, ptr, ptr, ptr }
%struct.output_pixel_processor = type { ptr, i32, %struct.pwl_params, %struct.mpc_tree, [6 x i8], ptr, i32 }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon.21, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon.21 = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.fixed31_32 = type { i64 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.mpc_tree = type { i32, ptr }
%struct.dce_opp_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_opp_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_opp_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.22, i32, i32, i32, i32 }
%struct.anon.22 = type { i24 }

@funcs = internal constant { %struct.opp_funcs, [48 x i8] } { %struct.opp_funcs { ptr @dce110_opp_program_fmt, ptr @dce110_opp_set_dyn_expansion, ptr @dce110_opp_program_bit_depth_reduction, ptr null, ptr @dce110_opp_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@dce60_opp_funcs = internal constant { %struct.opp_funcs, [48 x i8] } { %struct.opp_funcs { ptr @dce60_opp_program_fmt, ptr @dce110_opp_set_dyn_expansion, ptr @dce60_opp_program_bit_depth_reduction, ptr null, ptr @dce110_opp_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__func__.set_temporal_dither = private unnamed_addr constant [20 x i8] c"set_temporal_dither\00", align 1
@__func__.program_formatter_reset_dig_resync_fifo = private unnamed_addr constant [40 x i8] c"program_formatter_reset_dig_resync_fifo\00", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 32, i64 64]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 711, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"dce60_opp_funcs\00", align 1
@___asan_gen_.11 = private constant [58 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_opp.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 719, i32 31 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @funcs, ptr @dce60_opp_funcs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_opp_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_set_clamping(ptr nocapture noundef readonly %opp110, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opp110, align 8
  %regs = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %FMT_CLAMP_CNTL = getelementptr inbounds %struct.dce_opp_registers, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %FMT_CLAMP_CNTL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %FMT_CLAMP_CNTL, align 4
  %opp_shift = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 2
  %6 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opp_shift, align 4
  %FMT_CLAMP_DATA_EN = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 30
  %8 = ptrtoint ptr %FMT_CLAMP_DATA_EN to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %FMT_CLAMP_DATA_EN, align 1
  %opp_mask = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 3
  %10 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opp_mask, align 8
  %FMT_CLAMP_DATA_EN1 = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 30
  %12 = ptrtoint ptr %FMT_CLAMP_DATA_EN1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %FMT_CLAMP_DATA_EN1, align 4
  %FMT_CLAMP_COLOR_FORMAT = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 31
  %14 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %FMT_CLAMP_COLOR_FORMAT, align 1
  %conv = zext i8 %15 to i32
  %FMT_CLAMP_COLOR_FORMAT4 = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 31
  %16 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %FMT_CLAMP_COLOR_FORMAT4, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0, i32 noundef %conv, i32 noundef %17, i32 noundef 0) #4
  %clamping_level = getelementptr inbounds %struct.clamping_and_pixel_encoding_params, ptr %params, i32 0, i32 1
  %18 = ptrtoint ptr %clamping_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clamping_level, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb49
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb34
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %opp110, align 8
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %FMT_CLAMP_CNTL8 = getelementptr inbounds %struct.dce_opp_registers, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %FMT_CLAMP_CNTL8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %FMT_CLAMP_CNTL8, align 4
  %27 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %opp_shift, align 4
  %FMT_CLAMP_DATA_EN10 = getelementptr inbounds %struct.dce_opp_shift, ptr %28, i32 0, i32 30
  %29 = ptrtoint ptr %FMT_CLAMP_DATA_EN10 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %FMT_CLAMP_DATA_EN10, align 1
  %31 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %opp_mask, align 8
  %FMT_CLAMP_DATA_EN12 = getelementptr inbounds %struct.dce_opp_mask, ptr %32, i32 0, i32 30
  %33 = ptrtoint ptr %FMT_CLAMP_DATA_EN12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %FMT_CLAMP_DATA_EN12, align 4
  %FMT_CLAMP_COLOR_FORMAT14 = getelementptr inbounds %struct.dce_opp_shift, ptr %28, i32 0, i32 31
  %35 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT14 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %FMT_CLAMP_COLOR_FORMAT14, align 1
  %conv15 = zext i8 %36 to i32
  %FMT_CLAMP_COLOR_FORMAT17 = getelementptr inbounds %struct.dce_opp_mask, ptr %32, i32 0, i32 31
  %37 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %FMT_CLAMP_COLOR_FORMAT17, align 4
  %call18 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %22, i32 noundef %26, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %30, i32 noundef %34, i32 noundef 1, i32 noundef %conv15, i32 noundef %38, i32 noundef 1) #4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %opp110, align 8
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %FMT_CLAMP_CNTL23 = getelementptr inbounds %struct.dce_opp_registers, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %FMT_CLAMP_CNTL23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %FMT_CLAMP_CNTL23, align 4
  %45 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %opp_shift, align 4
  %FMT_CLAMP_DATA_EN25 = getelementptr inbounds %struct.dce_opp_shift, ptr %46, i32 0, i32 30
  %47 = ptrtoint ptr %FMT_CLAMP_DATA_EN25 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %FMT_CLAMP_DATA_EN25, align 1
  %49 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %opp_mask, align 8
  %FMT_CLAMP_DATA_EN27 = getelementptr inbounds %struct.dce_opp_mask, ptr %50, i32 0, i32 30
  %51 = ptrtoint ptr %FMT_CLAMP_DATA_EN27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %FMT_CLAMP_DATA_EN27, align 4
  %FMT_CLAMP_COLOR_FORMAT29 = getelementptr inbounds %struct.dce_opp_shift, ptr %46, i32 0, i32 31
  %53 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT29 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %FMT_CLAMP_COLOR_FORMAT29, align 1
  %conv30 = zext i8 %54 to i32
  %FMT_CLAMP_COLOR_FORMAT32 = getelementptr inbounds %struct.dce_opp_mask, ptr %50, i32 0, i32 31
  %55 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT32 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %FMT_CLAMP_COLOR_FORMAT32, align 4
  %call33 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %40, i32 noundef %44, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %48, i32 noundef %52, i32 noundef 1, i32 noundef %conv30, i32 noundef %56, i32 noundef 2) #4
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %opp110, align 8
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 8
  %FMT_CLAMP_CNTL38 = getelementptr inbounds %struct.dce_opp_registers, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %FMT_CLAMP_CNTL38 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %FMT_CLAMP_CNTL38, align 4
  %63 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %opp_shift, align 4
  %FMT_CLAMP_DATA_EN40 = getelementptr inbounds %struct.dce_opp_shift, ptr %64, i32 0, i32 30
  %65 = ptrtoint ptr %FMT_CLAMP_DATA_EN40 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %FMT_CLAMP_DATA_EN40, align 1
  %67 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %opp_mask, align 8
  %FMT_CLAMP_DATA_EN42 = getelementptr inbounds %struct.dce_opp_mask, ptr %68, i32 0, i32 30
  %69 = ptrtoint ptr %FMT_CLAMP_DATA_EN42 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %FMT_CLAMP_DATA_EN42, align 4
  %FMT_CLAMP_COLOR_FORMAT44 = getelementptr inbounds %struct.dce_opp_shift, ptr %64, i32 0, i32 31
  %71 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT44 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %FMT_CLAMP_COLOR_FORMAT44, align 1
  %conv45 = zext i8 %72 to i32
  %FMT_CLAMP_COLOR_FORMAT47 = getelementptr inbounds %struct.dce_opp_mask, ptr %68, i32 0, i32 31
  %73 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT47 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %FMT_CLAMP_COLOR_FORMAT47, align 4
  %call48 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %58, i32 noundef %62, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %66, i32 noundef %70, i32 noundef 1, i32 noundef %conv45, i32 noundef %74, i32 noundef 3) #4
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %opp110, align 8
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 8
  %FMT_CLAMP_CNTL53 = getelementptr inbounds %struct.dce_opp_registers, ptr %78, i32 0, i32 10
  %79 = ptrtoint ptr %FMT_CLAMP_CNTL53 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %FMT_CLAMP_CNTL53, align 4
  %81 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %opp_shift, align 4
  %FMT_CLAMP_DATA_EN55 = getelementptr inbounds %struct.dce_opp_shift, ptr %82, i32 0, i32 30
  %83 = ptrtoint ptr %FMT_CLAMP_DATA_EN55 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %FMT_CLAMP_DATA_EN55, align 1
  %85 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %opp_mask, align 8
  %FMT_CLAMP_DATA_EN57 = getelementptr inbounds %struct.dce_opp_mask, ptr %86, i32 0, i32 30
  %87 = ptrtoint ptr %FMT_CLAMP_DATA_EN57 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %FMT_CLAMP_DATA_EN57, align 4
  %FMT_CLAMP_COLOR_FORMAT59 = getelementptr inbounds %struct.dce_opp_shift, ptr %82, i32 0, i32 31
  %89 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT59 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %FMT_CLAMP_COLOR_FORMAT59, align 1
  %conv60 = zext i8 %90 to i32
  %FMT_CLAMP_COLOR_FORMAT62 = getelementptr inbounds %struct.dce_opp_mask, ptr %86, i32 0, i32 31
  %91 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT62 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %FMT_CLAMP_COLOR_FORMAT62, align 4
  %call63 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %76, i32 noundef %80, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %84, i32 noundef %88, i32 noundef 1, i32 noundef %conv60, i32 noundef %92, i32 noundef 7) #4
  %93 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %opp110, align 8
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 8
  %FMT_CLAMP_COMPONENT_R = getelementptr inbounds %struct.dce_opp_registers, ptr %96, i32 0, i32 11
  %97 = ptrtoint ptr %FMT_CLAMP_COMPONENT_R to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %FMT_CLAMP_COMPONENT_R, align 4
  %99 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %opp_shift, align 4
  %FMT_CLAMP_LOWER_R = getelementptr inbounds %struct.dce_opp_shift, ptr %100, i32 0, i32 32
  %101 = ptrtoint ptr %FMT_CLAMP_LOWER_R to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %FMT_CLAMP_LOWER_R, align 1
  %103 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %opp_mask, align 8
  %FMT_CLAMP_LOWER_R69 = getelementptr inbounds %struct.dce_opp_mask, ptr %104, i32 0, i32 32
  %105 = ptrtoint ptr %FMT_CLAMP_LOWER_R69 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %FMT_CLAMP_LOWER_R69, align 4
  %FMT_CLAMP_UPPER_R = getelementptr inbounds %struct.dce_opp_shift, ptr %100, i32 0, i32 33
  %107 = ptrtoint ptr %FMT_CLAMP_UPPER_R to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %FMT_CLAMP_UPPER_R, align 1
  %conv71 = zext i8 %108 to i32
  %FMT_CLAMP_UPPER_R73 = getelementptr inbounds %struct.dce_opp_mask, ptr %104, i32 0, i32 33
  %109 = ptrtoint ptr %FMT_CLAMP_UPPER_R73 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %FMT_CLAMP_UPPER_R73, align 4
  %call74 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %94, i32 noundef %98, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %102, i32 noundef %106, i32 noundef 16, i32 noundef %conv71, i32 noundef %110, i32 noundef 4079) #4
  %111 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %opp110, align 8
  %113 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs, align 8
  %FMT_CLAMP_COMPONENT_G = getelementptr inbounds %struct.dce_opp_registers, ptr %114, i32 0, i32 12
  %115 = ptrtoint ptr %FMT_CLAMP_COMPONENT_G to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %FMT_CLAMP_COMPONENT_G, align 4
  %117 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %opp_shift, align 4
  %FMT_CLAMP_LOWER_G = getelementptr inbounds %struct.dce_opp_shift, ptr %118, i32 0, i32 34
  %119 = ptrtoint ptr %FMT_CLAMP_LOWER_G to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %FMT_CLAMP_LOWER_G, align 1
  %121 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %opp_mask, align 8
  %FMT_CLAMP_LOWER_G80 = getelementptr inbounds %struct.dce_opp_mask, ptr %122, i32 0, i32 34
  %123 = ptrtoint ptr %FMT_CLAMP_LOWER_G80 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %FMT_CLAMP_LOWER_G80, align 4
  %FMT_CLAMP_UPPER_G = getelementptr inbounds %struct.dce_opp_shift, ptr %118, i32 0, i32 35
  %125 = ptrtoint ptr %FMT_CLAMP_UPPER_G to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %FMT_CLAMP_UPPER_G, align 1
  %conv82 = zext i8 %126 to i32
  %FMT_CLAMP_UPPER_G84 = getelementptr inbounds %struct.dce_opp_mask, ptr %122, i32 0, i32 35
  %127 = ptrtoint ptr %FMT_CLAMP_UPPER_G84 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %FMT_CLAMP_UPPER_G84, align 4
  %call85 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %112, i32 noundef %116, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %120, i32 noundef %124, i32 noundef 16, i32 noundef %conv82, i32 noundef %128, i32 noundef 4079) #4
  %129 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %opp110, align 8
  %131 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs, align 8
  %FMT_CLAMP_COMPONENT_B = getelementptr inbounds %struct.dce_opp_registers, ptr %132, i32 0, i32 13
  %133 = ptrtoint ptr %FMT_CLAMP_COMPONENT_B to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %FMT_CLAMP_COMPONENT_B, align 4
  %135 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %opp_shift, align 4
  %FMT_CLAMP_LOWER_B = getelementptr inbounds %struct.dce_opp_shift, ptr %136, i32 0, i32 36
  %137 = ptrtoint ptr %FMT_CLAMP_LOWER_B to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %FMT_CLAMP_LOWER_B, align 1
  %139 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %opp_mask, align 8
  %FMT_CLAMP_LOWER_B91 = getelementptr inbounds %struct.dce_opp_mask, ptr %140, i32 0, i32 36
  %141 = ptrtoint ptr %FMT_CLAMP_LOWER_B91 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %FMT_CLAMP_LOWER_B91, align 4
  %FMT_CLAMP_UPPER_B = getelementptr inbounds %struct.dce_opp_shift, ptr %136, i32 0, i32 37
  %143 = ptrtoint ptr %FMT_CLAMP_UPPER_B to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %FMT_CLAMP_UPPER_B, align 1
  %conv93 = zext i8 %144 to i32
  %FMT_CLAMP_UPPER_B95 = getelementptr inbounds %struct.dce_opp_mask, ptr %140, i32 0, i32 37
  %145 = ptrtoint ptr %FMT_CLAMP_UPPER_B95 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %FMT_CLAMP_UPPER_B95, align 4
  %call96 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %130, i32 noundef %134, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %138, i32 noundef %142, i32 noundef 16, i32 noundef %conv93, i32 noundef %146, i32 noundef 4079) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb49, %sw.bb34, %sw.bb19, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_program_bit_depth_reduction(ptr nocapture noundef readonly %opp, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opp, align 8
  %regs.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %FMT_BIT_DEPTH_CONTROL.i = getelementptr inbounds %struct.dce_opp_registers, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %FMT_BIT_DEPTH_CONTROL.i, align 4
  %opp_shift.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 2
  %6 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opp_shift.i, align 4
  %FMT_TRUNCATE_EN.i = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %FMT_TRUNCATE_EN.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %FMT_TRUNCATE_EN.i, align 1
  %opp_mask.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 3
  %10 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opp_mask.i, align 8
  %FMT_TRUNCATE_EN1.i = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %FMT_TRUNCATE_EN1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %FMT_TRUNCATE_EN1.i, align 4
  %FMT_TRUNCATE_DEPTH.i = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %FMT_TRUNCATE_DEPTH.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %FMT_TRUNCATE_DEPTH.i, align 1
  %conv.i = zext i8 %15 to i32
  %FMT_TRUNCATE_DEPTH4.i = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %FMT_TRUNCATE_DEPTH4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %FMT_TRUNCATE_DEPTH4.i, align 4
  %FMT_TRUNCATE_MODE.i = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %FMT_TRUNCATE_MODE.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %FMT_TRUNCATE_MODE.i, align 1
  %conv6.i = zext i8 %19 to i32
  %FMT_TRUNCATE_MODE8.i = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 4
  %20 = ptrtoint ptr %FMT_TRUNCATE_MODE8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %FMT_TRUNCATE_MODE8.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 3, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0, i32 noundef %conv.i, i32 noundef %17, i32 noundef 0, i32 noundef %conv6.i, i32 noundef %21, i32 noundef 0) #4
  %pixel_encoding.i = getelementptr inbounds %struct.bit_depth_reduction_params, ptr %params, i32 0, i32 4
  %22 = ptrtoint ptr %pixel_encoding.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixel_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp eq i32 %23, 2
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load.i = load i32, ptr %params, align 4
  br i1 %cmp.i, label %if.then.i, label %if.end59.i

if.then.i:                                        ; preds = %entry
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %bf.clear.i = and i32 %bf.lshr.i, 3
  %25 = zext i32 %bf.clear.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %bf.clear.i, label %if.then.i.set_truncation.exit_crit_edge [
    i32 1, label %if.then12.i
    i32 2, label %if.then38.i
  ]

if.then.i.set_truncation.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_truncation.exit

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %opp, align 8
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 8
  %FMT_BIT_DEPTH_CONTROL16.i = getelementptr inbounds %struct.dce_opp_registers, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %FMT_BIT_DEPTH_CONTROL16.i, align 4
  %32 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %opp_shift.i, align 4
  %FMT_TRUNCATE_EN18.i = getelementptr inbounds %struct.dce_opp_shift, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %FMT_TRUNCATE_EN18.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %FMT_TRUNCATE_EN18.i, align 1
  %36 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %opp_mask.i, align 8
  %FMT_TRUNCATE_EN20.i = getelementptr inbounds %struct.dce_opp_mask, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %FMT_TRUNCATE_EN20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %FMT_TRUNCATE_EN20.i, align 4
  %FMT_TRUNCATE_DEPTH22.i = getelementptr inbounds %struct.dce_opp_shift, ptr %33, i32 0, i32 3
  %40 = ptrtoint ptr %FMT_TRUNCATE_DEPTH22.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %FMT_TRUNCATE_DEPTH22.i, align 1
  %conv23.i = zext i8 %41 to i32
  %FMT_TRUNCATE_DEPTH25.i = getelementptr inbounds %struct.dce_opp_mask, ptr %37, i32 0, i32 3
  %42 = ptrtoint ptr %FMT_TRUNCATE_DEPTH25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %FMT_TRUNCATE_DEPTH25.i, align 4
  %FMT_TRUNCATE_MODE27.i = getelementptr inbounds %struct.dce_opp_shift, ptr %33, i32 0, i32 4
  %44 = ptrtoint ptr %FMT_TRUNCATE_MODE27.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %FMT_TRUNCATE_MODE27.i, align 1
  %conv28.i = zext i8 %45 to i32
  %FMT_TRUNCATE_MODE30.i = getelementptr inbounds %struct.dce_opp_mask, ptr %37, i32 0, i32 4
  %46 = ptrtoint ptr %FMT_TRUNCATE_MODE30.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %FMT_TRUNCATE_MODE30.i, align 4
  %call31.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %27, i32 noundef %31, i32 noundef 3, i8 noundef zeroext %35, i32 noundef %39, i32 noundef 1, i32 noundef %conv23.i, i32 noundef %43, i32 noundef 1, i32 noundef %conv28.i, i32 noundef %47, i32 noundef 0) #4
  br label %set_truncation.exit

if.then38.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %opp, align 8
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 8
  %FMT_BIT_DEPTH_CONTROL42.i = getelementptr inbounds %struct.dce_opp_registers, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL42.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %FMT_BIT_DEPTH_CONTROL42.i, align 4
  %54 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %opp_shift.i, align 4
  %FMT_TRUNCATE_EN44.i = getelementptr inbounds %struct.dce_opp_shift, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %FMT_TRUNCATE_EN44.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %FMT_TRUNCATE_EN44.i, align 1
  %58 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %opp_mask.i, align 8
  %FMT_TRUNCATE_EN46.i = getelementptr inbounds %struct.dce_opp_mask, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %FMT_TRUNCATE_EN46.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %FMT_TRUNCATE_EN46.i, align 4
  %FMT_TRUNCATE_DEPTH48.i = getelementptr inbounds %struct.dce_opp_shift, ptr %55, i32 0, i32 3
  %62 = ptrtoint ptr %FMT_TRUNCATE_DEPTH48.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %FMT_TRUNCATE_DEPTH48.i, align 1
  %conv49.i = zext i8 %63 to i32
  %FMT_TRUNCATE_DEPTH51.i = getelementptr inbounds %struct.dce_opp_mask, ptr %59, i32 0, i32 3
  %64 = ptrtoint ptr %FMT_TRUNCATE_DEPTH51.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %FMT_TRUNCATE_DEPTH51.i, align 4
  %FMT_TRUNCATE_MODE53.i = getelementptr inbounds %struct.dce_opp_shift, ptr %55, i32 0, i32 4
  %66 = ptrtoint ptr %FMT_TRUNCATE_MODE53.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %FMT_TRUNCATE_MODE53.i, align 1
  %conv54.i = zext i8 %67 to i32
  %FMT_TRUNCATE_MODE56.i = getelementptr inbounds %struct.dce_opp_mask, ptr %59, i32 0, i32 4
  %68 = ptrtoint ptr %FMT_TRUNCATE_MODE56.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %FMT_TRUNCATE_MODE56.i, align 4
  %call57.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %49, i32 noundef %53, i32 noundef 3, i8 noundef zeroext %57, i32 noundef %61, i32 noundef 1, i32 noundef %conv49.i, i32 noundef %65, i32 noundef 2, i32 noundef %conv54.i, i32 noundef %69, i32 noundef 0) #4
  br label %set_truncation.exit

if.end59.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %cmp63.i = icmp sgt i32 %bf.load.i, -1
  br i1 %cmp63.i, label %if.end59.i.set_truncation.exit_crit_edge, label %if.end66.i

if.end59.i.set_truncation.exit_crit_edge:         ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_truncation.exit

if.end66.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %opp, align 8
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 8
  %FMT_BIT_DEPTH_CONTROL70.i = getelementptr inbounds %struct.dce_opp_registers, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL70.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %FMT_BIT_DEPTH_CONTROL70.i, align 4
  %76 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %opp_shift.i, align 4
  %FMT_TRUNCATE_EN72.i = getelementptr inbounds %struct.dce_opp_shift, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %FMT_TRUNCATE_EN72.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %FMT_TRUNCATE_EN72.i, align 1
  %80 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %opp_mask.i, align 8
  %FMT_TRUNCATE_EN74.i = getelementptr inbounds %struct.dce_opp_mask, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %FMT_TRUNCATE_EN74.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %FMT_TRUNCATE_EN74.i, align 4
  %FMT_TRUNCATE_DEPTH76.i = getelementptr inbounds %struct.dce_opp_shift, ptr %77, i32 0, i32 3
  %84 = ptrtoint ptr %FMT_TRUNCATE_DEPTH76.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %FMT_TRUNCATE_DEPTH76.i, align 1
  %conv77.i = zext i8 %85 to i32
  %FMT_TRUNCATE_DEPTH79.i = getelementptr inbounds %struct.dce_opp_mask, ptr %81, i32 0, i32 3
  %86 = ptrtoint ptr %FMT_TRUNCATE_DEPTH79.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %FMT_TRUNCATE_DEPTH79.i, align 4
  %bf.lshr82.i = lshr i32 %bf.load.i, 29
  %bf.clear83.i = and i32 %bf.lshr82.i, 3
  %FMT_TRUNCATE_MODE85.i = getelementptr inbounds %struct.dce_opp_shift, ptr %77, i32 0, i32 4
  %88 = ptrtoint ptr %FMT_TRUNCATE_MODE85.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %FMT_TRUNCATE_MODE85.i, align 1
  %conv86.i = zext i8 %89 to i32
  %FMT_TRUNCATE_MODE88.i = getelementptr inbounds %struct.dce_opp_mask, ptr %81, i32 0, i32 4
  %90 = ptrtoint ptr %FMT_TRUNCATE_MODE88.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %FMT_TRUNCATE_MODE88.i, align 4
  %bf.lshr91.i = lshr i32 %bf.load.i, 28
  %bf.clear92.i = and i32 %bf.lshr91.i, 1
  %call93.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %71, i32 noundef %75, i32 noundef 3, i8 noundef zeroext %79, i32 noundef %83, i32 noundef 1, i32 noundef %conv77.i, i32 noundef %87, i32 noundef %bf.clear83.i, i32 noundef %conv86.i, i32 noundef %91, i32 noundef %bf.clear92.i) #4
  br label %set_truncation.exit

set_truncation.exit:                              ; preds = %if.end66.i, %if.end59.i.set_truncation.exit_crit_edge, %if.then38.i, %if.then12.i, %if.then.i.set_truncation.exit_crit_edge
  tail call fastcc void @set_spatial_dither(ptr noundef %opp, ptr noundef %params)
  tail call fastcc void @set_temporal_dither(ptr noundef %opp, ptr noundef %params)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_spatial_dither(ptr nocapture noundef readonly %opp110, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opp110, align 8
  %regs = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL = getelementptr inbounds %struct.dce_opp_registers, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %FMT_BIT_DEPTH_CONTROL, align 4
  %opp_shift = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 2
  %6 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opp_shift, align 4
  %FMT_SPATIAL_DITHER_EN = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %FMT_SPATIAL_DITHER_EN to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %FMT_SPATIAL_DITHER_EN, align 1
  %opp_mask = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 3
  %10 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opp_mask, align 8
  %FMT_SPATIAL_DITHER_EN1 = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %FMT_SPATIAL_DITHER_EN1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %FMT_SPATIAL_DITHER_EN1, align 4
  %FMT_SPATIAL_DITHER_DEPTH = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %FMT_SPATIAL_DITHER_DEPTH to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %FMT_SPATIAL_DITHER_DEPTH, align 1
  %conv = zext i8 %15 to i32
  %FMT_SPATIAL_DITHER_DEPTH4 = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %FMT_SPATIAL_DITHER_DEPTH4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %FMT_SPATIAL_DITHER_DEPTH4, align 4
  %FMT_SPATIAL_DITHER_MODE = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 7
  %18 = ptrtoint ptr %FMT_SPATIAL_DITHER_MODE to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %FMT_SPATIAL_DITHER_MODE, align 1
  %conv6 = zext i8 %19 to i32
  %FMT_SPATIAL_DITHER_MODE8 = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 7
  %20 = ptrtoint ptr %FMT_SPATIAL_DITHER_MODE8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %FMT_SPATIAL_DITHER_MODE8, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 3, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0, i32 noundef %conv, i32 noundef %17, i32 noundef 0, i32 noundef %conv6, i32 noundef %21, i32 noundef 0) #4
  %22 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %opp110, align 8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL12 = getelementptr inbounds %struct.dce_opp_registers, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %FMT_BIT_DEPTH_CONTROL12, align 4
  %28 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %opp_shift, align 4
  %FMT_HIGHPASS_RANDOM_ENABLE = getelementptr inbounds %struct.dce_opp_shift, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %FMT_HIGHPASS_RANDOM_ENABLE to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %FMT_HIGHPASS_RANDOM_ENABLE, align 1
  %32 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %opp_mask, align 8
  %FMT_HIGHPASS_RANDOM_ENABLE15 = getelementptr inbounds %struct.dce_opp_mask, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %FMT_HIGHPASS_RANDOM_ENABLE15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %FMT_HIGHPASS_RANDOM_ENABLE15, align 4
  %FMT_FRAME_RANDOM_ENABLE = getelementptr inbounds %struct.dce_opp_shift, ptr %29, i32 0, i32 17
  %36 = ptrtoint ptr %FMT_FRAME_RANDOM_ENABLE to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %FMT_FRAME_RANDOM_ENABLE, align 1
  %conv17 = zext i8 %37 to i32
  %FMT_FRAME_RANDOM_ENABLE19 = getelementptr inbounds %struct.dce_opp_mask, ptr %33, i32 0, i32 17
  %38 = ptrtoint ptr %FMT_FRAME_RANDOM_ENABLE19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %FMT_FRAME_RANDOM_ENABLE19, align 4
  %FMT_RGB_RANDOM_ENABLE = getelementptr inbounds %struct.dce_opp_shift, ptr %29, i32 0, i32 18
  %40 = ptrtoint ptr %FMT_RGB_RANDOM_ENABLE to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %FMT_RGB_RANDOM_ENABLE, align 1
  %conv21 = zext i8 %41 to i32
  %FMT_RGB_RANDOM_ENABLE23 = getelementptr inbounds %struct.dce_opp_mask, ptr %33, i32 0, i32 18
  %42 = ptrtoint ptr %FMT_RGB_RANDOM_ENABLE23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %FMT_RGB_RANDOM_ENABLE23, align 4
  %call24 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %23, i32 noundef %27, i32 noundef 3, i8 noundef zeroext %31, i32 noundef %35, i32 noundef 0, i32 noundef %conv17, i32 noundef %39, i32 noundef 0, i32 noundef %conv21, i32 noundef %43, i32 noundef 0) #4
  %44 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %opp110, align 8
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL28 = getelementptr inbounds %struct.dce_opp_registers, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %FMT_BIT_DEPTH_CONTROL28, align 4
  %50 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %opp_shift, align 4
  %FMT_TEMPORAL_DITHER_EN = getelementptr inbounds %struct.dce_opp_shift, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %FMT_TEMPORAL_DITHER_EN to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %FMT_TEMPORAL_DITHER_EN, align 1
  %54 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %opp_mask, align 8
  %FMT_TEMPORAL_DITHER_EN31 = getelementptr inbounds %struct.dce_opp_mask, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %FMT_TEMPORAL_DITHER_EN31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %FMT_TEMPORAL_DITHER_EN31, align 4
  %call32 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %45, i32 noundef %49, i32 noundef 1, i8 noundef zeroext %53, i32 noundef %57, i32 noundef 0) #4
  %58 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load = load i32, ptr %params, align 4
  %59 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp = icmp eq i32 %59, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %60 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %opp_mask, align 8
  %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX = getelementptr inbounds %struct.dce_opp_mask, ptr %61, i32 0, i32 19
  %62 = ptrtoint ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not = icmp eq i32 %63, 0
  br i1 %tobool.not, label %if.end.if.end111_crit_edge, label %land.lhs.true

if.end.if.end111_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

land.lhs.true:                                    ; preds = %if.end
  %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP = getelementptr inbounds %struct.dce_opp_mask, ptr %61, i32 0, i32 20
  %64 = ptrtoint ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool36.not = icmp eq i32 %65, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end111_crit_edge, label %if.then37

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then37:                                        ; preds = %land.lhs.true
  %66 = and i32 %bf.load, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp42.not = icmp eq i32 %66, 0
  br i1 %cmp42.not, label %if.else95, label %if.then44

if.then44:                                        ; preds = %if.then37
  %bf.lshr47 = lshr i32 %bf.load, 25
  %bf.clear48 = and i32 %bf.lshr47, 3
  %67 = zext i32 %bf.clear48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %bf.clear48, label %if.then44.return_crit_edge [
    i32 0, label %if.then44.if.then57_crit_edge
    i32 1, label %if.then44.if.then57_crit_edge271
    i32 2, label %if.then77
  ]

if.then44.if.then57_crit_edge271:                 ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

if.then44.if.then57_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

if.then44.return_crit_edge:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then57:                                        ; preds = %if.then44.if.then57_crit_edge, %if.then44.if.then57_crit_edge271
  %68 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %opp110, align 8
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 8
  %FMT_CONTROL = getelementptr inbounds %struct.dce_opp_registers, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %FMT_CONTROL to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %FMT_CONTROL, align 4
  %74 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %opp_shift, align 4
  %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX62 = getelementptr inbounds %struct.dce_opp_shift, ptr %75, i32 0, i32 19
  %76 = ptrtoint ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX62 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX62, align 1
  %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP66 = getelementptr inbounds %struct.dce_opp_shift, ptr %75, i32 0, i32 20
  %78 = ptrtoint ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP66 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP66, align 1
  %conv67 = zext i8 %79 to i32
  %call70 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %69, i32 noundef %73, i32 noundef 2, i8 noundef zeroext %77, i32 noundef %63, i32 noundef 15, i32 noundef %conv67, i32 noundef %65, i32 noundef 2) #4
  br label %if.end111

if.then77:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %opp110, align 8
  %82 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs, align 8
  %FMT_CONTROL81 = getelementptr inbounds %struct.dce_opp_registers, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %FMT_CONTROL81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %FMT_CONTROL81, align 4
  %86 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %opp_shift, align 4
  %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX83 = getelementptr inbounds %struct.dce_opp_shift, ptr %87, i32 0, i32 19
  %88 = ptrtoint ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX83 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX83, align 1
  %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP87 = getelementptr inbounds %struct.dce_opp_shift, ptr %87, i32 0, i32 20
  %90 = ptrtoint ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP87 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP87, align 1
  %conv88 = zext i8 %91 to i32
  %call91 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %81, i32 noundef %85, i32 noundef 2, i8 noundef zeroext %89, i32 noundef %63, i32 noundef 3, i32 noundef %conv88, i32 noundef %65, i32 noundef 1) #4
  br label %if.end111

if.else95:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %opp110, align 8
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs, align 8
  %FMT_CONTROL99 = getelementptr inbounds %struct.dce_opp_registers, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %FMT_CONTROL99 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %FMT_CONTROL99, align 4
  %98 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %opp_shift, align 4
  %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX101 = getelementptr inbounds %struct.dce_opp_shift, ptr %99, i32 0, i32 19
  %100 = ptrtoint ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX101 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX101, align 1
  %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP105 = getelementptr inbounds %struct.dce_opp_shift, ptr %99, i32 0, i32 20
  %102 = ptrtoint ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP105 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP105, align 1
  %conv106 = zext i8 %103 to i32
  %call109 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %93, i32 noundef %97, i32 noundef 2, i8 noundef zeroext %101, i32 noundef %63, i32 noundef 0, i32 noundef %conv106, i32 noundef %65, i32 noundef 0) #4
  br label %if.end111

if.end111:                                        ; preds = %if.else95, %if.then77, %if.then57, %land.lhs.true.if.end111_crit_edge, %if.end.if.end111_crit_edge
  %104 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %opp110, align 8
  %106 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs, align 8
  %FMT_DITHER_RAND_R_SEED = getelementptr inbounds %struct.dce_opp_registers, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %FMT_DITHER_RAND_R_SEED to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %FMT_DITHER_RAND_R_SEED, align 4
  %110 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %opp_shift, align 4
  %FMT_RAND_R_SEED = getelementptr inbounds %struct.dce_opp_shift, ptr %111, i32 0, i32 22
  %112 = ptrtoint ptr %FMT_RAND_R_SEED to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %FMT_RAND_R_SEED, align 1
  %114 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %opp_mask, align 8
  %FMT_RAND_R_SEED117 = getelementptr inbounds %struct.dce_opp_mask, ptr %115, i32 0, i32 22
  %116 = ptrtoint ptr %FMT_RAND_R_SEED117 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %FMT_RAND_R_SEED117, align 4
  %r_seed_value = getelementptr inbounds %struct.bit_depth_reduction_params, ptr %params, i32 0, i32 1
  %118 = ptrtoint ptr %r_seed_value to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %r_seed_value, align 4
  %call118 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %105, i32 noundef %109, i32 noundef 1, i8 noundef zeroext %113, i32 noundef %117, i32 noundef %119) #4
  %120 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %opp110, align 8
  %122 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs, align 8
  %FMT_DITHER_RAND_G_SEED = getelementptr inbounds %struct.dce_opp_registers, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %FMT_DITHER_RAND_G_SEED to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %FMT_DITHER_RAND_G_SEED, align 4
  %126 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %opp_shift, align 4
  %FMT_RAND_G_SEED = getelementptr inbounds %struct.dce_opp_shift, ptr %127, i32 0, i32 23
  %128 = ptrtoint ptr %FMT_RAND_G_SEED to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %FMT_RAND_G_SEED, align 1
  %130 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %opp_mask, align 8
  %FMT_RAND_G_SEED124 = getelementptr inbounds %struct.dce_opp_mask, ptr %131, i32 0, i32 23
  %132 = ptrtoint ptr %FMT_RAND_G_SEED124 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %FMT_RAND_G_SEED124, align 4
  %g_seed_value = getelementptr inbounds %struct.bit_depth_reduction_params, ptr %params, i32 0, i32 3
  %134 = ptrtoint ptr %g_seed_value to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %g_seed_value, align 4
  %call125 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %121, i32 noundef %125, i32 noundef 1, i8 noundef zeroext %129, i32 noundef %133, i32 noundef %135) #4
  %136 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %opp110, align 8
  %138 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs, align 8
  %FMT_DITHER_RAND_B_SEED = getelementptr inbounds %struct.dce_opp_registers, ptr %139, i32 0, i32 5
  %140 = ptrtoint ptr %FMT_DITHER_RAND_B_SEED to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %FMT_DITHER_RAND_B_SEED, align 4
  %142 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %opp_shift, align 4
  %FMT_RAND_B_SEED = getelementptr inbounds %struct.dce_opp_shift, ptr %143, i32 0, i32 24
  %144 = ptrtoint ptr %FMT_RAND_B_SEED to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %FMT_RAND_B_SEED, align 1
  %146 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %opp_mask, align 8
  %FMT_RAND_B_SEED131 = getelementptr inbounds %struct.dce_opp_mask, ptr %147, i32 0, i32 24
  %148 = ptrtoint ptr %FMT_RAND_B_SEED131 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %FMT_RAND_B_SEED131, align 4
  %b_seed_value = getelementptr inbounds %struct.bit_depth_reduction_params, ptr %params, i32 0, i32 2
  %150 = ptrtoint ptr %b_seed_value to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %b_seed_value, align 4
  %call132 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %137, i32 noundef %141, i32 noundef 1, i8 noundef zeroext %145, i32 noundef %149, i32 noundef %151) #4
  %152 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %opp110, align 8
  %154 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL136 = getelementptr inbounds %struct.dce_opp_registers, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL136 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %FMT_BIT_DEPTH_CONTROL136, align 4
  %158 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %opp_shift, align 4
  %FMT_HIGHPASS_RANDOM_ENABLE138 = getelementptr inbounds %struct.dce_opp_shift, ptr %159, i32 0, i32 16
  %160 = ptrtoint ptr %FMT_HIGHPASS_RANDOM_ENABLE138 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %FMT_HIGHPASS_RANDOM_ENABLE138, align 1
  %162 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %opp_mask, align 8
  %FMT_HIGHPASS_RANDOM_ENABLE140 = getelementptr inbounds %struct.dce_opp_mask, ptr %163, i32 0, i32 16
  %164 = ptrtoint ptr %FMT_HIGHPASS_RANDOM_ENABLE140 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %FMT_HIGHPASS_RANDOM_ENABLE140, align 4
  %166 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %166)
  %bf.load142 = load i32, ptr %params, align 4
  %bf.lshr143 = lshr i32 %bf.load142, 20
  %bf.clear144 = and i32 %bf.lshr143, 1
  %FMT_FRAME_RANDOM_ENABLE146 = getelementptr inbounds %struct.dce_opp_shift, ptr %159, i32 0, i32 17
  %167 = ptrtoint ptr %FMT_FRAME_RANDOM_ENABLE146 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %FMT_FRAME_RANDOM_ENABLE146, align 1
  %conv147 = zext i8 %168 to i32
  %FMT_FRAME_RANDOM_ENABLE149 = getelementptr inbounds %struct.dce_opp_mask, ptr %163, i32 0, i32 17
  %169 = ptrtoint ptr %FMT_FRAME_RANDOM_ENABLE149 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %FMT_FRAME_RANDOM_ENABLE149, align 4
  %bf.lshr152 = lshr i32 %bf.load142, 21
  %bf.clear153 = and i32 %bf.lshr152, 1
  %FMT_RGB_RANDOM_ENABLE155 = getelementptr inbounds %struct.dce_opp_shift, ptr %159, i32 0, i32 18
  %171 = ptrtoint ptr %FMT_RGB_RANDOM_ENABLE155 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %FMT_RGB_RANDOM_ENABLE155, align 1
  %conv156 = zext i8 %172 to i32
  %FMT_RGB_RANDOM_ENABLE158 = getelementptr inbounds %struct.dce_opp_mask, ptr %163, i32 0, i32 18
  %173 = ptrtoint ptr %FMT_RGB_RANDOM_ENABLE158 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %FMT_RGB_RANDOM_ENABLE158, align 4
  %bf.lshr161 = lshr i32 %bf.load142, 22
  %bf.clear162 = and i32 %bf.lshr161, 1
  %call163 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %153, i32 noundef %157, i32 noundef 3, i8 noundef zeroext %161, i32 noundef %165, i32 noundef %bf.clear144, i32 noundef %conv147, i32 noundef %170, i32 noundef %bf.clear153, i32 noundef %conv156, i32 noundef %174, i32 noundef %bf.clear162) #4
  %175 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %opp110, align 8
  %177 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL167 = getelementptr inbounds %struct.dce_opp_registers, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL167 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %FMT_BIT_DEPTH_CONTROL167, align 4
  %181 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %opp_shift, align 4
  %FMT_SPATIAL_DITHER_DEPTH169 = getelementptr inbounds %struct.dce_opp_shift, ptr %182, i32 0, i32 6
  %183 = ptrtoint ptr %FMT_SPATIAL_DITHER_DEPTH169 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %FMT_SPATIAL_DITHER_DEPTH169, align 1
  %185 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %opp_mask, align 8
  %FMT_SPATIAL_DITHER_DEPTH171 = getelementptr inbounds %struct.dce_opp_mask, ptr %186, i32 0, i32 6
  %187 = ptrtoint ptr %FMT_SPATIAL_DITHER_DEPTH171 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %FMT_SPATIAL_DITHER_DEPTH171, align 4
  %189 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %189)
  %bf.load173 = load i32, ptr %params, align 4
  %bf.lshr174 = lshr i32 %bf.load173, 25
  %bf.clear175 = and i32 %bf.lshr174, 3
  %FMT_SPATIAL_DITHER_MODE177 = getelementptr inbounds %struct.dce_opp_shift, ptr %182, i32 0, i32 7
  %190 = ptrtoint ptr %FMT_SPATIAL_DITHER_MODE177 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %FMT_SPATIAL_DITHER_MODE177, align 1
  %conv178 = zext i8 %191 to i32
  %FMT_SPATIAL_DITHER_MODE180 = getelementptr inbounds %struct.dce_opp_mask, ptr %186, i32 0, i32 7
  %192 = ptrtoint ptr %FMT_SPATIAL_DITHER_MODE180 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %FMT_SPATIAL_DITHER_MODE180, align 4
  %bf.lshr183 = lshr i32 %bf.load173, 23
  %bf.clear184 = and i32 %bf.lshr183, 3
  %FMT_SPATIAL_DITHER_EN186 = getelementptr inbounds %struct.dce_opp_shift, ptr %182, i32 0, i32 5
  %194 = ptrtoint ptr %FMT_SPATIAL_DITHER_EN186 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %FMT_SPATIAL_DITHER_EN186, align 1
  %conv187 = zext i8 %195 to i32
  %FMT_SPATIAL_DITHER_EN189 = getelementptr inbounds %struct.dce_opp_mask, ptr %186, i32 0, i32 5
  %196 = ptrtoint ptr %FMT_SPATIAL_DITHER_EN189 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %FMT_SPATIAL_DITHER_EN189, align 4
  %call190 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %176, i32 noundef %180, i32 noundef 3, i8 noundef zeroext %184, i32 noundef %188, i32 noundef %bf.clear175, i32 noundef %conv178, i32 noundef %193, i32 noundef %bf.clear184, i32 noundef %conv187, i32 noundef %197, i32 noundef 1) #4
  br label %return

return:                                           ; preds = %if.end111, %if.then44.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_temporal_dither(ptr nocapture noundef readonly %opp110, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opp110, align 8
  %regs = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL = getelementptr inbounds %struct.dce_opp_registers, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %FMT_BIT_DEPTH_CONTROL, align 4
  %opp_shift = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 2
  %6 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opp_shift, align 4
  %FMT_TEMPORAL_DITHER_EN = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %FMT_TEMPORAL_DITHER_EN to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %FMT_TEMPORAL_DITHER_EN, align 1
  %opp_mask = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 3
  %10 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opp_mask, align 8
  %FMT_TEMPORAL_DITHER_EN1 = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %FMT_TEMPORAL_DITHER_EN1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %FMT_TEMPORAL_DITHER_EN1, align 4
  %FMT_TEMPORAL_DITHER_RESET = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %FMT_TEMPORAL_DITHER_RESET to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %FMT_TEMPORAL_DITHER_RESET, align 1
  %conv = zext i8 %15 to i32
  %FMT_TEMPORAL_DITHER_RESET4 = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 9
  %16 = ptrtoint ptr %FMT_TEMPORAL_DITHER_RESET4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %FMT_TEMPORAL_DITHER_RESET4, align 4
  %FMT_TEMPORAL_DITHER_OFFSET = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 10
  %18 = ptrtoint ptr %FMT_TEMPORAL_DITHER_OFFSET to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %FMT_TEMPORAL_DITHER_OFFSET, align 1
  %conv6 = zext i8 %19 to i32
  %FMT_TEMPORAL_DITHER_OFFSET8 = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 10
  %20 = ptrtoint ptr %FMT_TEMPORAL_DITHER_OFFSET8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %FMT_TEMPORAL_DITHER_OFFSET8, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 3, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0, i32 noundef %conv, i32 noundef %17, i32 noundef 0, i32 noundef %conv6, i32 noundef %21, i32 noundef 0) #4
  %22 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %opp110, align 8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL12 = getelementptr inbounds %struct.dce_opp_registers, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %FMT_BIT_DEPTH_CONTROL12, align 4
  %28 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %opp_shift, align 4
  %FMT_TEMPORAL_DITHER_DEPTH = getelementptr inbounds %struct.dce_opp_shift, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %FMT_TEMPORAL_DITHER_DEPTH to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %FMT_TEMPORAL_DITHER_DEPTH, align 1
  %32 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %opp_mask, align 8
  %FMT_TEMPORAL_DITHER_DEPTH15 = getelementptr inbounds %struct.dce_opp_mask, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %FMT_TEMPORAL_DITHER_DEPTH15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %FMT_TEMPORAL_DITHER_DEPTH15, align 4
  %FMT_TEMPORAL_LEVEL = getelementptr inbounds %struct.dce_opp_shift, ptr %29, i32 0, i32 12
  %36 = ptrtoint ptr %FMT_TEMPORAL_LEVEL to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %FMT_TEMPORAL_LEVEL, align 1
  %conv17 = zext i8 %37 to i32
  %FMT_TEMPORAL_LEVEL19 = getelementptr inbounds %struct.dce_opp_mask, ptr %33, i32 0, i32 12
  %38 = ptrtoint ptr %FMT_TEMPORAL_LEVEL19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %FMT_TEMPORAL_LEVEL19, align 4
  %call20 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %23, i32 noundef %27, i32 noundef 2, i8 noundef zeroext %31, i32 noundef %35, i32 noundef 0, i32 noundef %conv17, i32 noundef %39, i32 noundef 0) #4
  %40 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %opp110, align 8
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL24 = getelementptr inbounds %struct.dce_opp_registers, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %FMT_BIT_DEPTH_CONTROL24, align 4
  %46 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %opp_shift, align 4
  %FMT_25FRC_SEL = getelementptr inbounds %struct.dce_opp_shift, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %FMT_25FRC_SEL to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %FMT_25FRC_SEL, align 1
  %50 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %opp_mask, align 8
  %FMT_25FRC_SEL27 = getelementptr inbounds %struct.dce_opp_mask, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %FMT_25FRC_SEL27 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %FMT_25FRC_SEL27, align 4
  %FMT_50FRC_SEL = getelementptr inbounds %struct.dce_opp_shift, ptr %47, i32 0, i32 14
  %54 = ptrtoint ptr %FMT_50FRC_SEL to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %FMT_50FRC_SEL, align 1
  %conv29 = zext i8 %55 to i32
  %FMT_50FRC_SEL31 = getelementptr inbounds %struct.dce_opp_mask, ptr %51, i32 0, i32 14
  %56 = ptrtoint ptr %FMT_50FRC_SEL31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %FMT_50FRC_SEL31, align 4
  %FMT_75FRC_SEL = getelementptr inbounds %struct.dce_opp_shift, ptr %47, i32 0, i32 15
  %58 = ptrtoint ptr %FMT_75FRC_SEL to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %FMT_75FRC_SEL, align 1
  %conv33 = zext i8 %59 to i32
  %FMT_75FRC_SEL35 = getelementptr inbounds %struct.dce_opp_mask, ptr %51, i32 0, i32 15
  %60 = ptrtoint ptr %FMT_75FRC_SEL35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %FMT_75FRC_SEL35, align 4
  %call36 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %41, i32 noundef %45, i32 noundef 3, i8 noundef zeroext %49, i32 noundef %53, i32 noundef 0, i32 noundef %conv29, i32 noundef %57, i32 noundef 0, i32 noundef %conv33, i32 noundef %61, i32 noundef 0) #4
  %62 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load = load i32, ptr %params, align 4
  %63 = and i32 %bf.load, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp = icmp eq i32 %63, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %bf.lshr40 = lshr i32 %bf.load, 17
  %bf.clear41 = and i32 %bf.lshr40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear41)
  %cmp42 = icmp eq i32 %bf.clear41, 2
  br i1 %cmp42, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %64 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %opp110, align 8
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL47 = getelementptr inbounds %struct.dce_opp_registers, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %FMT_BIT_DEPTH_CONTROL47, align 4
  %70 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %opp_shift, align 4
  %FMT_TEMPORAL_DITHER_DEPTH49 = getelementptr inbounds %struct.dce_opp_shift, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %FMT_TEMPORAL_DITHER_DEPTH49 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %FMT_TEMPORAL_DITHER_DEPTH49, align 1
  %74 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %opp_mask, align 8
  %FMT_TEMPORAL_DITHER_DEPTH51 = getelementptr inbounds %struct.dce_opp_mask, ptr %75, i32 0, i32 11
  %76 = ptrtoint ptr %FMT_TEMPORAL_DITHER_DEPTH51 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %FMT_TEMPORAL_DITHER_DEPTH51, align 4
  %FMT_TEMPORAL_DITHER_RESET57 = getelementptr inbounds %struct.dce_opp_shift, ptr %71, i32 0, i32 9
  %78 = ptrtoint ptr %FMT_TEMPORAL_DITHER_RESET57 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %FMT_TEMPORAL_DITHER_RESET57, align 1
  %conv58 = zext i8 %79 to i32
  %FMT_TEMPORAL_DITHER_RESET60 = getelementptr inbounds %struct.dce_opp_mask, ptr %75, i32 0, i32 9
  %80 = ptrtoint ptr %FMT_TEMPORAL_DITHER_RESET60 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %FMT_TEMPORAL_DITHER_RESET60, align 4
  %FMT_TEMPORAL_DITHER_OFFSET62 = getelementptr inbounds %struct.dce_opp_shift, ptr %71, i32 0, i32 10
  %82 = ptrtoint ptr %FMT_TEMPORAL_DITHER_OFFSET62 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %FMT_TEMPORAL_DITHER_OFFSET62, align 1
  %conv63 = zext i8 %83 to i32
  %FMT_TEMPORAL_DITHER_OFFSET65 = getelementptr inbounds %struct.dce_opp_mask, ptr %75, i32 0, i32 10
  %84 = ptrtoint ptr %FMT_TEMPORAL_DITHER_OFFSET65 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %FMT_TEMPORAL_DITHER_OFFSET65, align 4
  %call66 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %65, i32 noundef %69, i32 noundef 3, i8 noundef zeroext %73, i32 noundef %77, i32 noundef %bf.clear41, i32 noundef %conv58, i32 noundef %81, i32 noundef 0, i32 noundef %conv63, i32 noundef %85, i32 noundef 0) #4
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 8
  %FMT_TEMPORAL_DITHER_PATTERN_CONTROL = getelementptr inbounds %struct.dce_opp_registers, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %FMT_TEMPORAL_DITHER_PATTERN_CONTROL to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %FMT_TEMPORAL_DITHER_PATTERN_CONTROL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not = icmp eq i32 %89, 0
  br i1 %tobool.not, label %if.end.if.end79_crit_edge, label %if.then68

if.end.if.end79_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.then68:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %90 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %opp110, align 8
  tail call void @dm_write_reg_func(ptr noundef %91, i32 noundef %89, i32 noundef 0, ptr noundef nonnull @__func__.set_temporal_dither) #4
  %92 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %opp110, align 8
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs, align 8
  %FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_S_MATRIX = getelementptr inbounds %struct.dce_opp_registers, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_S_MATRIX to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_S_MATRIX, align 4
  tail call void @dm_write_reg_func(ptr noundef %93, i32 noundef %97, i32 noundef 0, ptr noundef nonnull @__func__.set_temporal_dither) #4
  %98 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %opp110, align 8
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 8
  %FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_T_MATRIX = getelementptr inbounds %struct.dce_opp_registers, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_T_MATRIX to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_T_MATRIX, align 4
  tail call void @dm_write_reg_func(ptr noundef %99, i32 noundef %103, i32 noundef 0, ptr noundef nonnull @__func__.set_temporal_dither) #4
  br label %if.end79

if.end79:                                         ; preds = %if.then68, %if.end.if.end79_crit_edge
  %104 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %opp110, align 8
  %106 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL83 = getelementptr inbounds %struct.dce_opp_registers, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL83 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %FMT_BIT_DEPTH_CONTROL83, align 4
  %110 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %opp_shift, align 4
  %FMT_TEMPORAL_LEVEL85 = getelementptr inbounds %struct.dce_opp_shift, ptr %111, i32 0, i32 12
  %112 = ptrtoint ptr %FMT_TEMPORAL_LEVEL85 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %FMT_TEMPORAL_LEVEL85, align 1
  %114 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %opp_mask, align 8
  %FMT_TEMPORAL_LEVEL87 = getelementptr inbounds %struct.dce_opp_mask, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %FMT_TEMPORAL_LEVEL87 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %FMT_TEMPORAL_LEVEL87, align 4
  %118 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %118)
  %bf.load89 = load i32, ptr %params, align 4
  %bf.lshr90 = lshr i32 %bf.load89, 16
  %bf.clear91 = and i32 %bf.lshr90, 1
  %call92 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %105, i32 noundef %109, i32 noundef 1, i8 noundef zeroext %113, i32 noundef %117, i32 noundef %bf.clear91) #4
  %119 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %opp110, align 8
  %121 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL96 = getelementptr inbounds %struct.dce_opp_registers, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL96 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %FMT_BIT_DEPTH_CONTROL96, align 4
  %125 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %opp_shift, align 4
  %FMT_25FRC_SEL98 = getelementptr inbounds %struct.dce_opp_shift, ptr %126, i32 0, i32 13
  %127 = ptrtoint ptr %FMT_25FRC_SEL98 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %FMT_25FRC_SEL98, align 1
  %129 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %opp_mask, align 8
  %FMT_25FRC_SEL100 = getelementptr inbounds %struct.dce_opp_mask, ptr %130, i32 0, i32 13
  %131 = ptrtoint ptr %FMT_25FRC_SEL100 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %FMT_25FRC_SEL100, align 4
  %133 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %133)
  %bf.load102 = load i32, ptr %params, align 4
  %bf.lshr103 = lshr i32 %bf.load102, 14
  %bf.clear104 = and i32 %bf.lshr103, 3
  %FMT_50FRC_SEL106 = getelementptr inbounds %struct.dce_opp_shift, ptr %126, i32 0, i32 14
  %134 = ptrtoint ptr %FMT_50FRC_SEL106 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %FMT_50FRC_SEL106, align 1
  %conv107 = zext i8 %135 to i32
  %FMT_50FRC_SEL109 = getelementptr inbounds %struct.dce_opp_mask, ptr %130, i32 0, i32 14
  %136 = ptrtoint ptr %FMT_50FRC_SEL109 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %FMT_50FRC_SEL109, align 4
  %bf.lshr112 = lshr i32 %bf.load102, 12
  %bf.clear113 = and i32 %bf.lshr112, 3
  %FMT_75FRC_SEL115 = getelementptr inbounds %struct.dce_opp_shift, ptr %126, i32 0, i32 15
  %138 = ptrtoint ptr %FMT_75FRC_SEL115 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %FMT_75FRC_SEL115, align 1
  %conv116 = zext i8 %139 to i32
  %FMT_75FRC_SEL118 = getelementptr inbounds %struct.dce_opp_mask, ptr %130, i32 0, i32 15
  %140 = ptrtoint ptr %FMT_75FRC_SEL118 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %FMT_75FRC_SEL118, align 4
  %bf.lshr121 = lshr i32 %bf.load102, 10
  %bf.clear122 = and i32 %bf.lshr121, 3
  %call123 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %120, i32 noundef %124, i32 noundef 3, i8 noundef zeroext %128, i32 noundef %132, i32 noundef %bf.clear104, i32 noundef %conv107, i32 noundef %137, i32 noundef %bf.clear113, i32 noundef %conv116, i32 noundef %141, i32 noundef %bf.clear122) #4
  %142 = ptrtoint ptr %opp110 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %opp110, align 8
  %144 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs, align 8
  %FMT_BIT_DEPTH_CONTROL127 = getelementptr inbounds %struct.dce_opp_registers, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL127 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %FMT_BIT_DEPTH_CONTROL127, align 4
  %148 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %opp_shift, align 4
  %FMT_TEMPORAL_DITHER_EN129 = getelementptr inbounds %struct.dce_opp_shift, ptr %149, i32 0, i32 8
  %150 = ptrtoint ptr %FMT_TEMPORAL_DITHER_EN129 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %FMT_TEMPORAL_DITHER_EN129, align 1
  %152 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %opp_mask, align 8
  %FMT_TEMPORAL_DITHER_EN131 = getelementptr inbounds %struct.dce_opp_mask, ptr %153, i32 0, i32 8
  %154 = ptrtoint ptr %FMT_TEMPORAL_DITHER_EN131 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %FMT_TEMPORAL_DITHER_EN131, align 4
  %call132 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %143, i32 noundef %147, i32 noundef 1, i8 noundef zeroext %151, i32 noundef %155, i32 noundef 1) #4
  br label %return

return:                                           ; preds = %if.end79, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_program_clamping_and_pixel_encoding(ptr nocapture noundef readonly %opp, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dce110_opp_set_clamping(ptr noundef %opp, ptr noundef %params)
  %opp_mask.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 3
  %0 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opp_mask.i, align 8
  %FMT_CBCR_BIT_REDUCTION_BYPASS.i = getelementptr inbounds %struct.dce_opp_mask, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %FMT_CBCR_BIT_REDUCTION_BYPASS.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %FMT_CBCR_BIT_REDUCTION_BYPASS.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opp, align 8
  %regs13.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 1
  %6 = ptrtoint ptr %regs13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs13.i, align 8
  %FMT_CONTROL14.i = getelementptr inbounds %struct.dce_opp_registers, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %FMT_CONTROL14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %FMT_CONTROL14.i, align 4
  %opp_shift15.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 2
  %10 = ptrtoint ptr %opp_shift15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opp_shift15.i, align 4
  %FMT_PIXEL_ENCODING16.i = getelementptr inbounds %struct.dce_opp_shift, ptr %11, i32 0, i32 38
  %12 = ptrtoint ptr %FMT_PIXEL_ENCODING16.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %FMT_PIXEL_ENCODING16.i, align 1
  %FMT_PIXEL_ENCODING18.i = getelementptr inbounds %struct.dce_opp_mask, ptr %1, i32 0, i32 38
  %14 = ptrtoint ptr %FMT_PIXEL_ENCODING18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %FMT_PIXEL_ENCODING18.i, align 4
  %FMT_SUBSAMPLING_MODE20.i = getelementptr inbounds %struct.dce_opp_shift, ptr %11, i32 0, i32 40
  %16 = ptrtoint ptr %FMT_SUBSAMPLING_MODE20.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %FMT_SUBSAMPLING_MODE20.i, align 1
  %conv21.i = zext i8 %17 to i32
  %FMT_SUBSAMPLING_MODE23.i = getelementptr inbounds %struct.dce_opp_mask, ptr %1, i32 0, i32 40
  %18 = ptrtoint ptr %FMT_SUBSAMPLING_MODE23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %FMT_SUBSAMPLING_MODE23.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %FMT_CBCR_BIT_REDUCTION_BYPASS7.i = getelementptr inbounds %struct.dce_opp_shift, ptr %11, i32 0, i32 41
  %20 = ptrtoint ptr %FMT_CBCR_BIT_REDUCTION_BYPASS7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %FMT_CBCR_BIT_REDUCTION_BYPASS7.i, align 1
  %conv8.i = zext i8 %21 to i32
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %9, i32 noundef 3, i8 noundef zeroext %13, i32 noundef %15, i32 noundef 0, i32 noundef %conv21.i, i32 noundef %19, i32 noundef 0, i32 noundef %conv8.i, i32 noundef %3, i32 noundef 0) #4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call24.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %9, i32 noundef 2, i8 noundef zeroext %13, i32 noundef %15, i32 noundef 0, i32 noundef %conv21.i, i32 noundef %19, i32 noundef 0) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %22 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp eq i32 %23, 2
  br i1 %cmp.i, label %if.then26.i, label %if.end.i.if.end40.i_crit_edge

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40.i

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %opp, align 8
  %26 = ptrtoint ptr %regs13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs13.i, align 8
  %FMT_CONTROL30.i = getelementptr inbounds %struct.dce_opp_registers, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %FMT_CONTROL30.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %FMT_CONTROL30.i, align 4
  %30 = ptrtoint ptr %opp_shift15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %opp_shift15.i, align 4
  %FMT_PIXEL_ENCODING32.i = getelementptr inbounds %struct.dce_opp_shift, ptr %31, i32 0, i32 38
  %32 = ptrtoint ptr %FMT_PIXEL_ENCODING32.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %FMT_PIXEL_ENCODING32.i, align 1
  %34 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %opp_mask.i, align 8
  %FMT_PIXEL_ENCODING34.i = getelementptr inbounds %struct.dce_opp_mask, ptr %35, i32 0, i32 38
  %36 = ptrtoint ptr %FMT_PIXEL_ENCODING34.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %FMT_PIXEL_ENCODING34.i, align 4
  %FMT_SUBSAMPLING_ORDER.i = getelementptr inbounds %struct.dce_opp_shift, ptr %31, i32 0, i32 39
  %38 = ptrtoint ptr %FMT_SUBSAMPLING_ORDER.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %FMT_SUBSAMPLING_ORDER.i, align 1
  %conv36.i = zext i8 %39 to i32
  %FMT_SUBSAMPLING_ORDER38.i = getelementptr inbounds %struct.dce_opp_mask, ptr %35, i32 0, i32 39
  %40 = ptrtoint ptr %FMT_SUBSAMPLING_ORDER38.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %FMT_SUBSAMPLING_ORDER38.i, align 4
  %call39.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %25, i32 noundef %29, i32 noundef 2, i8 noundef zeroext %33, i32 noundef %37, i32 noundef 1, i32 noundef %conv36.i, i32 noundef %41, i32 noundef 0) #4
  %42 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr.i = load i32, ptr %params, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then26.i, %if.end.i.if.end40.i_crit_edge
  %43 = phi i32 [ %.pr.i, %if.then26.i ], [ %23, %if.end.i.if.end40.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp42.i = icmp eq i32 %43, 4
  br i1 %cmp42.i, label %if.then44.i, label %if.end40.i.set_pixel_encoding.exit_crit_edge

if.end40.i.set_pixel_encoding.exit_crit_edge:     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_pixel_encoding.exit

if.then44.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %opp, align 8
  %46 = ptrtoint ptr %regs13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs13.i, align 8
  %FMT_CONTROL48.i = getelementptr inbounds %struct.dce_opp_registers, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %FMT_CONTROL48.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %FMT_CONTROL48.i, align 4
  %50 = ptrtoint ptr %opp_shift15.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %opp_shift15.i, align 4
  %FMT_PIXEL_ENCODING50.i = getelementptr inbounds %struct.dce_opp_shift, ptr %51, i32 0, i32 38
  %52 = ptrtoint ptr %FMT_PIXEL_ENCODING50.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %FMT_PIXEL_ENCODING50.i, align 1
  %54 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %opp_mask.i, align 8
  %FMT_PIXEL_ENCODING52.i = getelementptr inbounds %struct.dce_opp_mask, ptr %55, i32 0, i32 38
  %56 = ptrtoint ptr %FMT_PIXEL_ENCODING52.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %FMT_PIXEL_ENCODING52.i, align 4
  %FMT_SUBSAMPLING_MODE54.i = getelementptr inbounds %struct.dce_opp_shift, ptr %51, i32 0, i32 40
  %58 = ptrtoint ptr %FMT_SUBSAMPLING_MODE54.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %FMT_SUBSAMPLING_MODE54.i, align 1
  %conv55.i = zext i8 %59 to i32
  %FMT_SUBSAMPLING_MODE57.i = getelementptr inbounds %struct.dce_opp_mask, ptr %55, i32 0, i32 40
  %60 = ptrtoint ptr %FMT_SUBSAMPLING_MODE57.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %FMT_SUBSAMPLING_MODE57.i, align 4
  %FMT_CBCR_BIT_REDUCTION_BYPASS59.i = getelementptr inbounds %struct.dce_opp_shift, ptr %51, i32 0, i32 41
  %62 = ptrtoint ptr %FMT_CBCR_BIT_REDUCTION_BYPASS59.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %FMT_CBCR_BIT_REDUCTION_BYPASS59.i, align 1
  %conv60.i = zext i8 %63 to i32
  %FMT_CBCR_BIT_REDUCTION_BYPASS62.i = getelementptr inbounds %struct.dce_opp_mask, ptr %55, i32 0, i32 41
  %64 = ptrtoint ptr %FMT_CBCR_BIT_REDUCTION_BYPASS62.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %FMT_CBCR_BIT_REDUCTION_BYPASS62.i, align 4
  %call63.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %45, i32 noundef %49, i32 noundef 3, i8 noundef zeroext %53, i32 noundef %57, i32 noundef 2, i32 noundef %conv55.i, i32 noundef %61, i32 noundef 2, i32 noundef %conv60.i, i32 noundef %65, i32 noundef 1) #4
  br label %set_pixel_encoding.exit

set_pixel_encoding.exit:                          ; preds = %if.then44.i, %if.end40.i.set_pixel_encoding.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_set_dyn_expansion(ptr nocapture noundef readonly %opp, i32 %color_sp, i32 noundef %color_dpth, i32 noundef %signal) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opp, align 8
  %regs = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %opp_shift = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 2
  %6 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opp_shift, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %opp_mask = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 3
  %10 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opp_mask, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %FMT_DYNAMIC_EXP_MODE = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %FMT_DYNAMIC_EXP_MODE to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %FMT_DYNAMIC_EXP_MODE, align 1
  %conv = zext i8 %15 to i32
  %FMT_DYNAMIC_EXP_MODE4 = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %FMT_DYNAMIC_EXP_MODE4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %FMT_DYNAMIC_EXP_MODE4, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 2, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0, i32 noundef %conv, i32 noundef %17, i32 noundef 0) #4
  %18 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %signal, label %entry.if.end_crit_edge [
    i32 4, label %entry.if.then_crit_edge
    i32 32, label %entry.if.then_crit_edge80
    i32 64, label %entry.if.then_crit_edge81
  ]

entry.if.then_crit_edge81:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge80:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge80, %entry.if.then_crit_edge81
  %19 = zext i32 %color_dpth to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %color_dpth, label %if.then.if.end_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb25
    i32 4, label %sw.bb40
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %opp, align 8
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %opp_shift, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %30 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %opp_mask, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %FMT_DYNAMIC_EXP_MODE20 = getelementptr inbounds %struct.dce_opp_shift, ptr %27, i32 0, i32 1
  %34 = ptrtoint ptr %FMT_DYNAMIC_EXP_MODE20 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %FMT_DYNAMIC_EXP_MODE20, align 1
  %conv21 = zext i8 %35 to i32
  %FMT_DYNAMIC_EXP_MODE23 = getelementptr inbounds %struct.dce_opp_mask, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %FMT_DYNAMIC_EXP_MODE23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %FMT_DYNAMIC_EXP_MODE23, align 4
  %call24 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %21, i32 noundef %25, i32 noundef 2, i8 noundef zeroext %29, i32 noundef %33, i32 noundef 1, i32 noundef %conv21, i32 noundef %37, i32 noundef 1) #4
  br label %if.end

sw.bb25:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %opp, align 8
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %44 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %opp_shift, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %48 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %opp_mask, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %FMT_DYNAMIC_EXP_MODE35 = getelementptr inbounds %struct.dce_opp_shift, ptr %45, i32 0, i32 1
  %52 = ptrtoint ptr %FMT_DYNAMIC_EXP_MODE35 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %FMT_DYNAMIC_EXP_MODE35, align 1
  %conv36 = zext i8 %53 to i32
  %FMT_DYNAMIC_EXP_MODE38 = getelementptr inbounds %struct.dce_opp_mask, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %FMT_DYNAMIC_EXP_MODE38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %FMT_DYNAMIC_EXP_MODE38, align 4
  %call39 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %39, i32 noundef %43, i32 noundef 2, i8 noundef zeroext %47, i32 noundef %51, i32 noundef 1, i32 noundef %conv36, i32 noundef %55, i32 noundef 0) #4
  br label %if.end

sw.bb40:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %opp, align 8
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %62 = ptrtoint ptr %opp_shift to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %opp_shift, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 1
  %66 = ptrtoint ptr %opp_mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %opp_mask, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %FMT_DYNAMIC_EXP_MODE50 = getelementptr inbounds %struct.dce_opp_shift, ptr %63, i32 0, i32 1
  %70 = ptrtoint ptr %FMT_DYNAMIC_EXP_MODE50 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %FMT_DYNAMIC_EXP_MODE50, align 1
  %conv51 = zext i8 %71 to i32
  %FMT_DYNAMIC_EXP_MODE53 = getelementptr inbounds %struct.dce_opp_mask, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %FMT_DYNAMIC_EXP_MODE53 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %FMT_DYNAMIC_EXP_MODE53, align 4
  %call54 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %57, i32 noundef %61, i32 noundef 2, i8 noundef zeroext %65, i32 noundef %69, i32 noundef 1, i32 noundef %conv51, i32 noundef %73, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %sw.bb40, %sw.bb25, %sw.bb, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_program_fmt(ptr nocapture noundef readonly %opp, ptr nocapture noundef readonly %fmt_bit_depth, ptr nocapture noundef readonly %clamping) #0 align 64 {
entry:
  %fmt_mem_cntl_value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clamping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clamping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmt_mem_cntl_value.i) #4
  %2 = ptrtoint ptr %fmt_mem_cntl_value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fmt_mem_cntl_value.i, align 4, !annotation !17
  %3 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %opp, align 8
  %regs.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %CONTROL.i = getelementptr inbounds %struct.dce_opp_registers, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %CONTROL.i, align 4
  %opp_shift.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 2
  %9 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %opp_shift.i, align 4
  %FMT420_MEM0_SOURCE_SEL.i = getelementptr inbounds %struct.dce_opp_shift, ptr %10, i32 0, i32 25
  %11 = ptrtoint ptr %FMT420_MEM0_SOURCE_SEL.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %FMT420_MEM0_SOURCE_SEL.i, align 1
  %opp_mask.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 3
  %13 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %opp_mask.i, align 8
  %FMT420_MEM0_SOURCE_SEL1.i = getelementptr inbounds %struct.dce_opp_mask, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %FMT420_MEM0_SOURCE_SEL1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %FMT420_MEM0_SOURCE_SEL1.i, align 4
  %call.i = call i32 @generic_reg_get(ptr noundef %4, i32 noundef %8, i8 noundef zeroext %12, i32 noundef %16, ptr noundef nonnull %fmt_mem_cntl_value.i) #4
  %17 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %opp, align 8
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 8
  %FMT_CONTROL.i = getelementptr inbounds %struct.dce_opp_registers, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %FMT_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %FMT_CONTROL.i, align 4
  %23 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %opp_shift.i, align 4
  %FMT_SRC_SELECT.i = getelementptr inbounds %struct.dce_opp_shift, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %FMT_SRC_SELECT.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %FMT_SRC_SELECT.i, align 1
  %27 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %opp_mask.i, align 8
  %FMT_SRC_SELECT7.i = getelementptr inbounds %struct.dce_opp_mask, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %FMT_SRC_SELECT7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %FMT_SRC_SELECT7.i, align 4
  %31 = ptrtoint ptr %fmt_mem_cntl_value.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt_mem_cntl_value.i, align 4
  %call8.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %18, i32 noundef %22, i32 noundef 1, i8 noundef zeroext %26, i32 noundef %30, i32 noundef %32) #4
  %33 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %opp, align 8
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 8
  %CONTROL12.i = getelementptr inbounds %struct.dce_opp_registers, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %CONTROL12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %CONTROL12.i, align 4
  %39 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %opp_shift.i, align 4
  %FMT420_MEM0_PWR_FORCE.i = getelementptr inbounds %struct.dce_opp_shift, ptr %40, i32 0, i32 26
  %41 = ptrtoint ptr %FMT420_MEM0_PWR_FORCE.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %FMT420_MEM0_PWR_FORCE.i, align 1
  %43 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %opp_mask.i, align 8
  %FMT420_MEM0_PWR_FORCE15.i = getelementptr inbounds %struct.dce_opp_mask, ptr %44, i32 0, i32 26
  %45 = ptrtoint ptr %FMT420_MEM0_PWR_FORCE15.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %FMT420_MEM0_PWR_FORCE15.i, align 4
  %call16.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %34, i32 noundef %38, i32 noundef 1, i8 noundef zeroext %42, i32 noundef %46, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmt_mem_cntl_value.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @dce110_opp_program_bit_depth_reduction(ptr noundef %opp, ptr noundef %fmt_bit_depth)
  call void @dce110_opp_program_clamping_and_pixel_encoding(ptr noundef %opp, ptr noundef %clamping)
  %47 = ptrtoint ptr %clamping to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %clamping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp2 = icmp eq i32 %48, 4
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %opp, align 8
  %regs.i10 = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 1
  %51 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i10, align 8
  %FMT_CONTROL.i11 = getelementptr inbounds %struct.dce_opp_registers, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %FMT_CONTROL.i11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %FMT_CONTROL.i11, align 4
  %opp_shift.i12 = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 2
  %55 = ptrtoint ptr %opp_shift.i12 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %opp_shift.i12, align 4
  %FMT_420_PIXEL_PHASE_LOCKED_CLEAR.i = getelementptr inbounds %struct.dce_opp_shift, ptr %56, i32 0, i32 28
  %57 = ptrtoint ptr %FMT_420_PIXEL_PHASE_LOCKED_CLEAR.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %FMT_420_PIXEL_PHASE_LOCKED_CLEAR.i, align 1
  %opp_mask.i13 = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 3
  %59 = ptrtoint ptr %opp_mask.i13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %opp_mask.i13, align 8
  %FMT_420_PIXEL_PHASE_LOCKED_CLEAR1.i = getelementptr inbounds %struct.dce_opp_mask, ptr %60, i32 0, i32 28
  %61 = ptrtoint ptr %FMT_420_PIXEL_PHASE_LOCKED_CLEAR1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %FMT_420_PIXEL_PHASE_LOCKED_CLEAR1.i, align 4
  %call.i14 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %50, i32 noundef %54, i32 noundef 1, i8 noundef zeroext %58, i32 noundef %62, i32 noundef 1) #4
  %63 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %opp, align 8
  %65 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i10, align 8
  %FMT_CONTROL5.i = getelementptr inbounds %struct.dce_opp_registers, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %FMT_CONTROL5.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %FMT_CONTROL5.i, align 4
  %69 = ptrtoint ptr %opp_shift.i12 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %opp_shift.i12, align 4
  %FMT_420_PIXEL_PHASE_LOCKED.i = getelementptr inbounds %struct.dce_opp_shift, ptr %70, i32 0, i32 29
  %71 = ptrtoint ptr %FMT_420_PIXEL_PHASE_LOCKED.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %FMT_420_PIXEL_PHASE_LOCKED.i, align 1
  %conv.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %opp_mask.i13 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %opp_mask.i13, align 8
  %FMT_420_PIXEL_PHASE_LOCKED8.i = getelementptr inbounds %struct.dce_opp_mask, ptr %74, i32 0, i32 29
  %75 = ptrtoint ptr %FMT_420_PIXEL_PHASE_LOCKED8.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %FMT_420_PIXEL_PHASE_LOCKED8.i, align 4
  call void @generic_reg_wait(ptr noundef %64, i32 noundef %68, i32 noundef %conv.i, i32 noundef %76, i32 noundef 1, i32 noundef 10, i32 noundef 10, ptr noundef nonnull @__func__.program_formatter_reset_dig_resync_fifo, i32 noundef 649) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce110_opp_construct(ptr nocapture noundef writeonly %opp110, ptr noundef %ctx, i32 noundef %inst, ptr noundef %regs, ptr noundef %opp_shift, ptr noundef %opp_mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.output_pixel_processor, ptr %opp110, i32 0, i32 5
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @funcs, ptr %funcs, align 8
  %1 = ptrtoint ptr %opp110 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %opp110, align 8
  %inst4 = getelementptr inbounds %struct.output_pixel_processor, ptr %opp110, i32 0, i32 1
  %2 = ptrtoint ptr %inst4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inst, ptr %inst4, align 4
  %regs5 = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 1
  %3 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regs, ptr %regs5, align 8
  %opp_shift6 = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 2
  %4 = ptrtoint ptr %opp_shift6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %opp_shift, ptr %opp_shift6, align 4
  %opp_mask7 = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 3
  %5 = ptrtoint ptr %opp_mask7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %opp_mask, ptr %opp_mask7, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce60_opp_construct(ptr nocapture noundef writeonly %opp110, ptr noundef %ctx, i32 noundef %inst, ptr noundef %regs, ptr noundef %opp_shift, ptr noundef %opp_mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.output_pixel_processor, ptr %opp110, i32 0, i32 5
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dce60_opp_funcs, ptr %funcs, align 8
  %1 = ptrtoint ptr %opp110 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %opp110, align 8
  %inst4 = getelementptr inbounds %struct.output_pixel_processor, ptr %opp110, i32 0, i32 1
  %2 = ptrtoint ptr %inst4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inst, ptr %inst4, align 4
  %regs5 = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 1
  %3 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regs, ptr %regs5, align 8
  %opp_shift6 = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 2
  %4 = ptrtoint ptr %opp_shift6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %opp_shift, ptr %opp_shift6, align 4
  %opp_mask7 = getelementptr inbounds %struct.dce110_opp, ptr %opp110, i32 0, i32 3
  %5 = ptrtoint ptr %opp_mask7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %opp_mask, ptr %opp_mask7, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_destroy(ptr nocapture noundef %opp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %opp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %opp, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_opp_program_fmt(ptr noundef readonly %opp, ptr nocapture noundef readonly %fmt_bit_depth, ptr nocapture noundef readonly %clamping) #0 align 64 {
entry:
  %fmt_mem_cntl_value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clamping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clamping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmt_mem_cntl_value.i) #4
  %2 = ptrtoint ptr %fmt_mem_cntl_value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fmt_mem_cntl_value.i, align 4, !annotation !17
  %3 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %opp, align 8
  %regs.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %CONTROL.i = getelementptr inbounds %struct.dce_opp_registers, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %CONTROL.i, align 4
  %opp_shift.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 2
  %9 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %opp_shift.i, align 4
  %FMT420_MEM0_SOURCE_SEL.i = getelementptr inbounds %struct.dce_opp_shift, ptr %10, i32 0, i32 25
  %11 = ptrtoint ptr %FMT420_MEM0_SOURCE_SEL.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %FMT420_MEM0_SOURCE_SEL.i, align 1
  %opp_mask.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 3
  %13 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %opp_mask.i, align 8
  %FMT420_MEM0_SOURCE_SEL1.i = getelementptr inbounds %struct.dce_opp_mask, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %FMT420_MEM0_SOURCE_SEL1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %FMT420_MEM0_SOURCE_SEL1.i, align 4
  %call.i = call i32 @generic_reg_get(ptr noundef %4, i32 noundef %8, i8 noundef zeroext %12, i32 noundef %16, ptr noundef nonnull %fmt_mem_cntl_value.i) #4
  %17 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %opp, align 8
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 8
  %FMT_CONTROL.i = getelementptr inbounds %struct.dce_opp_registers, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %FMT_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %FMT_CONTROL.i, align 4
  %23 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %opp_shift.i, align 4
  %FMT_SRC_SELECT.i = getelementptr inbounds %struct.dce_opp_shift, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %FMT_SRC_SELECT.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %FMT_SRC_SELECT.i, align 1
  %27 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %opp_mask.i, align 8
  %FMT_SRC_SELECT7.i = getelementptr inbounds %struct.dce_opp_mask, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %FMT_SRC_SELECT7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %FMT_SRC_SELECT7.i, align 4
  %31 = ptrtoint ptr %fmt_mem_cntl_value.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt_mem_cntl_value.i, align 4
  %call8.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %18, i32 noundef %22, i32 noundef 1, i8 noundef zeroext %26, i32 noundef %30, i32 noundef %32) #4
  %33 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %opp, align 8
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 8
  %CONTROL12.i = getelementptr inbounds %struct.dce_opp_registers, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %CONTROL12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %CONTROL12.i, align 4
  %39 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %opp_shift.i, align 4
  %FMT420_MEM0_PWR_FORCE.i = getelementptr inbounds %struct.dce_opp_shift, ptr %40, i32 0, i32 26
  %41 = ptrtoint ptr %FMT420_MEM0_PWR_FORCE.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %FMT420_MEM0_PWR_FORCE.i, align 1
  %43 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %opp_mask.i, align 8
  %FMT420_MEM0_PWR_FORCE15.i = getelementptr inbounds %struct.dce_opp_mask, ptr %44, i32 0, i32 26
  %45 = ptrtoint ptr %FMT420_MEM0_PWR_FORCE15.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %FMT420_MEM0_PWR_FORCE15.i, align 4
  %call16.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %34, i32 noundef %38, i32 noundef 1, i8 noundef zeroext %42, i32 noundef %46, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmt_mem_cntl_value.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @dce60_opp_program_bit_depth_reduction(ptr noundef %opp, ptr noundef %fmt_bit_depth)
  %47 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %opp, align 8
  %regs.i.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 1
  %49 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i, align 8
  %FMT_CLAMP_CNTL.i.i = getelementptr inbounds %struct.dce_opp_registers, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %FMT_CLAMP_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %FMT_CLAMP_CNTL.i.i, align 4
  %opp_shift.i.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 2
  %53 = ptrtoint ptr %opp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %opp_shift.i.i, align 4
  %FMT_CLAMP_DATA_EN.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %54, i32 0, i32 30
  %55 = ptrtoint ptr %FMT_CLAMP_DATA_EN.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %FMT_CLAMP_DATA_EN.i.i, align 1
  %opp_mask.i.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 3
  %57 = ptrtoint ptr %opp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %opp_mask.i.i, align 8
  %FMT_CLAMP_DATA_EN1.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %58, i32 0, i32 30
  %59 = ptrtoint ptr %FMT_CLAMP_DATA_EN1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %FMT_CLAMP_DATA_EN1.i.i, align 4
  %FMT_CLAMP_COLOR_FORMAT.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %54, i32 0, i32 31
  %61 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %FMT_CLAMP_COLOR_FORMAT.i.i, align 1
  %conv.i.i = zext i8 %62 to i32
  %FMT_CLAMP_COLOR_FORMAT4.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %58, i32 0, i32 31
  %63 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT4.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %FMT_CLAMP_COLOR_FORMAT4.i.i, align 4
  %call.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %48, i32 noundef %52, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %56, i32 noundef %60, i32 noundef 0, i32 noundef %conv.i.i, i32 noundef %64, i32 noundef 0) #4
  %clamping_level.i.i = getelementptr inbounds %struct.clamping_and_pixel_encoding_params, ptr %clamping, i32 0, i32 1
  %65 = ptrtoint ptr %clamping_level.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %clamping_level.i.i, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %66, label %if.end.dce60_opp_set_clamping.exit.i_crit_edge [
    i32 4, label %sw.bb49.i.i
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb19.i.i
    i32 3, label %sw.bb34.i.i
  ]

if.end.dce60_opp_set_clamping.exit.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce60_opp_set_clamping.exit.i

sw.bb.i.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %opp, align 8
  %70 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i, align 8
  %FMT_CLAMP_CNTL8.i.i = getelementptr inbounds %struct.dce_opp_registers, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %FMT_CLAMP_CNTL8.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %FMT_CLAMP_CNTL8.i.i, align 4
  %74 = ptrtoint ptr %opp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %opp_shift.i.i, align 4
  %FMT_CLAMP_DATA_EN10.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %75, i32 0, i32 30
  %76 = ptrtoint ptr %FMT_CLAMP_DATA_EN10.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %FMT_CLAMP_DATA_EN10.i.i, align 1
  %78 = ptrtoint ptr %opp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %opp_mask.i.i, align 8
  %FMT_CLAMP_DATA_EN12.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %79, i32 0, i32 30
  %80 = ptrtoint ptr %FMT_CLAMP_DATA_EN12.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %FMT_CLAMP_DATA_EN12.i.i, align 4
  %FMT_CLAMP_COLOR_FORMAT14.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %75, i32 0, i32 31
  %82 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT14.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %FMT_CLAMP_COLOR_FORMAT14.i.i, align 1
  %conv15.i.i = zext i8 %83 to i32
  %FMT_CLAMP_COLOR_FORMAT17.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %79, i32 0, i32 31
  %84 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT17.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %FMT_CLAMP_COLOR_FORMAT17.i.i, align 4
  %call18.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %69, i32 noundef %73, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %77, i32 noundef %81, i32 noundef 1, i32 noundef %conv15.i.i, i32 noundef %85, i32 noundef 1) #4
  br label %dce60_opp_set_clamping.exit.i

sw.bb19.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %86 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %opp, align 8
  %88 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i.i, align 8
  %FMT_CLAMP_CNTL23.i.i = getelementptr inbounds %struct.dce_opp_registers, ptr %89, i32 0, i32 10
  %90 = ptrtoint ptr %FMT_CLAMP_CNTL23.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %FMT_CLAMP_CNTL23.i.i, align 4
  %92 = ptrtoint ptr %opp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %opp_shift.i.i, align 4
  %FMT_CLAMP_DATA_EN25.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %93, i32 0, i32 30
  %94 = ptrtoint ptr %FMT_CLAMP_DATA_EN25.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %FMT_CLAMP_DATA_EN25.i.i, align 1
  %96 = ptrtoint ptr %opp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %opp_mask.i.i, align 8
  %FMT_CLAMP_DATA_EN27.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %97, i32 0, i32 30
  %98 = ptrtoint ptr %FMT_CLAMP_DATA_EN27.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %FMT_CLAMP_DATA_EN27.i.i, align 4
  %FMT_CLAMP_COLOR_FORMAT29.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %93, i32 0, i32 31
  %100 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT29.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %FMT_CLAMP_COLOR_FORMAT29.i.i, align 1
  %conv30.i.i = zext i8 %101 to i32
  %FMT_CLAMP_COLOR_FORMAT32.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %97, i32 0, i32 31
  %102 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT32.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %FMT_CLAMP_COLOR_FORMAT32.i.i, align 4
  %call33.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %87, i32 noundef %91, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %95, i32 noundef %99, i32 noundef 1, i32 noundef %conv30.i.i, i32 noundef %103, i32 noundef 2) #4
  br label %dce60_opp_set_clamping.exit.i

sw.bb34.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %104 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %opp, align 8
  %106 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i.i, align 8
  %FMT_CLAMP_CNTL38.i.i = getelementptr inbounds %struct.dce_opp_registers, ptr %107, i32 0, i32 10
  %108 = ptrtoint ptr %FMT_CLAMP_CNTL38.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %FMT_CLAMP_CNTL38.i.i, align 4
  %110 = ptrtoint ptr %opp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %opp_shift.i.i, align 4
  %FMT_CLAMP_DATA_EN40.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %111, i32 0, i32 30
  %112 = ptrtoint ptr %FMT_CLAMP_DATA_EN40.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %FMT_CLAMP_DATA_EN40.i.i, align 1
  %114 = ptrtoint ptr %opp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %opp_mask.i.i, align 8
  %FMT_CLAMP_DATA_EN42.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %115, i32 0, i32 30
  %116 = ptrtoint ptr %FMT_CLAMP_DATA_EN42.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %FMT_CLAMP_DATA_EN42.i.i, align 4
  %FMT_CLAMP_COLOR_FORMAT44.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %111, i32 0, i32 31
  %118 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT44.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %FMT_CLAMP_COLOR_FORMAT44.i.i, align 1
  %conv45.i.i = zext i8 %119 to i32
  %FMT_CLAMP_COLOR_FORMAT47.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %115, i32 0, i32 31
  %120 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT47.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %FMT_CLAMP_COLOR_FORMAT47.i.i, align 4
  %call48.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %105, i32 noundef %109, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %113, i32 noundef %117, i32 noundef 1, i32 noundef %conv45.i.i, i32 noundef %121, i32 noundef 3) #4
  br label %dce60_opp_set_clamping.exit.i

sw.bb49.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %122 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %opp, align 8
  %124 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i.i, align 8
  %FMT_CLAMP_CNTL53.i.i = getelementptr inbounds %struct.dce_opp_registers, ptr %125, i32 0, i32 10
  %126 = ptrtoint ptr %FMT_CLAMP_CNTL53.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %FMT_CLAMP_CNTL53.i.i, align 4
  %128 = ptrtoint ptr %opp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %opp_shift.i.i, align 4
  %FMT_CLAMP_DATA_EN55.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %129, i32 0, i32 30
  %130 = ptrtoint ptr %FMT_CLAMP_DATA_EN55.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %FMT_CLAMP_DATA_EN55.i.i, align 1
  %132 = ptrtoint ptr %opp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %opp_mask.i.i, align 8
  %FMT_CLAMP_DATA_EN57.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %133, i32 0, i32 30
  %134 = ptrtoint ptr %FMT_CLAMP_DATA_EN57.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %FMT_CLAMP_DATA_EN57.i.i, align 4
  %FMT_CLAMP_COLOR_FORMAT59.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %129, i32 0, i32 31
  %136 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT59.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %FMT_CLAMP_COLOR_FORMAT59.i.i, align 1
  %conv60.i.i = zext i8 %137 to i32
  %FMT_CLAMP_COLOR_FORMAT62.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %133, i32 0, i32 31
  %138 = ptrtoint ptr %FMT_CLAMP_COLOR_FORMAT62.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %FMT_CLAMP_COLOR_FORMAT62.i.i, align 4
  %call63.i.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %123, i32 noundef %127, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %131, i32 noundef %135, i32 noundef 1, i32 noundef %conv60.i.i, i32 noundef %139, i32 noundef 7) #4
  br label %dce60_opp_set_clamping.exit.i

dce60_opp_set_clamping.exit.i:                    ; preds = %sw.bb49.i.i, %sw.bb34.i.i, %sw.bb19.i.i, %sw.bb.i.i, %if.end.dce60_opp_set_clamping.exit.i_crit_edge
  %140 = ptrtoint ptr %opp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %opp_mask.i.i, align 8
  %FMT_CBCR_BIT_REDUCTION_BYPASS.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %141, i32 0, i32 41
  %142 = ptrtoint ptr %FMT_CBCR_BIT_REDUCTION_BYPASS.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %FMT_CBCR_BIT_REDUCTION_BYPASS.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i.i = icmp eq i32 %143, 0
  %144 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %opp, align 8
  %146 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs.i.i, align 8
  %FMT_CONTROL10.i.i = getelementptr inbounds %struct.dce_opp_registers, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %FMT_CONTROL10.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %FMT_CONTROL10.i.i, align 4
  %150 = ptrtoint ptr %opp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %opp_shift.i.i, align 4
  %FMT_PIXEL_ENCODING12.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %151, i32 0, i32 38
  %152 = ptrtoint ptr %FMT_PIXEL_ENCODING12.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %FMT_PIXEL_ENCODING12.i.i, align 1
  %FMT_PIXEL_ENCODING14.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %141, i32 0, i32 38
  %154 = ptrtoint ptr %FMT_PIXEL_ENCODING14.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %FMT_PIXEL_ENCODING14.i.i, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %dce60_opp_set_clamping.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %FMT_CBCR_BIT_REDUCTION_BYPASS4.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %151, i32 0, i32 41
  %156 = ptrtoint ptr %FMT_CBCR_BIT_REDUCTION_BYPASS4.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %FMT_CBCR_BIT_REDUCTION_BYPASS4.i.i, align 1
  %conv.i4.i = zext i8 %157 to i32
  %call.i5.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %145, i32 noundef %149, i32 noundef 2, i8 noundef zeroext %153, i32 noundef %155, i32 noundef 0, i32 noundef %conv.i4.i, i32 noundef %143, i32 noundef 0) #4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %dce60_opp_set_clamping.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call15.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %145, i32 noundef %149, i32 noundef 1, i8 noundef zeroext %153, i32 noundef %155, i32 noundef 0) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %158 = ptrtoint ptr %clamping to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %clamping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %159)
  %cmp.i.i = icmp eq i32 %159, 2
  br i1 %cmp.i.i, label %if.then17.i.i, label %if.end.i.i.if.end27.i.i_crit_edge

if.end.i.i.if.end27.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i.i

if.then17.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %160 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %opp, align 8
  %162 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs.i.i, align 8
  %FMT_CONTROL21.i.i = getelementptr inbounds %struct.dce_opp_registers, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %FMT_CONTROL21.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %FMT_CONTROL21.i.i, align 4
  %166 = ptrtoint ptr %opp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %opp_shift.i.i, align 4
  %FMT_PIXEL_ENCODING23.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %167, i32 0, i32 38
  %168 = ptrtoint ptr %FMT_PIXEL_ENCODING23.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %FMT_PIXEL_ENCODING23.i.i, align 1
  %170 = ptrtoint ptr %opp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %opp_mask.i.i, align 8
  %FMT_PIXEL_ENCODING25.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %171, i32 0, i32 38
  %172 = ptrtoint ptr %FMT_PIXEL_ENCODING25.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %FMT_PIXEL_ENCODING25.i.i, align 4
  %call26.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %161, i32 noundef %165, i32 noundef 1, i8 noundef zeroext %169, i32 noundef %173, i32 noundef 1) #4
  %174 = ptrtoint ptr %clamping to i32
  call void @__asan_load4_noabort(i32 %174)
  %.pr.i.i = load i32, ptr %clamping, align 4
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then17.i.i, %if.end.i.i.if.end27.i.i_crit_edge
  %175 = phi i32 [ %.pr.i.i, %if.then17.i.i ], [ %159, %if.end.i.i.if.end27.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %175)
  %cmp29.i.i = icmp eq i32 %175, 4
  br i1 %cmp29.i.i, label %if.then31.i.i, label %if.end27.i.i.dce60_opp_program_clamping_and_pixel_encoding.exit_crit_edge

if.end27.i.i.dce60_opp_program_clamping_and_pixel_encoding.exit_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce60_opp_program_clamping_and_pixel_encoding.exit

if.then31.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %176 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %opp, align 8
  %178 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i.i, align 8
  %FMT_CONTROL35.i.i = getelementptr inbounds %struct.dce_opp_registers, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %FMT_CONTROL35.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %FMT_CONTROL35.i.i, align 4
  %182 = ptrtoint ptr %opp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %opp_shift.i.i, align 4
  %FMT_PIXEL_ENCODING37.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %183, i32 0, i32 38
  %184 = ptrtoint ptr %FMT_PIXEL_ENCODING37.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %FMT_PIXEL_ENCODING37.i.i, align 1
  %186 = ptrtoint ptr %opp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %opp_mask.i.i, align 8
  %FMT_PIXEL_ENCODING39.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %187, i32 0, i32 38
  %188 = ptrtoint ptr %FMT_PIXEL_ENCODING39.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %FMT_PIXEL_ENCODING39.i.i, align 4
  %FMT_CBCR_BIT_REDUCTION_BYPASS41.i.i = getelementptr inbounds %struct.dce_opp_shift, ptr %183, i32 0, i32 41
  %190 = ptrtoint ptr %FMT_CBCR_BIT_REDUCTION_BYPASS41.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %FMT_CBCR_BIT_REDUCTION_BYPASS41.i.i, align 1
  %conv42.i.i = zext i8 %191 to i32
  %FMT_CBCR_BIT_REDUCTION_BYPASS44.i.i = getelementptr inbounds %struct.dce_opp_mask, ptr %187, i32 0, i32 41
  %192 = ptrtoint ptr %FMT_CBCR_BIT_REDUCTION_BYPASS44.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %FMT_CBCR_BIT_REDUCTION_BYPASS44.i.i, align 4
  %call45.i.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %177, i32 noundef %181, i32 noundef 2, i8 noundef zeroext %185, i32 noundef %189, i32 noundef 2, i32 noundef %conv42.i.i, i32 noundef %193, i32 noundef 1) #4
  br label %dce60_opp_program_clamping_and_pixel_encoding.exit

dce60_opp_program_clamping_and_pixel_encoding.exit: ; preds = %if.then31.i.i, %if.end27.i.i.dce60_opp_program_clamping_and_pixel_encoding.exit_crit_edge
  %194 = ptrtoint ptr %clamping to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %clamping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %195)
  %cmp2 = icmp eq i32 %195, 4
  br i1 %cmp2, label %if.then3, label %dce60_opp_program_clamping_and_pixel_encoding.exit.if.end4_crit_edge

dce60_opp_program_clamping_and_pixel_encoding.exit.if.end4_crit_edge: ; preds = %dce60_opp_program_clamping_and_pixel_encoding.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %dce60_opp_program_clamping_and_pixel_encoding.exit
  call void @__sanitizer_cov_trace_pc() #6
  %196 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %opp, align 8
  %198 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i.i, align 8
  %FMT_CONTROL.i11 = getelementptr inbounds %struct.dce_opp_registers, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %FMT_CONTROL.i11 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %FMT_CONTROL.i11, align 4
  %202 = ptrtoint ptr %opp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %opp_shift.i.i, align 4
  %FMT_420_PIXEL_PHASE_LOCKED_CLEAR.i = getelementptr inbounds %struct.dce_opp_shift, ptr %203, i32 0, i32 28
  %204 = ptrtoint ptr %FMT_420_PIXEL_PHASE_LOCKED_CLEAR.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %FMT_420_PIXEL_PHASE_LOCKED_CLEAR.i, align 1
  %206 = ptrtoint ptr %opp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %opp_mask.i.i, align 8
  %FMT_420_PIXEL_PHASE_LOCKED_CLEAR1.i = getelementptr inbounds %struct.dce_opp_mask, ptr %207, i32 0, i32 28
  %208 = ptrtoint ptr %FMT_420_PIXEL_PHASE_LOCKED_CLEAR1.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %FMT_420_PIXEL_PHASE_LOCKED_CLEAR1.i, align 4
  %call.i14 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %197, i32 noundef %201, i32 noundef 1, i8 noundef zeroext %205, i32 noundef %209, i32 noundef 1) #4
  %210 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %opp, align 8
  %212 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs.i.i, align 8
  %FMT_CONTROL5.i = getelementptr inbounds %struct.dce_opp_registers, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %FMT_CONTROL5.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %FMT_CONTROL5.i, align 4
  %216 = ptrtoint ptr %opp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %opp_shift.i.i, align 4
  %FMT_420_PIXEL_PHASE_LOCKED.i = getelementptr inbounds %struct.dce_opp_shift, ptr %217, i32 0, i32 29
  %218 = ptrtoint ptr %FMT_420_PIXEL_PHASE_LOCKED.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %FMT_420_PIXEL_PHASE_LOCKED.i, align 1
  %conv.i = zext i8 %219 to i32
  %220 = ptrtoint ptr %opp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %opp_mask.i.i, align 8
  %FMT_420_PIXEL_PHASE_LOCKED8.i = getelementptr inbounds %struct.dce_opp_mask, ptr %221, i32 0, i32 29
  %222 = ptrtoint ptr %FMT_420_PIXEL_PHASE_LOCKED8.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %FMT_420_PIXEL_PHASE_LOCKED8.i, align 4
  call void @generic_reg_wait(ptr noundef %211, i32 noundef %215, i32 noundef %conv.i, i32 noundef %223, i32 noundef 1, i32 noundef 10, i32 noundef 10, ptr noundef nonnull @__func__.program_formatter_reset_dig_resync_fifo, i32 noundef 649) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %dce60_opp_program_clamping_and_pixel_encoding.exit.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_opp_program_bit_depth_reduction(ptr nocapture noundef readonly %opp, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opp, align 8
  %regs.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %FMT_BIT_DEPTH_CONTROL.i = getelementptr inbounds %struct.dce_opp_registers, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %FMT_BIT_DEPTH_CONTROL.i, align 4
  %opp_shift.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 2
  %6 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opp_shift.i, align 4
  %FMT_TRUNCATE_EN.i = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %FMT_TRUNCATE_EN.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %FMT_TRUNCATE_EN.i, align 1
  %opp_mask.i = getelementptr inbounds %struct.dce110_opp, ptr %opp, i32 0, i32 3
  %10 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opp_mask.i, align 8
  %FMT_TRUNCATE_EN1.i = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %FMT_TRUNCATE_EN1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %FMT_TRUNCATE_EN1.i, align 4
  %FMT_TRUNCATE_DEPTH.i = getelementptr inbounds %struct.dce_opp_shift, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %FMT_TRUNCATE_DEPTH.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %FMT_TRUNCATE_DEPTH.i, align 1
  %conv.i = zext i8 %15 to i32
  %FMT_TRUNCATE_DEPTH4.i = getelementptr inbounds %struct.dce_opp_mask, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %FMT_TRUNCATE_DEPTH4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %FMT_TRUNCATE_DEPTH4.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 2, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0, i32 noundef %conv.i, i32 noundef %17, i32 noundef 0) #4
  %pixel_encoding.i = getelementptr inbounds %struct.bit_depth_reduction_params, ptr %params, i32 0, i32 4
  %18 = ptrtoint ptr %pixel_encoding.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixel_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i = icmp eq i32 %19, 2
  %20 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i = load i32, ptr %params, align 4
  br i1 %cmp.i, label %if.then.i, label %if.end45.i

if.then.i:                                        ; preds = %entry
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %bf.clear.i = and i32 %bf.lshr.i, 3
  %21 = zext i32 %bf.clear.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %bf.clear.i, label %if.then.i.dce60_set_truncation.exit_crit_edge [
    i32 1, label %if.then8.i
    i32 2, label %if.then29.i
  ]

if.then.i.dce60_set_truncation.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce60_set_truncation.exit

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %opp, align 8
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 8
  %FMT_BIT_DEPTH_CONTROL12.i = getelementptr inbounds %struct.dce_opp_registers, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %FMT_BIT_DEPTH_CONTROL12.i, align 4
  %28 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %opp_shift.i, align 4
  %FMT_TRUNCATE_EN14.i = getelementptr inbounds %struct.dce_opp_shift, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %FMT_TRUNCATE_EN14.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %FMT_TRUNCATE_EN14.i, align 1
  %32 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %opp_mask.i, align 8
  %FMT_TRUNCATE_EN16.i = getelementptr inbounds %struct.dce_opp_mask, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %FMT_TRUNCATE_EN16.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %FMT_TRUNCATE_EN16.i, align 4
  %FMT_TRUNCATE_DEPTH18.i = getelementptr inbounds %struct.dce_opp_shift, ptr %29, i32 0, i32 3
  %36 = ptrtoint ptr %FMT_TRUNCATE_DEPTH18.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %FMT_TRUNCATE_DEPTH18.i, align 1
  %conv19.i = zext i8 %37 to i32
  %FMT_TRUNCATE_DEPTH21.i = getelementptr inbounds %struct.dce_opp_mask, ptr %33, i32 0, i32 3
  %38 = ptrtoint ptr %FMT_TRUNCATE_DEPTH21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %FMT_TRUNCATE_DEPTH21.i, align 4
  %call22.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %23, i32 noundef %27, i32 noundef 2, i8 noundef zeroext %31, i32 noundef %35, i32 noundef 1, i32 noundef %conv19.i, i32 noundef %39, i32 noundef 1) #4
  br label %dce60_set_truncation.exit

if.then29.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %opp, align 8
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 8
  %FMT_BIT_DEPTH_CONTROL33.i = getelementptr inbounds %struct.dce_opp_registers, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL33.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %FMT_BIT_DEPTH_CONTROL33.i, align 4
  %46 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %opp_shift.i, align 4
  %FMT_TRUNCATE_EN35.i = getelementptr inbounds %struct.dce_opp_shift, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %FMT_TRUNCATE_EN35.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %FMT_TRUNCATE_EN35.i, align 1
  %50 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %opp_mask.i, align 8
  %FMT_TRUNCATE_EN37.i = getelementptr inbounds %struct.dce_opp_mask, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %FMT_TRUNCATE_EN37.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %FMT_TRUNCATE_EN37.i, align 4
  %FMT_TRUNCATE_DEPTH39.i = getelementptr inbounds %struct.dce_opp_shift, ptr %47, i32 0, i32 3
  %54 = ptrtoint ptr %FMT_TRUNCATE_DEPTH39.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %FMT_TRUNCATE_DEPTH39.i, align 1
  %conv40.i = zext i8 %55 to i32
  %FMT_TRUNCATE_DEPTH42.i = getelementptr inbounds %struct.dce_opp_mask, ptr %51, i32 0, i32 3
  %56 = ptrtoint ptr %FMT_TRUNCATE_DEPTH42.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %FMT_TRUNCATE_DEPTH42.i, align 4
  %call43.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %41, i32 noundef %45, i32 noundef 2, i8 noundef zeroext %49, i32 noundef %53, i32 noundef 1, i32 noundef %conv40.i, i32 noundef %57, i32 noundef 2) #4
  br label %dce60_set_truncation.exit

if.end45.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %cmp49.i = icmp sgt i32 %bf.load.i, -1
  br i1 %cmp49.i, label %if.end45.i.dce60_set_truncation.exit_crit_edge, label %if.end52.i

if.end45.i.dce60_set_truncation.exit_crit_edge:   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce60_set_truncation.exit

if.end52.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %opp, align 8
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 8
  %FMT_BIT_DEPTH_CONTROL56.i = getelementptr inbounds %struct.dce_opp_registers, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %FMT_BIT_DEPTH_CONTROL56.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %FMT_BIT_DEPTH_CONTROL56.i, align 4
  %64 = ptrtoint ptr %opp_shift.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %opp_shift.i, align 4
  %FMT_TRUNCATE_EN58.i = getelementptr inbounds %struct.dce_opp_shift, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %FMT_TRUNCATE_EN58.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %FMT_TRUNCATE_EN58.i, align 1
  %68 = ptrtoint ptr %opp_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %opp_mask.i, align 8
  %FMT_TRUNCATE_EN60.i = getelementptr inbounds %struct.dce_opp_mask, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %FMT_TRUNCATE_EN60.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %FMT_TRUNCATE_EN60.i, align 4
  %FMT_TRUNCATE_DEPTH62.i = getelementptr inbounds %struct.dce_opp_shift, ptr %65, i32 0, i32 3
  %72 = ptrtoint ptr %FMT_TRUNCATE_DEPTH62.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %FMT_TRUNCATE_DEPTH62.i, align 1
  %conv63.i = zext i8 %73 to i32
  %FMT_TRUNCATE_DEPTH65.i = getelementptr inbounds %struct.dce_opp_mask, ptr %69, i32 0, i32 3
  %74 = ptrtoint ptr %FMT_TRUNCATE_DEPTH65.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %FMT_TRUNCATE_DEPTH65.i, align 4
  %bf.lshr68.i = lshr i32 %bf.load.i, 29
  %bf.clear69.i = and i32 %bf.lshr68.i, 3
  %call70.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %59, i32 noundef %63, i32 noundef 2, i8 noundef zeroext %67, i32 noundef %71, i32 noundef 1, i32 noundef %conv63.i, i32 noundef %75, i32 noundef %bf.clear69.i) #4
  br label %dce60_set_truncation.exit

dce60_set_truncation.exit:                        ; preds = %if.end52.i, %if.end45.i.dce60_set_truncation.exit_crit_edge, %if.then29.i, %if.then8.i, %if.then.i.dce60_set_truncation.exit_crit_edge
  tail call fastcc void @set_spatial_dither(ptr noundef %opp, ptr noundef %params)
  tail call fastcc void @set_temporal_dither(ptr noundef %opp, ptr noundef %params)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__func__.set_temporal_dither, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_opp.c", i32 335, i32 3}
!2 = !{ptr @__func__.program_formatter_reset_dig_resync_fifo, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_opp.c", i32 649, i32 2}
!4 = !{ptr @funcs, !5, !"funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_opp.c", i32 711, i32 31}
!6 = !{ptr @dce60_opp_funcs, !7, !"dce60_opp_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_opp.c", i32 719, i32 31}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
