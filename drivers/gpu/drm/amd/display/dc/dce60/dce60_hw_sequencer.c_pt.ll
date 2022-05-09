; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce60/dce60_hw_sequencer.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_hw_sequencer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.dc_phy_addr_space_config = type { %struct.anon.55, %struct.anon.56, i8, i8, i64 }
%struct.anon.55 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.56 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.69 }
%struct.anon.69 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dce_hwseq = type { ptr, ptr, ptr, ptr, %struct.dce_hwseq_wa, %struct.hwseq_wa_state, %struct.hwseq_private_funcs, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dce_hwseq_wa = type { i8, i8, i8, i8, i8, i8 }
%struct.hwseq_wa_state = type { i8, i8, i32 }
%struct.hwseq_private_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.large_integer = type { i64 }
%struct.compr_addr_and_pitch_params = type { i32, i32, i32 }
%struct.compressor = type { ptr, i32, i8, ptr, %union.anon.66, %union.fbc_physical_address, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.66 = type { i32 }
%union.fbc_physical_address = type { i64 }
%struct.compressor_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.62, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.63, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.62 = type { i8, [3 x i8] }
%struct.anon.63 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.60 }
%struct.dc_stream_status = type { i32, i32, i32, i32, %struct.timing_sync_info, [4 x ptr], i8 }
%struct.timing_sync_info = type { i32, i32, i8 }
%struct.resource_context = type { [6 x %struct.pipe_ctx], [12 x i8], [6 x i8], [7 x i8], i8, [6 x i8], %struct.link_enc_cfg_context }
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
%struct.link_enc_cfg_context = type { i32, [6 x %struct.link_enc_assignment], [7 x i32], [6 x %struct.link_enc_assignment] }
%struct.link_enc_assignment = type { i8, %struct.display_endpoint_id, i32, ptr }
%struct.display_endpoint_id = type { %struct.graphics_object_id, i32 }
%struct.bw_context = type { %union.bw_output, %struct.display_mode_lib }
%union.bw_output = type { %struct.dce_bw_output }
%struct.dce_bw_output = type { i8, i8, i8, i8, i8, [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], i32, i32, i32, i32, i32 }
%struct.dce_watermarks = type { i32, i32, i32, i32 }
%struct.display_mode_lib = type { %struct._vcs_dpi_ip_params_st, %struct._vcs_dpi_soc_bounding_box_st, i32, %struct.vba_vars_st, ptr, %struct.dml_funcs, [6 x %struct._vcs_dpi_display_e2e_pipe_params_st] }
%struct._vcs_dpi_ip_params_st = type { i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, double, double, double, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._vcs_dpi_soc_bounding_box_st = type { [9 x %struct._vcs_dpi_voltage_scaling_st], i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, double, double, i32, double, i8, double, double, i8, i8, i32 }
%struct._vcs_dpi_voltage_scaling_st = type { i32, double, double, double, double, double, double, double, double, double, double, double }
%struct.vba_vars_st = type { %struct._vcs_dpi_ip_params_st, %struct._vcs_dpi_soc_bounding_box_st, i32, i8, double, double, double, double, double, double, double, double, double, i8, double, i32, i32, double, double, double, double, double, double, double, i32, double, double, double, [8 x double], double, double, double, double, i32, i8, i8, i8, i8, i32, double, double, double, double, i8, i32, i8, i32, i32, i32, i32, [8 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, i8, double, i32, [8 x i32], double, i32, i32, i32, double, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, double, i32, i8, double, double, double, double, double, double, double, double, double, double, double, double, i8, i32, double, double, double, double, double, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], [8 x double], double, [8 x i32], [8 x double], [8 x i8], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], i8, [8 x i32], [8 x [2 x i32]], [8 x [2 x i32]], [8 x i8], [8 x i8], i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], double, double, i32, i32, i32, double, [9 x [2 x i32]], [9 x [2 x i32]], i32, i32, i8, double, i8, [8 x i8], double, double, double, double, double, double, double, double, double, double, double, double, double, [8 x double], [8 x i32], [8 x double], [8 x double], i32, double, [8 x %struct._vcs_dpi_display_e2e_pipe_params_st], i32, [8 x i32], i8, double, double, i32, i8, i8, [9 x double], [9 x [2 x double]], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], i32, i8, i8, double, i8, i8, i8, i8, [9 x i8], i32, double, double, [9 x [2 x [8 x i8]]], i8, i8, i8, i8, i8, i8, i8, [9 x i32], double, double, double, double, double, double, double, double, i32, i32, double, double, i32, [8 x double], [8 x double], [8 x double], [9 x [2 x double]], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, i32, double, double, double, double, double, double, [9 x [2 x double]], double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, [9 x [2 x double]], [9 x [2 x [8 x i32]]], [8 x i32], [9 x [8 x i32]], [8 x double], [9 x [2 x [8 x i32]]], [8 x i32], [8 x i32], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [8 x double], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x i8]]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x double]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i32]], [9 x [2 x i32]], [9 x [2 x i8]], [9 x [2 x double]], [9 x i8], [9 x i8], [9 x i8], [9 x i8], [9 x double], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x double]], [8 x double], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [8 x i8]], [9 x [8 x i32]], [9 x [8 x double]], [9 x [8 x double]], [9 x [8 x double]], [9 x [2 x i8]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x [8 x double]]], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x i8]], [9 x [8 x double]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x i32]], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x [8 x i8]]], [8 x double], double, double, [8 x double], [8 x double], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], double, double, [8 x double], [8 x double], [8 x double], [8 x i32], [8 x double], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], i8, [8 x i8], double, double, [9 x [2 x i32]], i8, [9 x i8], [8 x i32], [8 x double], [8 x i8], [8 x double], [8 x double], [9 x [2 x i32]], i32, i32, i32, i32, i32, double, double, i32, [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], double, i32, double, [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], i32, i32, double, [8 x double], [8 x double], [8 x double], i32, [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], double, [8 x i8], i32, double, double, double, [8 x i32], [8 x i32], [8 x i32], [9 x [2 x [8 x double]]], [8 x double], [9 x double], [9 x [2 x i8]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [8 x double], [8 x double], [8 x double], double, i32, double, i8, double, double, double, double, double, i8, [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], i8, i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], double, double, double, [8 x i8], i32, i8, double, double, [8 x double], [8 x double], [9 x double], i8, i8, i32, [8 x i32], [8 x i32], i32, [9 x [2 x i8]], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i8], [8 x i32], [8 x i32], [9 x double], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x i8]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x double]], [9 x [2 x double]], [9 x [2 x double]], [9 x [2 x double]], [8 x double], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], double, i32, i8, i8, i8, double, double, double, double, double, double, double, double, double, double, double, [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x i8], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [9 x [2 x i32]] }
%struct._vcs_dpi_display_e2e_pipe_params_st = type { %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_output_params_st, %struct._vcs_dpi_display_clocks_and_cfg_st }
%struct._vcs_dpi_display_pipe_params_st = type { %struct._vcs_dpi_display_pipe_source_params_st, %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_scaler_ratio_depth_st, %struct._vcs_dpi_scaler_taps_st }
%struct._vcs_dpi_display_pipe_source_params_st = type { i32, double, double, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, %struct._vcs_dpi_display_xfc_params_st, i8, i8 }
%struct._vcs_dpi_display_xfc_params_st = type { double, double, double, i32 }
%struct._vcs_dpi_display_pipe_dest_params_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, double, i8, i8, i32, i8, i32, i32 }
%struct._vcs_dpi_scaler_ratio_depth_st = type { double, double, double, double, double, double, double, double, i32, i32 }
%struct._vcs_dpi_scaler_taps_st = type { i32, i32, i32, i32 }
%struct._vcs_dpi_display_output_params_st = type { i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.writeback_st }
%struct.writeback_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double }
%struct._vcs_dpi_display_clocks_and_cfg_st = type { i32, double, double, double, double, double }
%struct.dml_funcs = type { ptr, ptr, ptr, ptr }
%struct.dm_pp_display_configuration = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [6 x %struct.dm_pp_single_disp_config], i8, i32 }
%struct.dm_pp_single_disp_config = type { i32, i8, i8, i8, i32, i32, i32, i32, %struct.dc_link_settings }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.60 = type { i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.36, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.18 }
%union.anon.18 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.19 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.19 = type { i8 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.24, i32, i32, i32, i32 }
%struct.anon.24 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.25 }
%struct.anon.25 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.36 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.mem_input_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_plane_state = type { %struct.dc_plane_address, %struct.dc_plane_flip_time, i8, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, ptr, ptr, ptr, %struct.dc_csc_transform, %struct.fixed31_32, %struct.fixed31_32, %struct.colorspace_transform, %struct.dc_hdr_static_metadata, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32, %union.surface_update_flags, i8, i8, %struct.dc_plane_status, ptr, i8, i32, %struct.kref }
%struct.dc_plane_address = type { i32, i8, %union.anon.26, %union.large_integer, i8 }
%union.anon.26 = type { %struct.anon.28 }
%struct.anon.28 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dc_plane_flip_time = type { [10 x i32], i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%union.dc_tiling_info = type { %struct.anon.31 }
%struct.anon.31 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_plane_dcc_param = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.dc_hdr_static_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.surface_update_flags = type { %struct.anon.35 }
%struct.anon.35 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.16 }
%struct.anon.16 = type { i8 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.41 }
%struct.anon.41 = type { i8 }
%union.max_lane_count = type { %struct.anon.42 }
%struct.anon.42 = type { i8 }
%union.max_down_spread = type { %struct.anon.43 }
%struct.anon.43 = type { i8 }
%union.dprx_feature = type { %struct.anon.44 }
%struct.anon.44 = type { i8 }
%union.sink_count = type { %struct.anon.45 }
%struct.anon.45 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.46 }
%struct.anon.46 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.47 }
%struct.anon.47 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.48 }
%struct.anon.48 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.49 }
%struct.anon.49 = type { i8 }
%union.dpia_info = type { %struct.anon.50 }
%struct.anon.50 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.51 }
%struct.anon.51 = type { i8, i8, %struct.anon.52 }
%struct.anon.52 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.53 }
%struct.anon.53 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.54 }
%struct.anon.54 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.tg_color = type { i16, i16, i16 }
%struct.default_adjustment = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.xfm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32 }
%struct.out_csc_color_matrix = type { i32, [12 x i16] }
%struct.mem_input = type { ptr, ptr, %struct.dc_plane_address, %struct.dc_plane_address, i32, %struct.stutter_modes }
%struct.stutter_modes = type { i8, i8, i8 }
%struct.transform_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.20 = type { i32, i32 }

