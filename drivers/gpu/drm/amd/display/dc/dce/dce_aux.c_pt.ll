; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_aux.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dce_aux_funcs = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dce_aux = type { i32, ptr, ptr, i32, i32, i8, ptr }
%struct.aux_engine_dce110 = type { %struct.dce_aux, ptr, ptr, ptr, %struct.anon.70, i32 }
%struct.anon.70 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ddc_service = type { ptr, %struct.ddc_flags, %union.ddc_wa, i32, i32, ptr, ptr, i32, i32, [2048 x i8] }
%struct.ddc_flags = type { i8 }
%union.ddc_wa = type { i32 }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.1, %struct.anon.2, %struct.anon.3, i32, i32 }
%struct.anon.1 = type { i8, [3 x i8] }
%struct.anon.2 = type { i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.6, %struct.anon.7, i8, i8, i64 }
%struct.anon.6 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.7 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.69 }
%struct.anon.69 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.gpio = type { ptr, ptr, i32, i32, %union.gpio_hw_container, i32, i32 }
%union.gpio_hw_container = type { ptr }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.62, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.63, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.62 = type { i8, [3 x i8] }
%struct.anon.63 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.dce110_aux_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_aux_registers_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce110_aux_registers_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aux_payload = type { i8, i8, i8, i8, i32, i32, ptr, ptr, i32 }

@aux_functions = internal global { %struct.dce_aux_funcs, [24 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.is_engine_available = private unnamed_addr constant [20 x i8] c"is_engine_available\00", align 1
@__func__.acquire_engine = private unnamed_addr constant [15 x i8] c"acquire_engine\00", align 1
@__func__.submit_channel_request = private unnamed_addr constant [23 x i8] c"submit_channel_request\00", align 1
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c\00", [41 x i8] zeroinitializer }, align 32
@__func__.get_channel_status = private unnamed_addr constant [19 x i8] c"get_channel_status\00", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 4, i64 8, i64 32]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 8]
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"aux_functions\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 503, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [58 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 346, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @aux_functions, ptr @.str.3], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_functions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_engine_destroy(ptr nocapture noundef %engine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 4
  tail call void @kfree(ptr noundef %1) #4
  %2 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %engine, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @dce110_aux_engine_construct(ptr noundef returned writeonly %aux_engine110, ptr noundef %ctx, i32 noundef %inst, i32 noundef %timeout_period, ptr noundef %regs, ptr noundef %mask, ptr noundef %shift, i1 noundef zeroext %is_ext_aux_timeout_configurable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc = getelementptr inbounds %struct.dce_aux, ptr %aux_engine110, i32 0, i32 1
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ddc, align 4
  %ctx2 = getelementptr inbounds %struct.dce_aux, ptr %aux_engine110, i32 0, i32 2
  %1 = ptrtoint ptr %ctx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %ctx2, align 4
  %delay = getelementptr inbounds %struct.dce_aux, ptr %aux_engine110, i32 0, i32 3
  %2 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %delay, align 4
  %max_defer_write_retry = getelementptr inbounds %struct.dce_aux, ptr %aux_engine110, i32 0, i32 4
  %3 = ptrtoint ptr %max_defer_write_retry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_defer_write_retry, align 4
  %4 = ptrtoint ptr %aux_engine110 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inst, ptr %aux_engine110, align 4
  %polling_timeout_period = getelementptr inbounds %struct.aux_engine_dce110, ptr %aux_engine110, i32 0, i32 5
  %5 = ptrtoint ptr %polling_timeout_period to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %timeout_period, ptr %polling_timeout_period, align 4
  %regs7 = getelementptr inbounds %struct.aux_engine_dce110, ptr %aux_engine110, i32 0, i32 1
  %6 = ptrtoint ptr %regs7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %regs, ptr %regs7, align 4
  %mask8 = getelementptr inbounds %struct.aux_engine_dce110, ptr %aux_engine110, i32 0, i32 2
  %7 = ptrtoint ptr %mask8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mask, ptr %mask8, align 4
  %shift9 = getelementptr inbounds %struct.aux_engine_dce110, ptr %aux_engine110, i32 0, i32 3
  %8 = ptrtoint ptr %shift9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %shift, ptr %shift9, align 4
  %funcs = getelementptr inbounds %struct.dce_aux, ptr %aux_engine110, i32 0, i32 6
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @aux_functions, ptr %funcs, align 4
  br i1 %is_ext_aux_timeout_configurable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store ptr @dce_aux_configure_timeout, ptr @aux_functions, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %aux_engine110
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce_aux_configure_timeout(ptr nocapture noundef readonly %ddc, i32 noundef %timeout_in_us) #0 align 64 {
entry:
  %prev_length = alloca i32, align 4
  %prev_mult = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_length) #4
  %0 = ptrtoint ptr %prev_length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %prev_length, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_mult) #4
  %1 = ptrtoint ptr %prev_mult to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %prev_mult, align 4
  %2 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc, align 4
  %ctx = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 5
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res_pool, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %en = getelementptr inbounds %struct.gpio, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en, align 4
  %arrayidx = getelementptr %struct.resource_pool, ptr %9, i32 0, i32 11, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %mul = mul i32 %timeout_in_us, 6
  %polling_timeout_period = getelementptr inbounds %struct.aux_engine_dce110, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %polling_timeout_period to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %polling_timeout_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_in_us)
  %cmp = icmp eq i32 %timeout_in_us, 0
  br i1 %cmp, label %entry.if.end37.thread_crit_edge, label %if.else

entry.if.end37.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.thread

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1017, i32 %timeout_in_us)
  %cmp2 = icmp ult i32 %timeout_in_us, 1017
  br i1 %cmp2, label %if.else.if.end37_crit_edge, label %if.else6

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2033, i32 %timeout_in_us)
  %cmp7 = icmp ult i32 %timeout_in_us, 2033
  br i1 %cmp7, label %if.else6.if.end37_crit_edge, label %if.else15

if.else6.if.end37_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.else15:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4065, i32 %timeout_in_us)
  %cmp16 = icmp ult i32 %timeout_in_us, 4065
  %. = select i1 %cmp16, i32 5, i32 6
  %.118 = select i1 %cmp16, i32 31, i32 63
  %.119 = select i1 %cmp16, i32 2, i32 3
  br label %if.end37

if.end37:                                         ; preds = %if.else15, %if.else6.if.end37_crit_edge, %if.else.if.end37_crit_edge
  %.sink117 = phi i32 [ 3, %if.else.if.end37_crit_edge ], [ 4, %if.else6.if.end37_crit_edge ], [ %., %if.else15 ]
  %.sink = phi i32 [ 7, %if.else.if.end37_crit_edge ], [ 15, %if.else6.if.end37_crit_edge ], [ %.118, %if.else15 ]
  %multiplier.0 = phi i32 [ 0, %if.else.if.end37_crit_edge ], [ 1, %if.else6.if.end37_crit_edge ], [ %.119, %if.else15 ]
  %div27103 = lshr i32 %timeout_in_us, %.sink117
  %rem28 = and i32 %.sink, %timeout_in_us
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem28)
  %cmp29.not = icmp ne i32 %rem28, 0
  %inc31 = zext i1 %cmp29.not to i32
  %spec.select109 = add nuw nsw i32 %div27103, %inc31
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %spec.select109)
  %cmp38 = icmp ult i32 %spec.select109, 127
  br i1 %cmp38, label %if.end37.if.end37.thread_crit_edge, label %if.end37._crit_edge

if.end37._crit_edge:                              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %17

if.end37.if.end37.thread_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.thread

if.end37.thread:                                  ; preds = %if.end37.if.end37.thread_crit_edge, %entry.if.end37.thread_crit_edge
  %multiplier.0116 = phi i32 [ %multiplier.0, %if.end37.if.end37.thread_crit_edge ], [ 0, %entry.if.end37.thread_crit_edge ]
  %length.0114 = phi i32 [ %spec.select109, %if.end37.if.end37.thread_crit_edge ], [ 69, %entry.if.end37.thread_crit_edge ]
  br label %17

17:                                               ; preds = %if.end37.thread, %if.end37._crit_edge
  %multiplier.0115 = phi i32 [ %multiplier.0116, %if.end37.thread ], [ %multiplier.0, %if.end37._crit_edge ]
  %18 = phi i32 [ %length.0114, %if.end37.thread ], [ 127, %if.end37._crit_edge ]
  %ctx39 = getelementptr inbounds %struct.dce_aux, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %ctx39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx39, align 4
  %regs = getelementptr inbounds %struct.aux_engine_dce110, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %AUX_DPHY_RX_CONTROL1 = getelementptr inbounds %struct.dce110_aux_registers, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %AUX_DPHY_RX_CONTROL1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %AUX_DPHY_RX_CONTROL1, align 4
  %shift = getelementptr inbounds %struct.aux_engine_dce110, ptr %15, i32 0, i32 3
  %25 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shift, align 4
  %AUX_RX_TIMEOUT_LEN = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %AUX_RX_TIMEOUT_LEN to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %AUX_RX_TIMEOUT_LEN, align 1
  %mask = getelementptr inbounds %struct.aux_engine_dce110, ptr %15, i32 0, i32 2
  %29 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mask, align 4
  %AUX_RX_TIMEOUT_LEN40 = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %AUX_RX_TIMEOUT_LEN40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %AUX_RX_TIMEOUT_LEN40, align 4
  %AUX_RX_TIMEOUT_LEN_MUL = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %26, i32 0, i32 19
  %33 = ptrtoint ptr %AUX_RX_TIMEOUT_LEN_MUL to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %AUX_RX_TIMEOUT_LEN_MUL, align 1
  %AUX_RX_TIMEOUT_LEN_MUL43 = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %30, i32 0, i32 19
  %35 = ptrtoint ptr %AUX_RX_TIMEOUT_LEN_MUL43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %AUX_RX_TIMEOUT_LEN_MUL43, align 4
  %call = call i32 @generic_reg_get2(ptr noundef %20, i32 noundef %24, i8 noundef zeroext %28, i32 noundef %32, ptr noundef nonnull %prev_length, i8 noundef zeroext %34, i32 noundef %36, ptr noundef nonnull %prev_mult) #4
  %37 = ptrtoint ptr %prev_mult to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prev_mult, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb45
    i32 2, label %sw.bb47
    i32 3, label %sw.bb49
  ]

