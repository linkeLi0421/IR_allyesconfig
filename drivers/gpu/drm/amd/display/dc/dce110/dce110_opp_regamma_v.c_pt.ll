; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce110/dce110_opp_regamma_v.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_regamma_v.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.fixed31_32 = type { i64 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.transform = type { ptr, ptr, i32, ptr, %struct.pwl_params }

@__func__.dce110_opp_power_on_regamma_lut_v = private unnamed_addr constant [34 x i8] c"dce110_opp_power_on_regamma_lut_v\00", align 1
@__func__.regamma_config_regions_and_segments = private unnamed_addr constant [36 x i8] c"regamma_config_regions_and_segments\00", align 1
@__func__.set_bypass_input_gamma = private unnamed_addr constant [23 x i8] c"set_bypass_input_gamma\00", align 1
@__func__.power_on_lut = private unnamed_addr constant [13 x i8] c"power_on_lut\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.program_pwl = private unnamed_addr constant [12 x i8] c"program_pwl\00", align 1
@__func__.configure_regamma_mode = private unnamed_addr constant [23 x i8] c"configure_regamma_mode\00", align 1
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_program_regamma_pwl_v(ptr nocapture noundef readonly %xfm, ptr noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %custom_float_x.i = getelementptr inbounds %struct.pwl_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %custom_float_x.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %custom_float_x.i, align 8
  %and42.i.i = and i32 %1, 262143
  %ctx.i = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 18124, i32 noundef %and42.i.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %custom_float_slope.i = getelementptr inbounds %struct.pwl_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 0, i32 7
  %4 = ptrtoint ptr %custom_float_slope.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %custom_float_slope.i, align 4
  %and42.i237.i = and i32 %5, 262143
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %7, i32 noundef 18125, i32 noundef %and42.i237.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %custom_float_x7.i = getelementptr %struct.pwl_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %custom_float_x7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %custom_float_x7.i, align 8
  %and42.i238.i = and i32 %9, 65535
  %10 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %11, i32 noundef 18126, i32 noundef %and42.i238.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %custom_float_slope12.i = getelementptr %struct.pwl_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %custom_float_slope12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %custom_float_slope12.i, align 4
  %shl.i.i = shl i32 %13, 16
  %custom_float_y.i = getelementptr %struct.pwl_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %custom_float_y.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %custom_float_y.i, align 4
  %and42.i239.i = and i32 %15, 65535
  %or.i.i = or i32 %and42.i239.i, %shl.i.i
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %17, i32 noundef 18127, i32 noundef %or.i.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %params, align 4
  %and42.i240.i = and i32 %19, 255
  %segments_num.i = getelementptr inbounds %struct.gamma_curve, ptr %params, i32 0, i32 1
  %20 = ptrtoint ptr %segments_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %segments_num.i, align 4
  %shl.i241.i = shl i32 %21, 11
  %and42.i242.i = and i32 %shl.i241.i, 14336
  %or.i243.i = or i32 %and42.i242.i, %and42.i240.i
  %arrayidx22.i = getelementptr %struct.gamma_curve, ptr %params, i32 1
  %22 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx22.i, align 4
  %shl.i244.i = shl i32 %23, 15
  %and42.i245.i = and i32 %shl.i244.i, 8355840
  %or.i246.i = or i32 %or.i243.i, %and42.i245.i
  %segments_num26.i = getelementptr %struct.gamma_curve, ptr %params, i32 1, i32 1
  %24 = ptrtoint ptr %segments_num26.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %segments_num26.i, align 4
  %shl.i247.i = shl i32 %25, 27
  %and42.i248.i = and i32 %shl.i247.i, 939524096
  %or.i249.i = or i32 %or.i246.i, %and42.i248.i
  %26 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %27, i32 noundef 18128, i32 noundef %or.i249.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %add.ptr.i = getelementptr %struct.gamma_curve, ptr %params, i32 2
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i, align 4
  %and42.i250.i = and i32 %29, 255
  %segments_num34.i = getelementptr %struct.gamma_curve, ptr %params, i32 2, i32 1
  %30 = ptrtoint ptr %segments_num34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %segments_num34.i, align 4
  %shl.i251.i = shl i32 %31, 11
  %and42.i252.i = and i32 %shl.i251.i, 14336
  %or.i253.i = or i32 %and42.i252.i, %and42.i250.i
  %arrayidx36.i = getelementptr %struct.gamma_curve, ptr %params, i32 3
  %32 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx36.i, align 4
  %shl.i254.i = shl i32 %33, 15
  %and42.i255.i = and i32 %shl.i254.i, 8355840
  %or.i256.i = or i32 %or.i253.i, %and42.i255.i
  %segments_num40.i = getelementptr %struct.gamma_curve, ptr %params, i32 3, i32 1
  %34 = ptrtoint ptr %segments_num40.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %segments_num40.i, align 4
  %shl.i257.i = shl i32 %35, 27
  %and42.i258.i = and i32 %shl.i257.i, 939524096
  %or.i259.i = or i32 %or.i256.i, %and42.i258.i
  %36 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %37, i32 noundef 18129, i32 noundef %or.i259.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %add.ptr44.i = getelementptr %struct.gamma_curve, ptr %params, i32 4
  %38 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr44.i, align 4
  %and42.i260.i = and i32 %39, 255
  %segments_num49.i = getelementptr %struct.gamma_curve, ptr %params, i32 4, i32 1
  %40 = ptrtoint ptr %segments_num49.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %segments_num49.i, align 4
  %shl.i261.i = shl i32 %41, 11
  %and42.i262.i = and i32 %shl.i261.i, 14336
  %or.i263.i = or i32 %and42.i262.i, %and42.i260.i
  %arrayidx51.i = getelementptr %struct.gamma_curve, ptr %params, i32 5
  %42 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx51.i, align 4
  %shl.i264.i = shl i32 %43, 15
  %and42.i265.i = and i32 %shl.i264.i, 8355840
  %or.i266.i = or i32 %or.i263.i, %and42.i265.i
  %segments_num55.i = getelementptr %struct.gamma_curve, ptr %params, i32 5, i32 1
  %44 = ptrtoint ptr %segments_num55.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %segments_num55.i, align 4
  %shl.i267.i = shl i32 %45, 27
  %and42.i268.i = and i32 %shl.i267.i, 939524096
  %or.i269.i = or i32 %or.i266.i, %and42.i268.i
  %46 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %47, i32 noundef 18130, i32 noundef %or.i269.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %add.ptr59.i = getelementptr %struct.gamma_curve, ptr %params, i32 6
  %48 = ptrtoint ptr %add.ptr59.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr59.i, align 4
  %and42.i270.i = and i32 %49, 255
  %segments_num64.i = getelementptr %struct.gamma_curve, ptr %params, i32 6, i32 1
  %50 = ptrtoint ptr %segments_num64.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %segments_num64.i, align 4
  %shl.i271.i = shl i32 %51, 11
  %and42.i272.i = and i32 %shl.i271.i, 14336
  %or.i273.i = or i32 %and42.i272.i, %and42.i270.i
  %arrayidx66.i = getelementptr %struct.gamma_curve, ptr %params, i32 7
  %52 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx66.i, align 4
  %shl.i274.i = shl i32 %53, 15
  %and42.i275.i = and i32 %shl.i274.i, 8355840
  %or.i276.i = or i32 %or.i273.i, %and42.i275.i
  %segments_num70.i = getelementptr %struct.gamma_curve, ptr %params, i32 7, i32 1
  %54 = ptrtoint ptr %segments_num70.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %segments_num70.i, align 4
  %shl.i277.i = shl i32 %55, 27
  %and42.i278.i = and i32 %shl.i277.i, 939524096
  %or.i279.i = or i32 %or.i276.i, %and42.i278.i
  %56 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %57, i32 noundef 18131, i32 noundef %or.i279.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %add.ptr74.i = getelementptr %struct.gamma_curve, ptr %params, i32 8
  %58 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr74.i, align 4
  %and42.i280.i = and i32 %59, 255
  %segments_num79.i = getelementptr %struct.gamma_curve, ptr %params, i32 8, i32 1
  %60 = ptrtoint ptr %segments_num79.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %segments_num79.i, align 4
  %shl.i281.i = shl i32 %61, 11
  %and42.i282.i = and i32 %shl.i281.i, 14336
  %or.i283.i = or i32 %and42.i282.i, %and42.i280.i
  %arrayidx81.i = getelementptr %struct.gamma_curve, ptr %params, i32 9
  %62 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx81.i, align 4
  %shl.i284.i = shl i32 %63, 15
  %and42.i285.i = and i32 %shl.i284.i, 8355840
  %or.i286.i = or i32 %or.i283.i, %and42.i285.i
  %segments_num85.i = getelementptr %struct.gamma_curve, ptr %params, i32 9, i32 1
  %64 = ptrtoint ptr %segments_num85.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %segments_num85.i, align 4
  %shl.i287.i = shl i32 %65, 27
  %and42.i288.i = and i32 %shl.i287.i, 939524096
  %or.i289.i = or i32 %or.i286.i, %and42.i288.i
  %66 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %67, i32 noundef 18132, i32 noundef %or.i289.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %add.ptr89.i = getelementptr %struct.gamma_curve, ptr %params, i32 10
  %68 = ptrtoint ptr %add.ptr89.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr89.i, align 4
  %and42.i290.i = and i32 %69, 255
  %segments_num94.i = getelementptr %struct.gamma_curve, ptr %params, i32 10, i32 1
  %70 = ptrtoint ptr %segments_num94.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %segments_num94.i, align 4
  %shl.i291.i = shl i32 %71, 11
  %and42.i292.i = and i32 %shl.i291.i, 14336
  %or.i293.i = or i32 %and42.i292.i, %and42.i290.i
  %arrayidx96.i = getelementptr %struct.gamma_curve, ptr %params, i32 11
  %72 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx96.i, align 4
  %shl.i294.i = shl i32 %73, 15
  %and42.i295.i = and i32 %shl.i294.i, 8355840
  %or.i296.i = or i32 %or.i293.i, %and42.i295.i
  %segments_num100.i = getelementptr %struct.gamma_curve, ptr %params, i32 11, i32 1
  %74 = ptrtoint ptr %segments_num100.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %segments_num100.i, align 4
  %shl.i297.i = shl i32 %75, 27
  %and42.i298.i = and i32 %shl.i297.i, 939524096
  %or.i299.i = or i32 %or.i296.i, %and42.i298.i
  %76 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %77, i32 noundef 18133, i32 noundef %or.i299.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %add.ptr104.i = getelementptr %struct.gamma_curve, ptr %params, i32 12
  %78 = ptrtoint ptr %add.ptr104.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr104.i, align 4
  %and42.i300.i = and i32 %79, 255
  %segments_num109.i = getelementptr %struct.gamma_curve, ptr %params, i32 12, i32 1
  %80 = ptrtoint ptr %segments_num109.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %segments_num109.i, align 4
  %shl.i301.i = shl i32 %81, 11
  %and42.i302.i = and i32 %shl.i301.i, 14336
  %or.i303.i = or i32 %and42.i302.i, %and42.i300.i
  %arrayidx111.i = getelementptr %struct.gamma_curve, ptr %params, i32 13
  %82 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx111.i, align 4
  %shl.i304.i = shl i32 %83, 15
  %and42.i305.i = and i32 %shl.i304.i, 8355840
  %or.i306.i = or i32 %or.i303.i, %and42.i305.i
  %segments_num115.i = getelementptr %struct.gamma_curve, ptr %params, i32 13, i32 1
  %84 = ptrtoint ptr %segments_num115.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %segments_num115.i, align 4
  %shl.i307.i = shl i32 %85, 27
  %and42.i308.i = and i32 %shl.i307.i, 939524096
  %or.i309.i = or i32 %or.i306.i, %and42.i308.i
  %86 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %87, i32 noundef 18134, i32 noundef %or.i309.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %add.ptr119.i = getelementptr %struct.gamma_curve, ptr %params, i32 14
  %88 = ptrtoint ptr %add.ptr119.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr119.i, align 4
  %and42.i310.i = and i32 %89, 255
  %segments_num124.i = getelementptr %struct.gamma_curve, ptr %params, i32 14, i32 1
  %90 = ptrtoint ptr %segments_num124.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %segments_num124.i, align 4
  %shl.i311.i = shl i32 %91, 11
  %and42.i312.i = and i32 %shl.i311.i, 14336
  %or.i313.i = or i32 %and42.i312.i, %and42.i310.i
  %arrayidx126.i = getelementptr %struct.gamma_curve, ptr %params, i32 15
  %92 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx126.i, align 4
  %shl.i314.i = shl i32 %93, 15
  %and42.i315.i = and i32 %shl.i314.i, 8355840
  %or.i316.i = or i32 %or.i313.i, %and42.i315.i
  %segments_num130.i = getelementptr %struct.gamma_curve, ptr %params, i32 15, i32 1
  %94 = ptrtoint ptr %segments_num130.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %segments_num130.i, align 4
  %shl.i317.i = shl i32 %95, 27
  %and42.i318.i = and i32 %shl.i317.i, 939524096
  %or.i319.i = or i32 %or.i316.i, %and42.i318.i
  %96 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %97, i32 noundef 18135, i32 noundef %or.i319.i, ptr noundef nonnull @__func__.regamma_config_regions_and_segments) #3
  %98 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %99, i32 noundef 18155, ptr noundef nonnull @__func__.set_bypass_input_gamma) #3
  %and.i.i = and i32 %call.i, -4
  %100 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %101, i32 noundef 18155, i32 noundef %and.i.i, ptr noundef nonnull @__func__.set_bypass_input_gamma) #3
  tail call fastcc void @power_on_lut(ptr noundef %xfm, i1 noundef zeroext true)
  %102 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %103, i32 noundef 18123, i32 noundef 7, ptr noundef nonnull @__func__.program_pwl) #3
  %104 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %105, i32 noundef 18121, i32 noundef 0, ptr noundef nonnull @__func__.program_pwl) #3
  %hw_points_num.i = getelementptr inbounds %struct.pwl_params, ptr %params, i32 0, i32 3
  %106 = ptrtoint ptr %hw_points_num.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hw_points_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.not31.i = icmp eq i32 %107, 0
  br i1 %cmp.not31.i, label %entry.program_pwl.exit_crit_edge, label %while.body.preheader.i