@dce60_program_front_end_for_pipe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dce60_program_front_end_for_pipe\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_hw_sequencer.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"[SURFACE]:Pipe:%d %p: addr hi:0x%x, addr low:0x%x, src: %d, %d, %d, %d; dst: %d, %d, %d, %d;clip: %d, %d, %d, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dce60_program_front_end_for_pipe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"[SURFACE]:Pipe %d: width, height, x, y\0Aviewport:%d, %d, %d, %d\0Arecout:  %d, %d, %d, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 6, i64 7, i64 8]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 343, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [71 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_hw_sequencer.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 366, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce60_hw_sequencer_construct(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dce110_hw_sequencer_construct(ptr noundef %dc) #3
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %0 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwseq, align 4
  %enable_display_power_gating = getelementptr inbounds %struct.dce_hwseq, ptr %1, i32 0, i32 6, i32 11
  %2 = ptrtoint ptr %enable_display_power_gating to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce100_enable_display_power_gating, ptr %enable_display_power_gating, align 4
  %apply_ctx_for_surface = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 10
  %3 = ptrtoint ptr %apply_ctx_for_surface to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dce60_apply_ctx_for_surface, ptr %apply_ctx_for_surface, align 4
  %cursor_lock = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 24
  %4 = ptrtoint ptr %cursor_lock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dce60_pipe_control_lock, ptr %cursor_lock, align 4
  %pipe_control_lock = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 21
  %5 = ptrtoint ptr %pipe_control_lock to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dce60_pipe_control_lock, ptr %pipe_control_lock, align 4
  %prepare_bandwidth = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 39
  %6 = ptrtoint ptr %prepare_bandwidth to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dce100_prepare_bandwidth, ptr %prepare_bandwidth, align 4
  %optimize_bandwidth = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 41
  %7 = ptrtoint ptr %optimize_bandwidth to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dce100_optimize_bandwidth, ptr %optimize_bandwidth, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_hw_sequencer_construct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce100_enable_display_power_gating(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_apply_ctx_for_surface(ptr noundef %dc, ptr noundef readnone %stream, i32 noundef %num_planes, ptr noundef %context) #0 align 64 {
entry:
  %params.i = alloca %struct.compr_addr_and_pitch_params, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_planes)
  %cmp = icmp eq i32 %num_planes, 0
  br i1 %cmp, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

if.end:                                           ; preds = %entry
  %fbc_compressor = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 21
  %0 = ptrtoint ptr %fbc_compressor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbc_compressor, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %funcs = getelementptr inbounds %struct.compressor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %disable_fbc = getelementptr inbounds %struct.compressor_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %disable_fbc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_fbc, align 4
  tail call void %5(ptr noundef nonnull %1) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %6 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res_pool, align 8
  %pipe_count51 = getelementptr inbounds %struct.resource_pool, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %pipe_count51 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe_count51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp552.not = icmp eq i32 %9, 0
  br i1 %cmp552.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %update_plane_addr = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 17, i32 14
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %stream7 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.053, i32 1
  %10 = ptrtoint ptr %stream7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream7, align 4
  %cmp8.not = icmp eq ptr %11, %stream
  br i1 %cmp8.not, label %if.end10, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.053
  %mi = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.053, i32 2, i32 2
  %12 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mi, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %allocate_mem_input = getelementptr inbounds %struct.mem_input_funcs, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %allocate_mem_input to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %allocate_mem_input, align 4
  %18 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timing, align 8
  %20 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v_total, align 8
  %22 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pix_clk_100hz, align 8
  %div = udiv i32 %23, 10
  %24 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stream_count, align 8
  %conv = zext i8 %25 to i32
  tail call void %17(ptr noundef %13, i32 noundef %19, i32 noundef %21, i32 noundef %div, i32 noundef %conv) #3
  tail call fastcc void @dce60_program_front_end_for_pipe(ptr noundef %dc, ptr noundef %arrayidx)
  %26 = ptrtoint ptr %update_plane_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %update_plane_addr, align 4
  tail call void %27(ptr noundef %dc, ptr noundef %arrayidx) #3
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 8
  %visible.i = getelementptr inbounds %struct.dc_plane_state, ptr %29, i32 0, i32 29
  %30 = ptrtoint ptr %visible.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %visible.i, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  %tg.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.053, i32 3, i32 2
  %32 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tg.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %set_blank.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %set_blank.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_blank.i, align 4
  tail call void %37(ptr noundef %33, i1 noundef zeroext %tobool.not.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.053, 1
  %38 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pipe_count, align 4
  %cmp5 = icmp ult i32 %inc, %41
  br i1 %cmp5, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end4.for.end_crit_edge
  %.lcssa = phi ptr [ %7, %if.end4.for.end_crit_edge ], [ %39, %cleanup.for.end_crit_edge ]
  %42 = ptrtoint ptr %fbc_compressor to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fbc_compressor, align 4
  %tobool20.not = icmp eq ptr %43, null
  br i1 %tobool20.not, label %for.end.cleanup23_crit_edge, label %do.end43.i.i

for.end.cleanup23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

do.end43.i.i:                                     ; preds = %for.end
  %res_ctx1.i.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %underlay_pipe_index.i.i = getelementptr inbounds %struct.resource_pool, ptr %.lcssa, i32 0, i32 20
  %44 = ptrtoint ptr %underlay_pipe_index.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %underlay_pipe_index.i.i, align 4
  %ctx.i.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %46 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx.i.i, align 8
  %fbc_gpu_addr.i.i = getelementptr inbounds %struct.dc_context, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %fbc_gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %fbc_gpu_addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %tobool44.not.i.i = icmp eq i64 %49, 0
  br i1 %tobool44.not.i.i, label %do.end43.i.i.cleanup23_crit_edge, label %if.end46.i.i

do.end43.i.i.cleanup23_crit_edge:                 ; preds = %do.end43.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

if.end46.i.i:                                     ; preds = %do.end43.i.i
  %stream_count.i.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %50 = ptrtoint ptr %stream_count.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %stream_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp.not.i.i = icmp eq i8 %51, 1
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %if.end46.i.i.cleanup23_crit_edge

if.end46.i.i.cleanup23_crit_edge:                 ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

for.cond.preheader.i.i:                           ; preds = %if.end46.i.i
  %52 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %res_pool, align 8
  %pipe_count.i.i = getelementptr inbounds %struct.resource_pool, ptr %53, i32 0, i32 19
  %54 = ptrtoint ptr %pipe_count.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pipe_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp51125.not.i.i = icmp eq i32 %55, 0
  br i1 %cmp51125.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.0127.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i.i, i32 0, i32 %i.0127.i.i
  %stream.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i.i, i32 0, i32 %i.0127.i.i, i32 1
  %56 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stream.i.i, align 4
  %tobool54.not.i.i = icmp eq ptr %57, null
  %tobool58.not.i.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond.i = select i1 %tobool54.not.i.i, i1 true, i1 %tobool58.not.i.i
  br i1 %or.cond.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end60.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

if.end60.i.i:                                     ; preds = %for.body.i.i
  %pipe_idx61.i.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i.i, i32 0, i32 %i.0127.i.i, i32 7
  %58 = ptrtoint ptr %pipe_idx61.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pipe_idx61.i.i, align 8
  %conv62.i.i = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv62.i.i)
  %cmp63.not.i.i = icmp eq i32 %45, %conv62.i.i
  br i1 %cmp63.not.i.i, label %if.end60.i.i.for.inc.i.i_crit_edge, label %if.end60.i.i.for.end.i.i_crit_edge

if.end60.i.i.for.end.i.i_crit_edge:               ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i.i

if.end60.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end60.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.0127.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %55
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup23_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

for.inc.i.i.cleanup23_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

for.end.i.i:                                      ; preds = %if.end60.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %pipe_idx.0.i = phi i32 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %i.0127.i.i, %if.end60.i.i.for.end.i.i_crit_edge ]
  %pipe_ctx.2.i.i = phi ptr [ null, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %arrayidx.i.i, %if.end60.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pipe_idx.0.i, i32 %55)
  %cmp70.i.i = icmp eq i32 %pipe_idx.0.i, %55
  br i1 %cmp70.i.i, label %for.end.i.i.cleanup23_crit_edge, label %if.end73.i.i

for.end.i.i.cleanup23_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

if.end73.i.i:                                     ; preds = %for.end.i.i
  %stream74.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx.2.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %stream74.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %stream74.i.i, align 4
  %link.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %link.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %link.i.i, align 4
  %tobool75.not.i.i = icmp eq ptr %63, null
  br i1 %tobool75.not.i.i, label %if.end73.i.i.cleanup23_crit_edge, label %if.end77.i.i

if.end73.i.i.cleanup23_crit_edge:                 ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

if.end77.i.i:                                     ; preds = %if.end73.i.i
  %connector_signal.i.i = getelementptr inbounds %struct.dc_link, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %connector_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %connector_signal.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %65)
  %cmp80.not.i.i = icmp eq i32 %65, 128
  br i1 %cmp80.not.i.i, label %if.end83.i.i, label %if.end77.i.i.cleanup23_crit_edge