.sw.epilog_crit_edge:                             ; preds = %17
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %17
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %prev_length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prev_length, align 4
  %mul44 = shl i32 %41, 3
  br label %sw.epilog

sw.bb45:                                          ; preds = %17
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %prev_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %prev_length, align 4
  %mul46 = shl i32 %43, 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %17
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %prev_length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %prev_length, align 4
  %mul48 = shl i32 %45, 5
  br label %sw.epilog

sw.bb49:                                          ; preds = %17
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %prev_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %prev_length, align 4
  %mul50 = shl i32 %47, 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb, %.sw.epilog_crit_edge
  %prev_timeout_val.0 = phi i32 [ %mul50, %sw.bb49 ], [ %mul48, %sw.bb47 ], [ %mul46, %sw.bb45 ], [ %mul44, %sw.bb ], [ 552, %.sw.epilog_crit_edge ]
  %48 = ptrtoint ptr %ctx39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx39, align 4
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %AUX_DPHY_RX_CONTROL154 = getelementptr inbounds %struct.dce110_aux_registers, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %AUX_DPHY_RX_CONTROL154 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %AUX_DPHY_RX_CONTROL154, align 4
  %54 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shift, align 4
  %AUX_RX_TIMEOUT_LEN56 = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %55, i32 0, i32 18
  %56 = ptrtoint ptr %AUX_RX_TIMEOUT_LEN56 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %AUX_RX_TIMEOUT_LEN56, align 1
  %58 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mask, align 4
  %AUX_RX_TIMEOUT_LEN58 = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %59, i32 0, i32 18
  %60 = ptrtoint ptr %AUX_RX_TIMEOUT_LEN58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %AUX_RX_TIMEOUT_LEN58, align 4
  %call59 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %49, i32 noundef %53, i32 noundef 1, i8 noundef zeroext %57, i32 noundef %61, i32 noundef %18) #4
  %62 = ptrtoint ptr %ctx39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx39, align 4
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %AUX_DPHY_RX_CONTROL163 = getelementptr inbounds %struct.dce110_aux_registers, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %AUX_DPHY_RX_CONTROL163 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %AUX_DPHY_RX_CONTROL163, align 4
  %68 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %shift, align 4
  %AUX_RX_TIMEOUT_LEN_MUL65 = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %69, i32 0, i32 19
  %70 = ptrtoint ptr %AUX_RX_TIMEOUT_LEN_MUL65 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %AUX_RX_TIMEOUT_LEN_MUL65, align 1
  %72 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mask, align 4
  %AUX_RX_TIMEOUT_LEN_MUL67 = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %73, i32 0, i32 19
  %74 = ptrtoint ptr %AUX_RX_TIMEOUT_LEN_MUL67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %AUX_RX_TIMEOUT_LEN_MUL67, align 4
  %call68 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %63, i32 noundef %67, i32 noundef %call59, i32 noundef 1, i8 noundef zeroext %71, i32 noundef %75, i32 noundef %multiplier.0115) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_mult) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_length) #4
  ret i32 %prev_timeout_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce_aux_transfer_raw(ptr nocapture noundef readonly %ddc, ptr nocapture noundef readonly %payload, ptr nocapture noundef writeonly %operation_result) local_unnamed_addr #0 align 64 {
entry:
  %bytes_replied.i = alloca i32, align 4
  %reply_result_32.i = alloca i32, align 4
  %aux_sw_data_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %ctx = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 5
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res_pool, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %en = getelementptr inbounds %struct.gpio, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %en, align 4
  %arrayidx = getelementptr %struct.resource_pool, ptr %7, i32 0, i32 11, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call = tail call fastcc zeroext i1 @acquire(ptr noundef %13, ptr noundef %1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %operation_result to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %operation_result, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %payload, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end16.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %write_status_update.i = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 3
  %17 = ptrtoint ptr %write_status_update.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_status_update.i, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %mot.i = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 2
  %19 = ptrtoint ptr %mot.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mot.i, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not.i = icmp eq i8 %20, 0
  %..i = select i1 %tobool3.not.i, i32 32, i32 96
  br label %i2caux_action_from_payload.exit

if.end.i:                                         ; preds = %if.then.i
  %write.i = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 1
  %21 = ptrtoint ptr %write.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %write.i, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not.i = icmp eq i8 %22, 0
  %mot12.i = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 2
  %23 = ptrtoint ptr %mot12.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mot12.i, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not.i = icmp eq i8 %24, 0
  br i1 %tobool5.not.i, label %if.end11.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %.27.i = select i1 %tobool13.not.i, i32 0, i32 64
  br label %i2caux_action_from_payload.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %.28.i = select i1 %tobool13.not.i, i32 16, i32 80
  br label %i2caux_action_from_payload.exit

if.end16.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %write17.i = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 1
  %25 = ptrtoint ptr %write17.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write17.i, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not.i = icmp eq i8 %26, 0
  %.29.i = select i1 %tobool18.not.i, i32 144, i32 128
  br label %i2caux_action_from_payload.exit

i2caux_action_from_payload.exit:                  ; preds = %if.end16.i, %if.end11.i, %if.then6.i, %if.then2.i
  %retval.0.i = phi i32 [ %..i, %if.then2.i ], [ %.27.i, %if.then6.i ], [ %.28.i, %if.end11.i ], [ %.29.i, %if.end16.i ]
  %address = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 4
  %27 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %address, align 4
  %length = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 5
  %29 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length, align 4
  %data = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 6
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = and i32 %retval.0.i, 176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp eq i32 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %retval.0.i)
  %cmp1.i = icmp eq i32 %retval.0.i, 128
  %35 = select i1 %tobool.not, i1 %cmp1.i, i1 %34
  %regs.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %13, i32 0, i32 1
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %AUXN_IMPCAL.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %AUXN_IMPCAL.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %AUXN_IMPCAL.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i37 = icmp eq i32 %39, 0
  br i1 %tobool.not.i37, label %i2caux_action_from_payload.exit.if.end.i39_crit_edge, label %if.then.i38

i2caux_action_from_payload.exit.if.end.i39_crit_edge: ; preds = %i2caux_action_from_payload.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i39

