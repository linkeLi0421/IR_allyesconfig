; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_hwseq.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dce_hwseq = type { ptr, ptr, ptr, ptr, %struct.dce_hwseq_wa, %struct.hwseq_wa_state, %struct.hwseq_private_funcs, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dce_hwseq_wa = type { i8, i8, i8, i8, i8, i8 }
%struct.hwseq_wa_state = type { i8, i8, i32 }
%struct.hwseq_private_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.large_integer = type { i64 }
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
%struct.pipe_ctx = type { ptr, ptr, %struct.plane_resource, %struct.stream_resource, %struct.link_resource, ptr, %struct.pll_settings, i8, i8, ptr, ptr, ptr, ptr, %union.pipe_update_flags, ptr, ptr, i8 }
%struct.plane_resource = type { %struct.scaler_data, ptr, ptr, ptr, ptr, ptr, i8, %struct.dcn_fe_bandwidth }
%struct.scaler_data = type { i32, i32, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.scaling_ratios, %struct.scl_inits, %struct.sharpness_adj, i32, %struct.line_buffer_params }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.scaling_ratios = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.fixed31_32 = type { i64 }
%struct.scl_inits = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.sharpness_adj = type { i32, i32 }
%struct.line_buffer_params = type { i8, i8, i8, i32, i32 }
%struct.dcn_fe_bandwidth = type { i32 }
%struct.stream_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.pixel_clk_params, %struct.encoder_info_frame, ptr, i8 }
%struct.pixel_clk_params = type { i32, i32, i32, %struct.graphics_object_id, i32, i32, i32, %struct.csdp_ref_clk_ds_params, i32, %struct.pixel_clk_flags }
%struct.graphics_object_id = type { i32 }
%struct.csdp_ref_clk_ds_params = type { i8, i32, i32, i32 }
%struct.pixel_clk_flags = type { i8, [3 x i8] }
%struct.encoder_info_frame = type { %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%struct.link_resource = type { ptr }
%struct.pll_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.pipe_update_flags = type { i32 }
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.dce_hwseq_registers = type { [6 x i32], i32, i32, [6 x i32], [6 x i32], i32, [6 x i32], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_hwseq_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_hwseq_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clock_source = type { ptr, ptr, i32, i8 }

@__func__.dce_pipe_control_lock = private unnamed_addr constant [22 x i8] c"dce_pipe_control_lock\00", align 1
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unknown clock source. clk_src id: %d, TG_inst: %d\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce_crtc_switch_to_clk_src = private unnamed_addr constant [27 x i8] c"dce_crtc_switch_to_clk_src\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 204, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_enable_fe_clock(ptr nocapture noundef readonly %hws, i32 noundef %fe_inst, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hws, align 8
  %regs = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr [6 x i32], ptr %3, i32 0, i32 %fe_inst
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %shifts = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %6 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shifts, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %masks = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %10 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %masks, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %conv = zext i1 %enable to i32
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %conv) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_pipe_control_lock(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %pipe, i1 noundef zeroext %lock) local_unnamed_addr #0 align 64 {
entry:
  %dcp_grph = alloca i32, align 4
  %scl = alloca i32, align 4
  %blnd = alloca i32, align 4
  %update_lock_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = zext i1 %lock to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcp_grph) #4
  %0 = ptrtoint ptr %dcp_grph to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dcp_grph, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scl) #4
  %1 = ptrtoint ptr %scl to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %scl, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blnd) #4
  %2 = ptrtoint ptr %blnd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %blnd, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %update_lock_mode) #4
  %3 = ptrtoint ptr %update_lock_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %update_lock_mode, align 4, !annotation !15
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %4 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwseq, align 4
  br i1 %lock, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tg = getelementptr inbounds %struct.pipe_ctx, ptr %pipe, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tg, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %is_blanked = getelementptr inbounds %struct.timing_generator_funcs, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %is_blanked to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is_blanked, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call = tail call zeroext i1 %11(ptr noundef %7) #4
  br i1 %call, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %regs = getelementptr inbounds %struct.dce_hwseq, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %tg11 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %tg11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tg11, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inst, align 4
  %arrayidx = getelementptr %struct.dce_hwseq_registers, ptr %15, i32 0, i32 3, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %shifts = getelementptr inbounds %struct.dce_hwseq, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shifts, align 8
  %BLND_DCP_GRPH_V_UPDATE_LOCK = getelementptr inbounds %struct.dce_hwseq_shift, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %BLND_DCP_GRPH_V_UPDATE_LOCK to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %BLND_DCP_GRPH_V_UPDATE_LOCK, align 1
  %masks = getelementptr inbounds %struct.dce_hwseq, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %masks, align 4
  %BLND_DCP_GRPH_V_UPDATE_LOCK12 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %BLND_DCP_GRPH_V_UPDATE_LOCK12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %BLND_DCP_GRPH_V_UPDATE_LOCK12, align 4
  %BLND_SCL_V_UPDATE_LOCK = getelementptr inbounds %struct.dce_hwseq_shift, ptr %23, i32 0, i32 4
  %30 = ptrtoint ptr %BLND_SCL_V_UPDATE_LOCK to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %BLND_SCL_V_UPDATE_LOCK, align 1
  %BLND_SCL_V_UPDATE_LOCK15 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %BLND_SCL_V_UPDATE_LOCK15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %BLND_SCL_V_UPDATE_LOCK15, align 4
  %BLND_BLND_V_UPDATE_LOCK = getelementptr inbounds %struct.dce_hwseq_shift, ptr %23, i32 0, i32 6
  %34 = ptrtoint ptr %BLND_BLND_V_UPDATE_LOCK to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %BLND_BLND_V_UPDATE_LOCK, align 1
  %BLND_BLND_V_UPDATE_LOCK18 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %27, i32 0, i32 6
  %36 = ptrtoint ptr %BLND_BLND_V_UPDATE_LOCK18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %BLND_BLND_V_UPDATE_LOCK18, align 4
  %BLND_V_UPDATE_LOCK_MODE = getelementptr inbounds %struct.dce_hwseq_shift, ptr %23, i32 0, i32 7
  %38 = ptrtoint ptr %BLND_V_UPDATE_LOCK_MODE to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %BLND_V_UPDATE_LOCK_MODE, align 1
  %BLND_V_UPDATE_LOCK_MODE21 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %27, i32 0, i32 7
  %40 = ptrtoint ptr %BLND_V_UPDATE_LOCK_MODE21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %BLND_V_UPDATE_LOCK_MODE21, align 4
  %call22 = call i32 @generic_reg_get4(ptr noundef %13, i32 noundef %21, i8 noundef zeroext %25, i32 noundef %29, ptr noundef nonnull %dcp_grph, i8 noundef zeroext %31, i32 noundef %33, ptr noundef nonnull %scl, i8 noundef zeroext %35, i32 noundef %37, ptr noundef nonnull %blnd, i8 noundef zeroext %39, i32 noundef %41, ptr noundef nonnull %update_lock_mode) #4
  %42 = ptrtoint ptr %dcp_grph to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond, ptr %dcp_grph, align 4
  %43 = ptrtoint ptr %scl to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond, ptr %scl, align 4
  %44 = ptrtoint ptr %blnd to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond, ptr %blnd, align 4
  %45 = ptrtoint ptr %update_lock_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond, ptr %update_lock_mode, align 4
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %5, align 8
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %50 = ptrtoint ptr %tg11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tg11, align 8
  %inst28 = getelementptr inbounds %struct.timing_generator, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %inst28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %inst28, align 4
  %arrayidx29 = getelementptr %struct.dce_hwseq_registers, ptr %49, i32 0, i32 3, i32 %53
  %54 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx29, align 4
  %56 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %shifts, align 8
  %BLND_DCP_GRPH_V_UPDATE_LOCK31 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %BLND_DCP_GRPH_V_UPDATE_LOCK31 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %BLND_DCP_GRPH_V_UPDATE_LOCK31, align 1
  %60 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %masks, align 4
  %BLND_DCP_GRPH_V_UPDATE_LOCK33 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %BLND_DCP_GRPH_V_UPDATE_LOCK33 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %BLND_DCP_GRPH_V_UPDATE_LOCK33, align 4
  %BLND_SCL_V_UPDATE_LOCK35 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %57, i32 0, i32 4
  %64 = ptrtoint ptr %BLND_SCL_V_UPDATE_LOCK35 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %BLND_SCL_V_UPDATE_LOCK35, align 1
  %conv = zext i8 %65 to i32
  %BLND_SCL_V_UPDATE_LOCK37 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %61, i32 0, i32 4
  %66 = ptrtoint ptr %BLND_SCL_V_UPDATE_LOCK37 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %BLND_SCL_V_UPDATE_LOCK37, align 4
  %call38 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %47, i32 noundef %55, i32 noundef %call22, i32 noundef 2, i8 noundef zeroext %59, i32 noundef %63, i32 noundef %cond, i32 noundef %conv, i32 noundef %67, i32 noundef %cond) #4
  %68 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %masks, align 4
  %BLND_BLND_V_UPDATE_LOCK40 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %BLND_BLND_V_UPDATE_LOCK40 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %BLND_BLND_V_UPDATE_LOCK40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.not = icmp eq i32 %71, 0
  br i1 %cmp.not, label %if.end.if.end60_crit_edge, label %if.then42

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %5, align 8
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %76 = ptrtoint ptr %tg11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tg11, align 8
  %inst48 = getelementptr inbounds %struct.timing_generator, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %inst48 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %inst48, align 4
  %arrayidx49 = getelementptr %struct.dce_hwseq_registers, ptr %75, i32 0, i32 3, i32 %79
  %80 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx49, align 4
  %82 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %shifts, align 8
  %BLND_BLND_V_UPDATE_LOCK51 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %BLND_BLND_V_UPDATE_LOCK51 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %BLND_BLND_V_UPDATE_LOCK51, align 1
  %86 = ptrtoint ptr %blnd to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %blnd, align 4
  %BLND_V_UPDATE_LOCK_MODE55 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %83, i32 0, i32 7
  %88 = ptrtoint ptr %BLND_V_UPDATE_LOCK_MODE55 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %BLND_V_UPDATE_LOCK_MODE55, align 1
  %conv56 = zext i8 %89 to i32
  %BLND_V_UPDATE_LOCK_MODE58 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %69, i32 0, i32 7
  %90 = ptrtoint ptr %BLND_V_UPDATE_LOCK_MODE58 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %BLND_V_UPDATE_LOCK_MODE58, align 4
  %92 = ptrtoint ptr %update_lock_mode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %update_lock_mode, align 4
  %call59 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %73, i32 noundef %81, i32 noundef %call22, i32 noundef 2, i8 noundef zeroext %85, i32 noundef %71, i32 noundef %87, i32 noundef %conv56, i32 noundef %91, i32 noundef %93) #4
  br label %if.end60