if.end77.i.i.cleanup23_crit_edge:                 ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

if.end83.i.i:                                     ; preds = %if.end77.i.i
  %psr_settings.i.i = getelementptr inbounds %struct.dc_link, ptr %63, i32 0, i32 50
  %66 = ptrtoint ptr %psr_settings.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %psr_settings.i.i, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool86.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool86.not.i.i, label %if.end88.i.i, label %if.end83.i.i.cleanup23_crit_edge

if.end83.i.i.cleanup23_crit_edge:                 ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

if.end88.i.i:                                     ; preds = %if.end83.i.i
  %68 = ptrtoint ptr %pipe_ctx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pipe_ctx.2.i.i, align 8
  %tobool89.not.i.i = icmp eq ptr %69, null
  br i1 %tobool89.not.i.i, label %if.end88.i.i.cleanup23_crit_edge, label %dce60_should_enable_fbc.exit.i

if.end88.i.i.cleanup23_crit_edge:                 ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

dce60_should_enable_fbc.exit.i:                   ; preds = %if.end88.i.i
  %array_mode.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %69, i32 0, i32 8, i32 0, i32 12
  %70 = ptrtoint ptr %array_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %array_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp93.i.not.i = icmp eq i32 %71, 0
  br i1 %cmp93.i.not.i, label %dce60_should_enable_fbc.exit.i.cleanup23_crit_edge, label %if.then.i

