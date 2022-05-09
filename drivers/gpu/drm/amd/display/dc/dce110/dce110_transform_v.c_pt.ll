; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce110/dce110_transform_v.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.transform_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.transform = type { ptr, ptr, i32, ptr, %struct.pwl_params }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.fixed31_32 = type { i64 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.dce_transform = type { %struct.transform, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.scaler_data = type { i32, i32, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.scaling_ratios, %struct.scl_inits, %struct.sharpness_adj, i32, %struct.line_buffer_params }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.scaling_ratios = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.scl_inits = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.sharpness_adj = type { i32, i32 }
%struct.line_buffer_params = type { i8, i8, i8, i32, i32 }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }

@dce110_xfmv_funcs = internal constant { %struct.transform_funcs, [48 x i8] } { %struct.transform_funcs { ptr @dce110_xfmv_reset, ptr @dce110_xfmv_set_scaler, ptr @dce110_xfmv_set_pixel_storage_depth, ptr @dce_transform_get_optimal_number_of_taps, ptr @dce110_xfmv_set_gamut_remap, ptr @dce110_opp_v_set_csc_default, ptr @dce110_opp_v_set_csc_adjustment, ptr @dce110_opp_power_on_regamma_lut_v, ptr null, ptr null, ptr null, ptr null, ptr @dce110_opp_program_regamma_pwl_v, ptr @dce110_opp_set_regamma_mode_v, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__func__.dce110_xfmv_power_up_line_buffer = private unnamed_addr constant [33 x i8] c"dce110_xfmv_power_up_line_buffer\00", align 1
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.program_overscan = private unnamed_addr constant [17 x i8] c"program_overscan\00", align 1
@__func__.setup_scaling_configuration = private unnamed_addr constant [28 x i8] c"setup_scaling_configuration\00", align 1
@__func__.program_scl_ratios_inits = private unnamed_addr constant [25 x i8] c"program_scl_ratios_inits\00", align 1
@__func__.get_filter_coeffs_64p = private unnamed_addr constant [22 x i8] c"get_filter_coeffs_64p\00", align 1
@__func__.program_multi_taps_filter = private unnamed_addr constant [26 x i8] c"program_multi_taps_filter\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.program_viewport = private unnamed_addr constant [17 x i8] c"program_viewport\00", align 1
@__func__.set_coeff_update_complete = private unnamed_addr constant [26 x i8] c"set_coeff_update_complete\00", align 1
@__func__.dce110_xfmv_set_pixel_storage_depth = private unnamed_addr constant [36 x i8] c"dce110_xfmv_set_pixel_storage_depth\00", align 1
@dce110_xfmv_set_pixel_storage_depth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.dce110_xfmv_set_pixel_storage_depth, ptr @.str.3, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014[drm] %s: Capability not supported\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c\00", [59 x i8] zeroinitializer }, align 32
@dce110_xfmv_set_pixel_storage_depth._entry_ptr = internal global ptr @dce110_xfmv_set_pixel_storage_depth._entry, section ".printk_index", align 4
@switch.table.dce110_xfmv_set_pixel_storage_depth = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 1, i32 2, i32 0, i32 2, i32 2, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.dce110_xfmv_set_pixel_storage_depth.4 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"dce110_xfmv_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 681, i32 37 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 245, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [72 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 676, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [49 x i8] c"switch.table.dce110_xfmv_set_pixel_storage_depth\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [51 x i8] c"switch.table.dce110_xfmv_set_pixel_storage_depth.4\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @dce110_xfmv_set_pixel_storage_depth._entry, ptr @dce110_xfmv_set_pixel_storage_depth._entry_ptr, ptr @dce110_xfmv_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @switch.table.dce110_xfmv_set_pixel_storage_depth, ptr @switch.table.dce110_xfmv_set_pixel_storage_depth.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_xfmv_funcs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_xfmv_set_pixel_storage_depth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_xfmv_set_pixel_storage_depth to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_xfmv_set_pixel_storage_depth.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i1 @dce110_transform_v_construct(ptr nocapture noundef writeonly %xfm_dce, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1, align 4
  %1 = ptrtoint ptr %xfm_dce to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dce110_xfmv_funcs, ptr %xfm_dce, align 8
  %lb_pixel_depth_supported = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 8
  %2 = ptrtoint ptr %lb_pixel_depth_supported to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 15, ptr %lb_pixel_depth_supported, align 4
  %prescaler_on = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 11
  %3 = ptrtoint ptr %prescaler_on to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %prescaler_on, align 8
  %lb_bits_per_entry = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 10
  %4 = ptrtoint ptr %lb_bits_per_entry to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 144, ptr %lb_bits_per_entry, align 4
  %lb_memory_size = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 9
  %5 = ptrtoint ptr %lb_memory_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1712, ptr %lb_memory_size, align 8
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dce110_xfmv_reset(ptr nocapture noundef writeonly %xfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_v = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 4
  %0 = call ptr @memset(ptr %filter_v, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_xfmv_set_scaler(ptr nocapture noundef %xfm, ptr noundef readonly %data) #1 align 64 {
entry:
  %luma_viewport = alloca %struct.rect, align 4
  %chroma_viewport = alloca %struct.rect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %luma_viewport) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chroma_viewport) #6
  %ctx.i = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 17981, ptr noundef nonnull @__func__.dce110_xfmv_power_up_line_buffer) #6
  %lb_memory_size.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 9
  %2 = ptrtoint ptr %lb_memory_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lb_memory_size.i, align 8
  %and.i1.i = and i32 %call.i, -3149824
  %and42.i.i = and i32 %3, 4095
  %or.i.i = or i32 %and42.i.i, %and.i1.i
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %5, i32 noundef 17981, i32 noundef %or.i.i, ptr noundef nonnull @__func__.dce110_xfmv_power_up_line_buffer) #6
  %viewport.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %viewport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %viewport.i, align 4
  %.frozen = freeze i32 %7
  %div.i = sdiv i32 %.frozen, 2
  %8 = mul i32 %div.i, 2
  %rem.i.decomposed = sub i32 %.frozen, %8
  %sub.i = sub i32 %7, %rem.i.decomposed
  %9 = ptrtoint ptr %luma_viewport to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %luma_viewport, align 4
  %y.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %y.i, align 4
  %.frozen142 = freeze i32 %11
  %div40.i = sdiv i32 %.frozen142, 2
  %12 = mul i32 %div40.i, 2
  %rem7.i.decomposed = sub i32 %.frozen142, %12
  %sub8.i = sub i32 %11, %rem7.i.decomposed
  %y9.i = getelementptr inbounds %struct.rect, ptr %luma_viewport, i32 0, i32 1
  %13 = ptrtoint ptr %y9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub8.i, ptr %y9.i, align 4
  %width.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 4
  %rem13.i = srem i32 %15, 2
  %sub14.i = sub i32 %15, %rem13.i
  %width15.i = getelementptr inbounds %struct.rect, ptr %luma_viewport, i32 0, i32 2
  %16 = ptrtoint ptr %width15.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub14.i, ptr %width15.i, align 4
  %height.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height.i, align 4
  %rem19.i = srem i32 %18, 2
  %sub20.i = sub i32 %18, %rem19.i
  %height21.i = getelementptr inbounds %struct.rect, ptr %luma_viewport, i32 0, i32 3
  %19 = ptrtoint ptr %height21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub20.i, ptr %height21.i, align 4
  %20 = ptrtoint ptr %chroma_viewport to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i, ptr %chroma_viewport, align 4
  %y25.i = getelementptr inbounds %struct.rect, ptr %chroma_viewport, i32 0, i32 1
  %21 = ptrtoint ptr %y25.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub8.i, ptr %y25.i, align 4
  %height27.i = getelementptr inbounds %struct.rect, ptr %chroma_viewport, i32 0, i32 3
  %22 = ptrtoint ptr %height27.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub20.i, ptr %height27.i, align 4
  %width29.i = getelementptr inbounds %struct.rect, ptr %chroma_viewport, i32 0, i32 2
  %23 = ptrtoint ptr %width29.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub14.i, ptr %width29.i, align 4
  %format.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 9
  %24 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %format.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp.i = icmp eq i32 %25, 7
  br i1 %cmp.i, label %if.then.i, label %entry.calculate_viewport.exit_crit_edge

entry.calculate_viewport.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %calculate_viewport.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rem31.i = srem i32 %sub20.i, 2
  %add.i = add i32 %rem31.i, %sub20.i
  %26 = ptrtoint ptr %height21.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %height21.i, align 4
  %rem34.i = srem i32 %sub14.i, 2
  %add36.i = add i32 %rem34.i, %sub14.i
  %27 = ptrtoint ptr %width15.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add36.i, ptr %width15.i, align 4
  %28 = ptrtoint ptr %chroma_viewport to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i, ptr %chroma_viewport, align 4
  %29 = ptrtoint ptr %y25.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div40.i, ptr %y25.i, align 4
  %div43.i = sdiv i32 %add.i, 2
  %30 = ptrtoint ptr %height27.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div43.i, ptr %height27.i, align 4
  %div46.i = sdiv i32 %add36.i, 2
  %31 = ptrtoint ptr %width29.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div46.i, ptr %width29.i, align 4
  br label %calculate_viewport.exit

calculate_viewport.exit:                          ; preds = %if.then.i, %entry.calculate_viewport.exit_crit_edge
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data, align 8
  %recout.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 5
  %34 = ptrtoint ptr %recout.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %recout.i, align 4
  %width.i81 = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %width.i81 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width.i81, align 4
  %38 = add i32 %35, %37
  %sub2.i = sub i32 %33, %38
  %v_active.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 1
  %39 = ptrtoint ptr %v_active.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %v_active.i, align 4
  %y.i82 = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %y.i82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %y.i82, align 4
  %height.i83 = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 5, i32 3
  %43 = ptrtoint ptr %height.i83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height.i83, align 4
  %45 = add i32 %42, %44
  %sub6.i = sub i32 %40, %45
  %46 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %visual_confirm.i = getelementptr inbounds %struct.dc_debug_options, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %visual_confirm.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %visual_confirm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.not.i = icmp eq i32 %51, 0
  %add.i85 = add i32 %sub6.i, 2
  %add7.i = add i32 %sub2.i, 2
  %overscan_right.0.i = select i1 %cmp.not.i, i32 %sub2.i, i32 %add7.i
  %overscan_bottom.0.i = select i1 %cmp.not.i, i32 %sub6.i, i32 %add.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overscan_right.0.i)
  %cmp8.i = icmp slt i32 %overscan_right.0.i, 0
  br i1 %cmp8.i, label %do.body.i, label %calculate_viewport.exit.if.end10.i_crit_edge