entry.program_pwl.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %program_pwl.exit

while.body.preheader.i:                           ; preds = %entry
  %rgb_resulted.i = getelementptr inbounds %struct.pwl_params, ptr %params, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %rgb.033.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %rgb_resulted.i, %while.body.preheader.i ]
  %i.032.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %108 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ctx.i, align 4
  %red_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.033.i, i32 0, i32 6
  %110 = ptrtoint ptr %red_reg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %red_reg.i, align 8
  tail call void @dm_write_reg_func(ptr noundef %109, i32 noundef 18122, i32 noundef %111, ptr noundef nonnull @__func__.program_pwl) #3
  %112 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ctx.i, align 4
  %green_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.033.i, i32 0, i32 7
  %114 = ptrtoint ptr %green_reg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %green_reg.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %113, i32 noundef 18122, i32 noundef %115, ptr noundef nonnull @__func__.program_pwl) #3
  %116 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctx.i, align 4
  %blue_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.033.i, i32 0, i32 8
  %118 = ptrtoint ptr %blue_reg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %blue_reg.i, align 8
  tail call void @dm_write_reg_func(ptr noundef %117, i32 noundef 18122, i32 noundef %119, ptr noundef nonnull @__func__.program_pwl) #3
  %120 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ctx.i, align 4
  %delta_red_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.033.i, i32 0, i32 9
  %122 = ptrtoint ptr %delta_red_reg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %delta_red_reg.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %121, i32 noundef 18122, i32 noundef %123, ptr noundef nonnull @__func__.program_pwl) #3
  %124 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ctx.i, align 4
  %delta_green_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.033.i, i32 0, i32 10
  %126 = ptrtoint ptr %delta_green_reg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %delta_green_reg.i, align 8
  tail call void @dm_write_reg_func(ptr noundef %125, i32 noundef 18122, i32 noundef %127, ptr noundef nonnull @__func__.program_pwl) #3
  %128 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ctx.i, align 4
  %delta_blue_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.033.i, i32 0, i32 11
  %130 = ptrtoint ptr %delta_blue_reg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %delta_blue_reg.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %129, i32 noundef 18122, i32 noundef %131, ptr noundef nonnull @__func__.program_pwl) #3
  %incdec.ptr.i = getelementptr %struct.pwl_result_data, ptr %rgb.033.i, i32 1
  %inc.i = add i32 %i.032.i, 1
  %132 = ptrtoint ptr %hw_points_num.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %hw_points_num.i, align 8
  %cmp.not.i = icmp eq i32 %inc.i, %133
  br i1 %cmp.not.i, label %while.body.i.program_pwl.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i.program_pwl.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %program_pwl.exit