dce60_should_enable_fbc.exit.i.cleanup23_crit_edge: ; preds = %dce60_should_enable_fbc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup23

if.then.i:                                        ; preds = %dce60_should_enable_fbc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params.i) #3
  %72 = ptrtoint ptr %fbc_compressor to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fbc_compressor, align 4
  %stream.i = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i.i, i32 0, i32 %pipe_idx.0.i, i32 1
  %74 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %stream.i, align 4
  %h_addressable.i = getelementptr inbounds %struct.dc_stream_state, ptr %75, i32 0, i32 5, i32 2
  %76 = ptrtoint ptr %h_addressable.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %h_addressable.i, align 8
  %source_view_width.i = getelementptr inbounds %struct.compr_addr_and_pitch_params, ptr %params.i, i32 0, i32 1
  %78 = ptrtoint ptr %source_view_width.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %source_view_width.i, align 4
  %v_addressable.i = getelementptr inbounds %struct.dc_stream_state, ptr %75, i32 0, i32 5, i32 8
  %79 = ptrtoint ptr %v_addressable.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %v_addressable.i, align 8
  %source_view_height.i = getelementptr inbounds %struct.compr_addr_and_pitch_params, ptr %params.i, i32 0, i32 2
  %81 = ptrtoint ptr %source_view_height.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %source_view_height.i, align 4
  %tg.i48 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx1.i.i, i32 0, i32 %pipe_idx.0.i, i32 3, i32 2
  %82 = ptrtoint ptr %tg.i48 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tg.i48, align 8
  %inst.i = getelementptr inbounds %struct.timing_generator, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %inst.i, align 4
  %86 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %params.i, align 4
  %compr_surface_address.i = getelementptr inbounds %struct.compressor, ptr %73, i32 0, i32 5
  %87 = ptrtoint ptr %compr_surface_address.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %49, ptr %compr_surface_address.i, align 8
  %funcs.i = getelementptr inbounds %struct.compressor, ptr %73, i32 0, i32 3
  %88 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %funcs.i, align 4
  %surface_address_and_pitch.i = getelementptr inbounds %struct.compressor_funcs, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %surface_address_and_pitch.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %surface_address_and_pitch.i, align 4
  call void %91(ptr noundef %73, ptr noundef nonnull %params.i) #3
  %92 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %funcs.i, align 4
  %set_fbc_invalidation_triggers.i = getelementptr inbounds %struct.compressor_funcs, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %set_fbc_invalidation_triggers.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_fbc_invalidation_triggers.i, align 4
  call void %95(ptr noundef %73, i32 noundef 1) #3
  %96 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %funcs.i, align 4
  %enable_fbc.i = getelementptr inbounds %struct.compressor_funcs, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %enable_fbc.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %enable_fbc.i, align 4
  call void %99(ptr noundef %73, ptr noundef nonnull %params.i) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params.i) #3
  br label %cleanup23