calculate_viewport.exit.if.end10.i_crit_edge:     ; preds = %calculate_viewport.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

do.body.i:                                        ; preds = %calculate_viewport.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.program_overscan, i32 noundef 245) #6
  tail call void @kgdb_breakpoint() #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.body.i, %calculate_viewport.exit.if.end10.i_crit_edge
  %overscan_right.1.i = phi i32 [ 0, %do.body.i ], [ %overscan_right.0.i, %calculate_viewport.exit.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overscan_bottom.0.i)
  %cmp11.i = icmp slt i32 %overscan_bottom.0.i, 0
  br i1 %cmp11.i, label %do.body13.i, label %if.end10.i.program_overscan.exit_crit_edge

if.end10.i.program_overscan.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %program_overscan.exit

do.body13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.program_overscan, i32 noundef 249) #6
  tail call void @kgdb_breakpoint() #6
  br label %program_overscan.exit

program_overscan.exit:                            ; preds = %do.body13.i, %if.end10.i.program_overscan.exit_crit_edge
  %overscan_bottom.1.i = phi i32 [ 0, %do.body13.i ], [ %overscan_bottom.0.i, %if.end10.i.program_overscan.exit_crit_edge ]
  %52 = ptrtoint ptr %recout.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %recout.i, align 4
  %shl.i.i = shl i32 %53, 16
  %and42.i.i86 = and i32 %shl.i.i, 536805376
  %and42.i45.i = and i32 %overscan_right.1.i, 8191
  %or.i.i87 = or i32 %and42.i.i86, %and42.i45.i
  %54 = ptrtoint ptr %y.i82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %y.i82, align 4
  %shl.i46.i = shl i32 %55, 16
  %and42.i47.i = and i32 %shl.i46.i, 536805376
  %and42.i48.i = and i32 %overscan_bottom.1.i, 8191
  %or.i49.i = or i32 %and42.i47.i, %and42.i48.i
  %56 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %57, i32 noundef 18060, i32 noundef %or.i.i87, ptr noundef nonnull @__func__.program_overscan) #6
  %58 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %59, i32 noundef 18061, i32 noundef %or.i49.i, ptr noundef nonnull @__func__.program_overscan) #6
  %60 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx.i, align 4
  %taps.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 2
  %h_taps.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %h_taps.i, align 4
  %sub.i88 = shl i32 %63, 4
  %shl.i.i89 = add i32 %sub.i88, 112
  %and42.i.i90 = and i32 %shl.i.i89, 112
  %64 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %taps.i, align 8
  %sub3.i = add i32 %65, 7
  %and42.i71.i = and i32 %sub3.i, 7
  %or.i.i91 = or i32 %and42.i71.i, %and42.i.i90
  %h_taps_c.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 2, i32 3
  %66 = ptrtoint ptr %h_taps_c.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %h_taps_c.i, align 4
  %sub6.i92 = shl i32 %67, 12
  %shl.i72.i = add i32 %sub6.i92, 28672
  %and42.i73.i = and i32 %shl.i72.i, 28672
  %or.i74.i = or i32 %or.i.i91, %and42.i73.i
  %v_taps_c.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 2, i32 2
  %68 = ptrtoint ptr %v_taps_c.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %v_taps_c.i, align 8
  %sub9.i = shl i32 %69, 8
  %shl.i75.i = add i32 %sub9.i, 1792
  %and42.i76.i = and i32 %shl.i75.i, 1792
  %or.i77.i = or i32 %or.i74.i, %and42.i76.i
  tail call void @dm_write_reg_func(ptr noundef %61, i32 noundef 18035, i32 noundef %or.i77.i, ptr noundef nonnull @__func__.setup_scaling_configuration) #6
  %70 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %h_taps.i, align 4
  %72 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %taps.i, align 8
  %add.i93 = add i32 %73, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i93)
  %cmp.i94 = icmp ugt i32 %add.i93, 2
  %spec.select.i = select i1 %cmp.i94, i32 17, i32 0
  %74 = ptrtoint ptr %h_taps_c.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %h_taps_c.i, align 4
  %76 = ptrtoint ptr %v_taps_c.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %v_taps_c.i, align 8
  %add23.i = add i32 %77, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add23.i)
  %cmp24.i = icmp ugt i32 %add23.i, 2
  br i1 %cmp24.i, label %if.then25.i, label %if.else28.i