if.end60:                                         ; preds = %if.then42, %if.end.if.end60_crit_edge
  %wa = getelementptr inbounds %struct.dce_hwseq, ptr %5, i32 0, i32 4
  %94 = ptrtoint ptr %wa to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %wa, align 8, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool61.not = icmp eq i8 %95, 0
  %brmerge = or i1 %tobool61.not, %lock
  br i1 %brmerge, label %if.end60.cleanup_crit_edge, label %if.then64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %96 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %5, align 8
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %100 = ptrtoint ptr %tg11 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tg11, align 8
  %inst69 = getelementptr inbounds %struct.timing_generator, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %inst69 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %inst69, align 4
  %arrayidx70 = getelementptr %struct.dce_hwseq_registers, ptr %99, i32 0, i32 6, i32 %103
  %104 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx70, align 4
  %call71 = call i32 @dm_read_reg_func(ptr noundef %97, i32 noundef %105, ptr noundef nonnull @__func__.dce_pipe_control_lock) #4
  %106 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %5, align 8
  %108 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs, align 4
  %110 = ptrtoint ptr %tg11 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tg11, align 8
  %inst77 = getelementptr inbounds %struct.timing_generator, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %inst77 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %inst77, align 4
  %arrayidx78 = getelementptr %struct.dce_hwseq_registers, ptr %109, i32 0, i32 6, i32 %113
  %114 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx78, align 4
  call void @dm_write_reg_func(ptr noundef %107, i32 noundef %115, i32 noundef %call71, ptr noundef nonnull @__func__.dce_pipe_control_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end60.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %update_lock_mode) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blnd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scl) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcp_grph) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get4(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dce60_pipe_control_lock(ptr nocapture noundef %dc, ptr nocapture noundef %pipe, i1 noundef zeroext %lock) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_set_blender_mode(ptr nocapture noundef readonly %hws, i32 noundef %blnd_inst, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %regs = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.dce_hwseq_registers, ptr %2, i32 0, i32 4, i32 %blnd_inst
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %BLNDV_CONTROL = getelementptr inbounds %struct.dce_hwseq_registers, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %BLNDV_CONTROL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %BLNDV_CONTROL, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ne i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blnd_inst)
  %cmp4 = icmp ne i32 %blnd_inst, 0
  %not.or.cond = and i1 %cmp4, %cmp
  %spec.select = zext i1 %not.or.cond to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %entry.sw.epilog_crit_edge
  %feedthrough.0 = phi i32 [ 0, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.default ]
  %blnd_mode.0 = phi i32 [ 2, %sw.bb1 ], [ %mode, %entry.sw.epilog_crit_edge ], [ 0, %sw.default ]
  %multiplied_mode.0 = phi i32 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.default ]
  %alpha_mode.0 = phi i32 [ 0, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 2, %sw.default ]
  %7 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hws, align 8
  %regs5 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %9 = ptrtoint ptr %regs5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs5, align 4
  %arrayidx7 = getelementptr %struct.dce_hwseq_registers, ptr %10, i32 0, i32 4, i32 %blnd_inst
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7, align 4
  %shifts = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %13 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shifts, align 8
  %BLND_MODE = getelementptr inbounds %struct.dce_hwseq_shift, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %BLND_MODE to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %BLND_MODE, align 1
  %masks = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %17 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %masks, align 4
  %BLND_MODE8 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %BLND_MODE8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %BLND_MODE8, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %8, i32 noundef %12, i32 noundef 1, i8 noundef zeroext %16, i32 noundef %20, i32 noundef %blnd_mode.0) #4
  %21 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %masks, align 4
  %BLND_ALPHA_MODE = getelementptr inbounds %struct.dce_hwseq_mask, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %BLND_ALPHA_MODE to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %BLND_ALPHA_MODE, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp10.not = icmp eq i32 %24, 0
  br i1 %cmp10.not, label %sw.epilog.if.end28_crit_edge, label %if.then11

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hws, align 8
  %27 = ptrtoint ptr %regs5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs5, align 4
  %arrayidx15 = getelementptr %struct.dce_hwseq_registers, ptr %28, i32 0, i32 4, i32 %blnd_inst
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx15, align 4
  %31 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %shifts, align 8
  %BLND_FEEDTHROUGH_EN = getelementptr inbounds %struct.dce_hwseq_shift, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %BLND_FEEDTHROUGH_EN to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %BLND_FEEDTHROUGH_EN, align 1
  %BLND_FEEDTHROUGH_EN18 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %22, i32 0, i32 8
  %35 = ptrtoint ptr %BLND_FEEDTHROUGH_EN18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %BLND_FEEDTHROUGH_EN18, align 4
  %BLND_ALPHA_MODE20 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %32, i32 0, i32 9
  %37 = ptrtoint ptr %BLND_ALPHA_MODE20 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %BLND_ALPHA_MODE20, align 1
  %conv = zext i8 %38 to i32
  %BLND_MULTIPLIED_MODE = getelementptr inbounds %struct.dce_hwseq_shift, ptr %32, i32 0, i32 11
  %39 = ptrtoint ptr %BLND_MULTIPLIED_MODE to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %BLND_MULTIPLIED_MODE, align 1
  %conv24 = zext i8 %40 to i32
  %BLND_MULTIPLIED_MODE26 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %22, i32 0, i32 11
  %41 = ptrtoint ptr %BLND_MULTIPLIED_MODE26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %BLND_MULTIPLIED_MODE26, align 4
  %call27 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %26, i32 noundef %30, i32 noundef 3, i8 noundef zeroext %34, i32 noundef %36, i32 noundef %feedthrough.0, i32 noundef %conv, i32 noundef %24, i32 noundef %alpha_mode.0, i32 noundef %conv24, i32 noundef %42, i32 noundef %multiplied_mode.0) #4
  br label %if.end28

