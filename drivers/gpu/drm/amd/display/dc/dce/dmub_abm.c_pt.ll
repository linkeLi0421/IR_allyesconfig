; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dmub_abm.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_abm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.abm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.abm = type { ptr, ptr, i8 }
%struct.dce_abm = type { %struct.abm, ptr, ptr, ptr }
%union.dmub_rb_cmd = type { %struct.dmub_rb_cmd_common }
%struct.dmub_rb_cmd_common = type { %struct.dmub_cmd_header, [60 x i8] }
%struct.dmub_cmd_header = type { i32 }
%struct.dce_abm_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_abm_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_abm_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dmub_rb_cmd_abm_set_pwm_frac = type { %struct.dmub_cmd_header, %struct.dmub_cmd_abm_set_pwm_frac_data }
%struct.dmub_cmd_abm_set_pwm_frac_data = type { i32, i8, i8, [2 x i8] }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.14 }
%struct.anon.14 = type { i8 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.43 }
%struct.anon.43 = type { i8 }
%union.max_lane_count = type { %struct.anon.44 }
%struct.anon.44 = type { i8 }
%union.max_down_spread = type { %struct.anon.45 }
%struct.anon.45 = type { i8 }
%union.dprx_feature = type { %struct.anon.46 }
%struct.anon.46 = type { i8 }
%union.sink_count = type { %struct.anon.47 }
%struct.anon.47 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.48 }
%struct.anon.48 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.49 }
%struct.anon.49 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
%struct.dpcd_dsc_support = type { i8 }
%struct.dpcd_dsc_algorithm_revision = type { i8 }
%struct.dpcd_dsc_rc_buffer_block_size = type { i8 }
%struct.dpcd_dsc_slice_capability1 = type { i8 }
%struct.dpcd_dsc_line_buffer_bit_depth = type { i8 }
%struct.dpcd_dsc_block_prediction_support = type { i8 }
%struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor = type { i8, i8, i8 }
%struct.dpcd_dsc_decoder_color_format_capabilities = type { i8 }
%struct.dpcd_dsc_decoder_color_depth_capabilities = type { i8 }
%struct.dpcd_peak_dsc_throughput_dsc_sink = type { i8 }
%struct.dpcd_dsc_slice_capabilities_2 = type { i8 }
%struct.dpcd_bits_per_pixel_increment = type { i8 }
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.50 }
%struct.anon.50 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.51 }
%struct.anon.51 = type { i8 }
%union.dpia_info = type { %struct.anon.52 }
%struct.anon.52 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.53 }
%struct.anon.53 = type { i8, i8, %struct.anon.54 }
%struct.anon.54 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.55 }
%struct.anon.55 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.56 }
%struct.anon.56 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.dmub_rb_cmd_abm_set_level = type { %struct.dmub_cmd_header, %struct.dmub_cmd_abm_set_level_data }
%struct.dmub_cmd_abm_set_level_data = type { i32, i8, i8, [2 x i8] }
%struct.dmub_srv = type { i32, ptr, i32, i8, %struct.dmub_fb, ptr, ptr, ptr, %struct.dmub_srv_base_funcs, %struct.dmub_srv_hw_funcs, %struct.dmub_rb, i32, %struct.dmub_rb, %struct.dmub_rb, i8, i8, i64, i64, i32, %struct.dmub_feature_caps }
%struct.dmub_fb = type { ptr, i64, i32 }
%struct.dmub_srv_base_funcs = type { ptr, ptr }
%struct.dmub_srv_hw_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmub_rb = type { ptr, i32, i32, i32, ptr, ptr }
%struct.dmub_feature_caps = type { i8, [7 x i8] }
%struct.dmub_rb_cmd_abm_init_config = type <{ %struct.dmub_cmd_header, %struct.dmub_cmd_abm_init_config_data }>
%struct.dmub_cmd_abm_init_config_data = type <{ %union.dmub_addr, i16, i8, i8, [2 x i8] }>
%union.dmub_addr = type { i64 }
%struct.dmub_rb_cmd_abm_pause = type { %struct.dmub_cmd_header, %struct.dmub_cmd_abm_pause_data }
%struct.dmub_cmd_abm_pause_data = type { i8, i8, i8, [1 x i8] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dmub_abm_create = private unnamed_addr constant [16 x i8] c"dmub_abm_create\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@abm_funcs = internal constant { %struct.abm_funcs, [60 x i8] } { %struct.abm_funcs { ptr @dmub_abm_init, ptr @dmub_abm_set_level, ptr null, ptr null, ptr null, ptr @dmub_abm_get_current_backlight, ptr @dmub_abm_get_target_backlight, ptr @dmub_abm_init_config, ptr @dmub_abm_set_pause }, [60 x i8] zeroinitializer }, align 32
@__func__.dmub_abm_init = private unnamed_addr constant [14 x i8] c"dmub_abm_init\00", align 1
@__func__.dmub_abm_get_current_backlight = private unnamed_addr constant [31 x i8] c"dmub_abm_get_current_backlight\00", align 1
@__func__.dmub_abm_get_target_backlight = private unnamed_addr constant [30 x i8] c"dmub_abm_get_target_backlight\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 262, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"abm_funcs\00", align 1
@___asan_gen_.5 = private constant [59 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_abm.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 226, i32 31 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @abm_funcs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dmub_abm_create(ptr noundef %ctx, ptr noundef %regs, ptr noundef %abm_shift, ptr noundef %abm_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #7
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dmub_abm_create, i32 noundef 262) #4
  tail call void @kgdb_breakpoint() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %call7.i.i, align 8
  %funcs.i = getelementptr inbounds %struct.abm, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @abm_funcs, ptr %funcs.i, align 4
  %dmcu_is_running.i = getelementptr inbounds %struct.abm, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %dmcu_is_running.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %dmcu_is_running.i, align 8
  %regs3.i = getelementptr inbounds %struct.dce_abm, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %regs3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regs, ptr %regs3.i, align 4
  %abm_shift4.i = getelementptr inbounds %struct.dce_abm, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %abm_shift4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %abm_shift, ptr %abm_shift4.i, align 8
  %abm_mask5.i = getelementptr inbounds %struct.dce_abm, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %abm_mask5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %abm_mask, ptr %abm_mask5.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_abm_destroy(ptr nocapture noundef %abm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  tail call void @kfree(ptr noundef %1) #4
  %2 = ptrtoint ptr %abm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %abm, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmub_abm_init(ptr nocapture noundef readonly %abm, i32 noundef %backlight) #0 align 64 {
entry:
  %cmd.i = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void @dm_write_reg_func(ptr noundef %1, i32 noundef %5, i32 noundef 3, ptr noundef nonnull @__func__.dmub_abm_init) #4
  %6 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %abm, align 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call void @dm_write_reg_func(ptr noundef %7, i32 noundef %11, i32 noundef 1, ptr noundef nonnull @__func__.dmub_abm_init) #4
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
  tail call void @dm_write_reg_func(ptr noundef %13, i32 noundef %17, i32 noundef 3, ptr noundef nonnull @__func__.dmub_abm_init) #4
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
  tail call void @dm_write_reg_func(ptr noundef %19, i32 noundef %23, i32 noundef 1, ptr noundef nonnull @__func__.dmub_abm_init) #4
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
  tail call void @dm_write_reg_func(ptr noundef %25, i32 noundef %29, i32 noundef 1, ptr noundef nonnull @__func__.dmub_abm_init) #4
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
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %31, i32 noundef %35, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %39, i32 noundef %43, i32 noundef 0, i32 noundef %conv, i32 noundef %47, i32 noundef 1, i32 noundef %conv23, i32 noundef %51, i32 noundef 0) #4
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
  %call40 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %53, i32 noundef %57, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %61, i32 noundef %65, i32 noundef 2, i32 noundef %conv33, i32 noundef %69, i32 noundef 4, i32 noundef %conv37, i32 noundef %73, i32 noundef 2) #4
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
  %call48 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %75, i32 noundef %79, i32 noundef 1, i8 noundef zeroext %83, i32 noundef %87, i32 noundef %backlight) #4
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
  %call56 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %89, i32 noundef %93, i32 noundef 1, i8 noundef zeroext %97, i32 noundef %101, i32 noundef %backlight) #4
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
  %call64 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %103, i32 noundef %107, i32 noundef 1, i8 noundef zeroext %111, i32 noundef %115, i32 noundef %backlight) #4
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
  %call75 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %117, i32 noundef %121, i32 noundef 2, i8 noundef zeroext %125, i32 noundef %129, i32 noundef 0, i32 noundef %conv72, i32 noundef %133, i32 noundef 1000) #4
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
  %call90 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %135, i32 noundef %139, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %143, i32 noundef %147, i32 noundef 1, i32 noundef %conv83, i32 noundef %151, i32 noundef 1, i32 noundef %conv87, i32 noundef %155, i32 noundef 1) #4
  %156 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %abm, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 8
  %disable_fractional_pwm.i = getelementptr inbounds %struct.dc, ptr %159, i32 0, i32 4, i32 3
  %160 = ptrtoint ptr %disable_fractional_pwm.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %disable_fractional_pwm.i, align 1, !range !20
  %dc_edp_id_count.i = getelementptr inbounds %struct.dc_context, ptr %157, i32 0, i32 12
  %162 = ptrtoint ptr %dc_edp_id_count.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dc_edp_id_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp328.not.i = icmp eq i32 %163, 0
  br i1 %cmp328.not.i, label %entry.dmub_abm_enable_fractional_pwm.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dmub_abm_enable_fractional_pwm.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %dmub_abm_enable_fractional_pwm.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %panel_mask.030.i = phi i8 [ %conv6.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.029.i
  %164 = trunc i32 %shl.i to i8
  %conv6.i = or i8 %panel_mask.030.i, %164
  %inc.i = add nuw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %163
  br i1 %exitcond.not.i, label %for.body.i.dmub_abm_enable_fractional_pwm.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.dmub_abm_enable_fractional_pwm.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dmub_abm_enable_fractional_pwm.exit

dmub_abm_enable_fractional_pwm.exit:              ; preds = %for.body.i.dmub_abm_enable_fractional_pwm.exit_crit_edge, %entry.dmub_abm_enable_fractional_pwm.exit_crit_edge
  %panel_mask.0.lcssa.i = phi i8 [ 0, %entry.dmub_abm_enable_fractional_pwm.exit_crit_edge ], [ %conv6.i, %for.body.i.dmub_abm_enable_fractional_pwm.exit_crit_edge ]
  %165 = xor i8 %161, 1
  %166 = zext i8 %165 to i32
  %167 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %168 = call ptr @memset(ptr %167, i32 0, i32 56)
  %abm_set_pwm_frac_data.i = getelementptr inbounds %struct.dmub_rb_cmd_abm_set_pwm_frac, ptr %cmd.i, i32 0, i32 1
  %169 = ptrtoint ptr %abm_set_pwm_frac_data.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %166, ptr %abm_set_pwm_frac_data.i, align 4
  %170 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %167, align 4
  %panel_mask14.i = getelementptr inbounds %struct.dmub_rb_cmd_abm_set_pwm_frac, ptr %cmd.i, i32 0, i32 1, i32 2
  %171 = ptrtoint ptr %panel_mask14.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %panel_mask.0.lcssa.i, ptr %panel_mask14.i, align 1
  %172 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1107623968, ptr %cmd.i, align 4
  %dmub_srv.i = getelementptr inbounds %struct.dc_context, ptr %157, i32 0, i32 14
  %173 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dmub_srv.i, align 8
  call void @dc_dmub_srv_cmd_queue(ptr noundef %174, ptr noundef nonnull %cmd.i) #4
  %175 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dmub_srv.i, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %176) #4
  %177 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dmub_srv.i, align 8
  call void @dc_dmub_srv_wait_idle(ptr noundef %178) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dmub_abm_set_level(ptr nocapture noundef readonly %abm, i32 noundef %level) #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  %edp_links = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edp_links) #4
  %2 = ptrtoint ptr %edp_links to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %edp_links, align 4, !annotation !21
  %3 = getelementptr inbounds [2 x ptr], ptr %edp_links, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !21
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %link_count.i = getelementptr inbounds %struct.dc, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %link_count.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %link_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp26.not.i = icmp eq i8 %8, 0
  br i1 %cmp26.not.i, label %entry.for.end_crit_edge, label %for.body.i.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.i.preheader:                             ; preds = %entry
  %conv.i = zext i8 %8 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %edp_num.0 = phi i32 [ %edp_num.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.027.i = phi i32 [ %inc15.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.dc, ptr %6, i32 0, i32 10, i32 %i.027.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %connector_signal.i = getelementptr inbounds %struct.dc_link, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %connector_signal.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %connector_signal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %cmp4.i = icmp eq i32 %12, 128
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  %arrayidx9.i = getelementptr ptr, ptr %edp_links, i32 %edp_num.0
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %arrayidx9.i, align 4
  %inc.i = add i32 %edp_num.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp10.i = icmp eq i32 %inc.i, 2
  br i1 %cmp10.i, label %if.then6.i.for.body.preheader_crit_edge, label %if.then6.i.for.inc.i_crit_edge

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then6.i.for.body.preheader_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

for.inc.i:                                        ; preds = %if.then6.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %edp_num.1 = phi i32 [ %edp_num.0, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then6.i.for.inc.i_crit_edge ], [ %edp_num.0, %if.end.i.for.inc.i_crit_edge ]
  %inc15.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not = icmp eq i32 %inc15.i, %conv.i
  br i1 %exitcond.not, label %get_edp_links.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

get_edp_links.exit:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %edp_num.1)
  %cmp26 = icmp sgt i32 %edp_num.1, 0
  br i1 %cmp26, label %get_edp_links.exit.for.body.preheader_crit_edge, label %get_edp_links.exit.for.end_crit_edge

get_edp_links.exit.for.end_crit_edge:             ; preds = %get_edp_links.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

get_edp_links.exit.for.body.preheader_crit_edge:  ; preds = %get_edp_links.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %get_edp_links.exit.for.body.preheader_crit_edge, %if.then6.i.for.body.preheader_crit_edge
  %edp_num.232 = phi i32 [ %edp_num.1, %get_edp_links.exit.for.body.preheader_crit_edge ], [ 2, %if.then6.i.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %panel_mask.028 = phi i8 [ %panel_mask.1, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.027 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [2 x ptr], ptr %edp_links, i32 0, i32 %i.027
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %link_status = getelementptr inbounds %struct.dc_link, ptr %15, i32 0, i32 56
  %16 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %link_status, align 8, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %shl = shl nuw i32 1, %i.027
  %18 = trunc i32 %shl to i8
  %conv2 = select i1 %tobool.not, i8 0, i8 %18
  %panel_mask.1 = or i8 %conv2, %panel_mask.028
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond29.not = icmp eq i32 %inc, %edp_num.232
  br i1 %exitcond29.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %get_edp_links.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %panel_mask.0.lcssa = phi i8 [ 0, %get_edp_links.exit.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ %panel_mask.1, %for.body.for.end_crit_edge ]
  %19 = getelementptr inbounds i8, ptr %cmd, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 56)
  %abm_set_level_data = getelementptr inbounds %struct.dmub_rb_cmd_abm_set_level, ptr %cmd, i32 0, i32 1
  %21 = ptrtoint ptr %abm_set_level_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %level, ptr %abm_set_level_data, align 4
  %version = getelementptr inbounds %struct.dmub_rb_cmd_abm_set_level, ptr %cmd, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %version, align 4
  %panel_mask10 = getelementptr inbounds %struct.dmub_rb_cmd_abm_set_level, ptr %cmd, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %panel_mask10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %panel_mask.0.lcssa, ptr %panel_mask10, align 1
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1107492896, ptr %cmd, align 4
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_queue(ptr noundef %26, ptr noundef nonnull %cmd) #4
  %27 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %28) #4
  %29 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_wait_idle(ptr noundef %30) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edp_links) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmub_abm_get_current_backlight(ptr nocapture noundef readonly %abm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @__func__.dmub_abm_get_current_backlight) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmub_abm_get_target_backlight(ptr nocapture noundef readonly %abm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call = tail call i32 @dm_read_reg_func(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @__func__.dmub_abm_get_target_backlight) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dmub_abm_init_config(ptr nocapture noundef readonly %abm, ptr nocapture noundef readonly %src, i32 noundef %bytes, i32 noundef %inst) #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %shl = shl nuw i32 1, %inst
  %conv = trunc i32 %shl to i8
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmub_srv, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %scratch_mem_fb = getelementptr inbounds %struct.dmub_srv, ptr %5, i32 0, i32 4
  tail call void @dmub_flush_buffer_mem(ptr noundef %scratch_mem_fb) #4
  %6 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmub_srv, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %scratch_mem_fb3 = getelementptr inbounds %struct.dmub_srv, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %scratch_mem_fb3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scratch_mem_fb3, align 8
  %12 = call ptr @memcpy(ptr %11, ptr %src, i32 %bytes)
  %13 = getelementptr inbounds i8, ptr %cmd, i32 16
  %14 = call ptr @memset(ptr %13, i32 0, i32 48)
  %15 = load ptr, ptr %dmub_srv, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %gpu_addr = getelementptr inbounds %struct.dmub_srv, ptr %17, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %gpu_addr, align 8
  %abm_init_config_data = getelementptr inbounds %struct.dmub_rb_cmd_abm_init_config, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %abm_init_config_data to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %abm_init_config_data, align 4
  %conv12 = trunc i32 %bytes to i16
  %bytes14 = getelementptr inbounds %struct.dmub_rb_cmd_abm_init_config, ptr %cmd, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %bytes14 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv12, ptr %bytes14, align 4
  %version = getelementptr inbounds %struct.dmub_rb_cmd_abm_init_config, ptr %cmd, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %version, align 2
  %panel_mask17 = getelementptr inbounds %struct.dmub_rb_cmd_abm_init_config, ptr %cmd, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %panel_mask17 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %panel_mask17, align 1
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1107296312, ptr %cmd, align 4
  call void @dc_dmub_srv_cmd_queue(ptr noundef %15, ptr noundef nonnull %cmd) #4
  %25 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %26) #4
  %27 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_wait_idle(ptr noundef %28) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dmub_abm_set_pause(ptr nocapture noundef readonly %abm, i1 noundef zeroext %pause, i32 noundef %panel_inst, i32 noundef %stream_inst) #0 align 64 {