if.then.i38:                                      ; preds = %i2caux_action_from_payload.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ctx.i = getelementptr inbounds %struct.dce_aux, ptr %13, i32 0, i32 2
  %40 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx.i, align 4
  %shift.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %13, i32 0, i32 3
  %42 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shift.i, align 4
  %AUXN_CALOUT_ERROR_AK.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %43, i32 0, i32 20
  %44 = ptrtoint ptr %AUXN_CALOUT_ERROR_AK.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %AUXN_CALOUT_ERROR_AK.i, align 1
  %mask.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %13, i32 0, i32 2
  %46 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mask.i, align 4
  %AUXN_CALOUT_ERROR_AK12.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %47, i32 0, i32 20
  %48 = ptrtoint ptr %AUXN_CALOUT_ERROR_AK12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %AUXN_CALOUT_ERROR_AK12.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %41, i32 noundef %39, i32 noundef 1, i8 noundef zeroext %45, i32 noundef %49, i32 noundef 1) #4
  %50 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx.i, align 4
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %AUXN_IMPCAL16.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %AUXN_IMPCAL16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %AUXN_IMPCAL16.i, align 4
  %56 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %shift.i, align 4
  %AUXN_CALOUT_ERROR_AK18.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %57, i32 0, i32 20
  %58 = ptrtoint ptr %AUXN_CALOUT_ERROR_AK18.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %AUXN_CALOUT_ERROR_AK18.i, align 1
  %60 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mask.i, align 4
  %AUXN_CALOUT_ERROR_AK20.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %AUXN_CALOUT_ERROR_AK20.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %AUXN_CALOUT_ERROR_AK20.i, align 4
  %call21.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %51, i32 noundef %55, i32 noundef %call.i, i32 noundef 1, i8 noundef zeroext %59, i32 noundef %63, i32 noundef 0) #4
  %64 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx.i, align 4
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %AUXP_IMPCAL.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %AUXP_IMPCAL.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %AUXP_IMPCAL.i, align 4
  %70 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shift.i, align 4
  %AUXP_CALOUT_ERROR_AK.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %71, i32 0, i32 21
  %72 = ptrtoint ptr %AUXP_CALOUT_ERROR_AK.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %AUXP_CALOUT_ERROR_AK.i, align 1
  %74 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mask.i, align 4
  %AUXP_CALOUT_ERROR_AK28.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %75, i32 0, i32 21
  %76 = ptrtoint ptr %AUXP_CALOUT_ERROR_AK28.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %AUXP_CALOUT_ERROR_AK28.i, align 4
  %call29.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %65, i32 noundef %69, i32 noundef 1, i8 noundef zeroext %73, i32 noundef %77, i32 noundef 1) #4
  %78 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx.i, align 4
  %80 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i, align 4
  %AUXP_IMPCAL33.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %AUXP_IMPCAL33.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %AUXP_IMPCAL33.i, align 4
  %84 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %shift.i, align 4
  %AUXP_CALOUT_ERROR_AK35.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %85, i32 0, i32 21
  %86 = ptrtoint ptr %AUXP_CALOUT_ERROR_AK35.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %AUXP_CALOUT_ERROR_AK35.i, align 1
  %88 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mask.i, align 4
  %AUXP_CALOUT_ERROR_AK37.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %89, i32 0, i32 21
  %90 = ptrtoint ptr %AUXP_CALOUT_ERROR_AK37.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %AUXP_CALOUT_ERROR_AK37.i, align 4
  %call38.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %79, i32 noundef %83, i32 noundef %call29.i, i32 noundef 1, i8 noundef zeroext %87, i32 noundef %91, i32 noundef 0) #4
  %92 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctx.i, align 4
  %94 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i, align 4
  %AUXN_IMPCAL43.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %AUXN_IMPCAL43.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %AUXN_IMPCAL43.i, align 4
  %98 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %shift.i, align 4
  %AUXN_IMPCAL_ENABLE.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %99, i32 0, i32 14
  %100 = ptrtoint ptr %AUXN_IMPCAL_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %AUXN_IMPCAL_ENABLE.i, align 1
  %102 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mask.i, align 4
  %AUXN_IMPCAL_ENABLE46.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %103, i32 0, i32 14
  %104 = ptrtoint ptr %AUXN_IMPCAL_ENABLE46.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %AUXN_IMPCAL_ENABLE46.i, align 4
  %call47.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %93, i32 noundef %97, i32 noundef 1, i8 noundef zeroext %101, i32 noundef %105, i32 noundef 1) #4
  %106 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ctx.i, align 4
  %108 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i, align 4
  %AUXN_IMPCAL51.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %AUXN_IMPCAL51.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %AUXN_IMPCAL51.i, align 4
  %112 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %shift.i, align 4
  %AUXN_IMPCAL_OVERRIDE_ENABLE.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %113, i32 0, i32 16
  %114 = ptrtoint ptr %AUXN_IMPCAL_OVERRIDE_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %AUXN_IMPCAL_OVERRIDE_ENABLE.i, align 1
  %116 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mask.i, align 4
  %AUXN_IMPCAL_OVERRIDE_ENABLE54.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %117, i32 0, i32 16
  %118 = ptrtoint ptr %AUXN_IMPCAL_OVERRIDE_ENABLE54.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %AUXN_IMPCAL_OVERRIDE_ENABLE54.i, align 4
  %call55.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %107, i32 noundef %111, i32 noundef %call47.i, i32 noundef 1, i8 noundef zeroext %115, i32 noundef %119, i32 noundef 0) #4
  %120 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ctx.i, align 4
  %122 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i, align 4
  %AUXP_IMPCAL60.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %123, i32 0, i32 8
  %124 = ptrtoint ptr %AUXP_IMPCAL60.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %AUXP_IMPCAL60.i, align 4
  %126 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %shift.i, align 4
  %AUXP_IMPCAL_OVERRIDE_ENABLE.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %127, i32 0, i32 17
  %128 = ptrtoint ptr %AUXP_IMPCAL_OVERRIDE_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %AUXP_IMPCAL_OVERRIDE_ENABLE.i, align 1
  %130 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mask.i, align 4
  %AUXP_IMPCAL_OVERRIDE_ENABLE63.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %131, i32 0, i32 17
  %132 = ptrtoint ptr %AUXP_IMPCAL_OVERRIDE_ENABLE63.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %AUXP_IMPCAL_OVERRIDE_ENABLE63.i, align 4
  %call64.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %121, i32 noundef %125, i32 noundef 1, i8 noundef zeroext %129, i32 noundef %133, i32 noundef 1) #4
  %134 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ctx.i, align 4
  %136 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i, align 4
  %AUXP_IMPCAL68.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %137, i32 0, i32 8
  %138 = ptrtoint ptr %AUXP_IMPCAL68.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %AUXP_IMPCAL68.i, align 4
  %140 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %shift.i, align 4
  %AUXP_IMPCAL_OVERRIDE_ENABLE70.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %141, i32 0, i32 17
  %142 = ptrtoint ptr %AUXP_IMPCAL_OVERRIDE_ENABLE70.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %AUXP_IMPCAL_OVERRIDE_ENABLE70.i, align 1
  %144 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mask.i, align 4
  %AUXP_IMPCAL_OVERRIDE_ENABLE72.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %145, i32 0, i32 17
  %146 = ptrtoint ptr %AUXP_IMPCAL_OVERRIDE_ENABLE72.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %AUXP_IMPCAL_OVERRIDE_ENABLE72.i, align 4
  %call73.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %135, i32 noundef %139, i32 noundef %call64.i, i32 noundef 1, i8 noundef zeroext %143, i32 noundef %147, i32 noundef 0) #4
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.then.i38, %i2caux_action_from_payload.exit.if.end.i39_crit_edge
  %ctx75.i = getelementptr inbounds %struct.dce_aux, ptr %13, i32 0, i32 2
  %148 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ctx75.i, align 4
  %150 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs.i, align 4
  %AUX_INTERRUPT_CONTROL.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %AUX_INTERRUPT_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %AUX_INTERRUPT_CONTROL.i, align 4
  %shift77.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %13, i32 0, i32 3
  %154 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_DONE_ACK.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %155, i32 0, i32 13
  %156 = ptrtoint ptr %AUX_SW_DONE_ACK.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %AUX_SW_DONE_ACK.i, align 1
  %mask78.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %13, i32 0, i32 2
  %158 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_DONE_ACK79.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %159, i32 0, i32 13
  %160 = ptrtoint ptr %AUX_SW_DONE_ACK79.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %AUX_SW_DONE_ACK79.i, align 4
  %call80.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %149, i32 noundef %153, i32 noundef 1, i8 noundef zeroext %157, i32 noundef %161, i32 noundef 1) #4
  %162 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ctx75.i, align 4
  %164 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i, align 4
  %AUX_SW_STATUS.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %165, i32 0, i32 6
  %166 = ptrtoint ptr %AUX_SW_STATUS.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %AUX_SW_STATUS.i, align 4
  %168 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_DONE.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %169, i32 0, i32 12
  %170 = ptrtoint ptr %AUX_SW_DONE.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %AUX_SW_DONE.i, align 1
  %conv.i = zext i8 %171 to i32
  %172 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_DONE86.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %173, i32 0, i32 12
  %174 = ptrtoint ptr %AUX_SW_DONE86.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %AUX_SW_DONE86.i, align 4
  %polling_timeout_period.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %13, i32 0, i32 5
  %176 = ptrtoint ptr %polling_timeout_period.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %polling_timeout_period.i, align 4
  %div.i = udiv i32 %177, 10
  tail call void @generic_reg_wait(ptr noundef %163, i32 noundef %167, i32 noundef %conv.i, i32 noundef %175, i32 noundef 0, i32 noundef 10, i32 noundef %div.i, ptr noundef nonnull @__func__.submit_channel_request, i32 noundef 224) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool88.not.i = icmp eq i32 %30, 0
  %cond.i = select i1 %tobool88.not.i, i32 3, i32 4
  %add.i = select i1 %35, i32 %30, i32 0
  %spec.select295.i = add i32 %cond.i, %add.i
  %178 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ctx75.i, align 4
  %180 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i, align 4
  %AUX_SW_CONTROL.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %AUX_SW_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %AUX_SW_CONTROL.i, align 4
  %184 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_START_DELAY.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %185, i32 0, i32 22
  %186 = ptrtoint ptr %AUX_SW_START_DELAY.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %AUX_SW_START_DELAY.i, align 1
  %188 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_START_DELAY98.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %189, i32 0, i32 22
  %190 = ptrtoint ptr %AUX_SW_START_DELAY98.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %AUX_SW_START_DELAY98.i, align 4
  %AUX_SW_WR_BYTES.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %185, i32 0, i32 23
  %192 = ptrtoint ptr %AUX_SW_WR_BYTES.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %AUX_SW_WR_BYTES.i, align 1
  %conv101.i = zext i8 %193 to i32
  %AUX_SW_WR_BYTES103.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %189, i32 0, i32 23
  %194 = ptrtoint ptr %AUX_SW_WR_BYTES103.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %AUX_SW_WR_BYTES103.i, align 4
  %call104.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %179, i32 noundef %183, i32 noundef 2, i8 noundef zeroext %187, i32 noundef %191, i32 noundef 0, i32 noundef %conv101.i, i32 noundef %195, i32 noundef %spec.select295.i) #4
  %196 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ctx75.i, align 4
  %198 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i, align 4
  %AUX_SW_DATA.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %AUX_SW_DATA.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %AUX_SW_DATA.i, align 4
  %202 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_INDEX.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %203, i32 0, i32 8
  %204 = ptrtoint ptr %AUX_SW_INDEX.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %AUX_SW_INDEX.i, align 1
  %206 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_INDEX110.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %207, i32 0, i32 8
  %208 = ptrtoint ptr %AUX_SW_INDEX110.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %AUX_SW_INDEX110.i, align 4
  %AUX_SW_DATA_RW.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %203, i32 0, i32 7
  %210 = ptrtoint ptr %AUX_SW_DATA_RW.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %AUX_SW_DATA_RW.i, align 1
  %conv112.i = zext i8 %211 to i32
  %AUX_SW_DATA_RW114.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %207, i32 0, i32 7
  %212 = ptrtoint ptr %AUX_SW_DATA_RW114.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %AUX_SW_DATA_RW114.i, align 4
  %AUX_SW_AUTOINCREMENT_DISABLE.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %203, i32 0, i32 6
  %214 = ptrtoint ptr %AUX_SW_AUTOINCREMENT_DISABLE.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %AUX_SW_AUTOINCREMENT_DISABLE.i, align 1
  %conv116.i = zext i8 %215 to i32
  %AUX_SW_AUTOINCREMENT_DISABLE118.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %207, i32 0, i32 6
  %216 = ptrtoint ptr %AUX_SW_AUTOINCREMENT_DISABLE118.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %AUX_SW_AUTOINCREMENT_DISABLE118.i, align 4
  %AUX_SW_DATA120.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %203, i32 0, i32 10
  %218 = ptrtoint ptr %AUX_SW_DATA120.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %AUX_SW_DATA120.i, align 1
  %conv121.i = zext i8 %219 to i32
  %AUX_SW_DATA123.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %207, i32 0, i32 10
  %220 = ptrtoint ptr %AUX_SW_DATA123.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %AUX_SW_DATA123.i, align 4
  %and.i = lshr i32 %28, 16
  %shr.i = and i32 %and.i, 15
  %or.i = or i32 %shr.i, %retval.0.i
  %call125.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %197, i32 noundef %201, i32 noundef 4, i8 noundef zeroext %205, i32 noundef %209, i32 noundef 0, i32 noundef %conv112.i, i32 noundef %213, i32 noundef 0, i32 noundef %conv116.i, i32 noundef %217, i32 noundef 1, i32 noundef %conv121.i, i32 noundef %221, i32 noundef %or.i) #4
  %222 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ctx75.i, align 4
  %224 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i, align 4
  %AUX_SW_DATA129.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %AUX_SW_DATA129.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %AUX_SW_DATA129.i, align 4
  %228 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_AUTOINCREMENT_DISABLE131.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %229, i32 0, i32 6
  %230 = ptrtoint ptr %AUX_SW_AUTOINCREMENT_DISABLE131.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %AUX_SW_AUTOINCREMENT_DISABLE131.i, align 1
  %232 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_AUTOINCREMENT_DISABLE133.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %233, i32 0, i32 6
  %234 = ptrtoint ptr %AUX_SW_AUTOINCREMENT_DISABLE133.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %AUX_SW_AUTOINCREMENT_DISABLE133.i, align 4
  %AUX_SW_DATA135.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %229, i32 0, i32 10
  %236 = ptrtoint ptr %AUX_SW_DATA135.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %AUX_SW_DATA135.i, align 1
  %conv136.i = zext i8 %237 to i32
  %AUX_SW_DATA138.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %233, i32 0, i32 10
  %238 = ptrtoint ptr %AUX_SW_DATA138.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %AUX_SW_DATA138.i, align 4
  %and140.i = lshr i32 %28, 8
  %shr141.i = and i32 %and140.i, 255
  %call142.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %223, i32 noundef %227, i32 noundef %call125.i, i32 noundef 2, i8 noundef zeroext %231, i32 noundef %235, i32 noundef 0, i32 noundef %conv136.i, i32 noundef %239, i32 noundef %shr141.i) #4
  %240 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ctx75.i, align 4
  %242 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regs.i, align 4
  %AUX_SW_DATA146.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %AUX_SW_DATA146.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %AUX_SW_DATA146.i, align 4
  %246 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_DATA148.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %247, i32 0, i32 10
  %248 = ptrtoint ptr %AUX_SW_DATA148.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %AUX_SW_DATA148.i, align 1
  %250 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_DATA150.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %251, i32 0, i32 10
  %252 = ptrtoint ptr %AUX_SW_DATA150.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %AUX_SW_DATA150.i, align 4
  %and152.i = and i32 %28, 255
  %call153.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %241, i32 noundef %245, i32 noundef %call142.i, i32 noundef 1, i8 noundef zeroext %249, i32 noundef %253, i32 noundef %and152.i) #4
  br i1 %tobool88.not.i, label %if.end.i39.submit_channel_request.exit_crit_edge, label %if.end167.i.thread