if.end28:                                         ; preds = %if.then11, %sw.epilog.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_clock_gating_power_up(ptr nocapture noundef readonly %hws, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  %regs.i = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %DC_MEM_GLOBAL_PWR_REQ_CNTL.i = getelementptr inbounds %struct.dce_hwseq_registers, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %DC_MEM_GLOBAL_PWR_REQ_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %DC_MEM_GLOBAL_PWR_REQ_CNTL.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.dce_disable_sram_shut_down.exit_crit_edge, label %if.then.i

if.else.dce_disable_sram_shut_down.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce_disable_sram_shut_down.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hws, align 8
  %shifts.i = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %6 = ptrtoint ptr %shifts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shifts.i, align 8
  %DC_MEM_GLOBAL_PWR_REQ_DIS.i = getelementptr inbounds %struct.dce_hwseq_shift, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %DC_MEM_GLOBAL_PWR_REQ_DIS.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DC_MEM_GLOBAL_PWR_REQ_DIS.i, align 1
  %masks.i = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %10 = ptrtoint ptr %masks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %masks.i, align 4
  %DC_MEM_GLOBAL_PWR_REQ_DIS3.i = getelementptr inbounds %struct.dce_hwseq_mask, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %DC_MEM_GLOBAL_PWR_REQ_DIS3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DC_MEM_GLOBAL_PWR_REQ_DIS3.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %3, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #4
  br label %dce_disable_sram_shut_down.exit

dce_disable_sram_shut_down.exit:                  ; preds = %if.then.i, %if.else.dce_disable_sram_shut_down.exit_crit_edge
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %DCFEV_CLOCK_CONTROL.i = getelementptr inbounds %struct.dce_hwseq_registers, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %DCFEV_CLOCK_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DCFEV_CLOCK_CONTROL.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i3 = icmp eq i32 %17, 0
  br i1 %tobool.not.i3, label %dce_disable_sram_shut_down.exit.if.end_crit_edge, label %if.then.i7

dce_disable_sram_shut_down.exit.if.end_crit_edge: ; preds = %dce_disable_sram_shut_down.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i7:                                       ; preds = %dce_disable_sram_shut_down.exit
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hws, align 8
  %shifts.i4 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %20 = ptrtoint ptr %shifts.i4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shifts.i4, align 8
  %DCFEV_CLOCK_ENABLE.i = getelementptr inbounds %struct.dce_hwseq_shift, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %DCFEV_CLOCK_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %DCFEV_CLOCK_ENABLE.i, align 1
  %masks.i5 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %24 = ptrtoint ptr %masks.i5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %masks.i5, align 4
  %DCFEV_CLOCK_ENABLE3.i = getelementptr inbounds %struct.dce_hwseq_mask, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %DCFEV_CLOCK_ENABLE3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DCFEV_CLOCK_ENABLE3.i, align 4
  %call.i6 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %19, i32 noundef %17, i32 noundef 1, i8 noundef zeroext %23, i32 noundef %27, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then.i7, %dce_disable_sram_shut_down.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce_crtc_switch_to_clk_src(ptr nocapture noundef readonly %hws, ptr nocapture noundef readonly %clk_src, i32 noundef %tg_inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.clock_source, ptr %clk_src, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %dp_clk_src = getelementptr inbounds %struct.clock_source, ptr %clk_src, i32 0, i32 3
  %2 = ptrtoint ptr %dp_clk_src to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_clk_src, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hws, align 8
  %regs = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.dce_hwseq_registers, ptr %7, i32 0, i32 7, i32 %tg_inst
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %shifts = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %10 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shifts, align 8
  %DP_DTO0_ENABLE = getelementptr inbounds %struct.dce_hwseq_shift, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %DP_DTO0_ENABLE to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %DP_DTO0_ENABLE, align 1
  %masks = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %14 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %masks, align 4
  %DP_DTO0_ENABLE1 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %DP_DTO0_ENABLE1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DP_DTO0_ENABLE1, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %9, i32 noundef 1, i8 noundef zeroext %13, i32 noundef %17, i32 noundef 1) #4
  br label %if.end66

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp3 = icmp ugt i32 %1, 8
  br i1 %cmp3, label %if.then4, label %if.else25

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add i32 %1, -9
  %18 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hws, align 8
  %regs7 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %20 = ptrtoint ptr %regs7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs7, align 4
  %arrayidx8 = getelementptr %struct.dce_hwseq_registers, ptr %21, i32 0, i32 8, i32 %tg_inst
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8, align 4
  %shifts9 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %24 = ptrtoint ptr %shifts9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %shifts9, align 8
  %PHYPLL_PIXEL_RATE_SOURCE = getelementptr inbounds %struct.dce_hwseq_shift, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %PHYPLL_PIXEL_RATE_SOURCE to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %PHYPLL_PIXEL_RATE_SOURCE, align 1
  %masks10 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %28 = ptrtoint ptr %masks10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %masks10, align 4
  %PHYPLL_PIXEL_RATE_SOURCE11 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %PHYPLL_PIXEL_RATE_SOURCE11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %PHYPLL_PIXEL_RATE_SOURCE11, align 4
  %PIXEL_RATE_PLL_SOURCE = getelementptr inbounds %struct.dce_hwseq_shift, ptr %25, i32 0, i32 15
  %32 = ptrtoint ptr %PIXEL_RATE_PLL_SOURCE to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %PIXEL_RATE_PLL_SOURCE, align 1
  %conv = zext i8 %33 to i32
  %PIXEL_RATE_PLL_SOURCE14 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %29, i32 0, i32 15
  %34 = ptrtoint ptr %PIXEL_RATE_PLL_SOURCE14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %PIXEL_RATE_PLL_SOURCE14, align 4
  %call15 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %19, i32 noundef %23, i32 noundef 2, i8 noundef zeroext %27, i32 noundef %31, i32 noundef %sub, i32 noundef %conv, i32 noundef %35, i32 noundef 0) #4
  %36 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hws, align 8
  %38 = ptrtoint ptr %regs7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs7, align 4
  %arrayidx19 = getelementptr %struct.dce_hwseq_registers, ptr %39, i32 0, i32 7, i32 %tg_inst
  %40 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx19, align 4
  %42 = ptrtoint ptr %shifts9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shifts9, align 8
  %DP_DTO0_ENABLE21 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %DP_DTO0_ENABLE21 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %DP_DTO0_ENABLE21, align 1
  %46 = ptrtoint ptr %masks10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %masks10, align 4
  %DP_DTO0_ENABLE23 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %DP_DTO0_ENABLE23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %DP_DTO0_ENABLE23, align 4
  %call24 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %37, i32 noundef %41, i32 noundef 1, i8 noundef zeroext %45, i32 noundef %49, i32 noundef 0) #4
  br label %if.end66

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp27 = icmp ult i32 %1, 4
  br i1 %cmp27, label %if.then29, label %do.body