cleanup23:                                        ; preds = %if.then.i, %dce60_should_enable_fbc.exit.i.cleanup23_crit_edge, %if.end88.i.i.cleanup23_crit_edge, %if.end83.i.i.cleanup23_crit_edge, %if.end77.i.i.cleanup23_crit_edge, %if.end73.i.i.cleanup23_crit_edge, %for.end.i.i.cleanup23_crit_edge, %for.inc.i.i.cleanup23_crit_edge, %if.end46.i.i.cleanup23_crit_edge, %do.end43.i.i.cleanup23_crit_edge, %for.end.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce60_pipe_control_lock(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce100_prepare_bandwidth(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce100_optimize_bandwidth(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce60_program_front_end_for_pipe(ptr noundef %dc, ptr noundef %pipe_ctx) unnamed_addr #0 align 64 {
entry:
  %color.i = alloca %struct.tg_color, align 2
  %default_adjust.i = alloca %struct.default_adjustment, align 4
  %adjust = alloca %struct.xfm_grph_csc_adjustment, align 8
  %tbl_entry = alloca %struct.out_csc_color_matrix, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mi1 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %mi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mi1, align 4
  %2 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %adjust) #3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tbl_entry) #3
  %hwseq = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 18
  %4 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwseq, align 4
  %6 = call ptr @memset(ptr %tbl_entry, i32 0, i32 28)
  %gamut_adjust_type = getelementptr inbounds %struct.xfm_grph_csc_adjustment, ptr %adjust, i32 0, i32 1
  %inst = getelementptr inbounds %struct.mem_input, ptr %1, i32 0, i32 4
  %7 = call ptr @memset(ptr %adjust, i32 0, i32 104)
  %8 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inst, align 8
  tail call void @dce_enable_fe_clock(ptr noundef %5, i32 noundef %9, i1 noundef zeroext true) #3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %default_adjust.i) #3
  %10 = getelementptr inbounds i8, ptr %default_adjust.i, i32 24
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %10, align 4
  %12 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pipe_ctx, align 8
  %color_space.i = getelementptr inbounds %struct.dc_plane_state, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %color_space.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %color_space.i, align 8
  %in_color_space.i = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust.i, i32 0, i32 2
  %16 = ptrtoint ptr %in_color_space.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %in_color_space.i, align 4
  %stream.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %17 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream.i, align 4
  %output_color_space.i = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %output_color_space.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output_color_space.i, align 4
  %out_color_space.i = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust.i, i32 0, i32 1
  %21 = ptrtoint ptr %out_color_space.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %out_color_space.i, align 4
  %csc_adjust_type.i = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust.i, i32 0, i32 5
  %22 = ptrtoint ptr %csc_adjust_type.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %csc_adjust_type.i, align 4
  %format.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 9
  %23 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %format.i, align 8
  %surface_pixel_format.i = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust.i, i32 0, i32 4
  %25 = ptrtoint ptr %surface_pixel_format.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %surface_pixel_format.i, align 4
  %display_color_depth.i = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 5, i32 16
  %26 = ptrtoint ptr %display_color_depth.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %display_color_depth.i, align 8
  %color_depth.i = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust.i, i32 0, i32 3
  %28 = ptrtoint ptr %color_depth.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %color_depth.i, align 4
  %depth.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 10, i32 4
  %29 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %depth.i, align 4
  %31 = ptrtoint ptr %default_adjust.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %default_adjust.i, align 4
  %xfm.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xfm.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %opp_set_csc_default.i = getelementptr inbounds %struct.transform_funcs, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %opp_set_csc_default.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %opp_set_csc_default.i, align 4
  call void %37(ptr noundef %33, ptr noundef nonnull %default_adjust.i) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %default_adjust.i) #3
  %38 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stream.i, align 4
  %enable_adjustment = getelementptr inbounds %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 1
  %40 = ptrtoint ptr %enable_adjustment to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %enable_adjustment, align 8, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not = icmp eq i8 %41, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %42 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 11
  %43 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 10
  %44 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 9
  %45 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 8
  %46 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 7
  %47 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 6
  %48 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 5
  %49 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 4
  %50 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 3
  %51 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 2
  %52 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 1
  %53 = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1
  %output_color_space = getelementptr inbounds %struct.dc_stream_state, ptr %39, i32 0, i32 20
  %54 = ptrtoint ptr %output_color_space to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %output_color_space, align 4
  %56 = ptrtoint ptr %tbl_entry to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tbl_entry, align 4
  %csc_color_matrix9 = getelementptr inbounds %struct.dc_stream_state, ptr %39, i32 0, i32 19
  %57 = ptrtoint ptr %csc_color_matrix9 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %csc_color_matrix9, align 2
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %53, align 4
  %arrayidx.1 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.1, align 2
  %62 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %52, align 2
  %arrayidx.2 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.2, align 2
  %65 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %51, align 4
  %arrayidx.3 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.3, align 2
  %68 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %50, align 2
  %arrayidx.4 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 4
  %69 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.4, align 2
  %71 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %49, align 4
  %arrayidx.5 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 5
  %72 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.5, align 2
  %74 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %48, align 2
  %arrayidx.6 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 6
  %75 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.6, align 2
  %77 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %47, align 4
  %arrayidx.7 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 7
  %78 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx.7, align 2
  %80 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %46, align 2
  %arrayidx.8 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 8
  %81 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.8, align 2
  %83 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %45, align 4
  %arrayidx.9 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 9
  %84 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.9, align 2
  %86 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %44, align 2
  %arrayidx.10 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 10
  %87 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.10, align 2
  %89 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %43, align 4
  %arrayidx.11 = getelementptr %struct.dc_stream_state, ptr %39, i32 0, i32 19, i32 0, i32 11
  %90 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.11, align 2
  %92 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %42, align 2
  %93 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %xfm.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %opp_set_csc_adjustment = getelementptr inbounds %struct.transform_funcs, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %opp_set_csc_adjustment to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %opp_set_csc_adjustment, align 4
  call void %98(ptr noundef %94, ptr noundef nonnull %tbl_entry) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %99 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stream.i, align 4
  %enable_remap = getelementptr inbounds %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 1
  %101 = ptrtoint ptr %enable_remap to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %enable_remap, align 8, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool15.not = icmp eq i8 %102, 0
  br i1 %tobool15.not, label %if.end.if.end33_crit_edge, label %if.then19

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %103 = ptrtoint ptr %gamut_adjust_type to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %gamut_adjust_type, align 8
  %gamut_remap_matrix27 = getelementptr inbounds %struct.dc_stream_state, ptr %100, i32 0, i32 18
  %104 = ptrtoint ptr %gamut_remap_matrix27 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %gamut_remap_matrix27, align 8
  %106 = ptrtoint ptr %adjust to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %adjust, align 8
  %arrayidx25.1 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 1
  %arrayidx29.1 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 1
  %107 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx29.1, align 8
  %109 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %arrayidx25.1, align 8
  %arrayidx25.2 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 2
  %arrayidx29.2 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 2
  %110 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx29.2, align 8
  %112 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %arrayidx25.2, align 8
  %arrayidx25.3 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 3
  %arrayidx29.3 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 3
  %113 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx29.3, align 8
  %115 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %arrayidx25.3, align 8
  %arrayidx25.4 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 4
  %arrayidx29.4 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 4
  %116 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx29.4, align 8
  %118 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %arrayidx25.4, align 8
  %arrayidx25.5 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 5
  %arrayidx29.5 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 5
  %119 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx29.5, align 8
  %121 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %arrayidx25.5, align 8
  %arrayidx25.6 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 6
  %arrayidx29.6 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 6
  %122 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx29.6, align 8
  %124 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %arrayidx25.6, align 8
  %arrayidx25.7 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 7
  %arrayidx29.7 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 7
  %125 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %arrayidx29.7, align 8
  %127 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %arrayidx25.7, align 8
  %arrayidx25.8 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 8
  %arrayidx29.8 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 8
  %128 = ptrtoint ptr %arrayidx29.8 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx29.8, align 8
  %130 = ptrtoint ptr %arrayidx25.8 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %arrayidx25.8, align 8
  %arrayidx25.9 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 9
  %arrayidx29.9 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 9
  %131 = ptrtoint ptr %arrayidx29.9 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx29.9, align 8
  %133 = ptrtoint ptr %arrayidx25.9 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %arrayidx25.9, align 8
  %arrayidx25.10 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 10
  %arrayidx29.10 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 10
  %134 = ptrtoint ptr %arrayidx29.10 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx29.10, align 8
  %136 = ptrtoint ptr %arrayidx25.10 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %arrayidx25.10, align 8
  %arrayidx25.11 = getelementptr inbounds [12 x %struct.fixed31_32], ptr %adjust, i32 0, i32 11
  %arrayidx29.11 = getelementptr %struct.dc_stream_state, ptr %100, i32 0, i32 18, i32 0, i32 11
  %137 = ptrtoint ptr %arrayidx29.11 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %arrayidx29.11, align 8
  %139 = ptrtoint ptr %arrayidx25.11 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %arrayidx25.11, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then19, %if.end.if.end33_crit_edge
  %140 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %xfm.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 8
  %transform_set_gamut_remap = getelementptr inbounds %struct.transform_funcs, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %transform_set_gamut_remap to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %transform_set_gamut_remap, align 4
  call void %145(ptr noundef %141, ptr noundef nonnull %adjust) #3
  %bottom_pipe = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 10
  %146 = ptrtoint ptr %bottom_pipe to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bottom_pipe, align 8
  %cmp39 = icmp ne ptr %147, null
  %lb_params = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 10
  %frombool = zext i1 %cmp39 to i8
  %148 = ptrtoint ptr %lb_params to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %frombool, ptr %lb_params, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %color.i) #3
  %149 = call ptr @memset(ptr %color.i, i32 0, i32 6)
  %visual_confirm.i = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 2
  %150 = ptrtoint ptr %visual_confirm.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %visual_confirm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp.i = icmp eq i32 %151, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end33
  %tg.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %152 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tg.i.i, align 8
  %inst.i.i = getelementptr inbounds %struct.timing_generator, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %inst.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %inst.i.i, align 4
  %sub.i.i = sub i32 4, %155
  %mul.i.i = mul i32 %sub.i.i, 1023
  %div.i.i = sdiv i32 %mul.i.i, 4
  %156 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %format.i, align 8
  %158 = zext i32 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values)
  switch i32 %157, label %if.then.i.if.end.i_crit_edge [
    i32 3, label %sw.bb.i.i
    i32 4, label %sw.bb1.i.i
    i32 7, label %sw.bb3.i.i
    i32 8, label %sw.bb5.i.i
    i32 6, label %sw.bb10.i.i
  ]

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i.i = trunc i32 %div.i.i to i16
  %159 = ptrtoint ptr %color.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv.i.i, ptr %color.i, align 2
  br label %if.end.i

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv2.i.i = trunc i32 %div.i.i to i16
  %color_b_cb.i.i = getelementptr inbounds %struct.tg_color, ptr %color.i, i32 0, i32 2
  %160 = ptrtoint ptr %color_b_cb.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv2.i.i, ptr %color_b_cb.i.i, align 2
  br label %if.end.i