entry:
  %cmd = alloca %union.dmub_rb_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %pause to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %shl = shl nuw i32 1, %panel_inst
  %conv = trunc i32 %shl to i8
  %2 = getelementptr inbounds i8, ptr %cmd, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %abm_pause_data = getelementptr inbounds %struct.dmub_rb_cmd_abm_pause, ptr %cmd, i32 0, i32 1
  %enable = getelementptr inbounds %struct.dmub_rb_cmd_abm_pause, ptr %cmd, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %enable, align 2
  %5 = ptrtoint ptr %abm_pause_data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %abm_pause_data, align 4
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1107689488, ptr %cmd, align 4
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_queue(ptr noundef %8, ptr noundef nonnull %cmd) #4
  %9 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %10) #4
  %11 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_wait_idle(ptr noundef %12) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_execute(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_wait_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_flush_buffer_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_abm.c", i32 262, i32 3}
!2 = !{ptr @__func__.dmub_abm_create, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @abm_funcs, !4, !"abm_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_abm.c", i32 226, i32 31}
!5 = !{ptr @__func__.dmub_abm_init, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_abm.c", i32 83, i32 2}
!7 = !{ptr @__func__.dmub_abm_get_current_backlight, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_abm.c", i32 123, i32 27}
!9 = !{ptr @__func__.dmub_abm_get_target_backlight, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_abm.c", i32 134, i32 27}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i8 0, i8 2}
!21 = !{!"auto-init"}