if.end.i39.submit_channel_request.exit_crit_edge: ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %submit_channel_request.exit

if.end167.i.thread:                               ; preds = %if.end.i39
  %254 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ctx75.i, align 4
  %256 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs.i, align 4
  %AUX_SW_DATA160.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %AUX_SW_DATA160.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %AUX_SW_DATA160.i, align 4
  %260 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_DATA162.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %261, i32 0, i32 10
  %262 = ptrtoint ptr %AUX_SW_DATA162.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %AUX_SW_DATA162.i, align 1
  %264 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_DATA164.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %265, i32 0, i32 10
  %266 = ptrtoint ptr %AUX_SW_DATA164.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %AUX_SW_DATA164.i, align 4
  %sub.i = add i32 %30, -1
  %call166.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %255, i32 noundef %259, i32 noundef %call153.i, i32 noundef 1, i8 noundef zeroext %263, i32 noundef %267, i32 noundef %sub.i) #4
  br i1 %35, label %if.end167.i.thread.while.body.i_crit_edge, label %if.end167.i.thread.submit_channel_request.exit_crit_edge

if.end167.i.thread.submit_channel_request.exit_crit_edge: ; preds = %if.end167.i.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %submit_channel_request.exit

if.end167.i.thread.while.body.i_crit_edge:        ; preds = %if.end167.i.thread
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end167.i.thread.while.body.i_crit_edge
  %i.0300.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end167.i.thread.while.body.i_crit_edge ]
  %value.1299.i = phi i32 [ %call182.i, %while.body.i.while.body.i_crit_edge ], [ %call166.i, %if.end167.i.thread.while.body.i_crit_edge ]
  %268 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %ctx75.i, align 4
  %270 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %regs.i, align 4
  %AUX_SW_DATA176.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %271, i32 0, i32 2
  %272 = ptrtoint ptr %AUX_SW_DATA176.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %AUX_SW_DATA176.i, align 4
  %274 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_DATA178.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %275, i32 0, i32 10
  %276 = ptrtoint ptr %AUX_SW_DATA178.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %AUX_SW_DATA178.i, align 1
  %278 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_DATA180.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %279, i32 0, i32 10
  %280 = ptrtoint ptr %AUX_SW_DATA180.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %AUX_SW_DATA180.i, align 4
  %arrayidx.i = getelementptr i8, ptr %32, i32 %i.0300.i
  %282 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx.i, align 1
  %conv181.i = zext i8 %283 to i32
  %call182.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %269, i32 noundef %273, i32 noundef %value.1299.i, i32 noundef 1, i8 noundef zeroext %277, i32 noundef %281, i32 noundef %conv181.i) #4
  %inc.i = add nuw i32 %i.0300.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %30
  br i1 %exitcond.not, label %while.body.i.submit_channel_request.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i.submit_channel_request.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %submit_channel_request.exit

submit_channel_request.exit:                      ; preds = %while.body.i.submit_channel_request.exit_crit_edge, %if.end167.i.thread.submit_channel_request.exit_crit_edge, %if.end.i39.submit_channel_request.exit_crit_edge
  %284 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %ctx75.i, align 4
  %286 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %regs.i, align 4
  %AUX_SW_CONTROL187.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %287, i32 0, i32 3
  %288 = ptrtoint ptr %AUX_SW_CONTROL187.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %AUX_SW_CONTROL187.i, align 4
  %290 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_GO.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %291, i32 0, i32 9
  %292 = ptrtoint ptr %AUX_SW_GO.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %AUX_SW_GO.i, align 1
  %294 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_GO190.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %295, i32 0, i32 9
  %296 = ptrtoint ptr %AUX_SW_GO190.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %AUX_SW_GO190.i, align 4
  %call191.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %285, i32 noundef %289, i32 noundef 1, i8 noundef zeroext %293, i32 noundef %297, i32 noundef 1) #4
  %298 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ctx75.i, align 4
  %300 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %regs.i, align 4
  %AUX_SW_STATUS.i42 = getelementptr inbounds %struct.dce110_aux_registers, ptr %301, i32 0, i32 6
  %302 = ptrtoint ptr %AUX_SW_STATUS.i42 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %AUX_SW_STATUS.i42, align 4
  %304 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_DONE.i44 = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %305, i32 0, i32 12
  %306 = ptrtoint ptr %AUX_SW_DONE.i44 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %AUX_SW_DONE.i44, align 1
  %conv.i45 = zext i8 %307 to i32
  %308 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_DONE24.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %309, i32 0, i32 12
  %310 = ptrtoint ptr %AUX_SW_DONE24.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %AUX_SW_DONE24.i, align 4
  %312 = ptrtoint ptr %polling_timeout_period.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %polling_timeout_period.i, align 4
  %div.i48 = udiv i32 %313, 10
  tail call void @generic_reg_wait(ptr noundef %299, i32 noundef %303, i32 noundef %conv.i45, i32 noundef %311, i32 noundef 1, i32 noundef 10, i32 noundef %div.i48, ptr noundef nonnull @__func__.get_channel_status, i32 noundef 353) #4
  %314 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %ctx75.i, align 4
  %316 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %regs.i, align 4
  %AUX_SW_STATUS28.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %317, i32 0, i32 6
  %318 = ptrtoint ptr %AUX_SW_STATUS28.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %AUX_SW_STATUS28.i, align 4
  %call.i49 = tail call i32 @dm_read_reg_func(ptr noundef %315, i32 noundef %319, ptr noundef nonnull @__func__.get_channel_status) #4
  %and.i50 = and i32 %call.i49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool29.not.i = icmp eq i32 %and.i50, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %submit_channel_request.exit.get_channel_status.exit.thread_crit_edge

submit_channel_request.exit.get_channel_status.exit.thread_crit_edge: ; preds = %submit_channel_request.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_channel_status.exit.thread

if.end31.i:                                       ; preds = %submit_channel_request.exit
  %and32.i = and i32 %call.i49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %do.end77.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end31.i
  %320 = and i32 %call.i49, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %if.else.i, label %if.then34.i.get_channel_status.exit.thread_crit_edge

if.then34.i.get_channel_status.exit.thread_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_channel_status.exit.thread

if.else.i:                                        ; preds = %if.then34.i
  %322 = and i32 %call.i49, 13647872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %if.end53.i, label %if.else.i.get_channel_status.exit.thread_crit_edge

if.else.i.get_channel_status.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_channel_status.exit.thread

if.end53.i:                                       ; preds = %if.else.i
  %and.i.i = lshr i32 %call.i49, 24
  %shr.i.i = and i32 %and.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %cmp57.i = icmp eq i32 %shr.i.i, 0
  br i1 %cmp57.i, label %if.end53.i.get_channel_status.exit.thread_crit_edge, label %if.then10

if.end53.i.get_channel_status.exit.thread_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_channel_status.exit.thread