if.then29:                                        ; preds = %if.else25
  %sub32 = add nsw i32 %1, -1
  %50 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hws, align 8
  %regs34 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 1
  %52 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs34, align 4
  %arrayidx36 = getelementptr %struct.dce_hwseq_registers, ptr %53, i32 0, i32 7, i32 %tg_inst
  %54 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx36, align 4
  %shifts37 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 2
  %56 = ptrtoint ptr %shifts37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %shifts37, align 8
  %PIXEL_RATE_SOURCE = getelementptr inbounds %struct.dce_hwseq_shift, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %PIXEL_RATE_SOURCE to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %PIXEL_RATE_SOURCE, align 1
  %masks38 = getelementptr inbounds %struct.dce_hwseq, ptr %hws, i32 0, i32 3
  %60 = ptrtoint ptr %masks38 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %masks38, align 4
  %PIXEL_RATE_SOURCE39 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %PIXEL_RATE_SOURCE39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %PIXEL_RATE_SOURCE39, align 4
  %DP_DTO0_ENABLE41 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %57, i32 0, i32 12
  %64 = ptrtoint ptr %DP_DTO0_ENABLE41 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %DP_DTO0_ENABLE41, align 1
  %conv42 = zext i8 %65 to i32
  %DP_DTO0_ENABLE44 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %61, i32 0, i32 12
  %66 = ptrtoint ptr %DP_DTO0_ENABLE44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %DP_DTO0_ENABLE44, align 4
  %call45 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %51, i32 noundef %55, i32 noundef 2, i8 noundef zeroext %59, i32 noundef %63, i32 noundef %sub32, i32 noundef %conv42, i32 noundef %67, i32 noundef 0) #4
  %68 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs34, align 4
  %arrayidx48 = getelementptr %struct.dce_hwseq_registers, ptr %69, i32 0, i32 8, i32 %tg_inst
  %70 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool49.not = icmp eq i32 %71, 0
  br i1 %tobool49.not, label %if.then29.if.end66_crit_edge, label %if.then50