program_pwl.exit:                                 ; preds = %while.body.i.program_pwl.exit_crit_edge, %entry.program_pwl.exit_crit_edge
  %134 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %135, i32 noundef 18120, i32 noundef 0, ptr noundef nonnull @__func__.configure_regamma_mode) #3
  tail call fastcc void @power_on_lut(ptr noundef %xfm, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @power_on_lut(ptr nocapture noundef readonly %xfm, i1 noundef zeroext %power_on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18170, ptr noundef nonnull @__func__.power_on_lut) #3
  %and.i1 = and i32 %call, -5
  %masksel = select i1 %power_on, i32 4, i32 0
  %value.2 = or i32 %and.i1, %masksel
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 18170, i32 noundef %value.2, ptr noundef nonnull @__func__.power_on_lut) #3
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %call21 = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef 18170, ptr noundef nonnull @__func__.power_on_lut) #3
  %6 = and i32 %call21, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %6)
  %.not = icmp eq i32 %6, 36
  br i1 %.not, label %entry.for.end_crit_edge, label %if.end27

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end27:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496) #3
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %call21.1 = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef 18170, ptr noundef nonnull @__func__.power_on_lut) #3
  %10 = and i32 %call21.1, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %10)
  %.not.1 = icmp eq i32 %10, 36
  br i1 %.not.1, label %if.end27.for.end_crit_edge, label %if.end27.1

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end27.1:                                       ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #3
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %call21.2 = tail call i32 @dm_read_reg_func(ptr noundef %13, i32 noundef 18170, ptr noundef nonnull @__func__.power_on_lut) #3
  %14 = and i32 %call21.2, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %14)
  %.not.2 = icmp eq i32 %14, 36
  br i1 %.not.2, label %if.end27.1.for.end_crit_edge, label %if.end27.2