do.end77.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 395, i32 noundef 9, ptr noundef null) #4
  tail call void @kgdb_breakpoint() #4
  br label %get_channel_status.exit.thread

get_channel_status.exit.thread:                   ; preds = %do.end77.i, %if.end53.i.get_channel_status.exit.thread_crit_edge, %if.else.i.get_channel_status.exit.thread_crit_edge, %if.then34.i.get_channel_status.exit.thread_crit_edge, %submit_channel_request.exit.get_channel_status.exit.thread_crit_edge
  %retval.0.i51.ph = phi i32 [ 2, %if.end53.i.get_channel_status.exit.thread_crit_edge ], [ 2, %if.else.i.get_channel_status.exit.thread_crit_edge ], [ 3, %if.then34.i.get_channel_status.exit.thread_crit_edge ], [ 4, %submit_channel_request.exit.get_channel_status.exit.thread_crit_edge ], [ 3, %do.end77.i ]
  %324 = ptrtoint ptr %operation_result to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %retval.0.i51.ph, ptr %operation_result, align 4
  br label %if.end15

if.then10:                                        ; preds = %if.end53.i
  %conv62.i = add nuw nsw i32 %shr.i.i, 255
  %325 = ptrtoint ptr %operation_result to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 0, ptr %operation_result, align 4
  %326 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %length, align 4
  %328 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %data, align 4
  %reply = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 7
  %330 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %reply, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_replied.i) #4
  %332 = ptrtoint ptr %bytes_replied.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 -1, ptr %bytes_replied.i, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reply_result_32.i) #4
  %333 = ptrtoint ptr %reply_result_32.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 -1, ptr %reply_result_32.i, align 4, !annotation !29
  %334 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %ctx75.i, align 4
  %336 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %regs.i, align 4
  %AUX_SW_STATUS.i54 = getelementptr inbounds %struct.dce110_aux_registers, ptr %337, i32 0, i32 6
  %338 = ptrtoint ptr %AUX_SW_STATUS.i54 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %AUX_SW_STATUS.i54, align 4
  %340 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_REPLY_BYTE_COUNT.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %341, i32 0, i32 11
  %342 = ptrtoint ptr %AUX_SW_REPLY_BYTE_COUNT.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %AUX_SW_REPLY_BYTE_COUNT.i, align 1
  %344 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_REPLY_BYTE_COUNT1.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %345, i32 0, i32 11
  %346 = ptrtoint ptr %AUX_SW_REPLY_BYTE_COUNT1.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %AUX_SW_REPLY_BYTE_COUNT1.i, align 4
  %call.i57 = call i32 @generic_reg_get(ptr noundef %335, i32 noundef %339, i8 noundef zeroext %343, i32 noundef %347, ptr noundef nonnull %bytes_replied.i) #4
  %and.i58 = and i32 %call.i57, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i59 = icmp eq i32 %and.i58, 0
  br i1 %tobool.not.i59, label %if.end.i60, label %if.then10.read_channel_reply.exit_crit_edge

if.then10.read_channel_reply.exit_crit_edge:      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %read_channel_reply.exit

if.end.i60:                                       ; preds = %if.then10
  %348 = ptrtoint ptr %bytes_replied.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %bytes_replied.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %tobool2.not.i = icmp eq i32 %349, 0
  br i1 %tobool2.not.i, label %if.end.i60.read_channel_reply.exit_crit_edge, label %if.end4.i

if.end.i60.read_channel_reply.exit_crit_edge:     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #6
  br label %read_channel_reply.exit

if.end4.i:                                        ; preds = %if.end.i60
  %350 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ctx75.i, align 4
  %352 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %regs.i, align 4
  %AUX_SW_DATA.i61 = getelementptr inbounds %struct.dce110_aux_registers, ptr %353, i32 0, i32 2
  %354 = ptrtoint ptr %AUX_SW_DATA.i61 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %AUX_SW_DATA.i61, align 4
  %356 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_INDEX.i62 = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %357, i32 0, i32 8
  %358 = ptrtoint ptr %AUX_SW_INDEX.i62 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %AUX_SW_INDEX.i62, align 1
  %360 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_INDEX10.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %361, i32 0, i32 8
  %362 = ptrtoint ptr %AUX_SW_INDEX10.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %AUX_SW_INDEX10.i, align 4
  %call11.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %351, i32 noundef %355, i32 noundef 1, i8 noundef zeroext %359, i32 noundef %363, i32 noundef 0) #4
  %364 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %ctx75.i, align 4
  %366 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %regs.i, align 4
  %AUX_SW_DATA15.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %367, i32 0, i32 2
  %368 = ptrtoint ptr %AUX_SW_DATA15.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %AUX_SW_DATA15.i, align 4
  %370 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_AUTOINCREMENT_DISABLE.i63 = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %371, i32 0, i32 6
  %372 = ptrtoint ptr %AUX_SW_AUTOINCREMENT_DISABLE.i63 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %AUX_SW_AUTOINCREMENT_DISABLE.i63, align 1
  %374 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_AUTOINCREMENT_DISABLE18.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %375, i32 0, i32 6
  %376 = ptrtoint ptr %AUX_SW_AUTOINCREMENT_DISABLE18.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %AUX_SW_AUTOINCREMENT_DISABLE18.i, align 4
  %call19.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %365, i32 noundef %369, i32 noundef %call11.i, i32 noundef 1, i8 noundef zeroext %373, i32 noundef %377, i32 noundef 1) #4
  %378 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %ctx75.i, align 4
  %380 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %regs.i, align 4
  %AUX_SW_DATA23.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %381, i32 0, i32 2
  %382 = ptrtoint ptr %AUX_SW_DATA23.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %AUX_SW_DATA23.i, align 4
  %384 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_DATA_RW.i64 = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %385, i32 0, i32 7
  %386 = ptrtoint ptr %AUX_SW_DATA_RW.i64 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %AUX_SW_DATA_RW.i64, align 1
  %388 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_DATA_RW26.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %389, i32 0, i32 7
  %390 = ptrtoint ptr %AUX_SW_DATA_RW26.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %AUX_SW_DATA_RW26.i, align 4
  %call27.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %379, i32 noundef %383, i32 noundef %call19.i, i32 noundef 1, i8 noundef zeroext %387, i32 noundef %391, i32 noundef 1) #4
  %392 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %ctx75.i, align 4
  %394 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %regs.i, align 4
  %AUX_SW_DATA31.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %395, i32 0, i32 2
  %396 = ptrtoint ptr %AUX_SW_DATA31.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %AUX_SW_DATA31.i, align 4
  %398 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_DATA33.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %399, i32 0, i32 10
  %400 = ptrtoint ptr %AUX_SW_DATA33.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %AUX_SW_DATA33.i, align 1
  %402 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_DATA35.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %403, i32 0, i32 10
  %404 = ptrtoint ptr %AUX_SW_DATA35.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %AUX_SW_DATA35.i, align 4
  %call36.i = call i32 @generic_reg_get(ptr noundef %393, i32 noundef %397, i8 noundef zeroext %401, i32 noundef %405, ptr noundef nonnull %reply_result_32.i) #4
  %406 = ptrtoint ptr %reply_result_32.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %reply_result_32.i, align 4
  %shr.i65 = lshr i32 %407, 4
  store i32 %shr.i65, ptr %reply_result_32.i, align 4
  %cmp.not.i = icmp eq ptr %331, null
  br i1 %cmp.not.i, label %if.end4.i.if.end38.i_crit_edge, label %if.then37.i

if.end4.i.if.end38.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.i

if.then37.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i66 = trunc i32 %shr.i65 to i8
  %408 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 %conv.i66, ptr %331, align 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %if.end4.i.if.end38.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %407)
  %cmp39.i = icmp ult i32 %407, 16
  br i1 %cmp39.i, label %if.then41.i, label %if.end38.i.read_channel_reply.exit_crit_edge

if.end38.i.read_channel_reply.exit_crit_edge:     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %read_channel_reply.exit

if.then41.i:                                      ; preds = %if.end38.i
  %409 = ptrtoint ptr %bytes_replied.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %bytes_replied.i, align 4
  %dec.i = add i32 %410, -1
  store i32 %dec.i, ptr %bytes_replied.i, align 4
  %411 = add i32 %410, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %411, i32 %327)
  %.not = icmp ult i32 %411, %327
  br i1 %.not, label %if.then41.i.while.body.i70_crit_edge, label %if.then41.i.read_channel_reply.exit_crit_edge

if.then41.i.read_channel_reply.exit_crit_edge:    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %read_channel_reply.exit

if.then41.i.while.body.i70_crit_edge:             ; preds = %if.then41.i
  br label %while.body.i70

while.body.i70:                                   ; preds = %while.body.i70.while.body.i70_crit_edge, %if.then41.i.while.body.i70_crit_edge
  %i.02.i = phi i32 [ %inc.i69, %while.body.i70.while.body.i70_crit_edge ], [ 0, %if.then41.i.while.body.i70_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aux_sw_data_val.i) #4
  %412 = ptrtoint ptr %aux_sw_data_val.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 -1, ptr %aux_sw_data_val.i, align 4, !annotation !29
  %413 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %ctx75.i, align 4
  %415 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %regs.i, align 4
  %AUX_SW_DATA51.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %416, i32 0, i32 2
  %417 = ptrtoint ptr %AUX_SW_DATA51.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %AUX_SW_DATA51.i, align 4
  %419 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_DATA53.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %420, i32 0, i32 10
  %421 = ptrtoint ptr %AUX_SW_DATA53.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %AUX_SW_DATA53.i, align 1
  %423 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_DATA55.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %424, i32 0, i32 10
  %425 = ptrtoint ptr %AUX_SW_DATA55.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %AUX_SW_DATA55.i, align 4
  %call56.i = call i32 @generic_reg_get(ptr noundef %414, i32 noundef %418, i8 noundef zeroext %422, i32 noundef %426, ptr noundef nonnull %aux_sw_data_val.i) #4
  %427 = ptrtoint ptr %aux_sw_data_val.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %aux_sw_data_val.i, align 4
  %conv57.i = trunc i32 %428 to i8
  %arrayidx.i68 = getelementptr i8, ptr %329, i32 %i.02.i
  %429 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 %conv57.i, ptr %arrayidx.i68, align 1
  %inc.i69 = add nuw i32 %i.02.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aux_sw_data_val.i) #4
  %430 = ptrtoint ptr %bytes_replied.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %bytes_replied.i, align 4
  %cmp46.i = icmp ult i32 %inc.i69, %431
  br i1 %cmp46.i, label %while.body.i70.while.body.i70_crit_edge, label %while.body.i70.read_channel_reply.exit_crit_edge