sw.bb3.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv4.i.i = trunc i32 %div.i.i to i16
  %color_g_y.i.i = getelementptr inbounds %struct.tg_color, ptr %color.i, i32 0, i32 1
  %161 = ptrtoint ptr %color_g_y.i.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv4.i.i, ptr %color_g_y.i.i, align 2
  br label %if.end.i

sw.bb5.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv6.i.i = trunc i32 %div.i.i to i16
  %color_g_y7.i.i = getelementptr inbounds %struct.tg_color, ptr %color.i, i32 0, i32 1
  %162 = ptrtoint ptr %color_g_y7.i.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv6.i.i, ptr %color_g_y7.i.i, align 2
  %163 = ptrtoint ptr %color.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv6.i.i, ptr %color.i, align 2
  br label %if.end.i

sw.bb10.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv11.i.i = trunc i32 %div.i.i to i16
  %164 = ptrtoint ptr %color.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv11.i.i, ptr %color.i, align 2
  %color_b_cb14.i.i = getelementptr inbounds %struct.tg_color, ptr %color.i, i32 0, i32 2
  %165 = ptrtoint ptr %color_b_cb14.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv11.i.i, ptr %color_b_cb14.i.i, align 2
  %color_g_y16.i.i = getelementptr inbounds %struct.tg_color, ptr %color.i, i32 0, i32 1
  %166 = ptrtoint ptr %color_g_y16.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv11.i.i, ptr %color_g_y16.i.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  %167 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %stream.i, align 4
  %output_color_space.i259 = getelementptr inbounds %struct.dc_stream_state, ptr %168, i32 0, i32 20
  %169 = ptrtoint ptr %output_color_space.i259 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %output_color_space.i259, align 4
  call void @color_space_to_black_color(ptr noundef %dc, i32 noundef %170, ptr noundef nonnull %color.i) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.bb10.i.i, %sw.bb5.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.then.i.if.end.i_crit_edge
  %171 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %xfm.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 8
  %transform_set_pixel_storage_depth.i = getelementptr inbounds %struct.transform_funcs, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %transform_set_pixel_storage_depth.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %transform_set_pixel_storage_depth.i, align 4
  %177 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %depth.i, align 4
  %179 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %stream.i, align 4
  %bit_depth_params.i = getelementptr inbounds %struct.dc_stream_state, ptr %180, i32 0, i32 33
  call void %176(ptr noundef %172, i32 noundef %178, ptr noundef %bit_depth_params.i) #3
  %tg.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %181 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %tg.i, align 8
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %set_overscan_blank_color.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %184, i32 0, i32 19
  %185 = ptrtoint ptr %set_overscan_blank_color.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %set_overscan_blank_color.i, align 4
  %tobool.not.i = icmp eq ptr %186, null
  br i1 %tobool.not.i, label %if.end.i.dce60_program_scaler.exit_crit_edge, label %if.then6.i