if.then29.if.end66_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then50:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hws, align 8
  %74 = ptrtoint ptr %shifts37 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shifts37, align 8
  %PIXEL_RATE_PLL_SOURCE56 = getelementptr inbounds %struct.dce_hwseq_shift, ptr %75, i32 0, i32 15
  %76 = ptrtoint ptr %PIXEL_RATE_PLL_SOURCE56 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %PIXEL_RATE_PLL_SOURCE56, align 1
  %78 = ptrtoint ptr %masks38 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %masks38, align 4
  %PIXEL_RATE_PLL_SOURCE58 = getelementptr inbounds %struct.dce_hwseq_mask, ptr %79, i32 0, i32 15
  %80 = ptrtoint ptr %PIXEL_RATE_PLL_SOURCE58 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %PIXEL_RATE_PLL_SOURCE58, align 4
  %call59 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %73, i32 noundef %71, i32 noundef 1, i8 noundef zeroext %77, i32 noundef %81, i32 noundef 1) #4
  br label %if.end66

do.body:                                          ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %tg_inst) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dce_crtc_switch_to_clk_src, i32 noundef 205) #4
  tail call void @kgdb_breakpoint() #4
  br label %if.end66

if.end66:                                         ; preds = %do.body, %if.then50, %if.then29.if.end66_crit_edge, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dce_use_lut(i32 noundef %format) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %format.off = add i32 %format, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %format.off)
  %switch = icmp ult i32 %format.off, 2
  ret i1 %switch
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__func__.dce_pipe_control_lock, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.c", i32 82, i32 21}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.c", i32 204, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.dce_crtc_switch_to_clk_src, !3, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