while.body.i70.read_channel_reply.exit_crit_edge: ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #6
  br label %read_channel_reply.exit

while.body.i70.while.body.i70_crit_edge:          ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i70

read_channel_reply.exit:                          ; preds = %while.body.i70.read_channel_reply.exit_crit_edge, %if.then41.i.read_channel_reply.exit_crit_edge, %if.end38.i.read_channel_reply.exit_crit_edge, %if.end.i60.read_channel_reply.exit_crit_edge, %if.then10.read_channel_reply.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply_result_32.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_replied.i) #4
  %conv = and i32 %conv62.i, 255
  br label %if.end15

if.end15:                                         ; preds = %read_channel_reply.exit, %get_channel_status.exit.thread
  %res.0 = phi i32 [ %conv, %read_channel_reply.exit ], [ -1, %get_channel_status.exit.thread ]
  %ddc.i = getelementptr inbounds %struct.dce_aux, ptr %13, i32 0, i32 1
  %432 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %ddc.i, align 4
  call void @dal_ddc_close(ptr noundef %433) #4
  %434 = ptrtoint ptr %ddc.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr null, ptr %ddc.i, align 4
  %435 = ptrtoint ptr %ctx75.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ctx75.i, align 4
  %437 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %regs.i, align 4
  %AUX_ARB_CONTROL.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %438, i32 0, i32 1
  %439 = ptrtoint ptr %AUX_ARB_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %AUX_ARB_CONTROL.i, align 4
  %441 = ptrtoint ptr %shift77.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %shift77.i, align 4
  %AUX_SW_DONE_USING_AUX_REG.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %442, i32 0, i32 5
  %443 = ptrtoint ptr %AUX_SW_DONE_USING_AUX_REG.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %AUX_SW_DONE_USING_AUX_REG.i, align 1
  %445 = ptrtoint ptr %mask78.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %mask78.i, align 4
  %AUX_SW_DONE_USING_AUX_REG2.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %446, i32 0, i32 5
  %447 = ptrtoint ptr %AUX_SW_DONE_USING_AUX_REG2.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %AUX_SW_DONE_USING_AUX_REG2.i, align 4
  %call.i75 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %436, i32 noundef %440, i32 noundef 1, i8 noundef zeroext %444, i32 noundef %448, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then
  %retval.0 = phi i32 [ %res.0, %if.end15 ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @acquire(ptr noundef %engine, ptr noundef %ddc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %engine, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ctx.i = getelementptr inbounds %struct.dce_aux, ptr %engine, i32 0, i32 2
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %engine, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %AUX_ARB_CONTROL.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %AUX_ARB_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %AUX_ARB_CONTROL.i, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @__func__.is_engine_available) #4
  %6 = and i32 %call.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 8
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call1 = tail call i32 @dal_ddc_open(ptr noundef %ddc, i32 noundef 3, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx.i, align 4
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %AUX_ARB_CONTROL.i16 = getelementptr inbounds %struct.dce110_aux_registers, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %AUX_ARB_CONTROL.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %AUX_ARB_CONTROL.i16, align 4
  %call.i17 = tail call i32 @dm_read_reg_func(ptr noundef %8, i32 noundef %12, ptr noundef nonnull @__func__.acquire_engine) #4
  %13 = and i32 %call.i17, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp.i18 = icmp eq i32 %13, 8
  br i1 %cmp.i18, label %if.end4.if.then6_crit_edge, label %if.end.i

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.end.i:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx.i, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %call5.i = tail call i32 @dm_read_reg_func(ptr noundef %15, i32 noundef %19, ptr noundef nonnull @__func__.acquire_engine) #4
  %and.i93.i = and i32 %call5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.i)
  %cmp7.i = icmp eq i32 %and.i93.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.acquire_engine.exit_crit_edge

if.end.i.acquire_engine.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %acquire_engine.exit

if.then8.i:                                       ; preds = %if.end.i
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %AUX_RESET_MASK.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %AUX_RESET_MASK.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %AUX_RESET_MASK.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  %value.0.v.i = select i1 %tobool.not.i, i32 1, i32 17
  %value.0.i = or i32 %value.0.v.i, %call5.i
  %24 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx.i, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %21, align 4
  tail call void @dm_write_reg_func(ptr noundef %25, i32 noundef %27, i32 noundef %value.0.i, ptr noundef nonnull @__func__.acquire_engine) #4
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %AUX_RESET_MASK19.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %AUX_RESET_MASK19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %AUX_RESET_MASK19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool20.not.i = icmp eq i32 %31, 0
  br i1 %tobool20.not.i, label %if.then8.i.acquire_engine.exit_crit_edge, label %if.then21.i

if.then8.i.acquire_engine.exit_crit_edge:         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %acquire_engine.exit

if.then21.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx.i, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %29, align 4
  %shift.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %engine, i32 0, i32 3
  %36 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %shift.i, align 4
  %AUX_RESET_DONE.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %AUX_RESET_DONE.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %AUX_RESET_DONE.i, align 1
  %conv.i = zext i8 %39 to i32
  %mask.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %engine, i32 0, i32 2
  %40 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mask.i, align 4
  %AUX_RESET_DONE26.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %AUX_RESET_DONE26.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %AUX_RESET_DONE26.i, align 4
  tail call void @generic_reg_wait(ptr noundef %33, i32 noundef %35, i32 noundef %conv.i, i32 noundef %43, i32 noundef 1, i32 noundef 1, i32 noundef 11, ptr noundef nonnull @__func__.acquire_engine, i32 noundef 149) #4
  %and.i97.i = and i32 %value.0.i, -17
  %44 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx.i, align 4
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  tail call void @dm_write_reg_func(ptr noundef %45, i32 noundef %49, i32 noundef %and.i97.i, ptr noundef nonnull @__func__.acquire_engine) #4
  %50 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx.i, align 4
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %56 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %shift.i, align 4
  %AUX_RESET_DONE37.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %AUX_RESET_DONE37.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %AUX_RESET_DONE37.i, align 1
  %conv38.i = zext i8 %59 to i32
  %60 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mask.i, align 4
  %AUX_RESET_DONE40.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %AUX_RESET_DONE40.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %AUX_RESET_DONE40.i, align 4
  tail call void @generic_reg_wait(ptr noundef %51, i32 noundef %55, i32 noundef %conv38.i, i32 noundef %63, i32 noundef 0, i32 noundef 1, i32 noundef 11, ptr noundef nonnull @__func__.acquire_engine, i32 noundef 160) #4
  br label %acquire_engine.exit

acquire_engine.exit:                              ; preds = %if.then21.i, %if.then8.i.acquire_engine.exit_crit_edge, %if.end.i.acquire_engine.exit_crit_edge
  %64 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx.i, align 4
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %AUX_ARB_CONTROL46.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %AUX_ARB_CONTROL46.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %AUX_ARB_CONTROL46.i, align 4
  %shift47.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %engine, i32 0, i32 3
  %70 = ptrtoint ptr %shift47.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shift47.i, align 4
  %AUX_SW_USE_AUX_REG_REQ.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %AUX_SW_USE_AUX_REG_REQ.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %AUX_SW_USE_AUX_REG_REQ.i, align 1
  %mask48.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %engine, i32 0, i32 2
  %74 = ptrtoint ptr %mask48.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mask48.i, align 4
  %AUX_SW_USE_AUX_REG_REQ49.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %AUX_SW_USE_AUX_REG_REQ49.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %AUX_SW_USE_AUX_REG_REQ49.i, align 4
  %call50.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %65, i32 noundef %69, i32 noundef 1, i8 noundef zeroext %73, i32 noundef %77, i32 noundef 1) #4
  %78 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx.i, align 4
  %80 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i, align 4
  %AUX_ARB_CONTROL54.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %AUX_ARB_CONTROL54.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %AUX_ARB_CONTROL54.i, align 4
  %call55.i = tail call i32 @dm_read_reg_func(ptr noundef %79, i32 noundef %83, ptr noundef nonnull @__func__.acquire_engine) #4
  %84 = and i32 %call55.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %cmp57.i = icmp eq i32 %84, 4
  br i1 %cmp57.i, label %if.end7, label %acquire_engine.exit.if.then6_crit_edge

acquire_engine.exit.if.then6_crit_edge:           ; preds = %acquire_engine.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.then6:                                         ; preds = %acquire_engine.exit.if.then6_crit_edge, %if.end4.if.then6_crit_edge
  tail call void @dal_ddc_close(ptr noundef %ddc) #4
  br label %cleanup