if.then25.i:                                      ; preds = %program_overscan.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or.i80.i = or i32 %spec.select.i, 34
  tail call void @dm_write_reg_func(ptr noundef %61, i32 noundef 18034, i32 noundef %or.i80.i, ptr noundef nonnull @__func__.setup_scaling_configuration) #6
  tail call void @dm_write_reg_func(ptr noundef %61, i32 noundef 18036, i32 noundef 1, ptr noundef nonnull @__func__.setup_scaling_configuration) #6
  br label %if.then

if.else28.i:                                      ; preds = %program_overscan.exit
  %78 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %format.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %79)
  %cmp29.not.i = icmp eq i32 %79, 7
  br i1 %cmp29.not.i, label %if.else28.i.setup_scaling_configuration.exit_crit_edge, label %if.then30.i

if.else28.i.setup_scaling_configuration.exit_crit_edge: ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %setup_scaling_configuration.exit

if.then30.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i81.i = shl nuw nsw i32 %spec.select.i, 1
  %shl.i83.i = and i32 %and.i81.i, 2
  %or.i85.i = or i32 %shl.i83.i, %spec.select.i
  %shl.i88.i = and i32 %and.i81.i, 32
  %or.i90.i = or i32 %or.i85.i, %shl.i88.i
  br label %setup_scaling_configuration.exit

setup_scaling_configuration.exit:                 ; preds = %if.then30.i, %if.else28.i.setup_scaling_configuration.exit_crit_edge
  %value.1.i = phi i32 [ %or.i90.i, %if.then30.i ], [ %spec.select.i, %if.else28.i.setup_scaling_configuration.exit_crit_edge ]
  tail call void @dm_write_reg_func(ptr noundef %61, i32 noundef 18034, i32 noundef %value.1.i, ptr noundef nonnull @__func__.setup_scaling_configuration) #6
  tail call void @dm_write_reg_func(ptr noundef %61, i32 noundef 18036, i32 noundef 1, ptr noundef nonnull @__func__.setup_scaling_configuration) #6
  br i1 %cmp.i94, label %setup_scaling_configuration.exit.if.then_crit_edge, label %if.end36.critedge