if.end.i.dce60_program_scaler.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dce60_program_scaler.exit

if.then6.i:                                       ; preds = %if.end.i
  %187 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %stream.i, align 4
  %pixel_encoding.i = getelementptr inbounds %struct.dc_stream_state, ptr %188, i32 0, i32 5, i32 17
  %189 = ptrtoint ptr %pixel_encoding.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %pixel_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %190)
  %cmp8.i = icmp eq i32 %190, 4
  br i1 %cmp8.i, label %if.then9.i, label %if.then6.i.if.end10.i_crit_edge

if.then6.i.if.end10.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  %color_g_y.i = getelementptr inbounds %struct.tg_color, ptr %color.i, i32 0, i32 1
  %191 = ptrtoint ptr %color_g_y.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %color_g_y.i, align 2
  %193 = ptrtoint ptr %color.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %192, ptr %color.i, align 2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.then6.i.if.end10.i_crit_edge
  %194 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %182, align 4
  %set_overscan_blank_color14.i = getelementptr inbounds %struct.timing_generator_funcs, ptr %195, i32 0, i32 19
  %196 = ptrtoint ptr %set_overscan_blank_color14.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %set_overscan_blank_color14.i, align 4
  call void %197(ptr noundef %182, ptr noundef nonnull %color.i) #3
  br label %dce60_program_scaler.exit

dce60_program_scaler.exit:                        ; preds = %if.end10.i, %if.end.i.dce60_program_scaler.exit_crit_edge
  %plane_res.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2
  %198 = ptrtoint ptr %xfm.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %xfm.i, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 8
  %transform_set_scaler.i = getelementptr inbounds %struct.transform_funcs, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %transform_set_scaler.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %transform_set_scaler.i, align 4
  call void %203(ptr noundef %199, ptr noundef %plane_res.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %color.i) #3
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %1, align 8
  %mem_input_program_surface_config = getelementptr inbounds %struct.mem_input_funcs, ptr %205, i32 0, i32 11
  %206 = ptrtoint ptr %mem_input_program_surface_config to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mem_input_program_surface_config, align 4
  %format = getelementptr inbounds %struct.dc_plane_state, ptr %3, i32 0, i32 22
  %208 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %format, align 8
  %tiling_info = getelementptr inbounds %struct.dc_plane_state, ptr %3, i32 0, i32 8
  %plane_size = getelementptr inbounds %struct.dc_plane_state, ptr %3, i32 0, i32 7
  %rotation = getelementptr inbounds %struct.dc_plane_state, ptr %3, i32 0, i32 23
  %210 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %rotation, align 4
  call void %207(ptr noundef %1, i32 noundef %209, ptr noundef %tiling_info, ptr noundef %plane_size, i32 noundef %211, ptr noundef null, i1 noundef zeroext false) #3
  %212 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %1, align 8
  %set_blank = getelementptr inbounds %struct.mem_input_funcs, ptr %213, i32 0, i32 14
  %214 = ptrtoint ptr %set_blank to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %set_blank, align 4
  %tobool44.not = icmp eq ptr %215, null
  br i1 %tobool44.not, label %dce60_program_scaler.exit.if.end50_crit_edge, label %if.then45

dce60_program_scaler.exit.if.end50_crit_edge:     ; preds = %dce60_program_scaler.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

if.then45:                                        ; preds = %dce60_program_scaler.exit
  call void @__sanitizer_cov_trace_pc() #5
  %216 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pipe_ctx, align 8
  %visible = getelementptr inbounds %struct.dc_plane_state, ptr %217, i32 0, i32 29
  %218 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %visible, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool49 = icmp ne i8 %219, 0
  call void %215(ptr noundef %1, i1 noundef zeroext %tobool49) #3
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %dce60_program_scaler.exit.if.end50_crit_edge
  %config = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 4
  %220 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %config, align 8, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool51.not = icmp eq i8 %221, 0
  br i1 %tobool51.not, label %if.end50.if.end59_crit_edge, label %if.then52

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 8
  %mem_input_program_pte_vm = getelementptr inbounds %struct.mem_input_funcs, ptr %223, i32 0, i32 8
  %224 = ptrtoint ptr %mem_input_program_pte_vm to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mem_input_program_pte_vm, align 4
  %226 = ptrtoint ptr %mi1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mi1, align 4
  %228 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %format, align 8
  %230 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %rotation, align 4
  call void %225(ptr noundef %227, i32 noundef %229, ptr noundef %tiling_info, i32 noundef %231) #3
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %if.end50.if.end59_crit_edge
  %232 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %pipe_ctx, align 8
  %update_flags = getelementptr inbounds %struct.dc_plane_state, ptr %233, i32 0, i32 33
  %234 = ptrtoint ptr %update_flags to i32
  call void @__asan_load4_noabort(i32 %234)
  %bf.load = load i32, ptr %update_flags, align 4
  %235 = and i32 %bf.load, 1050688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %if.end59.if.end78_crit_edge, label %if.then75