if.end7:                                          ; preds = %acquire_engine.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ddc8 = getelementptr inbounds %struct.dce_aux, ptr %engine, i32 0, i32 1
  %85 = ptrtoint ptr %ddc8 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %ddc, ptr %ddc8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end7 ], [ false, %if.then6 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce_aux_transfer_dmub_raw(ptr nocapture noundef readonly %ddc, ptr noundef %payload, ptr noundef %operation_result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 5
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res_pool, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %en = getelementptr inbounds %struct.gpio, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %en, align 4
  %arrayidx = getelementptr %struct.resource_pool, ptr %7, i32 0, i32 11, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call = tail call fastcc zeroext i1 @acquire(ptr noundef %13, ptr noundef nonnull %1)
  br i1 %call, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %operation_result to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %operation_result, align 4
  br label %cleanup6

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ddc.i = getelementptr inbounds %struct.dce_aux, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ddc.i, align 4
  tail call void @dal_ddc_close(ptr noundef %16) #4
  %17 = ptrtoint ptr %ddc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ddc.i, align 4
  %ctx.i = getelementptr inbounds %struct.dce_aux, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %AUX_ARB_CONTROL.i = getelementptr inbounds %struct.dce110_aux_registers, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %AUX_ARB_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %AUX_ARB_CONTROL.i, align 4
  %shift.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %13, i32 0, i32 3
  %24 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %shift.i, align 4
  %AUX_SW_DONE_USING_AUX_REG.i = getelementptr inbounds %struct.dce110_aux_registers_shift, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %AUX_SW_DONE_USING_AUX_REG.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %AUX_SW_DONE_USING_AUX_REG.i, align 1
  %mask.i = getelementptr inbounds %struct.aux_engine_dce110, ptr %13, i32 0, i32 2
  %28 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mask.i, align 4
  %AUX_SW_DONE_USING_AUX_REG2.i = getelementptr inbounds %struct.dce110_aux_registers_mask, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %AUX_SW_DONE_USING_AUX_REG2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %AUX_SW_DONE_USING_AUX_REG2.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %19, i32 noundef %23, i32 noundef 1, i8 noundef zeroext %27, i32 noundef %31, i32 noundef 1) #4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %ctx4 = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 5
  %32 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx4, align 4
  %link = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 6
  %34 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link, align 4
  %call5 = tail call i32 @dm_helper_dmub_aux_transfer_sync(ptr noundef %33, ptr noundef %35, ptr noundef %payload, ptr noundef %operation_result) #4
  br label %cleanup6

cleanup6:                                         ; preds = %if.end3, %if.then2
  %retval.1 = phi i32 [ %call5, %if.end3 ], [ -1, %if.then2 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_helper_dmub_aux_transfer_sync(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce_aux_transfer_with_retries(ptr nocapture noundef readonly %ddc, ptr nocapture noundef %payload) local_unnamed_addr #0 align 64 {
entry:
  %reply = alloca i8, align 1
  %operation_result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reply) #4
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reply, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %operation_result) #4
  %1 = ptrtoint ptr %operation_result to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %operation_result, align 4, !annotation !29
  %2 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.ddc_service, ptr %ddc, i32 0, i32 5
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res_pool, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %en = getelementptr inbounds %struct.gpio, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en, align 4
  %arrayidx = getelementptr %struct.resource_pool, ptr %9, i32 0, i32 11, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %aux110.0 = phi ptr [ %15, %if.then ], [ null, %entry.if.end_crit_edge ]
  %reply2 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 7
  %16 = ptrtoint ptr %reply2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reply2, align 4
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %reply2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %reply, ptr %reply2, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %write = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 1
  %defer_delay193 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 8
  %tobool62.not = icmp eq ptr %aux110.0, null
  %polling_timeout_period = getelementptr inbounds %struct.aux_engine_dce110, ptr %aux110.0, i32 0, i32 5
  %write_status_update = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 3
  %length54 = getelementptr inbounds %struct.aux_payload, ptr %payload, i32 0, i32 5
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end6
  %i.0315 = phi i32 [ 0, %if.end6 ], [ %inc220, %for.inc.do.end_crit_edge ]
  %aux_ack_m_retries.0314 = phi i32 [ 0, %if.end6 ], [ %aux_ack_m_retries.1, %for.inc.do.end_crit_edge ]
  %aux_invalid_reply_retries.0313 = phi i32 [ 0, %if.end6 ], [ %aux_invalid_reply_retries.1, %for.inc.do.end_crit_edge ]
  %aux_timeout_retries.0312 = phi i32 [ 0, %if.end6 ], [ %aux_timeout_retries.1, %for.inc.do.end_crit_edge ]
  %aux_i2c_defer_retries.0311 = phi i32 [ 0, %if.end6 ], [ %aux_i2c_defer_retries.1, %for.inc.do.end_crit_edge ]
  %aux_defer_retries.0310 = phi i32 [ 0, %if.end6 ], [ %aux_defer_retries.3, %for.inc.do.end_crit_edge ]
  %aux_ack_retries.0309 = phi i32 [ 0, %if.end6 ], [ %aux_ack_retries.1, %for.inc.do.end_crit_edge ]
  %defer_time_in_ms.0308 = phi i32 [ 0, %if.end6 ], [ %defer_time_in_ms.4, %for.inc.do.end_crit_edge ]
  %retry_on_defer.0.off0307 = phi i1 [ false, %if.end6 ], [ %retry_on_defer.2.off0, %for.inc.do.end_crit_edge ]
  %call = call i32 @dce_aux_transfer_raw(ptr noundef %ddc, ptr noundef %payload, ptr noundef nonnull %operation_result)
  %19 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool14.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %operation_result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %operation_result, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %22, label %do.end.do.end223_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %do.end169
    i32 3, label %do.end182
  ]

do.end.do.end223_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

sw.bb:                                            ; preds = %do.end
  %24 = ptrtoint ptr %reply2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reply2, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %27, label %sw.bb.do.end223_crit_edge [
    i8 0, label %do.end23
    i8 2, label %do.end61
    i8 8, label %sw.bb.sw.bb68_crit_edge
    i8 4, label %sw.bb.sw.bb78_crit_edge
    i8 32, label %do.end146
  ]

sw.bb.sw.bb78_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb78

sw.bb.sw.bb68_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb68

sw.bb.do.end223_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

do.end23:                                         ; preds = %sw.bb
  br i1 %tobool14.not, label %land.lhs.true, label %if.else37

land.lhs.true:                                    ; preds = %do.end23
  %29 = ptrtoint ptr %length54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %call)
  %cmp27.not = icmp eq i32 %30, %call
  br i1 %cmp27.not, label %land.lhs.true.cleanup_crit_edge, label %if.then29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true
  %inc = add i32 %aux_ack_retries.0309, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc)
  %cmp30 = icmp sgt i32 %inc, 6
  br i1 %cmp30, label %if.then29.do.end223_crit_edge, label %if.else

if.then29.do.end223_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 64424400) #4
  br label %for.inc

if.else37:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp42 = icmp sgt i32 %call, 0
  br i1 %cmp42, label %if.then44, label %if.else37.cleanup_crit_edge

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then44:                                        ; preds = %if.else37
  %inc45 = add i32 %aux_ack_m_retries.0314, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc45)
  %cmp46 = icmp sgt i32 %inc45, 6
  br i1 %cmp46, label %if.then44.do.end223_crit_edge, label %if.end52

if.then44.do.end223_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

if.end52:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %write to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %write, align 1
  %33 = ptrtoint ptr %write_status_update to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %write_status_update, align 1
  %34 = ptrtoint ptr %length54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %length54, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 64424400) #4
  br label %for.inc

do.end61:                                         ; preds = %sw.bb
  br i1 %tobool62.not, label %do.end61.if.end66_crit_edge, label %if.then63

do.end61.if.end66_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then63:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %polling_timeout_period to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %polling_timeout_period, align 4
  %div = udiv i32 %37, 1000
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %do.end61.if.end66_crit_edge
  %div.pn = phi i32 [ %div, %if.then63 ], [ 4, %do.end61.if.end66_crit_edge ]
  %defer_time_in_ms.1 = add i32 %div.pn, %defer_time_in_ms.0308
  %inc67 = add i32 %aux_defer_retries.0310, 1
  br label %sw.bb68

sw.bb68:                                          ; preds = %if.end66, %sw.bb.sw.bb68_crit_edge
  %defer_time_in_ms.2 = phi i32 [ %defer_time_in_ms.0308, %sw.bb.sw.bb68_crit_edge ], [ %defer_time_in_ms.1, %if.end66 ]
  %aux_defer_retries.1 = phi i32 [ %aux_defer_retries.0310, %sw.bb.sw.bb68_crit_edge ], [ %inc67, %if.end66 ]
  br label %sw.bb78

sw.bb78:                                          ; preds = %sw.bb68, %sw.bb.sw.bb78_crit_edge
  %retry_on_defer.1.off0 = phi i1 [ %retry_on_defer.0.off0307, %sw.bb.sw.bb78_crit_edge ], [ true, %sw.bb68 ]
  %defer_time_in_ms.3 = phi i32 [ %defer_time_in_ms.0308, %sw.bb.sw.bb78_crit_edge ], [ %defer_time_in_ms.2, %sw.bb68 ]
  %aux_defer_retries.2 = phi i32 [ %aux_defer_retries.0310, %sw.bb.sw.bb78_crit_edge ], [ %aux_defer_retries.1, %sw.bb68 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %aux_defer_retries.2)
  %cmp88 = icmp sgt i32 %aux_defer_retries.2, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %defer_time_in_ms.3)
  %cmp91 = icmp ugt i32 %defer_time_in_ms.3, 49
  %or.cond303 = select i1 %cmp88, i1 %cmp91, i1 false
  br i1 %or.cond303, label %sw.bb78.do.end223_crit_edge, label %if.else97

sw.bb78.do.end223_crit_edge:                      ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

if.else97:                                        ; preds = %sw.bb78
  %38 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %27, label %if.else97.for.inc_crit_edge [
    i8 2, label %if.else97.do.end109_crit_edge
    i8 8, label %if.else97.do.end109_crit_edge316
  ]

if.else97.do.end109_crit_edge316:                 ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end109

if.else97.do.end109_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end109

if.else97.for.inc_crit_edge:                      ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end109:                                        ; preds = %if.else97.do.end109_crit_edge, %if.else97.do.end109_crit_edge316
  %39 = ptrtoint ptr %defer_delay193 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %defer_delay193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp110 = icmp ugt i32 %40, 1
  br i1 %cmp110, label %if.then112, label %cond.false133