setup_scaling_configuration.exit.if.then_crit_edge: ; preds = %setup_scaling_configuration.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %setup_scaling_configuration.exit.if.then_crit_edge, %if.then25.i
  %ratios.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 6
  %80 = ptrtoint ptr %ratios.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %.unpack.i = load i64, ptr %ratios.i, align 8
  %81 = insertvalue [1 x i64] undef, i64 %.unpack.i, 0
  %call.i96 = tail call i32 @dc_fixpt_u2d19([1 x i64] %81) #6
  %shl.i = shl i32 %call.i96, 5
  %vert.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 6, i32 1
  %82 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %.unpack1.i = load i64, ptr %vert.i, align 8
  %83 = insertvalue [1 x i64] undef, i64 %.unpack1.i, 0
  %call3.i = tail call i32 @dc_fixpt_u2d19([1 x i64] %83) #6
  %shl4.i = shl i32 %call3.i, 5
  %horz_c.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 6, i32 2
  %84 = ptrtoint ptr %horz_c.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %.unpack2.i = load i64, ptr %horz_c.i, align 8
  %85 = insertvalue [1 x i64] undef, i64 %.unpack2.i, 0
  %call7.i = tail call i32 @dc_fixpt_u2d19([1 x i64] %85) #6
  %shl8.i = shl i32 %call7.i, 5
  %vert_c.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 6, i32 3
  %86 = ptrtoint ptr %vert_c.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %.unpack3.i = load i64, ptr %vert_c.i, align 8
  %87 = insertvalue [1 x i64] undef, i64 %.unpack3.i, 0
  %call11.i = tail call i32 @dc_fixpt_u2d19([1 x i64] %87) #6
  %shl12.i = shl i32 %call11.i, 5
  %88 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctx.i, align 4
  %and42.i.i98 = and i32 %shl.i, 67108832
  tail call void @dm_write_reg_func(ptr noundef %89, i32 noundef 18040, i32 noundef %and42.i.i98, ptr noundef nonnull @__func__.program_scl_ratios_inits) #6
  %and42.i67.i = and i32 %shl4.i, 67108832
  tail call void @dm_write_reg_func(ptr noundef %89, i32 noundef 18045, i32 noundef %and42.i67.i, ptr noundef nonnull @__func__.program_scl_ratios_inits) #6
  %and42.i68.i = and i32 %shl8.i, 67108832
  tail call void @dm_write_reg_func(ptr noundef %89, i32 noundef 18042, i32 noundef %and42.i68.i, ptr noundef nonnull @__func__.program_scl_ratios_inits) #6
  %and42.i69.i = and i32 %shl12.i, 67108832
  tail call void @dm_write_reg_func(ptr noundef %89, i32 noundef 18048, i32 noundef %and42.i69.i, ptr noundef nonnull @__func__.program_scl_ratios_inits) #6
  tail call void @dm_write_reg_func(ptr noundef %89, i32 noundef 18041, i32 noundef 16777216, ptr noundef nonnull @__func__.program_scl_ratios_inits) #6
  tail call void @dm_write_reg_func(ptr noundef %89, i32 noundef 18046, i32 noundef 16777216, ptr noundef nonnull @__func__.program_scl_ratios_inits) #6
  tail call void @dm_write_reg_func(ptr noundef %89, i32 noundef 18043, i32 noundef 16777216, ptr noundef nonnull @__func__.program_scl_ratios_inits) #6
  tail call void @dm_write_reg_func(ptr noundef %89, i32 noundef 18049, i32 noundef 16777216, ptr noundef nonnull @__func__.program_scl_ratios_inits) #6
  %90 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %taps.i, align 8
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values)
  switch i32 %91, label %do.body.i112 [
    i32 4, label %if.then.i111
    i32 2, label %if.then3.i
    i32 1, label %if.then.get_filter_coeffs_64p.exit_crit_edge
  ]

if.then.get_filter_coeffs_64p.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_filter_coeffs_64p.exit

if.then.i111:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %.unpack = load i64, ptr %vert.i, align 8
  %94 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  %call.i110 = tail call ptr @get_filter_4tap_64p([1 x i64] %94) #6
  br label %get_filter_coeffs_64p.exit

if.then3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call ptr @get_filter_2tap_64p() #6
  br label %get_filter_coeffs_64p.exit

do.body.i112:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.get_filter_coeffs_64p, i32 noundef 500) #6
  tail call void @kgdb_breakpoint() #6
  br label %get_filter_coeffs_64p.exit

get_filter_coeffs_64p.exit:                       ; preds = %do.body.i112, %if.then3.i, %if.then.i111, %if.then.get_filter_coeffs_64p.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i110, %if.then.i111 ], [ %call4.i, %if.then3.i ], [ null, %do.body.i112 ], [ null, %if.then.get_filter_coeffs_64p.exit_crit_edge ]
  %95 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %h_taps.i, align 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %96, label %do.body.i117 [
    i32 4, label %if.then.i114
    i32 2, label %if.then3.i116
    i32 1, label %get_filter_coeffs_64p.exit.get_filter_coeffs_64p.exit119_crit_edge
  ]

get_filter_coeffs_64p.exit.get_filter_coeffs_64p.exit119_crit_edge: ; preds = %get_filter_coeffs_64p.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_filter_coeffs_64p.exit119

if.then.i114:                                     ; preds = %get_filter_coeffs_64p.exit
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %ratios.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %.unpack78 = load i64, ptr %ratios.i, align 8
  %99 = insertvalue [1 x i64] undef, i64 %.unpack78, 0
  %call.i113 = tail call ptr @get_filter_4tap_64p([1 x i64] %99) #6
  br label %get_filter_coeffs_64p.exit119