if.end59.if.end78_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end78

if.then75:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  %set_input_transfer_func = getelementptr inbounds %struct.dce_hwseq, ptr %5, i32 0, i32 6, i32 7
  %237 = ptrtoint ptr %set_input_transfer_func to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %set_input_transfer_func, align 4
  %call = call zeroext i1 %238(ptr noundef %dc, ptr noundef %pipe_ctx, ptr noundef %233) #3
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end59.if.end78_crit_edge
  %239 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %pipe_ctx, align 8
  %update_flags80 = getelementptr inbounds %struct.dc_plane_state, ptr %240, i32 0, i32 33
  %241 = ptrtoint ptr %update_flags80 to i32
  call void @__asan_load4_noabort(i32 %241)
  %bf.load81 = load i32, ptr %update_flags80, align 4
  %242 = and i32 %bf.load81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool84.not = icmp eq i32 %242, 0
  br i1 %tobool84.not, label %if.end78.do.body_crit_edge, label %if.then85

if.end78.do.body_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then85:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  %set_output_transfer_func = getelementptr inbounds %struct.dce_hwseq, ptr %5, i32 0, i32 6, i32 8
  %243 = ptrtoint ptr %set_output_transfer_func to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %set_output_transfer_func, align 8
  %245 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %stream.i, align 4
  %call88 = call zeroext i1 %244(ptr noundef %dc, ptr noundef %pipe_ctx, ptr noundef %246) #3
  br label %do.body

do.body:                                          ; preds = %if.then85, %if.end78.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce60_program_front_end_for_pipe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce60_program_front_end_for_pipe, %if.then95)) #3
          to label %do.body132 [label %if.then95], !srcloc !21

if.then95:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %pipe_idx = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 7
  %247 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %pipe_idx, align 8
  %conv96 = zext i8 %248 to i32
  %249 = ptrtoint ptr %pipe_ctx to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pipe_ctx, align 8
  %251 = getelementptr inbounds %struct.dc_plane_address, ptr %250, i32 0, i32 2
  %high_part = getelementptr inbounds %struct.anon.20, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %high_part to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %high_part, align 4
  %254 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %251, align 8
  %src_rect = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 4
  %256 = ptrtoint ptr %src_rect to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %src_rect, align 8
  %y = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 4, i32 1
  %258 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %y, align 4
  %width = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 4, i32 2
  %260 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 4, i32 3
  %262 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %height, align 4
  %dst_rect = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 5
  %264 = ptrtoint ptr %dst_rect to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %dst_rect, align 8
  %y113 = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 5, i32 1
  %266 = ptrtoint ptr %y113 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %y113, align 4
  %width116 = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 5, i32 2
  %268 = ptrtoint ptr %width116 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %width116, align 8
  %height119 = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 5, i32 3
  %270 = ptrtoint ptr %height119 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %height119, align 4
  %clip_rect = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 6
  %272 = ptrtoint ptr %clip_rect to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %clip_rect, align 8
  %y124 = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 6, i32 1
  %274 = ptrtoint ptr %y124 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %y124, align 4
  %width127 = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 6, i32 2
  %276 = ptrtoint ptr %width127 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %width127, align 8
  %height130 = getelementptr inbounds %struct.dc_plane_state, ptr %250, i32 0, i32 6, i32 3
  %278 = ptrtoint ptr %height130 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %height130, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce60_program_front_end_for_pipe.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.3, i32 noundef %conv96, ptr noundef %250, i32 noundef %253, i32 noundef %255, i32 noundef %257, i32 noundef %259, i32 noundef %261, i32 noundef %263, i32 noundef %265, i32 noundef %267, i32 noundef %269, i32 noundef %271, i32 noundef %273, i32 noundef %275, i32 noundef %277, i32 noundef %279) #3
  br label %do.body132

do.body132:                                       ; preds = %if.then95, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce60_program_front_end_for_pipe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce60_program_front_end_for_pipe, %if.then144)) #3
          to label %do.end179 [label %if.then144], !srcloc !21

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #5
  %pipe_idx145 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 7
  %280 = ptrtoint ptr %pipe_idx145 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %pipe_idx145, align 8
  %conv146 = zext i8 %281 to i32
  %viewport = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3
  %width149 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3, i32 2
  %282 = ptrtoint ptr %width149 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %width149, align 4
  %height153 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3, i32 3
  %284 = ptrtoint ptr %height153 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %height153, align 4
  %286 = ptrtoint ptr %viewport to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %viewport, align 4
  %y161 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 3, i32 1
  %288 = ptrtoint ptr %y161 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %y161, align 4
  %recout = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5
  %width164 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5, i32 2
  %290 = ptrtoint ptr %width164 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %width164, align 4
  %height168 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5, i32 3
  %292 = ptrtoint ptr %height168 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %height168, align 4
  %294 = ptrtoint ptr %recout to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %recout, align 4
  %y176 = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 2, i32 0, i32 5, i32 1
  %296 = ptrtoint ptr %y176 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %y176, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce60_program_front_end_for_pipe.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.4, i32 noundef %conv146, i32 noundef %283, i32 noundef %285, i32 noundef %287, i32 noundef %289, i32 noundef %291, i32 noundef %293, i32 noundef %295, i32 noundef %297) #3
  br label %do.end179

do.end179:                                        ; preds = %if.then144, %do.body132
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tbl_entry) #3
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %adjust) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_enable_fe_clock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @color_space_to_black_color(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_hw_sequencer.c", i32 343, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dce60_program_front_end_for_pipe.__UNIQUE_ID_ddebug303, !1, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_hw_sequencer.c", i32 366, i32 2}
!8 = !{ptr @dce60_program_front_end_for_pipe.__UNIQUE_ID_ddebug304, !7, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_hw_sequencer.c", i32 60, i32 2}
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
!21 = !{i64 2148756286, i64 2148756291, i64 2148756304, i64 2148756348, i64 2148756382, i64 2148756403}