if.then112:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #6
  call void @msleep(i32 noundef %40) #4
  %41 = ptrtoint ptr %defer_delay193 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %defer_delay193, align 4
  %add115 = add i32 %42, %defer_time_in_ms.3
  br label %for.inc

cond.false133:                                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #6
  %mul = mul nuw nsw i32 %40, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %43(i32 noundef %mul) #4
  %44 = ptrtoint ptr %defer_delay193 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %defer_delay193, align 4
  %add138 = add i32 %45, %defer_time_in_ms.3
  br label %for.inc

do.end146:                                        ; preds = %sw.bb
  %inc147 = add i32 %aux_i2c_defer_retries.0311, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc147)
  %cmp148 = icmp sgt i32 %inc147, 6
  br i1 %cmp148, label %do.end146.do.end223_crit_edge, label %do.end146.for.inc_crit_edge

do.end146.for.inc_crit_edge:                      ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end146.do.end223_crit_edge:                    ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

do.end169:                                        ; preds = %do.end
  %inc170 = add i32 %aux_invalid_reply_retries.0313, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc170)
  %cmp171 = icmp sgt i32 %inc170, 1
  br i1 %cmp171, label %do.end169.do.end223_crit_edge, label %if.else177

do.end169.do.end223_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

if.else177:                                       ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 85899200) #4
  br label %for.inc

do.end182:                                        ; preds = %do.end
  br i1 %retry_on_defer.0.off0307, label %if.then184, label %if.else203

if.then184:                                       ; preds = %do.end182
  %inc185 = add i32 %aux_defer_retries.0310, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc185)
  %cmp186 = icmp sgt i32 %inc185, 6
  br i1 %cmp186, label %if.then184.do.end223_crit_edge, label %if.else192

if.then184.do.end223_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

if.else192:                                       ; preds = %if.then184
  %47 = ptrtoint ptr %defer_delay193 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %defer_delay193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp194.not = icmp eq i32 %48, 0
  br i1 %cmp194.not, label %if.else192.for.inc_crit_edge, label %do.end199

if.else192.for.inc_crit_edge:                     ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end199:                                        ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #6
  call void @msleep(i32 noundef %48) #4
  br label %for.inc

if.else203:                                       ; preds = %do.end182
  %inc204 = add i32 %aux_timeout_retries.0312, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc204)
  %cmp205 = icmp sgt i32 %inc204, 2
  br i1 %cmp205, label %if.else203.do.end223_crit_edge, label %if.else203.for.inc_crit_edge

if.else203.for.inc_crit_edge:                     ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.else203.do.end223_crit_edge:                   ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

for.inc:                                          ; preds = %if.else203.for.inc_crit_edge, %do.end199, %if.else192.for.inc_crit_edge, %if.else177, %do.end146.for.inc_crit_edge, %cond.false133, %if.then112, %if.else97.for.inc_crit_edge, %if.end52, %if.else
  %retry_on_defer.2.off0 = phi i1 [ true, %do.end199 ], [ true, %if.else192.for.inc_crit_edge ], [ false, %if.else203.for.inc_crit_edge ], [ %retry_on_defer.0.off0307, %if.else177 ], [ %retry_on_defer.0.off0307, %do.end146.for.inc_crit_edge ], [ %retry_on_defer.1.off0, %if.then112 ], [ %retry_on_defer.1.off0, %cond.false133 ], [ %retry_on_defer.0.off0307, %if.end52 ], [ %retry_on_defer.0.off0307, %if.else ], [ %retry_on_defer.1.off0, %if.else97.for.inc_crit_edge ]
  %defer_time_in_ms.4 = phi i32 [ %defer_time_in_ms.0308, %do.end199 ], [ %defer_time_in_ms.0308, %if.else192.for.inc_crit_edge ], [ %defer_time_in_ms.0308, %if.else203.for.inc_crit_edge ], [ %defer_time_in_ms.0308, %if.else177 ], [ %defer_time_in_ms.0308, %do.end146.for.inc_crit_edge ], [ %add115, %if.then112 ], [ %add138, %cond.false133 ], [ %defer_time_in_ms.0308, %if.end52 ], [ %defer_time_in_ms.0308, %if.else ], [ %defer_time_in_ms.3, %if.else97.for.inc_crit_edge ]
  %aux_ack_retries.1 = phi i32 [ %aux_ack_retries.0309, %do.end199 ], [ %aux_ack_retries.0309, %if.else192.for.inc_crit_edge ], [ %aux_ack_retries.0309, %if.else203.for.inc_crit_edge ], [ %aux_ack_retries.0309, %if.else177 ], [ %aux_ack_retries.0309, %do.end146.for.inc_crit_edge ], [ %aux_ack_retries.0309, %if.then112 ], [ %aux_ack_retries.0309, %cond.false133 ], [ %aux_ack_retries.0309, %if.end52 ], [ %inc, %if.else ], [ %aux_ack_retries.0309, %if.else97.for.inc_crit_edge ]
  %aux_defer_retries.3 = phi i32 [ %inc185, %do.end199 ], [ %inc185, %if.else192.for.inc_crit_edge ], [ %aux_defer_retries.0310, %if.else203.for.inc_crit_edge ], [ %aux_defer_retries.0310, %if.else177 ], [ 0, %do.end146.for.inc_crit_edge ], [ %aux_defer_retries.2, %if.then112 ], [ %aux_defer_retries.2, %cond.false133 ], [ %aux_defer_retries.0310, %if.end52 ], [ %aux_defer_retries.0310, %if.else ], [ %aux_defer_retries.2, %if.else97.for.inc_crit_edge ]
  %aux_i2c_defer_retries.1 = phi i32 [ %aux_i2c_defer_retries.0311, %do.end199 ], [ %aux_i2c_defer_retries.0311, %if.else192.for.inc_crit_edge ], [ %aux_i2c_defer_retries.0311, %if.else203.for.inc_crit_edge ], [ %aux_i2c_defer_retries.0311, %if.else177 ], [ %inc147, %do.end146.for.inc_crit_edge ], [ %aux_i2c_defer_retries.0311, %if.then112 ], [ %aux_i2c_defer_retries.0311, %cond.false133 ], [ %aux_i2c_defer_retries.0311, %if.end52 ], [ %aux_i2c_defer_retries.0311, %if.else ], [ %aux_i2c_defer_retries.0311, %if.else97.for.inc_crit_edge ]
  %aux_timeout_retries.1 = phi i32 [ %aux_timeout_retries.0312, %do.end199 ], [ %aux_timeout_retries.0312, %if.else192.for.inc_crit_edge ], [ %inc204, %if.else203.for.inc_crit_edge ], [ %aux_timeout_retries.0312, %if.else177 ], [ 0, %do.end146.for.inc_crit_edge ], [ 0, %if.then112 ], [ 0, %cond.false133 ], [ 0, %if.end52 ], [ 0, %if.else ], [ 0, %if.else97.for.inc_crit_edge ]
  %aux_invalid_reply_retries.1 = phi i32 [ %aux_invalid_reply_retries.0313, %do.end199 ], [ %aux_invalid_reply_retries.0313, %if.else192.for.inc_crit_edge ], [ %aux_invalid_reply_retries.0313, %if.else203.for.inc_crit_edge ], [ 1, %if.else177 ], [ 0, %do.end146.for.inc_crit_edge ], [ 0, %if.then112 ], [ 0, %cond.false133 ], [ 0, %if.end52 ], [ 0, %if.else ], [ 0, %if.else97.for.inc_crit_edge ]
  %aux_ack_m_retries.1 = phi i32 [ %aux_ack_m_retries.0314, %do.end199 ], [ %aux_ack_m_retries.0314, %if.else192.for.inc_crit_edge ], [ %aux_ack_m_retries.0314, %if.else203.for.inc_crit_edge ], [ %aux_ack_m_retries.0314, %if.else177 ], [ %aux_ack_m_retries.0314, %do.end146.for.inc_crit_edge ], [ %aux_ack_m_retries.0314, %if.then112 ], [ %aux_ack_m_retries.0314, %cond.false133 ], [ %inc45, %if.end52 ], [ %aux_ack_m_retries.0314, %if.else ], [ %aux_ack_m_retries.0314, %if.else97.for.inc_crit_edge ]
  %inc220 = add nuw nsw i32 %i.0315, 1
  %exitcond.not = icmp eq i32 %inc220, 7
  br i1 %exitcond.not, label %for.inc.do.end223_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.inc.do.end223_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end223

do.end223:                                        ; preds = %for.inc.do.end223_crit_edge, %if.else203.do.end223_crit_edge, %if.then184.do.end223_crit_edge, %do.end169.do.end223_crit_edge, %do.end146.do.end223_crit_edge, %sw.bb78.do.end223_crit_edge, %if.then44.do.end223_crit_edge, %if.then29.do.end223_crit_edge, %sw.bb.do.end223_crit_edge, %do.end.do.end223_crit_edge
  br i1 %tobool3.not, label %if.then225, label %do.end223.cleanup_crit_edge

do.end223.cleanup_crit_edge:                      ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then225:                                       ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %reply2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %reply2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then225, %do.end223.cleanup_crit_edge, %if.else37.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end223.cleanup_crit_edge ], [ false, %if.then225 ], [ true, %if.else37.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %operation_result) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reply) #4
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get2(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_ddc_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_ddc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c", i32 735, i32 24}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c", i32 751, i32 24}
!4 = !{ptr @aux_functions, !5, !"aux_functions", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c", i32 503, i32 29}
!6 = !{ptr @__func__.is_engine_available, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c", i32 101, i32 19}
!8 = !{ptr @__func__.acquire_engine, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c", i32 114, i32 19}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!12 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__func__.submit_channel_request, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c", i32 223, i32 2}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c", i32 346, i32 3}
!17 = !{ptr @__func__.get_channel_status, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_aux.c", i32 352, i32 2}
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
!29 = !{!"auto-init"}