if.then3.i116:                                    ; preds = %get_filter_coeffs_64p.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i115 = tail call ptr @get_filter_2tap_64p() #6
  br label %get_filter_coeffs_64p.exit119

do.body.i117:                                     ; preds = %get_filter_coeffs_64p.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.get_filter_coeffs_64p, i32 noundef 500) #6
  tail call void @kgdb_breakpoint() #6
  br label %get_filter_coeffs_64p.exit119

get_filter_coeffs_64p.exit119:                    ; preds = %do.body.i117, %if.then3.i116, %if.then.i114, %get_filter_coeffs_64p.exit.get_filter_coeffs_64p.exit119_crit_edge
  %retval.0.i118 = phi ptr [ %call.i113, %if.then.i114 ], [ %call4.i115, %if.then3.i116 ], [ null, %do.body.i117 ], [ null, %get_filter_coeffs_64p.exit.get_filter_coeffs_64p.exit119_crit_edge ]
  %100 = ptrtoint ptr %v_taps_c.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %v_taps_c.i, align 8
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %101, label %do.body.i124 [
    i32 4, label %if.then.i121
    i32 2, label %if.then3.i123
    i32 1, label %get_filter_coeffs_64p.exit119.get_filter_coeffs_64p.exit126_crit_edge
  ]

get_filter_coeffs_64p.exit119.get_filter_coeffs_64p.exit126_crit_edge: ; preds = %get_filter_coeffs_64p.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_filter_coeffs_64p.exit126

if.then.i121:                                     ; preds = %get_filter_coeffs_64p.exit119
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %vert_c.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %.unpack79 = load i64, ptr %vert_c.i, align 8
  %104 = insertvalue [1 x i64] undef, i64 %.unpack79, 0
  %call.i120 = tail call ptr @get_filter_4tap_64p([1 x i64] %104) #6
  br label %get_filter_coeffs_64p.exit126

if.then3.i123:                                    ; preds = %get_filter_coeffs_64p.exit119
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i122 = tail call ptr @get_filter_2tap_64p() #6
  br label %get_filter_coeffs_64p.exit126

do.body.i124:                                     ; preds = %get_filter_coeffs_64p.exit119
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.get_filter_coeffs_64p, i32 noundef 500) #6
  tail call void @kgdb_breakpoint() #6
  br label %get_filter_coeffs_64p.exit126

get_filter_coeffs_64p.exit126:                    ; preds = %do.body.i124, %if.then3.i123, %if.then.i121, %get_filter_coeffs_64p.exit119.get_filter_coeffs_64p.exit126_crit_edge
  %retval.0.i125 = phi ptr [ %call.i120, %if.then.i121 ], [ %call4.i122, %if.then3.i123 ], [ null, %do.body.i124 ], [ null, %get_filter_coeffs_64p.exit119.get_filter_coeffs_64p.exit126_crit_edge ]
  %105 = ptrtoint ptr %h_taps_c.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %h_taps_c.i, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %106, label %do.body.i131 [
    i32 4, label %if.then.i128
    i32 2, label %if.then3.i130
    i32 1, label %get_filter_coeffs_64p.exit126.get_filter_coeffs_64p.exit133_crit_edge
  ]

get_filter_coeffs_64p.exit126.get_filter_coeffs_64p.exit133_crit_edge: ; preds = %get_filter_coeffs_64p.exit126
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_filter_coeffs_64p.exit133

if.then.i128:                                     ; preds = %get_filter_coeffs_64p.exit126
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %horz_c.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %.unpack80 = load i64, ptr %horz_c.i, align 8
  %109 = insertvalue [1 x i64] undef, i64 %.unpack80, 0
  %call.i127 = tail call ptr @get_filter_4tap_64p([1 x i64] %109) #6
  br label %get_filter_coeffs_64p.exit133

if.then3.i130:                                    ; preds = %get_filter_coeffs_64p.exit126
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i129 = tail call ptr @get_filter_2tap_64p() #6
  br label %get_filter_coeffs_64p.exit133

do.body.i131:                                     ; preds = %get_filter_coeffs_64p.exit126
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.get_filter_coeffs_64p, i32 noundef 500) #6
  tail call void @kgdb_breakpoint() #6
  br label %get_filter_coeffs_64p.exit133

get_filter_coeffs_64p.exit133:                    ; preds = %do.body.i131, %if.then3.i130, %if.then.i128, %get_filter_coeffs_64p.exit126.get_filter_coeffs_64p.exit133_crit_edge
  %retval.0.i132 = phi ptr [ %call.i127, %if.then.i128 ], [ %call4.i129, %if.then3.i130 ], [ null, %do.body.i131 ], [ null, %get_filter_coeffs_64p.exit126.get_filter_coeffs_64p.exit133_crit_edge ]
  %filter_v = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 4
  %110 = ptrtoint ptr %filter_v to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %filter_v, align 4
  %cmp.not = icmp eq ptr %retval.0.i, %111
  br i1 %cmp.not, label %lor.lhs.false, label %get_filter_coeffs_64p.exit133.if.then20_crit_edge

get_filter_coeffs_64p.exit133.if.then20_crit_edge: ; preds = %get_filter_coeffs_64p.exit133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %get_filter_coeffs_64p.exit133
  %filter_v_c = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 6
  %112 = ptrtoint ptr %filter_v_c to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %filter_v_c, align 4
  %cmp15.not = icmp eq ptr %retval.0.i125, %113
  br i1 %cmp15.not, label %lor.lhs.false16, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %filter_h = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 5
  %114 = ptrtoint ptr %filter_h to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %filter_h, align 8
  %cmp17.not = icmp eq ptr %retval.0.i118, %115
  br i1 %cmp17.not, label %lor.lhs.false18, label %lor.lhs.false16.if.then20_crit_edge