if.end27.1.for.end_crit_edge:                     ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end27.2:                                       ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #3
  br label %for.end

for.end:                                          ; preds = %if.end27.2, %if.end27.1.for.end_crit_edge, %if.end27.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_power_on_regamma_lut_v(ptr nocapture noundef readonly %xfm, i1 noundef zeroext %power_on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18170, ptr noundef nonnull @__func__.dce110_opp_power_on_regamma_lut_v) #3
  %and.i14 = and i32 %call, -64
  %or.i = select i1 %power_on, i32 36, i32 0
  %or.i19 = or i32 %or.i, %and.i14
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef 18170, i32 noundef %or.i19, ptr noundef nonnull @__func__.dce110_opp_power_on_regamma_lut_v) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce110_opp_set_regamma_mode_v(ptr nocapture noundef %xfm, i32 noundef %mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__func__.dce110_opp_power_on_regamma_lut_v, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_regamma_v.c", i32 523, i32 19}
!2 = !{ptr @__func__.regamma_config_regions_and_segments, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_regamma_v.c", i32 151, i32 3}
!4 = !{ptr @__func__.set_bypass_input_gamma, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_regamma_v.c", i32 90, i32 10}
!6 = !{ptr @__func__.power_on_lut, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_regamma_v.c", i32 39, i32 19}
!8 = !{ptr @__func__.program_pwl, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_regamma_v.c", i32 464, i32 2}
!10 = !{ptr @__func__.configure_regamma_mode, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_regamma_v.c", i32 113, i32 2}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!14 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