lor.lhs.false16.if.then20_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %filter_h_c = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 7
  %116 = ptrtoint ptr %filter_h_c to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %filter_h_c, align 8
  %cmp19.not = icmp eq ptr %retval.0.i132, %117
  br i1 %cmp19.not, label %if.end, label %lor.lhs.false18.if.then20_crit_edge

lor.lhs.false18.if.then20_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false18.if.then20_crit_edge, %lor.lhs.false16.if.then20_crit_edge, %lor.lhs.false.if.then20_crit_edge, %get_filter_coeffs_64p.exit133.if.then20_crit_edge
  %118 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %taps.i, align 8
  tail call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %119, ptr noundef %retval.0.i, i32 noundef 0)
  %120 = ptrtoint ptr %v_taps_c.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %v_taps_c.i, align 8
  tail call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %121, ptr noundef %retval.0.i125, i32 noundef 1)
  %122 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %h_taps.i, align 4
  tail call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %123, ptr noundef %retval.0.i118, i32 noundef 2)
  %124 = ptrtoint ptr %h_taps_c.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %h_taps_c.i, align 4
  tail call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %125, ptr noundef %retval.0.i132, i32 noundef 3)
  %126 = ptrtoint ptr %filter_v to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %retval.0.i, ptr %filter_v, align 4
  %filter_v_c30 = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 6
  %127 = ptrtoint ptr %filter_v_c30 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %retval.0.i125, ptr %filter_v_c30, align 4
  %filter_h31 = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 5
  %128 = ptrtoint ptr %filter_h31 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %retval.0.i118, ptr %filter_h31, align 8
  %filter_h_c32 = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 7
  %129 = ptrtoint ptr %filter_h_c32 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %retval.0.i132, ptr %filter_h_c32, align 8
  call fastcc void @program_viewport(ptr noundef %xfm, ptr noundef nonnull %luma_viewport, ptr noundef nonnull %chroma_viewport)
  %130 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctx.i, align 4
  %call.i135 = tail call i32 @dm_read_reg_func(ptr noundef %131, i32 noundef 18052, ptr noundef nonnull @__func__.set_coeff_update_complete) #6
  %or.i.i136 = or i32 %call.i135, 16777216
  %132 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ctx.i, align 4
  tail call void @dm_write_reg_func(ptr noundef %133, i32 noundef 18052, i32 noundef %or.i.i136, ptr noundef nonnull @__func__.set_coeff_update_complete) #6
  br label %if.end36

if.end:                                           ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @program_viewport(ptr noundef %xfm, ptr noundef nonnull %luma_viewport, ptr noundef nonnull %chroma_viewport)
  br label %if.end36

if.end36.critedge:                                ; preds = %setup_scaling_configuration.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @program_viewport(ptr noundef %xfm, ptr noundef nonnull %luma_viewport, ptr noundef nonnull %chroma_viewport)
  br label %if.end36

if.end36:                                         ; preds = %if.end36.critedge, %if.end, %if.then20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chroma_viewport) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %luma_viewport) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_xfmv_set_pixel_storage_depth(ptr nocapture noundef readonly %xfm, i32 noundef %depth, ptr nocapture noundef readnone %bit_depth_params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %depth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.hole_check, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dce110_xfmv_set_pixel_storage_depth, i32 noundef 655) #6
  tail call void @kgdb_breakpoint() #6
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.dce110_xfmv_set_pixel_storage_depth, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep15 = getelementptr inbounds [8 x i32], ptr @switch.table.dce110_xfmv_set_pixel_storage_depth.4, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load16 = load i32, ptr %switch.gep15, align 4
  %4 = or i32 %switch.load16, %switch.load
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.body
  %or.i = phi i32 [ %4, %switch.lookup ], [ 0, %do.body ]
  %ctx = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  tail call void @dm_write_reg_func(ptr noundef %6, i32 noundef 17980, i32 noundef %or.i, ptr noundef nonnull @__func__.dce110_xfmv_set_pixel_storage_depth) #6
  %lb_pixel_depth_supported = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 8
  %7 = ptrtoint ptr %lb_pixel_depth_supported to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lb_pixel_depth_supported, align 4
  %and = and i32 %8, %depth
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end7, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dce110_xfmv_set_pixel_storage_depth) #9
  br label %if.end

if.end:                                           ; preds = %do.end7, %sw.epilog.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce_transform_get_optimal_number_of_taps(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dce110_xfmv_set_gamut_remap(ptr nocapture noundef %xfm, ptr nocapture noundef %adjust) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_v_set_csc_default(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_v_set_csc_adjustment(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_power_on_regamma_lut_v(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_program_regamma_pwl_v(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_set_regamma_mode_v(ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_multi_taps_filter(ptr nocapture noundef readonly %xfm_dce, i32 noundef %taps, ptr noundef readonly %coeffs, i32 noundef %filter_type) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %add = add i32 %taps, 1
  %div = sdiv i32 %add, 2
  %tobool.not = icmp eq ptr %coeffs, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18170, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %or.i = or i32 %call, 256
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18170, i32 noundef %or.i, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %call3 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18172, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %2 = and i32 %call3, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %if.end.for.end_crit_edge, label %if.end7

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #6
  %call3.1 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18172, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %4 = and i32 %call3.1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5.1 = icmp eq i32 %4, 0
  br i1 %cmp5.1, label %if.end7.for.end_crit_edge, label %if.end7.1

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7.1:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  %call3.2 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18172, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %6 = and i32 %call3.2, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.2 = icmp eq i32 %6, 0
  br i1 %cmp5.2, label %if.end7.1.for.end_crit_edge, label %if.end7.2

if.end7.1.for.end_crit_edge:                      ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7.2:                                        ; preds = %if.end7.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #6
  %call3.3 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18172, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %8 = and i32 %call3.3, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.3 = icmp eq i32 %8, 0
  br i1 %cmp5.3, label %if.end7.2.for.end_crit_edge, label %if.end7.3

if.end7.2.for.end_crit_edge:                      ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7.3:                                        ; preds = %if.end7.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %call3.4 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18172, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %10 = and i32 %call3.4, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.4 = icmp eq i32 %10, 0
  br i1 %cmp5.4, label %if.end7.3.for.end_crit_edge, label %if.end7.4

if.end7.3.for.end_crit_edge:                      ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7.4:                                        ; preds = %if.end7.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  %call3.5 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18172, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %12 = and i32 %call3.5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.5 = icmp eq i32 %12, 0
  br i1 %cmp5.5, label %if.end7.4.for.end_crit_edge, label %if.end7.5

if.end7.4.for.end_crit_edge:                      ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7.5:                                        ; preds = %if.end7.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %call3.6 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18172, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %14 = and i32 %call3.6, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5.6 = icmp eq i32 %14, 0
  br i1 %cmp5.6, label %if.end7.5.for.end_crit_edge, label %if.end7.6

if.end7.5.for.end_crit_edge:                      ; preds = %if.end7.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7.6:                                        ; preds = %if.end7.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %call3.7 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18172, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %16 = and i32 %call3.7, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5.7 = icmp eq i32 %16, 0
  br i1 %cmp5.7, label %if.end7.6.for.end_crit_edge, label %if.end7.7

if.end7.6.for.end_crit_edge:                      ; preds = %if.end7.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7.7:                                        ; preds = %if.end7.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #6
  %call3.8 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18172, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %18 = and i32 %call3.8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp5.8 = icmp eq i32 %18, 0
  br i1 %cmp5.8, label %if.end7.7.for.end_crit_edge, label %if.end7.8

if.end7.7.for.end_crit_edge:                      ; preds = %if.end7.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7.8:                                        ; preds = %if.end7.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %call3.9 = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef 18172, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %20 = and i32 %call3.9, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp5.9 = icmp eq i32 %20, 0
  br i1 %cmp5.9, label %if.end7.8.for.end_crit_edge, label %if.end7.9

if.end7.8.for.end_crit_edge:                      ; preds = %if.end7.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7.9:                                        ; preds = %if.end7.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  br label %for.end

for.end:                                          ; preds = %if.end7.9, %if.end7.8.for.end_crit_edge, %if.end7.7.for.end_crit_edge, %if.end7.6.for.end_crit_edge, %if.end7.5.for.end_crit_edge, %if.end7.4.for.end_crit_edge, %if.end7.3.for.end_crit_edge, %if.end7.2.for.end_crit_edge, %if.end7.1.for.end_crit_edge, %if.end7.for.end_crit_edge, %if.end.for.end_crit_edge
  %shl.i = shl i32 %filter_type, 16
  %and42.i = and i32 %shl.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp1490 = icmp sgt i32 %add, 1
  %22 = and i32 %taps, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not = icmp ne i32 %22, 0
  %sub = add nsw i32 %div, -1
  br label %for.body11

for.body11:                                       ; preds = %for.inc35.for.body11_crit_edge, %for.end
  %select.097 = phi i32 [ %and42.i, %for.end ], [ %select.1.lcssa, %for.inc35.for.body11_crit_edge ]
  %array_idx.096 = phi i32 [ 0, %for.end ], [ %array_idx.1.lcssa, %for.inc35.for.body11_crit_edge ]
  %phase.095 = phi i32 [ 0, %for.end ], [ %inc36, %for.inc35.for.body11_crit_edge ]
  %and.i76 = and i32 %select.097, -32513
  %shl.i77 = shl i32 %phase.095, 8
  %or.i79 = or i32 %and.i76, %shl.i77
  br i1 %cmp1490, label %for.body11.for.body15_crit_edge, label %for.body11.for.inc35_crit_edge

for.body11.for.inc35_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35

for.body11.for.body15_crit_edge:                  ; preds = %for.body11
  br label %for.body15

for.body15:                                       ; preds = %if.end31.for.body15_crit_edge, %for.body11.for.body15_crit_edge
  %select.193 = phi i32 [ %or.i82, %if.end31.for.body15_crit_edge ], [ %or.i79, %for.body11.for.body15_crit_edge ]
  %array_idx.192 = phi i32 [ %array_idx.2, %if.end31.for.body15_crit_edge ], [ %array_idx.096, %for.body11.for.body15_crit_edge ]
  %pair.091 = phi i32 [ %inc33, %if.end31.for.body15_crit_edge ], [ 0, %for.body11.for.body15_crit_edge ]
  %and.i80 = and i32 %select.193, -4
  %and42.i81 = and i32 %pair.091, 3
  %or.i82 = or i32 %and.i80, %and42.i81
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18032, i32 noundef %or.i82, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %arrayidx = getelementptr i16, ptr %coeffs, i32 %array_idx.192
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  %25 = and i16 %24, 16383
  %26 = or i16 %25, -32768
  %or.i84 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pair.091, i32 %sub)
  %cmp20 = icmp eq i32 %pair.091, %sub
  %or.cond = select i1 %tobool19.not, i1 %cmp20, i1 false
  %inc24 = add i32 %array_idx.192, 1
  br i1 %or.cond, label %for.body15.if.end31_crit_edge, label %if.else

for.body15.if.end31_crit_edge:                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.else:                                          ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx27 = getelementptr i16, ptr %coeffs, i32 %inc24
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx27, align 2
  %conv28 = zext i16 %28 to i32
  %shl.i86 = shl nuw i32 %conv28, 16
  %and42.i87 = and i32 %shl.i86, 1073676288
  %or.i85 = or i32 %and42.i87, %or.i84
  %or.i88 = or i32 %or.i85, -2147483648
  %add30 = add i32 %array_idx.192, 2
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.body15.if.end31_crit_edge
  %array_idx.2 = phi i32 [ %add30, %if.else ], [ %inc24, %for.body15.if.end31_crit_edge ]
  %data.0 = phi i32 [ %or.i88, %if.else ], [ %or.i84, %for.body15.if.end31_crit_edge ]
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18033, i32 noundef %data.0, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %inc33 = add nuw nsw i32 %pair.091, 1
  %exitcond.not = icmp eq i32 %inc33, %div
  br i1 %exitcond.not, label %if.end31.for.inc35_crit_edge, label %if.end31.for.body15_crit_edge

if.end31.for.body15_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

if.end31.for.inc35_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35

for.inc35:                                        ; preds = %if.end31.for.inc35_crit_edge, %for.body11.for.inc35_crit_edge
  %array_idx.1.lcssa = phi i32 [ %array_idx.096, %for.body11.for.inc35_crit_edge ], [ %array_idx.2, %if.end31.for.inc35_crit_edge ]
  %select.1.lcssa = phi i32 [ %or.i79, %for.body11.for.inc35_crit_edge ], [ %or.i82, %if.end31.for.inc35_crit_edge ]
  %inc36 = add nuw nsw i32 %phase.095, 1
  %exitcond98.not = icmp eq i32 %inc36, 33
  br i1 %exitcond98.not, label %for.end37, label %for.inc35.for.body11_crit_edge

for.inc35.for.body11_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11

for.end37:                                        ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18170, i32 noundef %call, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end37, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_viewport(ptr nocapture noundef readonly %xfm_dce, ptr nocapture noundef readonly %luma_view_port, ptr nocapture noundef readonly %chroma_view_port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %width = getelementptr inbounds %struct.rect, ptr %luma_view_port, i32 0, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.rect, ptr %luma_view_port, i32 0, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %luma_view_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %luma_view_port, align 4
  %shl.i = shl i32 %7, 16
  %and42.i = and i32 %shl.i, 1073676288
  %y = getelementptr inbounds %struct.rect, ptr %luma_view_port, i32 0, i32 1
  %8 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %y, align 4
  %and42.i50 = and i32 %9, 16383
  %or.i = or i32 %and42.i50, %and42.i
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18054, i32 noundef %or.i, ptr noundef nonnull @__func__.program_viewport) #6
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %and42.i51 = and i32 %11, 8191
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %shl.i52 = shl i32 %13, 16
  %and42.i53 = and i32 %shl.i52, 536805376
  %or.i54 = or i32 %and42.i53, %and42.i51
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18056, i32 noundef %or.i54, ptr noundef nonnull @__func__.program_viewport) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %width8 = getelementptr inbounds %struct.rect, ptr %chroma_view_port, i32 0, i32 2
  %14 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.not = icmp eq i32 %15, 0
  br i1 %cmp9.not, label %if.end.if.end22_crit_edge, label %land.lhs.true10

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true10:                                  ; preds = %if.end
  %height11 = getelementptr inbounds %struct.rect, ptr %chroma_view_port, i32 0, i32 3
  %16 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp12.not = icmp eq i32 %17, 0
  br i1 %cmp12.not, label %land.lhs.true10.if.end22_crit_edge, label %if.then13

land.lhs.true10.if.end22_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %chroma_view_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chroma_view_port, align 4
  %shl.i55 = shl i32 %19, 16
  %and42.i56 = and i32 %shl.i55, 1073676288
  %y16 = getelementptr inbounds %struct.rect, ptr %chroma_view_port, i32 0, i32 1
  %20 = ptrtoint ptr %y16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %y16, align 4
  %and42.i57 = and i32 %21, 16383
  %or.i58 = or i32 %and42.i57, %and42.i56
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18057, i32 noundef %or.i58, ptr noundef nonnull @__func__.program_viewport) #6
  %22 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height11, align 4
  %and42.i59 = and i32 %23, 8191
  %24 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width8, align 4
  %shl.i60 = shl i32 %25, 16
  %and42.i61 = and i32 %shl.i60, 536805376
  %or.i62 = or i32 %and42.i61, %and42.i59
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef 18059, i32 noundef %or.i62, ptr noundef nonnull @__func__.program_viewport) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then13, %land.lhs.true10.if.end22_crit_edge, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_fixpt_u2d19([1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_filter_4tap_64p([1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_filter_2tap_64p() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @dce110_xfmv_funcs, !1, !"dce110_xfmv_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 681, i32 37}
!2 = !{ptr @__func__.dce110_xfmv_power_up_line_buffer, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 510, i32 10}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!6 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 245, i32 3}
!9 = !{ptr @__func__.program_overscan, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.setup_scaling_configuration, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 175, i32 2}
!12 = !{ptr @__func__.program_scl_ratios_inits, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 404, i32 2}
!14 = !{ptr @__func__.get_filter_coeffs_64p, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 500, i32 3}
!16 = !{ptr @__func__.program_multi_taps_filter, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 303, i32 14}
!18 = !{ptr @__func__.program_viewport, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 101, i32 3}
!20 = !{ptr @__func__.set_coeff_update_complete, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 279, i32 10}
!22 = !{ptr @__func__.dce110_xfmv_set_pixel_storage_depth, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 655, i32 3}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_transform_v.c", i32 676, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dce110_xfmv_set_pixel_storage_depth._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dce110_xfmv_set_pixel_storage_depth._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
