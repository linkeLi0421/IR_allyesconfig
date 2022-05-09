; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce112/dce112_resource.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.bios_registers = type { i32, i32 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dce110_clk_src_regs = type { i32, i32, i32, [6 x i32], [6 x i32], [6 x i32] }
%struct.dce_dmcu_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_dmcu_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_dmcu_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_abm_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_abm_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_abm_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_timing_generator_offsets = type { i32, i32, i32 }
%struct.resource_create_funcs = type { ptr, ptr, ptr, ptr }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.1, %struct.anon.2, %struct.anon.3, i32, i32 }
%struct.anon.1 = type { i8, [3 x i8] }
%struct.anon.2 = type { i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.resource_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_panel_cntl_registers = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_panel_cntl_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_panel_cntl_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_link_enc_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_link_enc_aux_registers = type { i32, i32, i32 }
%struct.dce110_link_enc_hpd_registers = type { i32 }
%struct.dce110_clk_src_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce110_clk_src_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_mem_input_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_mem_input_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_mem_input_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_ipp_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_ipp_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_ipp_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_transform_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_transform_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_transform_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_opp_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_opp_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_opp_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_aux_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_aux_registers_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_aux_registers_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_i2c_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_i2c_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_i2c_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_audio_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_audio_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.dce_audio_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_stream_enc_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_stream_encoder_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_stream_encoder_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_hwseq_registers = type { [6 x i32], i32, i32, [6 x i32], [6 x i32], i32, [6 x i32], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_hwseq_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_hwseq_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
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
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.62, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.63, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.62 = type { i8, [3 x i8] }
%struct.anon.63 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
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
%union.large_integer = type { i64 }
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
%struct.link_encoder = type { ptr, i32, ptr, %struct.graphics_object_id, %struct.graphics_object_id, i32, i32, %struct.encoder_feature_support, i32, i32, i8 }
%struct.encoder_feature_support = type { %union.anon.39, i32, i32, i8, i8, i8 }
%union.anon.39 = type { i32 }
%struct.dm_pp_clock_levels_with_latency = type { i32, [16 x %struct.dm_pp_clock_with_latency] }
%struct.dm_pp_clock_with_latency = type { i32, i32 }
%struct.dm_pp_wm_sets_with_clock_ranges = type { i32, [4 x %struct.dm_pp_clock_range_for_wm_set] }
%struct.dm_pp_clock_range_for_wm_set = type { i32, i32, i32, i32, i32 }
%struct.bw_fixed = type { i64 }
%struct.irq_service_init_data = type { ptr }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_bios = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.dc_firmware_info, i8, %struct.dc_vram_info, %struct.dc_golden_table }
%struct.dc_firmware_info = type { %struct.pll_info, %struct.firmware_feature, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32 }
%struct.firmware_feature = type { i32, i32 }
%struct.dc_vram_info = type { i32, i32 }
%struct.dc_golden_table = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clock_source = type { ptr, ptr, i32, i8 }
%struct.dce_transform = type { %struct.transform, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.transform = type { ptr, ptr, i32, ptr, %struct.pwl_params }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon.23, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon.23 = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.bw_calcs_vbios = type { i32, i32, i32, i32, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, i8, %struct.bw_fixed, i32, i32, i32, %struct.bw_fixed, %struct.bw_fixed }
%struct.panel_cntl_init_data = type { ptr, i32 }
%struct.encoder_init_data = type { i32, %struct.graphics_object_id, i32, %struct.graphics_object_id, ptr, i32 }
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
%struct.resource_straps = type { i32, i32, i32 }
%struct.dce_hwseq = type { ptr, ptr, ptr, ptr, %struct.dce_hwseq_wa, %struct.hwseq_wa_state, %struct.hwseq_private_funcs, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dce_hwseq_wa = type { i8, i8, i8, i8, i8, i8 }
%struct.hwseq_wa_state = type { i8, i8, i32 }
%struct.hwseq_private_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@dce112_validate_bandwidth.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dce112_validate_bandwidth\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BANDWIDTH_CALCS]:%s: start\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Bandwidth validation failed!\00", [63 x i8] zeroinitializer }, align 32
@dce112_validate_bandwidth.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [450 x i8], [126 x i8] } { [450 x i8] c"[BANDWIDTH_CALCS]:%s: finish,\0AnbpMark_b: %d nbpMark_a: %d urgentMark_b: %d urgentMark_a: %d\0AstutMark_b: %d stutMark_a: %d\0AnbpMark_b: %d nbpMark_a: %d urgentMark_b: %d urgentMark_a: %d\0AstutMark_b: %d stutMark_a: %d\0AnbpMark_b: %d nbpMark_a: %d urgentMark_b: %d urgentMark_a: %d\0AstutMark_b: %d stutMark_a: %d stutter_mode_enable: %d\0Acstate: %d pstate: %d nbpstate: %d sync: %d dispclk: %d\0Asclk: %d sclk_sleep: %d yclk: %d blackout_recovery_time_us: %d\0A\00", [126 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce112_create_resource_pool = private unnamed_addr constant [28 x i8] c"dce112_create_resource_pool\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bios_regs = internal constant { %struct.bios_registers, [24 x i8] } { %struct.bios_registers { i32 1484, i32 1487 }, [24 x i8] zeroinitializer }, align 32
@dce112_res_pool_funcs = internal constant { %struct.resource_funcs, [40 x i8] } { %struct.resource_funcs { ptr @dce112_destroy_resource_pool, ptr null, ptr @dce112_panel_cntl_create, ptr @dce112_link_encoder_create, ptr null, ptr @dce112_validate_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce112_validate_global, ptr null, ptr @dce100_validate_plane, ptr @dce112_add_stream_to_ctx, ptr null, ptr null, ptr @dce110_find_first_free_match_stream_enc_for_link, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_src_regs = internal constant { [6 x %struct.dce110_clk_src_regs], [104 x i8] } { [6 x %struct.dce110_clk_src_regs] [%struct.dce110_clk_src_regs { i32 0, i32 256, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 0, i32 257, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 0, i32 258, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 0, i32 259, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 0, i32 268, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 0, i32 318, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }], [104 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DC: failed to create clock sources!\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dce112_resource_construct = private unnamed_addr constant [26 x i8] c"dce112_resource_construct\00", align 1
@dmcu_regs = internal constant { %struct.dce_dmcu_registers, [36 x i8] } { %struct.dce_dmcu_registers { i32 5632, i32 5633, i32 5640, i32 791, i32 0, i32 5645, i32 5646, i32 5660, i32 5661, i32 5662, i32 5663, i32 5664, i32 5665, i32 5666, i32 5667, i32 5668, i32 0, i32 5647, i32 5648, i32 5654, i32 302, i32 5656, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dmcu_shift = internal constant { %struct.dce_dmcu_shift, [45 x i8] } { %struct.dce_dmcu_shift { i8 11, i8 5, i8 2, i8 3, i8 4, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 7, i8 9, i8 10, i8 0, i8 0, i8 0 }, [45 x i8] zeroinitializer }, align 32
@dmcu_mask = internal constant { %struct.dce_dmcu_mask, [52 x i8] } { %struct.dce_dmcu_mask { i32 2048, i32 32, i32 4, i32 8, i32 16, i32 4, i32 1, i32 255, i32 1, i32 1, i32 0, i32 0, i32 64, i32 128, i32 512, i32 1024, i32 0, i32 0, i32 1 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC: failed to create dmcu!\0A\00", [36 x i8] zeroinitializer }, align 32
@abm_regs = internal constant { %struct.dce_abm_registers, [32 x i8] } { %struct.dce_abm_registers { i32 5716, i32 5717, i32 5679, i32 5707, i32 5689, i32 5675, i32 5674, i32 5673, i32 5713, i32 5706, i32 5690, i32 5695, i32 5664, i32 5663, i32 5660, i32 1483 }, [32 x i8] zeroinitializer }, align 32
@abm_shift = internal constant { %struct.dce_abm_shift, [46 x i8] } { %struct.dce_abm_shift { i8 0, i8 8, i8 16, i8 16, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 24, i8 31, i8 0, i8 0, i8 8, i8 16 }, [46 x i8] zeroinitializer }, align 32
@abm_mask = internal constant { %struct.dce_abm_mask, [56 x i8] } { %struct.dce_abm_mask { i32 3, i32 256, i32 196608, i32 983040, i32 3840, i32 15, i32 131071, i32 131071, i32 131071, i32 1023, i32 67043328, i32 65536, i32 16777216, i32 -2147483648, i32 1, i32 255, i32 65280, i32 16711680 }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC: failed to create abm!\0A\00", [37 x i8] zeroinitializer }, align 32
@dce112_tg_offsets = internal constant { [6 x %struct.dce110_timing_generator_offsets], [56 x i8] } { [6 x %struct.dce110_timing_generator_offsets] [%struct.dce110_timing_generator_offsets zeroinitializer, %struct.dce110_timing_generator_offsets { i32 512, i32 512, i32 0 }, %struct.dce110_timing_generator_offsets { i32 1024, i32 1024, i32 0 }, %struct.dce110_timing_generator_offsets { i32 9728, i32 9728, i32 0 }, %struct.dce110_timing_generator_offsets { i32 10240, i32 10240, i32 0 }, %struct.dce110_timing_generator_offsets { i32 10752, i32 10752, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC: failed to create tg!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DC: failed to create memory input!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DC:failed to create input pixel processor!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DC: failed to create transform!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DC:failed to create output pixel processor!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DC:failed to create aux engine!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DC:failed to create i2c engine!!\0A\00", [62 x i8] zeroinitializer }, align 32
@res_create_funcs = internal constant { %struct.resource_create_funcs, [16 x i8] } { %struct.resource_create_funcs { ptr @read_dce_straps, ptr @create_audio, ptr @dce112_stream_encoder_create, ptr @dce112_hwseq_create }, [16 x i8] zeroinitializer }, align 32
@plane_cap = internal constant { %struct.dc_plane_cap, [52 x i8] } { %struct.dc_plane_cap { i32 1, i8 0, [3 x i8] undef, %struct.anon.1 { i8 -96, [3 x i8] undef }, %struct.anon.2 { i32 16000, i32 1, i32 1 }, %struct.anon.3 { i32 250, i32 1, i32 1 }, i32 64, i32 64 }, [52 x i8] zeroinitializer }, align 32
@polaris_11_resource_cap = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 5, i32 0, i32 0, i32 5, i32 5, i32 8, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@polaris_10_resource_cap = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 6, i32 0, i32 0, i32 6, i32 6, i32 8, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@panel_cntl_regs = internal constant { [1 x %struct.dce_panel_cntl_registers], [32 x i8] } { [1 x %struct.dce_panel_cntl_registers] [%struct.dce_panel_cntl_registers { i32 18459, i32 18460, i32 18464, i32 18465, i32 18466, i32 18467, i32 18461, i32 1483 }], [32 x i8] zeroinitializer }, align 32
@panel_cntl_shift = internal constant { %struct.dce_panel_cntl_shift, [17 x i8] } { %struct.dce_panel_cntl_shift { i8 24, i8 25, i8 16, i8 17, i8 4, i8 0, i8 16, i8 31, i8 0, i8 30, i8 0, i8 16, i8 31, i8 0, i8 8 }, [17 x i8] zeroinitializer }, align 32
@panel_cntl_mask = internal constant { %struct.dce_panel_cntl_mask, [36 x i8] } { %struct.dce_panel_cntl_mask { i32 16777216, i32 33554432, i32 65536, i32 131072, i32 16, i32 1, i32 -65536, i32 -2147483648, i32 65535, i32 1073741824, i32 65535, i32 983040, i32 -2147483648, i32 1, i32 256 }, [36 x i8] zeroinitializer }, align 32
@link_enc_regs = internal constant { [7 x %struct.dce110_link_enc_registers], [232 x i8] } { [7 x %struct.dce110_link_enc_registers] [%struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 19015, i32 19016, i32 19107, i32 19119, i32 19111, i32 19125, i32 19126, i32 19121, i32 19122, i32 19123, i32 19120, i32 19104, i32 19115, i32 19154, i32 19155, i32 19156, i32 19157, i32 19139, i32 19108, i32 19132, i32 19164, i32 19165, i32 19140 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 19271, i32 19272, i32 19363, i32 19375, i32 19367, i32 19381, i32 19382, i32 19377, i32 19378, i32 19379, i32 19376, i32 19360, i32 19371, i32 19410, i32 19411, i32 19412, i32 19413, i32 19395, i32 19364, i32 19388, i32 19420, i32 19421, i32 19396 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 19527, i32 19528, i32 19619, i32 19631, i32 19623, i32 19637, i32 19638, i32 19633, i32 19634, i32 19635, i32 19632, i32 19616, i32 19627, i32 19666, i32 19667, i32 19668, i32 19669, i32 19651, i32 19620, i32 19644, i32 19676, i32 19677, i32 19652 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 19783, i32 19784, i32 19875, i32 19887, i32 19879, i32 19893, i32 19894, i32 19889, i32 19890, i32 19891, i32 19888, i32 19872, i32 19883, i32 19922, i32 19923, i32 19924, i32 19925, i32 19907, i32 19876, i32 19900, i32 19932, i32 19933, i32 19908 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 20039, i32 20040, i32 20131, i32 20143, i32 20135, i32 20149, i32 20150, i32 20145, i32 20146, i32 20147, i32 20144, i32 20128, i32 20139, i32 20178, i32 20179, i32 20180, i32 20181, i32 20163, i32 20132, i32 20156, i32 20188, i32 20189, i32 20164 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 20295, i32 20296, i32 20387, i32 20399, i32 20391, i32 20405, i32 20406, i32 20401, i32 20402, i32 20403, i32 20400, i32 20384, i32 20395, i32 20434, i32 20435, i32 20436, i32 20437, i32 20419, i32 20388, i32 20412, i32 20444, i32 20445, i32 20420 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 21575, i32 21576, i32 21667, i32 21679, i32 21671, i32 21685, i32 21686, i32 21681, i32 21682, i32 21683, i32 21680, i32 21664, i32 21675, i32 21714, i32 21715, i32 21716, i32 21717, i32 21699, i32 21668, i32 21692, i32 21724, i32 21725, i32 21700 }], [232 x i8] zeroinitializer }, align 32
@link_enc_aux_regs = internal constant { [6 x %struct.dce110_link_enc_aux_registers], [56 x i8] } { [6 x %struct.dce110_link_enc_aux_registers] [%struct.dce110_link_enc_aux_registers { i32 23552, i32 23562, i32 23563 }, %struct.dce110_link_enc_aux_registers { i32 23580, i32 23590, i32 23591 }, %struct.dce110_link_enc_aux_registers { i32 23608, i32 23618, i32 23619 }, %struct.dce110_link_enc_aux_registers { i32 23636, i32 23646, i32 23647 }, %struct.dce110_link_enc_aux_registers { i32 23664, i32 23674, i32 23675 }, %struct.dce110_link_enc_aux_registers { i32 23692, i32 23702, i32 23703 }], [56 x i8] zeroinitializer }, align 32
@link_enc_hpd_regs = internal constant { [6 x %struct.dce110_link_enc_hpd_registers], [40 x i8] } { [6 x %struct.dce110_link_enc_hpd_registers] [%struct.dce110_link_enc_hpd_registers { i32 6298 }, %struct.dce110_link_enc_hpd_registers { i32 6306 }, %struct.dce110_link_enc_hpd_registers { i32 6314 }, %struct.dce110_link_enc_hpd_registers { i32 6322 }, %struct.dce110_link_enc_hpd_registers { i32 6330 }, %struct.dce110_link_enc_hpd_registers { i32 6338 }], [40 x i8] zeroinitializer }, align 32
@map_transmitter_id_to_phy_instance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@link_enc_feature = internal constant { { { { i8, i8, [2 x i8] } }, i32, i32, i8, i8, i8 }, [16 x i8] } { { { { i8, i8, [2 x i8] } }, i32, i32, i8, i8, i8 } { { { i8, i8, [2 x i8] } } { { i8, i8, [2 x i8] } { i8 -16, i8 0, [2 x i8] undef } }, i32 4, i32 600000, i8 1, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@cs_shift = internal constant { %struct.dce110_clk_src_shift, [23 x i8] } { %struct.dce110_clk_src_shift { i8 0, i8 0, i8 4, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@cs_mask = internal constant { %struct.dce110_clk_src_mask, [60 x i8] } { %struct.dce110_clk_src_mask { i32 0, i32 0, i32 48, i32 512, i32 0, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.dce112_clock_source_create = private unnamed_addr constant [27 x i8] c"dce112_clock_source_create\00", align 1
@__func__.dce112_mem_input_create = private unnamed_addr constant [24 x i8] c"dce112_mem_input_create\00", align 1
@mi_regs = internal constant { [6 x %struct.dce_mem_input_registers], [208 x i8] } { [6 x %struct.dce_mem_input_registers] [%struct.dce_mem_input_registers { i32 6656, i32 6657, i32 6667, i32 6668, i32 6669, i32 6670, i32 6662, i32 6814, i32 6659, i32 6701, i32 6684, i32 0, i32 0, i32 6673, i32 6674, i32 6660, i32 6663, i32 6661, i32 6664, i32 6960, i32 0, i32 6962, i32 6963, i32 0, i32 6966, i32 0, i32 6965, i32 0, i32 801, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 7168, i32 7169, i32 7179, i32 7180, i32 7181, i32 7182, i32 7174, i32 7326, i32 7171, i32 7213, i32 7196, i32 0, i32 0, i32 7185, i32 7186, i32 7172, i32 7175, i32 7173, i32 7176, i32 7472, i32 0, i32 7474, i32 7475, i32 0, i32 7478, i32 0, i32 7477, i32 0, i32 802, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 7680, i32 7681, i32 7691, i32 7692, i32 7693, i32 7694, i32 7686, i32 7838, i32 7683, i32 7725, i32 7708, i32 0, i32 0, i32 7697, i32 7698, i32 7684, i32 7687, i32 7685, i32 7688, i32 7984, i32 0, i32 7986, i32 7987, i32 0, i32 7990, i32 0, i32 7989, i32 0, i32 803, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 16384, i32 16385, i32 16395, i32 16396, i32 16397, i32 16398, i32 16390, i32 16542, i32 16387, i32 16429, i32 16412, i32 0, i32 0, i32 16401, i32 16402, i32 16388, i32 16391, i32 16389, i32 16392, i32 16688, i32 0, i32 16690, i32 16691, i32 0, i32 16694, i32 0, i32 16693, i32 0, i32 804, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 16896, i32 16897, i32 16907, i32 16908, i32 16909, i32 16910, i32 16902, i32 17054, i32 16899, i32 16941, i32 16924, i32 0, i32 0, i32 16913, i32 16914, i32 16900, i32 16903, i32 16901, i32 16904, i32 17200, i32 0, i32 17202, i32 17203, i32 0, i32 17206, i32 0, i32 17205, i32 0, i32 805, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 17408, i32 17409, i32 17419, i32 17420, i32 17421, i32 17422, i32 17414, i32 17566, i32 17411, i32 17453, i32 17436, i32 0, i32 0, i32 17425, i32 17426, i32 17412, i32 17415, i32 17413, i32 17416, i32 17712, i32 0, i32 17714, i32 17715, i32 0, i32 17718, i32 0, i32 17717, i32 0, i32 806, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@mi_shifts = internal constant { %struct.dce_mem_input_shift, [57 x i8] } { %struct.dce_mem_input_shift { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0, i8 1, i8 2, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 2, i8 6, i8 11, i8 18, i8 13, i8 29, i8 24, i8 20, i8 31, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 0, i8 0, i8 8, i8 2, i8 0, i8 16, i8 0, i8 8, i8 0, i8 16, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 4, i8 8, i8 15, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i8 16, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [57 x i8] zeroinitializer }, align 32
@mi_masks = internal constant { %struct.dce_mem_input_mask, [68 x i8] } { %struct.dce_mem_input_mask { i32 1, i32 16383, i32 16383, i32 32767, i32 32767, i32 32767, i32 7, i32 48, i32 768, i32 1, i32 2, i32 4, i32 8, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1792, i32 12, i32 192, i32 6144, i32 786432, i32 57344, i32 1610612736, i32 520093696, i32 15728640, i32 -2147483648, i32 0, i32 0, i32 0, i32 0, i32 255, i32 -256, i32 0, i32 255, i32 -256, i32 4, i32 1, i32 65536, i32 65535, i32 1792, i32 0, i32 458752, i32 7, i32 65535, i32 -65536, i32 0, i32 0, i32 1, i32 16, i32 256, i32 -32768, i32 0, i32 0, i32 0, i32 0, i32 1, i32 128, i32 -65536, i32 0, i32 7, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [68 x i8] zeroinitializer }, align 32
@__func__.dce112_ipp_create = private unnamed_addr constant [18 x i8] c"dce112_ipp_create\00", align 1
@ipp_regs = internal constant { [6 x %struct.dce_ipp_registers], [104 x i8] } { [6 x %struct.dce_ipp_registers] [%struct.dce_ipp_registers { i32 6766, i32 6758, i32 6762, i32 6763, i32 6764, i32 6765, i32 6760, i32 6761, i32 6759, i32 6701, i32 6702, i32 6703, i32 6704, i32 6672, i32 6915, i32 6782, i32 6776, i32 6784, i32 6777, i32 6778, i32 6744 }, %struct.dce_ipp_registers { i32 7278, i32 7270, i32 7274, i32 7275, i32 7276, i32 7277, i32 7272, i32 7273, i32 7271, i32 7213, i32 7214, i32 7215, i32 7216, i32 7184, i32 7427, i32 7294, i32 7288, i32 7296, i32 7289, i32 7290, i32 7256 }, %struct.dce_ipp_registers { i32 7790, i32 7782, i32 7786, i32 7787, i32 7788, i32 7789, i32 7784, i32 7785, i32 7783, i32 7725, i32 7726, i32 7727, i32 7728, i32 7696, i32 7939, i32 7806, i32 7800, i32 7808, i32 7801, i32 7802, i32 7768 }, %struct.dce_ipp_registers { i32 16494, i32 16486, i32 16490, i32 16491, i32 16492, i32 16493, i32 16488, i32 16489, i32 16487, i32 16429, i32 16430, i32 16431, i32 16432, i32 16400, i32 16643, i32 16510, i32 16504, i32 16512, i32 16505, i32 16506, i32 16472 }, %struct.dce_ipp_registers { i32 17006, i32 16998, i32 17002, i32 17003, i32 17004, i32 17005, i32 17000, i32 17001, i32 16999, i32 16941, i32 16942, i32 16943, i32 16944, i32 16912, i32 17155, i32 17022, i32 17016, i32 17024, i32 17017, i32 17018, i32 16984 }, %struct.dce_ipp_registers { i32 17518, i32 17510, i32 17514, i32 17515, i32 17516, i32 17517, i32 17512, i32 17513, i32 17511, i32 17453, i32 17454, i32 17455, i32 17456, i32 17424, i32 17667, i32 17534, i32 17528, i32 17536, i32 17529, i32 17530, i32 17496 }], [104 x i8] zeroinitializer }, align 32
@ipp_shift = internal constant { %struct.dce_ipp_shift, [58 x i8] } { %struct.dce_ipp_shift { i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 8, i8 16, i8 4, i8 0, i8 8, i8 16, i8 0, i8 8, i8 16, i8 16, i8 0, i8 0, i8 0, i8 4, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 2, i8 0, i8 0, i8 22, i8 14, i8 6, i8 0, i8 0, i8 0, i8 12, i8 8 }, [58 x i8] zeroinitializer }, align 32
@ipp_mask = internal constant { %struct.dce_ipp_mask, [40 x i8] } { %struct.dce_ipp_mask { i32 65536, i32 1, i32 1073676288, i32 16383, i32 8323072, i32 127, i32 768, i32 65536, i32 16, i32 255, i32 65280, i32 16711680, i32 255, i32 65280, i32 16711680, i32 8323072, i32 127, i32 255, i32 -1, i32 16, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 1, i32 4, i32 7, i32 1, i32 12582912, i32 49152, i32 192, i32 255, i32 65535, i32 3, i32 12288, i32 768 }, [40 x i8] zeroinitializer }, align 32
@xfm_regs = internal constant { [6 x %struct.dce_transform_registers], [392 x i8] } { [6 x %struct.dce_transform_registers] [%struct.dce_transform_registers { i32 0, i32 6848, i32 6745, i32 6746, i32 6747, i32 6748, i32 6749, i32 6750, i32 6751, i32 6717, i32 6718, i32 6719, i32 6720, i32 6721, i32 6722, i32 6716, i32 0, i32 6820, i32 6821, i32 6822, i32 6823, i32 6824, i32 6825, i32 6826, i32 6827, i32 6828, i32 6829, i32 6830, i32 6831, i32 6819, i32 6817, i32 6818, i32 6816, i32 6736, i32 6752, i32 6737, i32 6738, i32 6812, i32 6813, i32 6978, i32 6979, i32 6980, i32 6981, i32 7006, i32 7007, i32 6987, i32 6984, i32 6915, i32 6917, i32 6976, i32 6977, i32 7004, i32 7005, i32 6985, i32 6988, i32 6986, i32 0, i32 0, i32 6989, i32 6983, i32 0, i32 0, i32 6849, i32 6993, i32 6995 }, %struct.dce_transform_registers { i32 0, i32 7360, i32 7257, i32 7258, i32 7259, i32 7260, i32 7261, i32 7262, i32 7263, i32 7229, i32 7230, i32 7231, i32 7232, i32 7233, i32 7234, i32 7228, i32 0, i32 7332, i32 7333, i32 7334, i32 7335, i32 7336, i32 7337, i32 7338, i32 7339, i32 7340, i32 7341, i32 7342, i32 7343, i32 7331, i32 7329, i32 7330, i32 7328, i32 7248, i32 7264, i32 7249, i32 7250, i32 7324, i32 7325, i32 7490, i32 7491, i32 7492, i32 7493, i32 7518, i32 7519, i32 7499, i32 7496, i32 7427, i32 7429, i32 7488, i32 7489, i32 7516, i32 7517, i32 7497, i32 7500, i32 7498, i32 0, i32 0, i32 7501, i32 7495, i32 0, i32 0, i32 7361, i32 7505, i32 7507 }, %struct.dce_transform_registers { i32 0, i32 7872, i32 7769, i32 7770, i32 7771, i32 7772, i32 7773, i32 7774, i32 7775, i32 7741, i32 7742, i32 7743, i32 7744, i32 7745, i32 7746, i32 7740, i32 0, i32 7844, i32 7845, i32 7846, i32 7847, i32 7848, i32 7849, i32 7850, i32 7851, i32 7852, i32 7853, i32 7854, i32 7855, i32 7843, i32 7841, i32 7842, i32 7840, i32 7760, i32 7776, i32 7761, i32 7762, i32 7836, i32 7837, i32 8002, i32 8003, i32 8004, i32 8005, i32 8030, i32 8031, i32 8011, i32 8008, i32 7939, i32 7941, i32 8000, i32 8001, i32 8028, i32 8029, i32 8009, i32 8012, i32 8010, i32 0, i32 0, i32 8013, i32 8007, i32 0, i32 0, i32 7873, i32 8017, i32 8019 }, %struct.dce_transform_registers { i32 0, i32 16576, i32 16473, i32 16474, i32 16475, i32 16476, i32 16477, i32 16478, i32 16479, i32 16445, i32 16446, i32 16447, i32 16448, i32 16449, i32 16450, i32 16444, i32 0, i32 16548, i32 16549, i32 16550, i32 16551, i32 16552, i32 16553, i32 16554, i32 16555, i32 16556, i32 16557, i32 16558, i32 16559, i32 16547, i32 16545, i32 16546, i32 16544, i32 16464, i32 16480, i32 16465, i32 16466, i32 16540, i32 16541, i32 16706, i32 16707, i32 16708, i32 16709, i32 16734, i32 16735, i32 16715, i32 16712, i32 16643, i32 16645, i32 16704, i32 16705, i32 16732, i32 16733, i32 16713, i32 16716, i32 16714, i32 0, i32 0, i32 16717, i32 16711, i32 0, i32 0, i32 16577, i32 16721, i32 16723 }, %struct.dce_transform_registers { i32 0, i32 17088, i32 16985, i32 16986, i32 16987, i32 16988, i32 16989, i32 16990, i32 16991, i32 16957, i32 16958, i32 16959, i32 16960, i32 16961, i32 16962, i32 16956, i32 0, i32 17060, i32 17061, i32 17062, i32 17063, i32 17064, i32 17065, i32 17066, i32 17067, i32 17068, i32 17069, i32 17070, i32 17071, i32 17059, i32 17057, i32 17058, i32 17056, i32 16976, i32 16992, i32 16977, i32 16978, i32 17052, i32 17053, i32 17218, i32 17219, i32 17220, i32 17221, i32 17246, i32 17247, i32 17227, i32 17224, i32 17155, i32 17157, i32 17216, i32 17217, i32 17244, i32 17245, i32 17225, i32 17228, i32 17226, i32 0, i32 0, i32 17229, i32 17223, i32 0, i32 0, i32 17089, i32 17233, i32 17235 }, %struct.dce_transform_registers { i32 0, i32 17600, i32 17497, i32 17498, i32 17499, i32 17500, i32 17501, i32 17502, i32 17503, i32 17469, i32 17470, i32 17471, i32 17472, i32 17473, i32 17474, i32 17468, i32 0, i32 17572, i32 17573, i32 17574, i32 17575, i32 17576, i32 17577, i32 17578, i32 17579, i32 17580, i32 17581, i32 17582, i32 17583, i32 17571, i32 17569, i32 17570, i32 17568, i32 17488, i32 17504, i32 17489, i32 17490, i32 17564, i32 17565, i32 17730, i32 17731, i32 17732, i32 17733, i32 17758, i32 17759, i32 17739, i32 17736, i32 17667, i32 17669, i32 17728, i32 17729, i32 17756, i32 17757, i32 17737, i32 17740, i32 17738, i32 0, i32 0, i32 17741, i32 17735, i32 0, i32 0, i32 17601, i32 17745, i32 17747 }], [392 x i8] zeroinitializer }, align 32
@xfm_shift = internal constant { %struct.dce_transform_shift, [34 x i8] } { %struct.dce_transform_shift { i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 0, i8 4, i8 6, i8 8, i8 9, i8 10, i8 0, i8 0, i8 0, i8 2, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 16, i8 0, i8 5, i8 2, i8 0, i8 0, i8 0, i8 20, i8 0, i8 0, i8 16, i8 0, i8 0, i8 12, i8 16, i8 28, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0, i8 0, i8 16, i8 0, i8 16, i8 0, i8 8, i8 4, i8 16, i8 8, i8 0, i8 15, i8 0, i8 31, i8 16, i8 16, i8 0, i8 0, i8 16, i8 0, i8 0, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 24, i8 0, i8 0, i8 0, i8 20, i8 0, i8 8, i8 8, i8 0, i8 0, i8 24, i8 31 }, [34 x i8] zeroinitializer }, align 32
@xfm_mask = internal constant { %struct.dce_transform_mask, [72 x i8] } { %struct.dce_transform_mask { i32 1073676288, i32 16383, i32 1073676288, i32 16383, i32 1073676288, i32 16383, i32 15, i32 1, i32 48, i32 192, i32 256, i32 512, i32 1024, i32 7, i32 0, i32 3, i32 4, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 3, i32 65535, i32 -65536, i32 7, i32 32, i32 4, i32 0, i32 0, i32 262143, i32 133169152, i32 262143, i32 65535, i32 -65536, i32 65535, i32 511, i32 28672, i32 33488896, i32 1879048192, i32 12, i32 0, i32 7, i32 7, i32 3, i32 3, i32 16, i32 3840, i32 7, i32 1, i32 536805376, i32 8191, i32 536805376, i32 8191, i32 256, i32 48, i32 458752, i32 3840, i32 15, i32 32768, i32 16383, i32 -2147483648, i32 1073676288, i32 1073676288, i32 16383, i32 16383, i32 1073676288, i32 67108863, i32 67108863, i32 251658240, i32 16777215, i32 0, i32 0, i32 0, i32 0, i32 117440512, i32 16777215, i32 0, i32 0, i32 3145728, i32 8191, i32 256, i32 256, i32 0, i32 0, i32 16777216, i32 -2147483648 }, [72 x i8] zeroinitializer }, align 32
@opp_regs = internal constant { [6 x %struct.dce_opp_registers], [80 x i8] } { [6 x %struct.dce_opp_registers] [%struct.dce_opp_registers { i32 7149, i32 7154, i32 7150, i32 7155, i32 7156, i32 7157, i32 7158, i32 7159, i32 7160, i32 6280, i32 7161, i32 7144, i32 7145, i32 7146 }, %struct.dce_opp_registers { i32 7661, i32 7666, i32 7662, i32 7667, i32 7668, i32 7669, i32 7670, i32 7671, i32 7672, i32 6281, i32 7673, i32 7656, i32 7657, i32 7658 }, %struct.dce_opp_registers { i32 8173, i32 8178, i32 8174, i32 8179, i32 8180, i32 8181, i32 8182, i32 8183, i32 8184, i32 6282, i32 8185, i32 8168, i32 8169, i32 8170 }, %struct.dce_opp_registers { i32 16877, i32 16882, i32 16878, i32 16883, i32 16884, i32 16885, i32 16886, i32 16887, i32 16888, i32 6283, i32 16889, i32 16872, i32 16873, i32 16874 }, %struct.dce_opp_registers { i32 17389, i32 17394, i32 17390, i32 17395, i32 17396, i32 17397, i32 17398, i32 17399, i32 17400, i32 6284, i32 17401, i32 17384, i32 17385, i32 17386 }, %struct.dce_opp_registers { i32 17901, i32 17906, i32 17902, i32 17907, i32 17908, i32 17909, i32 17910, i32 17911, i32 17912, i32 6285, i32 17913, i32 17896, i32 17897, i32 17898 }], [80 x i8] zeroinitializer }, align 32
@opp_shift = internal constant { %struct.dce_opp_shift, [54 x i8] } { %struct.dce_opp_shift { i8 0, i8 4, i8 0, i8 4, i8 1, i8 8, i8 11, i8 9, i8 16, i8 25, i8 21, i8 17, i8 24, i8 26, i8 28, i8 30, i8 15, i8 13, i8 14, i8 8, i8 12, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 24, i8 31, i8 30, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 16, i8 20, i8 18, i8 21 }, [54 x i8] zeroinitializer }, align 32
@opp_mask = internal constant { %struct.dce_opp_mask, [56 x i8] } { %struct.dce_opp_mask { i32 1, i32 16, i32 1, i32 48, i32 2, i32 256, i32 6144, i32 1536, i32 65536, i32 33554432, i32 6291456, i32 393216, i32 16777216, i32 201326592, i32 805306368, i32 -1073741824, i32 32768, i32 8192, i32 16384, i32 3840, i32 12288, i32 1, i32 255, i32 255, i32 255, i32 7, i32 48, i32 117440512, i32 -2147483648, i32 1073741824, i32 1, i32 458752, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 196608, i32 1048576, i32 786432, i32 2097152 }, [56 x i8] zeroinitializer }, align 32
@aux_engine_regs = internal constant { [6 x %struct.dce110_aux_registers], [48 x i8] } { [6 x %struct.dce110_aux_registers] [%struct.dce110_aux_registers { i32 23552, i32 23554, i32 23558, i32 23553, i32 23555, i32 0, i32 23556, i32 18492, i32 18491, i32 0 }, %struct.dce110_aux_registers { i32 23580, i32 23582, i32 23586, i32 23581, i32 23583, i32 0, i32 23584, i32 18492, i32 18491, i32 0 }, %struct.dce110_aux_registers { i32 23608, i32 23610, i32 23614, i32 23609, i32 23611, i32 0, i32 23612, i32 18492, i32 18491, i32 0 }, %struct.dce110_aux_registers { i32 23636, i32 23638, i32 23642, i32 23637, i32 23639, i32 0, i32 23640, i32 18492, i32 18491, i32 0 }, %struct.dce110_aux_registers { i32 23664, i32 23666, i32 23670, i32 23665, i32 23667, i32 0, i32 23668, i32 18492, i32 18491, i32 0 }, %struct.dce110_aux_registers { i32 23692, i32 23694, i32 23698, i32 23693, i32 23695, i32 0, i32 23696, i32 18492, i32 18491, i32 0 }], [48 x i8] zeroinitializer }, align 32
@aux_mask = internal constant { %struct.dce110_aux_registers_mask, [32 x i8] } { %struct.dce110_aux_registers_mask { i32 1, i32 16, i32 32, i32 12, i32 65536, i32 131072, i32 -2147483648, i32 1, i32 2031616, i32 1, i32 65280, i32 520093696, i32 1, i32 2, i32 1, i32 1, i32 268435456, i32 268435456, i32 0, i32 0, i32 1024, i32 1024, i32 240, i32 2031616 }, [32 x i8] zeroinitializer }, align 32
@aux_shift = internal constant { %struct.dce110_aux_registers_shift, [40 x i8] } { %struct.dce110_aux_registers_shift { i8 0, i8 4, i8 5, i8 2, i8 16, i8 17, i8 31, i8 0, i8 16, i8 0, i8 8, i8 24, i8 0, i8 1, i8 0, i8 0, i8 28, i8 28, i8 0, i8 0, i8 10, i8 10, i8 4, i8 16 }, [40 x i8] zeroinitializer }, align 32
@i2c_hw_regs = internal constant { [6 x %struct.dce_i2c_registers], [80 x i8] } { [6 x %struct.dce_i2c_registers] [%struct.dce_i2c_registers { i32 5855, i32 5854, i32 5848, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 5857, i32 5856, i32 5849, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 5859, i32 5858, i32 5850, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 5861, i32 5860, i32 5851, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 5863, i32 5862, i32 5852, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 5865, i32 5864, i32 5853, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@i2c_shifts = internal constant { %struct.dce_i2c_shift, [55 x i8] } { %struct.dce_i2c_shift { i8 6, i8 24, i8 0, i8 7, i8 1, i8 16, i8 8, i8 0, i8 21, i8 20, i8 4, i8 0, i8 1, i8 3, i8 0, i8 2, i8 20, i8 8, i8 16, i8 0, i8 8, i8 8, i8 5, i8 4, i8 2, i8 0, i8 8, i8 12, i8 0, i8 13, i8 16, i8 0, i8 8, i8 16, i8 31, i8 8, i8 0, i8 0, i8 2, i8 0, i8 0 }, [55 x i8] zeroinitializer }, align 32
@i2c_masks = internal constant { %struct.dce_i2c_mask, [60 x i8] } { %struct.dce_i2c_mask { i32 64, i32 -16777216, i32 1, i32 128, i32 2, i32 16711680, i32 65280, i32 3, i32 2097152, i32 1048576, i32 16, i32 3, i32 2, i32 8, i32 1, i32 4, i32 3145728, i32 1792, i32 -65536, i32 3, i32 768, i32 256, i32 32, i32 16, i32 4, i32 3, i32 256, i32 4096, i32 1, i32 8192, i32 67043328, i32 1, i32 65280, i32 67043328, i32 -2147483648, i32 32512, i32 127, i32 0, i32 12, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@audio_regs = internal constant { [6 x %struct.dce_audio_registers], [88 x i8] } { [6 x %struct.dce_audio_registers] [%struct.dce_audio_registers { i32 6056, i32 6057, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6060, i32 6061, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6064, i32 6065, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6068, i32 6069, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6072, i32 6073, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6076, i32 6077, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }], [88 x i8] zeroinitializer }, align 32
@audio_shift = internal constant { %struct.dce_audio_shift, [40 x i8] } { %struct.dce_audio_shift { i8 0, i8 0, i8 0, i8 30, i8 31, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 20, i32 24, i32 28, i32 0 }, [40 x i8] zeroinitializer }, align 32
@audio_mask = internal constant { %struct.dce_audio_mask, [36 x i8] } { %struct.dce_audio_mask { i32 16383, i32 -1, i32 4095, i32 1073741824, i32 -2147483648, i32 7, i32 48, i32 -1, i32 -1, i32 -1, i32 -1, i32 1048576, i32 16777216, i32 268435456, i32 0 }, [36 x i8] zeroinitializer }, align 32
@stream_enc_regs = internal constant { [6 x %struct.dce110_stream_enc_registers], [360 x i8] } { [6 x %struct.dce110_stream_enc_registers] [%struct.dce110_stream_enc_registers { i32 19070, i32 18974, i32 18975, i32 18976, i32 18977, i32 18981, i32 18982, i32 18983, i32 18984, i32 18985, i32 18986, i32 18987, i32 18988, i32 18980, i32 19012, i32 19011, i32 0, i32 19010, i32 18964, i32 19013, i32 19000, i32 19001, i32 19007, i32 18944, i32 19151, i32 19153, i32 19105, i32 19139, i32 19109, i32 19114, i32 19113, i32 19108, i32 19112, i32 19145, i32 19149, i32 18953, i32 18963, i32 18960, i32 18989, i32 0, i32 0, i32 18958, i32 18959, i32 18957, i32 18955, i32 18956, i32 18990, i32 18991, i32 18992, i32 18993, i32 18994, i32 18995, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 19326, i32 19230, i32 19231, i32 19232, i32 19233, i32 19237, i32 19238, i32 19239, i32 19240, i32 19241, i32 19242, i32 19243, i32 19244, i32 19236, i32 19268, i32 19267, i32 0, i32 19266, i32 19220, i32 19269, i32 19256, i32 19257, i32 19263, i32 19200, i32 19407, i32 19409, i32 19361, i32 19395, i32 19365, i32 19370, i32 19369, i32 19364, i32 19368, i32 19401, i32 19405, i32 19209, i32 19219, i32 19216, i32 19245, i32 0, i32 0, i32 19214, i32 19215, i32 19213, i32 19211, i32 19212, i32 19246, i32 19247, i32 19248, i32 19249, i32 19250, i32 19251, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 19582, i32 19486, i32 19487, i32 19488, i32 19489, i32 19493, i32 19494, i32 19495, i32 19496, i32 19497, i32 19498, i32 19499, i32 19500, i32 19492, i32 19524, i32 19523, i32 0, i32 19522, i32 19476, i32 19525, i32 19512, i32 19513, i32 19519, i32 19456, i32 19663, i32 19665, i32 19617, i32 19651, i32 19621, i32 19626, i32 19625, i32 19620, i32 19624, i32 19657, i32 19661, i32 19465, i32 19475, i32 19472, i32 19501, i32 0, i32 0, i32 19470, i32 19471, i32 19469, i32 19467, i32 19468, i32 19502, i32 19503, i32 19504, i32 19505, i32 19506, i32 19507, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 19838, i32 19742, i32 19743, i32 19744, i32 19745, i32 19749, i32 19750, i32 19751, i32 19752, i32 19753, i32 19754, i32 19755, i32 19756, i32 19748, i32 19780, i32 19779, i32 0, i32 19778, i32 19732, i32 19781, i32 19768, i32 19769, i32 19775, i32 19712, i32 19919, i32 19921, i32 19873, i32 19907, i32 19877, i32 19882, i32 19881, i32 19876, i32 19880, i32 19913, i32 19917, i32 19721, i32 19731, i32 19728, i32 19757, i32 0, i32 0, i32 19726, i32 19727, i32 19725, i32 19723, i32 19724, i32 19758, i32 19759, i32 19760, i32 19761, i32 19762, i32 19763, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 20094, i32 19998, i32 19999, i32 20000, i32 20001, i32 20005, i32 20006, i32 20007, i32 20008, i32 20009, i32 20010, i32 20011, i32 20012, i32 20004, i32 20036, i32 20035, i32 0, i32 20034, i32 19988, i32 20037, i32 20024, i32 20025, i32 20031, i32 19968, i32 20175, i32 20177, i32 20129, i32 20163, i32 20133, i32 20138, i32 20137, i32 20132, i32 20136, i32 20169, i32 20173, i32 19977, i32 19987, i32 19984, i32 20013, i32 0, i32 0, i32 19982, i32 19983, i32 19981, i32 19979, i32 19980, i32 20014, i32 20015, i32 20016, i32 20017, i32 20018, i32 20019, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 20350, i32 20254, i32 20255, i32 20256, i32 20257, i32 20261, i32 20262, i32 20263, i32 20264, i32 20265, i32 20266, i32 20267, i32 20268, i32 20260, i32 20292, i32 20291, i32 0, i32 20290, i32 20244, i32 20293, i32 20280, i32 20281, i32 20287, i32 20224, i32 20431, i32 20433, i32 20385, i32 20419, i32 20389, i32 20394, i32 20393, i32 20388, i32 20392, i32 20425, i32 20429, i32 20233, i32 20243, i32 20240, i32 20269, i32 0, i32 0, i32 20238, i32 20239, i32 20237, i32 20235, i32 20236, i32 20270, i32 20271, i32 20272, i32 20273, i32 20274, i32 20275, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [360 x i8] zeroinitializer }, align 32
@se_shift = internal constant { %struct.dce_stream_encoder_shift, [32 x i8] } { %struct.dce_stream_encoder_shift { i8 30, i8 2, i8 3, i8 0, i8 8, i8 16, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 16, i8 5, i8 4, i8 24, i8 0, i8 24, i8 8, i8 16, i8 4, i8 0, i8 24, i8 2, i8 28, i8 5, i8 4, i8 0, i8 1, i8 4, i8 7, i8 8, i8 0, i8 26, i8 0, i8 0, i8 24, i8 0, i8 1, i8 0, i8 20, i8 0, i8 21, i8 22, i8 23, i8 0, i8 0, i8 0, i8 0, i8 24, i8 28, i8 8, i8 0, i8 16, i8 0, i8 8, i8 0, i8 0, i8 10, i8 0, i8 8, i8 16, i8 4, i8 26, i8 0, i8 28, i8 12, i8 8, i8 31, i8 12, i8 0, i8 12, i8 0, i8 12, i8 0, i8 20, i8 28, i8 20, i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 0, i8 0, i8 4, i8 8, i8 12, i8 16, i8 0, i8 0, i8 28, i8 30, i8 4, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 0 }, [32 x i8] zeroinitializer }, align 32
@se_mask = internal constant { %struct.dce_stream_encoder_mask, [128 x i8] } { %struct.dce_stream_encoder_mask { i32 -1073741824, i32 4, i32 8, i32 255, i32 65280, i32 16711680, i32 -16777216, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 4128768, i32 32, i32 16, i32 1056964608, i32 7, i32 117440512, i32 256, i32 65536, i32 16, i32 1, i32 16777216, i32 4, i32 805306368, i32 32, i32 16, i32 1, i32 2, i32 16, i32 128, i32 16128, i32 1, i32 -67108864, i32 67108863, i32 1, i32 -16777216, i32 1, i32 2, i32 63, i32 1048576, i32 1, i32 2097152, i32 4194304, i32 8388608, i32 0, i32 0, i32 0, i32 0, i32 16777216, i32 268435456, i32 768, i32 1, i32 65536, i32 1, i32 256, i32 16777215, i32 16777215, i32 1024, i32 7, i32 65280, i32 2031616, i32 48, i32 67108864, i32 1, i32 268435456, i32 4096, i32 256, i32 -2147483648, i32 -4096, i32 1048575, i32 -4096, i32 1048575, i32 -4096, i32 1048575, i32 15728640, i32 805306368, i32 15728640, i32 15, i32 240, i32 3840, i32 61440, i32 983040, i32 15728640, i32 16777215, i32 1, i32 16, i32 256, i32 4096, i32 65536, i32 1, i32 1, i32 268435456, i32 112, i32 256, i32 -1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 512, i32 7 }, [128 x i8] zeroinitializer }, align 32
@hwseq_reg = internal constant { %struct.dce_hwseq_registers, [132 x i8] } { %struct.dce_hwseq_registers { [6 x i32] [i32 6912, i32 7424, i32 7936, i32 16640, i32 17152, i32 17664], i32 0, i32 306, [6 x i32] [i32 7027, i32 7539, i32 8051, i32 16755, i32 17267, i32 17779], [6 x i32] [i32 7021, i32 7533, i32 8045, i32 16749, i32 17261, i32 17773], i32 0, [6 x i32] zeroinitializer, [6 x i32] [i32 320, i32 324, i32 328, i32 332, i32 336, i32 340], [6 x i32] [i32 323, i32 327, i32 331, i32 335, i32 339, i32 343], i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [132 x i8] zeroinitializer }, align 32
@hwseq_shift = internal constant { %struct.dce_hwseq_shift, [35 x i8] } { %struct.dce_hwseq_shift { i8 31, i8 0, i8 0, i8 0, i8 28, i8 1, i8 29, i8 31, i8 13, i8 16, i8 8, i8 20, i8 4, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [35 x i8] zeroinitializer }, align 32
@hwseq_mask = internal constant { %struct.dce_hwseq_mask, [108 x i8] } { %struct.dce_hwseq_mask { i32 -2147483648, i32 0, i32 1, i32 1, i32 268435456, i32 2, i32 536870912, i32 -2147483648, i32 8192, i32 196608, i32 768, i32 1048576, i32 16, i32 3, i32 7, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer }, align 32
@switch.table.dce112_link_encoder_create = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 6], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.18 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 892, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 906, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 913, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1423, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"bios_regs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 389, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"dce112_res_pool_funcs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1048, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"clk_src_regs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 372, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1287, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"dmcu_regs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 154, i32 40 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"dmcu_shift\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 158, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"dmcu_mask\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 162, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1298, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"abm_regs\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 166, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"abm_shift\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 170, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"abm_mask\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 174, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1308, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"dce112_tg_offsets\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 119, i32 53 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1329, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1336, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1344, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1352, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1362, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1372, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1379, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"res_create_funcs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 548, i32 43 }
@___asan_gen_.105 = private unnamed_addr constant [10 x i8] c"plane_cap\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 410, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"polaris_11_resource_cap\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 402, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [24 x i8] c"polaris_10_resource_cap\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 394, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"panel_cntl_regs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 244, i32 46 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"panel_cntl_shift\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 248, i32 42 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"panel_cntl_mask\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 252, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"link_enc_regs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 275, i32 47 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"link_enc_aux_regs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 235, i32 51 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"link_enc_hpd_regs\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 261, i32 51 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"link_enc_feature\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 611, i32 45 }
@___asan_gen_.135 = private unnamed_addr constant [9 x i8] c"cs_shift\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 381, i32 42 }
@___asan_gen_.138 = private unnamed_addr constant [8 x i8] c"cs_mask\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 385, i32 41 }
@___asan_gen_.141 = private unnamed_addr constant [8 x i8] c"mi_regs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 556, i32 45 }
@___asan_gen_.144 = private unnamed_addr constant [10 x i8] c"mi_shifts\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 565, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant [9 x i8] c"mi_masks\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 569, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"ipp_regs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 191, i32 39 }
@___asan_gen_.153 = private unnamed_addr constant [10 x i8] c"ipp_shift\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 200, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant [9 x i8] c"ipp_mask\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 204, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [9 x i8] c"xfm_regs\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 213, i32 45 }
@___asan_gen_.162 = private unnamed_addr constant [10 x i8] c"xfm_shift\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 222, i32 41 }
@___asan_gen_.165 = private unnamed_addr constant [9 x i8] c"xfm_mask\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 226, i32 40 }
@___asan_gen_.168 = private unnamed_addr constant [9 x i8] c"opp_regs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 313, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant [10 x i8] c"opp_shift\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 322, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant [9 x i8] c"opp_mask\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 326, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant [16 x i8] c"aux_engine_regs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 336, i32 42 }
@___asan_gen_.180 = private unnamed_addr constant [9 x i8] c"aux_mask\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 182, i32 47 }
@___asan_gen_.183 = private unnamed_addr constant [10 x i8] c"aux_shift\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 178, i32 48 }
@___asan_gen_.186 = private unnamed_addr constant [12 x i8] c"i2c_hw_regs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 712, i32 39 }
@___asan_gen_.189 = private unnamed_addr constant [11 x i8] c"i2c_shifts\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 721, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant [10 x i8] c"i2c_masks\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 725, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant [11 x i8] c"audio_regs\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 350, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"audio_shift\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 359, i32 37 }
@___asan_gen_.201 = private unnamed_addr constant [11 x i8] c"audio_mask\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 363, i32 36 }
@___asan_gen_.204 = private unnamed_addr constant [16 x i8] c"stream_enc_regs\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 291, i32 49 }
@___asan_gen_.207 = private unnamed_addr constant [9 x i8] c"se_shift\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 300, i32 46 }
@___asan_gen_.210 = private unnamed_addr constant [8 x i8] c"se_mask\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 304, i32 45 }
@___asan_gen_.213 = private unnamed_addr constant [10 x i8] c"hwseq_reg\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 522, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant [12 x i8] c"hwseq_shift\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 526, i32 37 }
@___asan_gen_.219 = private unnamed_addr constant [11 x i8] c"hwseq_mask\00", align 1
@___asan_gen_.220 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 530, i32 36 }
@___asan_gen_.222 = private unnamed_addr constant [40 x i8] c"switch.table.dce112_link_encoder_create\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bios_regs, ptr @dce112_res_pool_funcs, ptr @clk_src_regs, ptr @.str.7, ptr @dmcu_regs, ptr @dmcu_shift, ptr @dmcu_mask, ptr @.str.8, ptr @abm_regs, ptr @abm_shift, ptr @abm_mask, ptr @.str.9, ptr @dce112_tg_offsets, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @res_create_funcs, ptr @plane_cap, ptr @polaris_11_resource_cap, ptr @polaris_10_resource_cap, ptr @panel_cntl_regs, ptr @panel_cntl_shift, ptr @panel_cntl_mask, ptr @link_enc_regs, ptr @link_enc_aux_regs, ptr @link_enc_hpd_regs, ptr @link_enc_feature, ptr @cs_shift, ptr @cs_mask, ptr @mi_regs, ptr @mi_shifts, ptr @mi_masks, ptr @ipp_regs, ptr @ipp_shift, ptr @ipp_mask, ptr @xfm_regs, ptr @xfm_shift, ptr @xfm_mask, ptr @opp_regs, ptr @opp_shift, ptr @opp_mask, ptr @aux_engine_regs, ptr @aux_mask, ptr @aux_shift, ptr @i2c_hw_regs, ptr @i2c_shifts, ptr @i2c_masks, ptr @audio_regs, ptr @audio_shift, ptr @audio_mask, ptr @stream_enc_regs, ptr @se_shift, ptr @se_mask, ptr @hwseq_reg, ptr @hwseq_shift, ptr @hwseq_mask, ptr @switch.table.dce112_link_encoder_create], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 450, i32 576, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bios_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce112_res_pool_funcs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_src_regs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_regs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_shift to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_mask to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_shift to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_mask to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce112_tg_offsets to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_create_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plane_cap to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris_11_resource_cap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris_10_resource_cap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_shift to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_mask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_regs to i32), i32 952, i32 1184, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_aux_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_hpd_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_feature to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_shift to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_mask to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_regs to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_shifts to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_masks to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_regs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_shift to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_mask to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_regs to i32), i32 1560, i32 1952, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_shift to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_mask to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_shift to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_mask to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_engine_regs to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_mask to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_shift to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hw_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_shifts to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_masks to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_regs to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_shift to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_mask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_regs to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se_shift to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se_mask to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_reg to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_shift to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_mask to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce112_link_encoder_create to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce112_validate_bandwidth(ptr nocapture noundef readonly %dc, ptr noundef %context, i1 zeroext %fast_validate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce112_validate_bandwidth.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce112_validate_bandwidth, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce112_validate_bandwidth.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %bw_dceip = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 15
  %2 = ptrtoint ptr %bw_dceip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bw_dceip, align 4
  %bw_vbios = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 16
  %4 = ptrtoint ptr %bw_vbios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bw_vbios, align 8
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %6 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe_count, align 4
  %bw_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5
  %call4 = tail call zeroext i1 @bw_calcs(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %res_ctx, i32 noundef %9, ptr noundef %bw_ctx) #7
  br i1 %call4, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_state, align 4
  %bw_ctx10 = getelementptr inbounds %struct.dc_state, ptr %11, i32 0, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(412) %bw_ctx10, ptr noundef dereferenceable(412) %bw_ctx, i32 412) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %if.end9.if.end146_crit_edge, label %do.body17

if.end9.if.end146_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

do.body17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce112_validate_bandwidth.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce112_validate_bandwidth, %if.then29)) #7
          to label %if.end146 [label %if.then29], !srcloc !153

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %nbp_state_change_wm_ns = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8
  %b_mark = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 0, i32 1
  %12 = ptrtoint ptr %b_mark to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_mark, align 4
  %14 = ptrtoint ptr %nbp_state_change_wm_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbp_state_change_wm_ns, align 8
  %urgent_wm_ns = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5
  %b_mark39 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %b_mark39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b_mark39, align 4
  %18 = ptrtoint ptr %urgent_wm_ns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %urgent_wm_ns, align 8
  %stutter_exit_wm_ns = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6
  %b_mark48 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 0, i32 1
  %20 = ptrtoint ptr %b_mark48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_mark48, align 4
  %22 = ptrtoint ptr %stutter_exit_wm_ns to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stutter_exit_wm_ns, align 8
  %arrayidx57 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 1
  %b_mark58 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 1, i32 1
  %24 = ptrtoint ptr %b_mark58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %b_mark58, align 4
  %26 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx57, align 8
  %arrayidx67 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 1
  %b_mark68 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 1, i32 1
  %28 = ptrtoint ptr %b_mark68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b_mark68, align 4
  %30 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx67, align 8
  %arrayidx77 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 1
  %b_mark78 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 1, i32 1
  %32 = ptrtoint ptr %b_mark78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b_mark78, align 4
  %34 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx77, align 8
  %arrayidx87 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 2
  %b_mark88 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 2, i32 1
  %36 = ptrtoint ptr %b_mark88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %b_mark88, align 4
  %38 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx87, align 8
  %arrayidx97 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 2
  %b_mark98 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 2, i32 1
  %40 = ptrtoint ptr %b_mark98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b_mark98, align 4
  %42 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx97, align 8
  %arrayidx107 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 2
  %b_mark108 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 2, i32 1
  %44 = ptrtoint ptr %b_mark108 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %b_mark108, align 4
  %46 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx107, align 8
  %stutter_mode_enable = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %stutter_mode_enable to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %stutter_mode_enable, align 2, !range !154
  %50 = zext i8 %49 to i32
  %51 = ptrtoint ptr %bw_ctx to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bw_ctx, align 8, !range !154
  %53 = zext i8 %52 to i32
  %cpup_state_change_enable = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %cpup_state_change_enable to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cpup_state_change_enable, align 1, !range !154
  %56 = zext i8 %55 to i32
  %nbp_state_change_enable = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 3
  %57 = ptrtoint ptr %nbp_state_change_enable to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %nbp_state_change_enable, align 1, !range !154
  %59 = zext i8 %58 to i32
  %all_displays_in_sync = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 4
  %60 = ptrtoint ptr %all_displays_in_sync to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %all_displays_in_sync, align 4, !range !154
  %62 = zext i8 %61 to i32
  %dispclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 12
  %63 = ptrtoint ptr %dispclk_khz to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dispclk_khz, align 4
  %sclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 9
  %65 = ptrtoint ptr %sclk_khz to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sclk_khz, align 8
  %sclk_deep_sleep_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 10
  %67 = ptrtoint ptr %sclk_deep_sleep_khz to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sclk_deep_sleep_khz, align 4
  %yclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 11
  %69 = ptrtoint ptr %yclk_khz to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %yclk_khz, align 8
  %blackout_recovery_time_us = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 13
  %71 = ptrtoint ptr %blackout_recovery_time_us to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %blackout_recovery_time_us, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce112_validate_bandwidth.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %50, i32 noundef %53, i32 noundef %56, i32 noundef %59, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72) #7
  br label %if.end146

if.end146:                                        ; preds = %if.then29, %do.body17, %if.end9.if.end146_crit_edge
  ret i1 %call4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bw_calcs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @resource_map_phy_clock_resources(ptr nocapture noundef readonly %dc, ptr noundef %context, ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %call = tail call ptr @resource_get_head_pipe_for_stream(ptr noundef %res_ctx, ptr noundef %stream) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream1 = getelementptr inbounds %struct.pipe_ctx, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %signal, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else [
    i32 32, label %if.end.if.then6_crit_edge
    i32 128, label %if.end.if.then6_crit_edge29
    i32 64, label %if.end.if.then6_crit_edge30
    i32 512, label %if.end.if.then6_crit_edge31
  ]

if.end.if.then6_crit_edge31:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.if.then6_crit_edge30:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.if.then6_crit_edge29:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge29, %if.end.if.then6_crit_edge30, %if.end.if.then6_crit_edge31
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %5 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res_pool, align 8
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %6, i32 0, i32 29
  br label %if.end11.sink.split

if.else:                                          ; preds = %if.end
  %res_pool8 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %7 = ptrtoint ptr %res_pool8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res_pool8, align 8
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %9 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link.i, align 4
  %link_enc.i = getelementptr inbounds %struct.dc_link, ptr %10, i32 0, i32 38
  %11 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_enc.i, align 8
  %transmitter.i = getelementptr inbounds %struct.link_encoder, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %transmitter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transmitter.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %14, label %if.else.if.end11_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb7.i
    i32 4, label %sw.bb10.i
    i32 5, label %sw.bb13.i
  ]

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %clock_sources.i = getelementptr inbounds %struct.resource_pool, ptr %8, i32 0, i32 30
  br label %if.end11.sink.split

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 30, i32 1
  br label %if.end11.sink.split

sw.bb4.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 30, i32 2
  br label %if.end11.sink.split

sw.bb7.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 30, i32 3
  br label %if.end11.sink.split

sw.bb10.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 30, i32 4
  br label %if.end11.sink.split

sw.bb13.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 30, i32 5
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %sw.bb13.i, %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %if.then6
  %arrayidx15.sink.i.sink = phi ptr [ %dp_clock_source, %if.then6 ], [ %arrayidx15.i, %sw.bb13.i ], [ %arrayidx12.i, %sw.bb10.i ], [ %arrayidx9.i, %sw.bb7.i ], [ %arrayidx6.i, %sw.bb4.i ], [ %arrayidx3.i, %sw.bb1.i ], [ %clock_sources.i, %sw.bb.i ]
  %16 = ptrtoint ptr %arrayidx15.sink.i.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx15.sink.i.sink, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.else.if.end11_crit_edge
  %retval.0.i.sink = phi ptr [ null, %if.else.if.end11_crit_edge ], [ %17, %if.end11.sink.split ]
  %clock_source10 = getelementptr inbounds %struct.pipe_ctx, ptr %call, i32 0, i32 5
  %18 = ptrtoint ptr %clock_source10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i.sink, ptr %clock_source10, align 8
  %cmp = icmp eq ptr %retval.0.i.sink, null
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %res_pool16 = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %19 = ptrtoint ptr %res_pool16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %res_pool16, align 8
  tail call void @resource_reference_clock_source(ptr noundef %res_ctx, ptr noundef %20, ptr noundef nonnull %retval.0.i.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end14 ], [ -1, %entry.cleanup_crit_edge ], [ 4, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @resource_get_head_pipe_for_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @resource_reference_clock_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce112_add_stream_to_ctx(ptr noundef %dc, ptr noundef %new_ctx, ptr noundef %dc_stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @resource_map_pool_resources(ptr noundef %dc, ptr noundef %new_ctx, ptr noundef %dc_stream) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %new_ctx, i32 0, i32 4
  %call.i = tail call ptr @resource_get_head_pipe_for_stream(ptr noundef %res_ctx.i, ptr noundef %dc_stream) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end5_crit_edge, label %if.end.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.i:                                         ; preds = %if.then
  %stream1.i = getelementptr inbounds %struct.pipe_ctx, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1.i, align 4
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %signal.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %3, label %if.else.i [
    i32 32, label %if.end.i.if.then6.i_crit_edge
    i32 128, label %if.end.i.if.then6.i_crit_edge24
    i32 64, label %if.end.i.if.then6.i_crit_edge25
    i32 512, label %if.end.i.if.then6.i_crit_edge26
  ]

if.end.i.if.then6.i_crit_edge26:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

if.end.i.if.then6.i_crit_edge25:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

if.end.i.if.then6.i_crit_edge24:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge24, %if.end.i.if.then6.i_crit_edge25, %if.end.i.if.then6.i_crit_edge26
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %5 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res_pool.i, align 8
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %6, i32 0, i32 29
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i
  %res_pool8.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %7 = ptrtoint ptr %res_pool8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res_pool8.i, align 8
  %link.i.i = getelementptr inbounds %struct.dc_stream_state, ptr %dc_stream, i32 0, i32 1
  %9 = ptrtoint ptr %link.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link.i.i, align 4
  %link_enc.i.i = getelementptr inbounds %struct.dc_link, ptr %10, i32 0, i32 38
  %11 = ptrtoint ptr %link_enc.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_enc.i.i, align 8
  %transmitter.i.i = getelementptr inbounds %struct.link_encoder, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %transmitter.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transmitter.i.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %14, label %if.end11.i.thread [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb4.i.i
    i32 3, label %sw.bb7.i.i
    i32 4, label %sw.bb10.i.i
    i32 5, label %sw.bb13.i.i
  ]

if.end11.i.thread:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %clock_source10.i20 = getelementptr inbounds %struct.pipe_ctx, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %clock_source10.i20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %clock_source10.i20, align 8
  br label %if.end5

sw.bb.i.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %clock_sources.i.i = getelementptr inbounds %struct.resource_pool, ptr %8, i32 0, i32 30
  br label %if.end11.i

sw.bb1.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 30, i32 1
  br label %if.end11.i

sw.bb4.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.i.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 30, i32 2
  br label %if.end11.i

sw.bb7.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.i.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 30, i32 3
  br label %if.end11.i

sw.bb10.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12.i.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 30, i32 4
  br label %if.end11.i

sw.bb13.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr %struct.resource_pool, ptr %8, i32 0, i32 30, i32 5
  br label %if.end11.i

if.end11.i:                                       ; preds = %sw.bb13.i.i, %sw.bb10.i.i, %sw.bb7.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.then6.i
  %arrayidx15.sink.i.sink.i = phi ptr [ %dp_clock_source.i, %if.then6.i ], [ %arrayidx15.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb10.i.i ], [ %arrayidx9.i.i, %sw.bb7.i.i ], [ %arrayidx6.i.i, %sw.bb4.i.i ], [ %arrayidx3.i.i, %sw.bb1.i.i ], [ %clock_sources.i.i, %sw.bb.i.i ]
  %17 = ptrtoint ptr %arrayidx15.sink.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx15.sink.i.sink.i, align 4
  %clock_source10.i = getelementptr inbounds %struct.pipe_ctx, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %clock_source10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %clock_source10.i, align 8
  %cmp.i = icmp eq ptr %18, null
  br i1 %cmp.i, label %if.end11.i.if.end5_crit_edge, label %if.then3

if.end11.i.if.end5_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end11.i
  %res_pool16.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %20 = ptrtoint ptr %res_pool16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %res_pool16.i, align 8
  tail call void @resource_reference_clock_source(ptr noundef %res_ctx.i, ptr noundef %21, ptr noundef nonnull %18) #7
  %call.i15 = tail call ptr @resource_get_head_pipe_for_stream(ptr noundef %res_ctx.i, ptr noundef %dc_stream) #7
  %tobool.not.i16 = icmp eq ptr %call.i15, null
  br i1 %tobool.not.i16, label %if.then3.if.end5_crit_edge, label %if.end.i17

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.i17:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dce110_resource_build_pipe_hw_param(ptr noundef nonnull %call.i15) #7
  tail call void @resource_build_info_frame(ptr noundef nonnull %call.i15) #7
  br label %if.end5

if.end5:                                          ; preds = %if.end.i17, %if.then3.if.end5_crit_edge, %if.end11.i.if.end5_crit_edge, %if.end11.i.thread, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %result.1 = phi i32 [ 1, %if.end.i17 ], [ -1, %if.then3.if.end5_crit_edge ], [ 4, %if.end11.i.thread ], [ 4, %if.end11.i.if.end5_crit_edge ], [ -1, %if.then.if.end5_crit_edge ], [ %call, %entry.if.end5_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @resource_map_pool_resources(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dce112_create_resource_pool(i8 noundef zeroext %num_virtual_links, ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  %eng_clks.i = alloca %struct.dm_pp_clock_levels_with_latency, align 4
  %mem_clks.i = alloca %struct.dm_pp_clock_levels_with_latency, align 4
  %clk_ranges.i = alloca %struct.dm_pp_wm_sets_with_clock_ranges, align 4
  %clks.i = alloca %struct.dm_pp_clock_levels, align 4
  %tmp.i = alloca %struct.bw_fixed, align 8
  %tmp7.i = alloca %struct.bw_fixed, align 8
  %tmp13.i = alloca %struct.bw_fixed, align 8
  %tmp20.i = alloca %struct.bw_fixed, align 8
  %tmp28.i = alloca %struct.bw_fixed, align 8
  %tmp36.i = alloca %struct.bw_fixed, align 8
  %tmp44.i = alloca %struct.bw_fixed, align 8
  %tmp52.i = alloca %struct.bw_fixed, align 8
  %tmp59.i = alloca %struct.bw_fixed, align 8
  %tmp65.i = alloca %struct.bw_fixed, align 8
  %tmp72.i = alloca %struct.bw_fixed, align 8
  %tmp82.i = alloca %struct.bw_fixed, align 8
  %tmp90.i = alloca %struct.bw_fixed, align 8
  %tmp99.i = alloca %struct.bw_fixed, align 8
  %tmp109.i = alloca %struct.bw_fixed, align 8
  %tmp119.i = alloca %struct.bw_fixed, align 8
  %tmp129.i = alloca %struct.bw_fixed, align 8
  %tmp139.i = alloca %struct.bw_fixed, align 8
  %tmp149.i = alloca %struct.bw_fixed, align 8
  %tmp158.i = alloca %struct.bw_fixed, align 8
  %tmp166.i = alloca %struct.bw_fixed, align 8
  %tmp176.i = alloca %struct.bw_fixed, align 8
  %init_data.i = alloca %struct.irq_service_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 516) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx1.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %1 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx1.i, align 8
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc_bios.i, align 4
  %regs.i = getelementptr inbounds %struct.dc_bios, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bios_regs, ptr %regs.i, align 4
  %hw_internal_rev.i.i = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %hw_internal_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_internal_rev.i.i, align 4
  %8 = add i32 %7, -90
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %8)
  %9 = icmp ult i32 %8, 20
  %retval.0.i.i = select i1 %9, ptr @polaris_11_resource_cap, ptr @polaris_10_resource_cap
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 41
  %10 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %res_cap.i, align 4
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 40
  %11 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dce112_res_pool_funcs, ptr %funcs.i, align 8
  %underlay_pipe_index.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 20
  %12 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %underlay_pipe_index.i, align 8
  %13 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %retval.0.i.i, align 4
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pipe_count.i, align 4
  %timing_generator_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 26
  %16 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %timing_generator_count.i, align 8
  %max_downscale_ratio.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 7
  %17 = ptrtoint ptr %max_downscale_ratio.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 200, ptr %max_downscale_ratio.i, align 4
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100, ptr %i2c_speed_in_khz.i, align 4
  %i2c_speed_in_khz_hdcp.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 9
  %19 = ptrtoint ptr %i2c_speed_in_khz_hdcp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 100, ptr %i2c_speed_in_khz_hdcp.i, align 4
  %max_cursor_size.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 11
  %20 = ptrtoint ptr %max_cursor_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %max_cursor_size.i, align 4
  %min_horizontal_blanking_period.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 13
  %21 = ptrtoint ptr %min_horizontal_blanking_period.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 80, ptr %min_horizontal_blanking_period.i, align 4
  %dual_link_dvi.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 18
  %22 = ptrtoint ptr %dual_link_dvi.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %dual_link_dvi.i, align 1
  %extended_aux_timeout_support.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 23
  %23 = ptrtoint ptr %extended_aux_timeout_support.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %extended_aux_timeout_support.i, align 4
  %24 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 184) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.dce112_clock_source_create.exit.i_crit_edge, label %if.end.i.i

if.end.dce112_clock_source_create.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_clock_source_create.exit.i

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %2, ptr noundef %25, i32 noundef 9, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i.i, label %if.then2.i.i, label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %dp_clk_src4.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dp_clk_src4.i.i, align 4
  br label %dce112_clock_source_create.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_clock_source_create, i32 noundef 764) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce112_clock_source_create.exit.i

dce112_clock_source_create.exit.i:                ; preds = %if.end7.i.i, %if.then2.i.i, %if.end.dce112_clock_source_create.exit.i_crit_edge
  %retval.0.i339.i = phi ptr [ %call7.i.i.i.i, %if.then2.i.i ], [ null, %if.end7.i.i ], [ null, %if.end.dce112_clock_source_create.exit.i_crit_edge ]
  %clock_sources.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %28 = ptrtoint ptr %clock_sources.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i339.i, ptr %clock_sources.i, align 8
  %29 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i340.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 184) #11
  %tobool.not.i341.i = icmp eq ptr %call7.i.i.i340.i, null
  br i1 %tobool.not.i341.i, label %dce112_clock_source_create.exit.i.dce112_clock_source_create.exit348.i_crit_edge, label %if.end.i343.i

dce112_clock_source_create.exit.i.dce112_clock_source_create.exit348.i_crit_edge: ; preds = %dce112_clock_source_create.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_clock_source_create.exit348.i

if.end.i343.i:                                    ; preds = %dce112_clock_source_create.exit.i
  %call1.i342.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i340.i, ptr noundef %2, ptr noundef %30, i32 noundef 10, ptr noundef getelementptr inbounds ([6 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i342.i, label %if.then2.i345.i, label %if.end7.i346.i

if.then2.i345.i:                                  ; preds = %if.end.i343.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i344.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i340.i, i32 0, i32 3
  %32 = ptrtoint ptr %dp_clk_src4.i344.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %dp_clk_src4.i344.i, align 4
  br label %dce112_clock_source_create.exit348.i

if.end7.i346.i:                                   ; preds = %if.end.i343.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i340.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_clock_source_create, i32 noundef 764) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce112_clock_source_create.exit348.i

dce112_clock_source_create.exit348.i:             ; preds = %if.end7.i346.i, %if.then2.i345.i, %dce112_clock_source_create.exit.i.dce112_clock_source_create.exit348.i_crit_edge
  %retval.0.i347.i = phi ptr [ %call7.i.i.i340.i, %if.then2.i345.i ], [ null, %if.end7.i346.i ], [ null, %dce112_clock_source_create.exit.i.dce112_clock_source_create.exit348.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %33 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i347.i, ptr %arrayidx24.i, align 4
  %34 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i349.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 184) #11
  %tobool.not.i350.i = icmp eq ptr %call7.i.i.i349.i, null
  br i1 %tobool.not.i350.i, label %dce112_clock_source_create.exit348.i.dce112_clock_source_create.exit357.i_crit_edge, label %if.end.i352.i

dce112_clock_source_create.exit348.i.dce112_clock_source_create.exit357.i_crit_edge: ; preds = %dce112_clock_source_create.exit348.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_clock_source_create.exit357.i

if.end.i352.i:                                    ; preds = %dce112_clock_source_create.exit348.i
  %call1.i351.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i349.i, ptr noundef %2, ptr noundef %35, i32 noundef 11, ptr noundef getelementptr inbounds ([6 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 2), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i351.i, label %if.then2.i354.i, label %if.end7.i355.i

if.then2.i354.i:                                  ; preds = %if.end.i352.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i353.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i349.i, i32 0, i32 3
  %37 = ptrtoint ptr %dp_clk_src4.i353.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %dp_clk_src4.i353.i, align 4
  br label %dce112_clock_source_create.exit357.i

if.end7.i355.i:                                   ; preds = %if.end.i352.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i349.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_clock_source_create, i32 noundef 764) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce112_clock_source_create.exit357.i

dce112_clock_source_create.exit357.i:             ; preds = %if.end7.i355.i, %if.then2.i354.i, %dce112_clock_source_create.exit348.i.dce112_clock_source_create.exit357.i_crit_edge
  %retval.0.i356.i = phi ptr [ %call7.i.i.i349.i, %if.then2.i354.i ], [ null, %if.end7.i355.i ], [ null, %dce112_clock_source_create.exit348.i.dce112_clock_source_create.exit357.i_crit_edge ]
  %arrayidx29.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 2
  %38 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i356.i, ptr %arrayidx29.i, align 8
  %39 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i358.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 184) #11
  %tobool.not.i359.i = icmp eq ptr %call7.i.i.i358.i, null
  br i1 %tobool.not.i359.i, label %dce112_clock_source_create.exit357.i.dce112_clock_source_create.exit366.i_crit_edge, label %if.end.i361.i

dce112_clock_source_create.exit357.i.dce112_clock_source_create.exit366.i_crit_edge: ; preds = %dce112_clock_source_create.exit357.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_clock_source_create.exit366.i

if.end.i361.i:                                    ; preds = %dce112_clock_source_create.exit357.i
  %call1.i360.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i358.i, ptr noundef %2, ptr noundef %40, i32 noundef 12, ptr noundef getelementptr inbounds ([6 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 3), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i360.i, label %if.then2.i363.i, label %if.end7.i364.i

if.then2.i363.i:                                  ; preds = %if.end.i361.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i362.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i358.i, i32 0, i32 3
  %42 = ptrtoint ptr %dp_clk_src4.i362.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %dp_clk_src4.i362.i, align 4
  br label %dce112_clock_source_create.exit366.i

if.end7.i364.i:                                   ; preds = %if.end.i361.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i358.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_clock_source_create, i32 noundef 764) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce112_clock_source_create.exit366.i

dce112_clock_source_create.exit366.i:             ; preds = %if.end7.i364.i, %if.then2.i363.i, %dce112_clock_source_create.exit357.i.dce112_clock_source_create.exit366.i_crit_edge
  %retval.0.i365.i = phi ptr [ %call7.i.i.i358.i, %if.then2.i363.i ], [ null, %if.end7.i364.i ], [ null, %dce112_clock_source_create.exit357.i.dce112_clock_source_create.exit366.i_crit_edge ]
  %arrayidx34.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 3
  %43 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.0.i365.i, ptr %arrayidx34.i, align 4
  %44 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i367.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 184) #11
  %tobool.not.i368.i = icmp eq ptr %call7.i.i.i367.i, null
  br i1 %tobool.not.i368.i, label %dce112_clock_source_create.exit366.i.dce112_clock_source_create.exit375.i_crit_edge, label %if.end.i370.i

dce112_clock_source_create.exit366.i.dce112_clock_source_create.exit375.i_crit_edge: ; preds = %dce112_clock_source_create.exit366.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_clock_source_create.exit375.i

if.end.i370.i:                                    ; preds = %dce112_clock_source_create.exit366.i
  %call1.i369.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i367.i, ptr noundef %2, ptr noundef %45, i32 noundef 13, ptr noundef getelementptr inbounds ([6 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 4), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i369.i, label %if.then2.i372.i, label %if.end7.i373.i

if.then2.i372.i:                                  ; preds = %if.end.i370.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i371.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i367.i, i32 0, i32 3
  %47 = ptrtoint ptr %dp_clk_src4.i371.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %dp_clk_src4.i371.i, align 4
  br label %dce112_clock_source_create.exit375.i

if.end7.i373.i:                                   ; preds = %if.end.i370.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i367.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_clock_source_create, i32 noundef 764) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce112_clock_source_create.exit375.i

dce112_clock_source_create.exit375.i:             ; preds = %if.end7.i373.i, %if.then2.i372.i, %dce112_clock_source_create.exit366.i.dce112_clock_source_create.exit375.i_crit_edge
  %retval.0.i374.i = phi ptr [ %call7.i.i.i367.i, %if.then2.i372.i ], [ null, %if.end7.i373.i ], [ null, %dce112_clock_source_create.exit366.i.dce112_clock_source_create.exit375.i_crit_edge ]
  %arrayidx39.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 4
  %48 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %retval.0.i374.i, ptr %arrayidx39.i, align 8
  %49 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i376.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 184) #11
  %tobool.not.i377.i = icmp eq ptr %call7.i.i.i376.i, null
  br i1 %tobool.not.i377.i, label %dce112_clock_source_create.exit375.i.dce112_clock_source_create.exit384.i_crit_edge, label %if.end.i379.i

dce112_clock_source_create.exit375.i.dce112_clock_source_create.exit384.i_crit_edge: ; preds = %dce112_clock_source_create.exit375.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_clock_source_create.exit384.i

if.end.i379.i:                                    ; preds = %dce112_clock_source_create.exit375.i
  %call1.i378.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i376.i, ptr noundef %2, ptr noundef %50, i32 noundef 14, ptr noundef getelementptr inbounds ([6 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 5), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i378.i, label %if.then2.i381.i, label %if.end7.i382.i

if.then2.i381.i:                                  ; preds = %if.end.i379.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i380.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i376.i, i32 0, i32 3
  %52 = ptrtoint ptr %dp_clk_src4.i380.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %dp_clk_src4.i380.i, align 4
  br label %dce112_clock_source_create.exit384.i

if.end7.i382.i:                                   ; preds = %if.end.i379.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i376.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_clock_source_create, i32 noundef 764) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce112_clock_source_create.exit384.i

dce112_clock_source_create.exit384.i:             ; preds = %if.end7.i382.i, %if.then2.i381.i, %dce112_clock_source_create.exit375.i.dce112_clock_source_create.exit384.i_crit_edge
  %retval.0.i383.i = phi ptr [ %call7.i.i.i376.i, %if.then2.i381.i ], [ null, %if.end7.i382.i ], [ null, %dce112_clock_source_create.exit375.i.dce112_clock_source_create.exit384.i_crit_edge ]
  %arrayidx44.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 5
  %53 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %retval.0.i383.i, ptr %arrayidx44.i, align 4
  %clk_src_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 31
  %54 = ptrtoint ptr %clk_src_count.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 6, ptr %clk_src_count.i, align 4
  %55 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i385.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 184) #11
  %tobool.not.i386.i = icmp eq ptr %call7.i.i.i385.i, null
  br i1 %tobool.not.i386.i, label %dce112_clock_source_create.exit384.i.dce112_clock_source_create.exit393.i_crit_edge, label %if.end.i388.i

dce112_clock_source_create.exit384.i.dce112_clock_source_create.exit393.i_crit_edge: ; preds = %dce112_clock_source_create.exit384.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_clock_source_create.exit393.i

if.end.i388.i:                                    ; preds = %dce112_clock_source_create.exit384.i
  %call1.i387.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i385.i, ptr noundef %2, ptr noundef %56, i32 noundef 8, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i387.i, label %if.then2.i390.i, label %if.end7.i391.i

if.then2.i390.i:                                  ; preds = %if.end.i388.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i389.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i385.i, i32 0, i32 3
  %58 = ptrtoint ptr %dp_clk_src4.i389.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %dp_clk_src4.i389.i, align 4
  br label %dce112_clock_source_create.exit393.i

if.end7.i391.i:                                   ; preds = %if.end.i388.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i385.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_clock_source_create, i32 noundef 764) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce112_clock_source_create.exit393.i

dce112_clock_source_create.exit393.i:             ; preds = %if.end7.i391.i, %if.then2.i390.i, %dce112_clock_source_create.exit384.i.dce112_clock_source_create.exit393.i_crit_edge
  %retval.0.i392.i = phi ptr [ %call7.i.i.i385.i, %if.then2.i390.i ], [ null, %if.end7.i391.i ], [ null, %dce112_clock_source_create.exit384.i.dce112_clock_source_create.exit393.i_crit_edge ]
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %59 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i392.i, ptr %dp_clock_source.i, align 4
  %60 = ptrtoint ptr %clk_src_count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %clk_src_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp445.not.i = icmp eq i32 %61, 0
  br i1 %cmp445.not.i, label %dce112_clock_source_create.exit393.i.for.end.i_crit_edge, label %dce112_clock_source_create.exit393.i.for.body.i_crit_edge

dce112_clock_source_create.exit393.i.for.body.i_crit_edge: ; preds = %dce112_clock_source_create.exit393.i
  br label %for.body.i

dce112_clock_source_create.exit393.i.for.end.i_crit_edge: ; preds = %dce112_clock_source_create.exit393.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0446.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %61
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %dce112_clock_source_create.exit393.i.for.body.i_crit_edge
  %i.0446.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %dce112_clock_source_create.exit393.i.for.body.i_crit_edge ]
  %arrayidx53.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 %i.0446.i
  %62 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx53.i, align 4
  %cmp54.i = icmp eq ptr %63, null
  br i1 %cmp54.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_resource_construct, i32 noundef 1288) #7
  tail call void @kgdb_breakpoint() #7
  br label %if.end3

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %dce112_clock_source_create.exit393.i.for.end.i_crit_edge
  %call55.i = tail call ptr @dce_dmcu_create(ptr noundef %2, ptr noundef nonnull @dmcu_regs, ptr noundef nonnull @dmcu_shift, ptr noundef nonnull @dmcu_mask) #7
  %dmcu.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 38
  %64 = ptrtoint ptr %dmcu.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call55.i, ptr %dmcu.i, align 8
  %cmp59.i = icmp eq ptr %call55.i, null
  br i1 %cmp59.i, label %if.then60.i, label %if.end64.i

if.then60.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_resource_construct, i32 noundef 1299) #7
  tail call void @kgdb_breakpoint() #7
  br label %if.end3

if.end64.i:                                       ; preds = %for.end.i
  %call65.i = tail call ptr @dce_abm_create(ptr noundef %2, ptr noundef nonnull @abm_regs, ptr noundef nonnull @abm_shift, ptr noundef nonnull @abm_mask) #7
  %abm.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 37
  %65 = ptrtoint ptr %abm.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call65.i, ptr %abm.i, align 4
  %cmp69.i = icmp eq ptr %call65.i, null
  br i1 %cmp69.i, label %if.then70.i, label %if.end74.i

if.then70.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_resource_construct, i32 noundef 1309) #7
  tail call void @kgdb_breakpoint() #7
  br label %if.end3

if.end74.i:                                       ; preds = %if.end64.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_data.i) #7
  %66 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctx1.i, align 8
  %68 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %init_data.i, align 4
  %call77.i = call ptr @dal_irq_service_dce110_create(ptr noundef nonnull %init_data.i) #7
  %irqs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 36
  %69 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call77.i, ptr %irqs.i, align 8
  %tobool.not.i = icmp eq ptr %call77.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_data.i) #7
  br i1 %tobool.not.i, label %if.end74.i.if.end3_crit_edge, label %for.cond83.preheader.i

if.end74.i.if.end3_crit_edge:                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.cond83.preheader.i:                           ; preds = %if.end74.i
  %70 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp86447.not.i = icmp eq i32 %71, 0
  br i1 %cmp86447.not.i, label %for.cond83.preheader.i.for.cond152.preheader.i_crit_edge, label %for.cond83.preheader.i.for.body87.i_crit_edge

for.cond83.preheader.i.for.body87.i_crit_edge:    ; preds = %for.cond83.preheader.i
  br label %for.body87.i

for.cond83.preheader.i.for.cond152.preheader.i_crit_edge: ; preds = %for.cond83.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond152.preheader.i

for.cond152.preheader.i:                          ; preds = %for.inc149.i.for.cond152.preheader.i_crit_edge, %for.cond83.preheader.i.for.cond152.preheader.i_crit_edge
  %72 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %res_cap.i, align 4
  %num_ddc449.i = getelementptr inbounds %struct.resource_caps, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %num_ddc449.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_ddc449.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp155450.not.i = icmp eq i32 %75, 0
  br i1 %cmp155450.not.i, label %for.cond152.preheader.i.for.end185.i_crit_edge, label %for.cond152.preheader.i.for.body156.i_crit_edge

for.cond152.preheader.i.for.body156.i_crit_edge:  ; preds = %for.cond152.preheader.i
  br label %for.body156.i

for.cond152.preheader.i.for.end185.i_crit_edge:   ; preds = %for.cond152.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end185.i

for.body87.i:                                     ; preds = %for.inc149.i.for.body87.i_crit_edge, %for.cond83.preheader.i.for.body87.i_crit_edge
  %i.1448.i = phi i32 [ %inc150.i, %for.inc149.i.for.body87.i_crit_edge ], [ 0, %for.cond83.preheader.i.for.body87.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i394.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3520, i32 noundef 76) #11
  %tobool.not.i395.i = icmp eq ptr %call7.i.i.i394.i, null
  br i1 %tobool.not.i395.i, label %do.body97.i, label %if.end100.i

do.body97.i:                                      ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx91420.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1448.i
  %77 = ptrtoint ptr %arrayidx91420.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx91420.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_resource_construct, i32 noundef 1328) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %if.end3

if.end100.i:                                      ; preds = %for.body87.i
  %arrayidx88.i = getelementptr [6 x %struct.dce110_timing_generator_offsets], ptr @dce112_tg_offsets, i32 0, i32 %i.1448.i
  call void @dce110_timing_generator_construct(ptr noundef nonnull %call7.i.i.i394.i, ptr noundef %2, i32 noundef %i.1448.i, ptr noundef %arrayidx88.i) #7
  %arrayidx91.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1448.i
  %78 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i.i394.i, ptr %arrayidx91.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i397.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 272) #11
  %tobool.not.i398.i = icmp eq ptr %call7.i.i.i397.i, null
  br i1 %tobool.not.i398.i, label %do.body109.i, label %if.end112.i

do.body109.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_mem_input_create, i32 noundef 581) #7
  call void @kgdb_breakpoint() #7
  %arrayidx103421.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1448.i
  %80 = ptrtoint ptr %arrayidx103421.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx103421.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_resource_construct, i32 noundef 1335) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %if.end3

if.end112.i:                                      ; preds = %if.end100.i
  %arrayidx.i.i = getelementptr [6 x %struct.dce_mem_input_registers], ptr @mi_regs, i32 0, i32 %i.1448.i
  call void @dce112_mem_input_construct(ptr noundef nonnull %call7.i.i.i397.i, ptr noundef %2, i32 noundef %i.1448.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mi_shifts, ptr noundef nonnull @mi_masks) #7
  %arrayidx103.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1448.i
  %81 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i.i397.i, ptr %arrayidx103.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i400.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 24) #11
  %tobool.not.i401.i = icmp eq ptr %call7.i.i.i400.i, null
  br i1 %tobool.not.i401.i, label %do.body121.i, label %if.end124.i

do.body121.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_ipp_create, i32 noundef 667) #7
  call void @kgdb_breakpoint() #7
  %arrayidx115422.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1448.i
  %83 = ptrtoint ptr %arrayidx115422.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %arrayidx115422.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_resource_construct, i32 noundef 1343) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %if.end3

if.end124.i:                                      ; preds = %if.end112.i
  %arrayidx.i403.i = getelementptr [6 x %struct.dce_ipp_registers], ptr @ipp_regs, i32 0, i32 %i.1448.i
  call void @dce_ipp_construct(ptr noundef nonnull %call7.i.i.i400.i, ptr noundef %2, i32 noundef %i.1448.i, ptr noundef %arrayidx.i403.i, ptr noundef nonnull @ipp_shift, ptr noundef nonnull @ipp_mask) #7
  %arrayidx115.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1448.i
  %84 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i.i400.i, ptr %arrayidx115.i, align 4
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19280, i32 noundef 3520, i32 noundef 3) #12
  %tobool.not.i405.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i405.i, label %do.body133.i, label %if.end136.i

do.body133.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx127423.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1448.i
  %85 = ptrtoint ptr %arrayidx127423.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %arrayidx127423.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_resource_construct, i32 noundef 1351) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %if.end3

if.end136.i:                                      ; preds = %if.end124.i
  %arrayidx.i406.i = getelementptr [6 x %struct.dce_transform_registers], ptr @xfm_regs, i32 0, i32 %i.1448.i
  call void @dce_transform_construct(ptr noundef nonnull %call1.i.i.i.i.i, ptr noundef %2, i32 noundef %i.1448.i, ptr noundef %arrayidx.i406.i, ptr noundef nonnull @xfm_shift, ptr noundef nonnull @xfm_mask) #7
  %lb_memory_size.i.i = getelementptr inbounds %struct.dce_transform, ptr %call1.i.i.i.i.i, i32 0, i32 9
  %86 = ptrtoint ptr %lb_memory_size.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 5124, ptr %lb_memory_size.i.i, align 64
  %arrayidx127.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1448.i
  %87 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx127.i, align 4
  %call1.i.i.i.i408.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19264, i32 noundef 3520, i32 noundef 3) #12
  %tobool.not.i409.i = icmp eq ptr %call1.i.i.i.i408.i, null
  br i1 %tobool.not.i409.i, label %do.body145.i, label %for.inc149.i

do.body145.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx139424.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1448.i
  %88 = ptrtoint ptr %arrayidx139424.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %arrayidx139424.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_resource_construct, i32 noundef 1361) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #7
  br label %if.end3

for.inc149.i:                                     ; preds = %if.end136.i
  %arrayidx.i410.i = getelementptr [6 x %struct.dce_opp_registers], ptr @opp_regs, i32 0, i32 %i.1448.i
  call void @dce110_opp_construct(ptr noundef nonnull %call1.i.i.i.i408.i, ptr noundef %2, i32 noundef %i.1448.i, ptr noundef %arrayidx.i410.i, ptr noundef nonnull @opp_shift, ptr noundef nonnull @opp_mask) #7
  %arrayidx139.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1448.i
  %89 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call1.i.i.i.i408.i, ptr %arrayidx139.i, align 4
  %inc150.i = add nuw i32 %i.1448.i, 1
  %90 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pipe_count.i, align 4
  %cmp86.i = icmp ult i32 %inc150.i, %91
  br i1 %cmp86.i, label %for.inc149.i.for.body87.i_crit_edge, label %for.inc149.i.for.cond152.preheader.i_crit_edge

for.inc149.i.for.cond152.preheader.i_crit_edge:   ; preds = %for.inc149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond152.preheader.i

for.inc149.i.for.body87.i_crit_edge:              ; preds = %for.inc149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body87.i

for.body156.i:                                    ; preds = %if.end180.i.for.body156.i_crit_edge, %for.cond152.preheader.i.for.body156.i_crit_edge
  %i.2451.i = phi i32 [ %inc184.i, %if.end180.i.for.body156.i_crit_edge ], [ 0, %for.cond152.preheader.i.for.body156.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i412.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 76) #11
  %tobool.not.i413.i = icmp eq ptr %call7.i.i.i412.i, null
  br i1 %tobool.not.i413.i, label %do.body165.i, label %if.end168.i

do.body165.i:                                     ; preds = %for.body156.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx159425.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2451.i
  %93 = ptrtoint ptr %arrayidx159425.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %arrayidx159425.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_resource_construct, i32 noundef 1371) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #7
  br label %if.end3

if.end168.i:                                      ; preds = %for.body156.i
  %arrayidx.i414.i = getelementptr [6 x %struct.dce110_aux_registers], ptr @aux_engine_regs, i32 0, i32 %i.2451.i
  %94 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %2, align 8
  %extended_aux_timeout_support.i.i = getelementptr inbounds %struct.dc, ptr %95, i32 0, i32 2, i32 23
  %96 = ptrtoint ptr %extended_aux_timeout_support.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %extended_aux_timeout_support.i.i, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool1.i.i = icmp ne i8 %97, 0
  %call2.i.i = call ptr @dce110_aux_engine_construct(ptr noundef nonnull %call7.i.i.i412.i, ptr noundef %2, i32 noundef %i.2451.i, i32 noundef 2400, ptr noundef %arrayidx.i414.i, ptr noundef nonnull @aux_mask, ptr noundef nonnull @aux_shift, i1 noundef zeroext %tobool1.i.i) #7
  %arrayidx159.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2451.i
  %98 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call7.i.i.i412.i, ptr %arrayidx159.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %99 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i416.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %99, i32 noundef 3520, i32 noundef 60) #11
  %tobool.not.i417.i = icmp eq ptr %call7.i.i.i416.i, null
  br i1 %tobool.not.i417.i, label %do.body177.i, label %if.end180.i

do.body177.i:                                     ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx171426.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2451.i
  %100 = ptrtoint ptr %arrayidx171426.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %arrayidx171426.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_resource_construct, i32 noundef 1378) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #7
  br label %if.end3

if.end180.i:                                      ; preds = %if.end168.i
  %arrayidx.i418.i = getelementptr [6 x %struct.dce_i2c_registers], ptr @i2c_hw_regs, i32 0, i32 %i.2451.i
  call void @dce112_i2c_hw_construct(ptr noundef nonnull %call7.i.i.i416.i, ptr noundef %2, i32 noundef %i.2451.i, ptr noundef %arrayidx.i418.i, ptr noundef nonnull @i2c_shifts, ptr noundef nonnull @i2c_masks) #7
  %arrayidx171.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2451.i
  %101 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i.i416.i, ptr %arrayidx171.i, align 4
  %arrayidx182.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2451.i
  %102 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %arrayidx182.i, align 4
  %inc184.i = add nuw i32 %i.2451.i, 1
  %103 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %res_cap.i, align 4
  %num_ddc.i = getelementptr inbounds %struct.resource_caps, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %num_ddc.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_ddc.i, align 4
  %cmp155.i = icmp ult i32 %inc184.i, %106
  br i1 %cmp155.i, label %if.end180.i.for.body156.i_crit_edge, label %if.end180.i.for.end185.i_crit_edge

if.end180.i.for.end185.i_crit_edge:               ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end185.i

if.end180.i.for.body156.i_crit_edge:              ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body156.i

for.end185.i:                                     ; preds = %if.end180.i.for.end185.i_crit_edge, %for.cond152.preheader.i.for.end185.i_crit_edge
  %conv.i = zext i8 %num_virtual_links to i32
  %call187.i = call zeroext i1 @resource_construct(i32 noundef %conv.i, ptr noundef %dc, ptr noundef %call7.i.i, ptr noundef nonnull @res_create_funcs) #7
  br i1 %call187.i, label %if.end189.i, label %for.end185.i.if.end3_crit_edge

for.end185.i.if.end3_crit_edge:                   ; preds = %for.end185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end189.i:                                      ; preds = %for.end185.i
  %107 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pipe_count.i, align 4
  %max_planes.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 6
  %109 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %max_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp196452.not.i = icmp eq i32 %108, 0
  br i1 %cmp196452.not.i, label %if.end189.i.for.end203.i_crit_edge, label %if.end189.i.for.body198.i_crit_edge

if.end189.i.for.body198.i_crit_edge:              ; preds = %if.end189.i
  br label %for.body198.i

if.end189.i.for.end203.i_crit_edge:               ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end203.i

for.body198.i:                                    ; preds = %for.body198.i.for.body198.i_crit_edge, %if.end189.i.for.body198.i_crit_edge
  %i.3453.i = phi i32 [ %inc202.i, %for.body198.i.for.body198.i_crit_edge ], [ 0, %if.end189.i.for.body198.i_crit_edge ]
  %arrayidx200.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 2, i32 30, i32 %i.3453.i
  %110 = call ptr @memcpy(ptr %arrayidx200.i, ptr @plane_cap, i32 44)
  %inc202.i = add nuw i32 %i.3453.i, 1
  %111 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_planes.i, align 4
  %cmp196.i = icmp ult i32 %inc202.i, %112
  br i1 %cmp196.i, label %for.body198.i.for.body198.i_crit_edge, label %for.body198.i.for.end203.i_crit_edge

for.body198.i.for.end203.i_crit_edge:             ; preds = %for.body198.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end203.i

for.body198.i.for.body198.i_crit_edge:            ; preds = %for.body198.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body198.i

for.end203.i:                                     ; preds = %for.body198.i.for.end203.i_crit_edge, %if.end189.i.for.end203.i_crit_edge
  call void @dce112_hw_sequencer_construct(ptr noundef %dc) #7
  %bw_dceip.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 15
  %113 = ptrtoint ptr %bw_dceip.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bw_dceip.i, align 4
  %bw_vbios.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 16
  %115 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bw_vbios.i, align 8
  %117 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ctx1.i, align 8
  %asic_id205.i = getelementptr inbounds %struct.dc_context, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %asic_id205.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.unpack.i = load i32, ptr %asic_id205.i, align 4
  %120 = insertvalue [9 x i32] undef, i32 %.unpack.i, 0
  %.elt323.i = getelementptr inbounds %struct.dc_context, ptr %118, i32 0, i32 5, i32 1
  %121 = ptrtoint ptr %.elt323.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %.unpack324.i = load i32, ptr %.elt323.i, align 4
  %122 = insertvalue [9 x i32] %120, i32 %.unpack324.i, 1
  %.elt325.i = getelementptr inbounds %struct.dc_context, ptr %118, i32 0, i32 5, i32 2
  %123 = ptrtoint ptr %.elt325.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.unpack326.i = load i32, ptr %.elt325.i, align 4
  %124 = insertvalue [9 x i32] %122, i32 %.unpack326.i, 2
  %.elt327.i = getelementptr inbounds %struct.dc_context, ptr %118, i32 0, i32 5, i32 3
  %125 = ptrtoint ptr %.elt327.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.unpack328.i = load i32, ptr %.elt327.i, align 4
  %126 = insertvalue [9 x i32] %124, i32 %.unpack328.i, 3
  %.elt329.i = getelementptr inbounds %struct.dc_context, ptr %118, i32 0, i32 5, i32 4
  %127 = ptrtoint ptr %.elt329.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %.unpack330.i = load i32, ptr %.elt329.i, align 4
  %128 = insertvalue [9 x i32] %126, i32 %.unpack330.i, 4
  %.elt331.i = getelementptr inbounds %struct.dc_context, ptr %118, i32 0, i32 5, i32 5
  %129 = ptrtoint ptr %.elt331.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.unpack332.i = load i32, ptr %.elt331.i, align 4
  %130 = insertvalue [9 x i32] %128, i32 %.unpack332.i, 5
  %.elt333.i = getelementptr inbounds %struct.dc_context, ptr %118, i32 0, i32 5, i32 6
  %131 = ptrtoint ptr %.elt333.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %.unpack334.i = load i32, ptr %.elt333.i, align 4
  %132 = insertvalue [9 x i32] %130, i32 %.unpack334.i, 6
  %.elt335.i = getelementptr inbounds %struct.dc_context, ptr %118, i32 0, i32 5, i32 7
  %133 = ptrtoint ptr %.elt335.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.unpack336.i = load i32, ptr %.elt335.i, align 4
  %134 = insertvalue [9 x i32] %132, i32 %.unpack336.i, 7
  %.elt337.i = getelementptr inbounds %struct.dc_context, ptr %118, i32 0, i32 5, i32 8
  %135 = ptrtoint ptr %.elt337.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.unpack338.i = load i32, ptr %.elt337.i, align 4
  %136 = insertvalue [9 x i32] %134, i32 %.unpack338.i, 8
  call void @bw_calcs_init(ptr noundef %114, ptr noundef %116, [9 x i32] %136) #7
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %eng_clks.i) #7
  %137 = call ptr @memset(ptr %eng_clks.i, i32 0, i32 132)
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %mem_clks.i) #7
  %138 = call ptr @memset(ptr %mem_clks.i, i32 0, i32 132)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %clk_ranges.i) #7
  %139 = call ptr @memset(ptr %clk_ranges.i, i32 0, i32 84)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %clks.i) #7
  %140 = call ptr @memset(ptr %clks.i, i32 0, i32 68)
  %141 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bw_vbios.i, align 8
  %tobool.not.i8 = icmp eq ptr %142, null
  br i1 %tobool.not.i8, label %for.end203.i.if.end.i_crit_edge, label %land.lhs.true.i

for.end203.i.if.end.i_crit_edge:                  ; preds = %for.end203.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.end203.i
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 295, i32 %144)
  %cmp.i = icmp eq i32 %144, 295
  %spec.select.i = select i1 %cmp.i, i32 2, i32 4
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %for.end203.i.if.end.i_crit_edge
  %memory_type_multiplier.0.i = phi i32 [ 4, %for.end203.i.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %145 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctx1.i, align 8
  %call.i = call zeroext i1 @dm_pp_get_clock_levels_by_type_with_latency(ptr noundef %146, i32 noundef 2, ptr noundef nonnull %eng_clks.i) #7
  br i1 %call.i, label %if.end79.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ctx1.i, align 8
  %call4.i = call zeroext i1 @dm_pp_get_clock_levels_by_type(ptr noundef %148, i32 noundef 2, ptr noundef nonnull %clks.i) #7
  %149 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bw_vbios.i, align 8
  %high_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %150, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #7
  %clocks_in_khz.i = getelementptr inbounds %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1
  %151 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %clks.i, align 4
  %sub.i = add i32 %152, -1
  %arrayidx.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %sub.i
  %153 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.i, align 4
  %conv.i9 = zext i32 %154 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp.i, i64 noundef %conv.i9, i64 noundef 1000) #7
  %155 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %tmp.i, align 8
  %157 = ptrtoint ptr %high_sclk.i to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %156, ptr %high_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #7
  %158 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bw_vbios.i, align 8
  %mid1_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %159, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp7.i) #7
  %160 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %clks.i, align 4
  %div337.i = lshr i32 %161, 3
  %arrayidx10.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div337.i
  %162 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx10.i, align 4
  %conv11.i = zext i32 %163 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp7.i, i64 noundef %conv11.i, i64 noundef 1000) #7
  %164 = ptrtoint ptr %tmp7.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %tmp7.i, align 8
  %166 = ptrtoint ptr %mid1_sclk.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %mid1_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp7.i) #7
  %167 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bw_vbios.i, align 8
  %mid2_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %168, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp13.i) #7
  %169 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %clks.i, align 4
  %171 = lshr i32 %170, 2
  %div16338.i = and i32 %171, 536870911
  %arrayidx17.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div16338.i
  %172 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx17.i, align 4
  %conv18.i = zext i32 %173 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp13.i, i64 noundef %conv18.i, i64 noundef 1000) #7
  %174 = ptrtoint ptr %tmp13.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %tmp13.i, align 8
  %176 = ptrtoint ptr %mid2_sclk.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %mid2_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp13.i) #7
  %177 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bw_vbios.i, align 8
  %mid3_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %178, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp20.i) #7
  %179 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %clks.i, align 4
  %mul23.i = mul i32 %180, 3
  %div24339.i = lshr i32 %mul23.i, 3
  %arrayidx25.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div24339.i
  %181 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx25.i, align 4
  %conv26.i = zext i32 %182 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp20.i, i64 noundef %conv26.i, i64 noundef 1000) #7
  %183 = ptrtoint ptr %tmp20.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %tmp20.i, align 8
  %185 = ptrtoint ptr %mid3_sclk.i to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %184, ptr %mid3_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp20.i) #7
  %186 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bw_vbios.i, align 8
  %mid4_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %187, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp28.i) #7
  %188 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %clks.i, align 4
  %190 = lshr i32 %189, 1
  %div32340.i = and i32 %190, 536870911
  %arrayidx33.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div32340.i
  %191 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx33.i, align 4
  %conv34.i = zext i32 %192 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp28.i, i64 noundef %conv34.i, i64 noundef 1000) #7
  %193 = ptrtoint ptr %tmp28.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %tmp28.i, align 8
  %195 = ptrtoint ptr %mid4_sclk.i to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %194, ptr %mid4_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp28.i) #7
  %196 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %bw_vbios.i, align 8
  %mid5_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %197, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp36.i) #7
  %198 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %clks.i, align 4
  %mul39.i = mul i32 %199, 5
  %div40341.i = lshr i32 %mul39.i, 3
  %arrayidx41.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div40341.i
  %200 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx41.i, align 4
  %conv42.i = zext i32 %201 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp36.i, i64 noundef %conv42.i, i64 noundef 1000) #7
  %202 = ptrtoint ptr %tmp36.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %tmp36.i, align 8
  %204 = ptrtoint ptr %mid5_sclk.i to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %203, ptr %mid5_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp36.i) #7
  %205 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %bw_vbios.i, align 8
  %mid6_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %206, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp44.i) #7
  %207 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %clks.i, align 4
  %mul47.i = mul i32 %208, 6
  %div48342.i = lshr i32 %mul47.i, 3
  %arrayidx49.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div48342.i
  %209 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx49.i, align 4
  %conv50.i = zext i32 %210 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp44.i, i64 noundef %conv50.i, i64 noundef 1000) #7
  %211 = ptrtoint ptr %tmp44.i to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %tmp44.i, align 8
  %213 = ptrtoint ptr %mid6_sclk.i to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %212, ptr %mid6_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp44.i) #7
  %214 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %bw_vbios.i, align 8
  %low_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %215, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp52.i) #7
  %216 = ptrtoint ptr %clocks_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %clocks_in_khz.i, align 4
  %conv55.i = zext i32 %217 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp52.i, i64 noundef %conv55.i, i64 noundef 1000) #7
  %218 = ptrtoint ptr %tmp52.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %tmp52.i, align 8
  %220 = ptrtoint ptr %low_sclk.i to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 %219, ptr %low_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp52.i) #7
  %221 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ctx1.i, align 8
  %call57.i = call zeroext i1 @dm_pp_get_clock_levels_by_type(ptr noundef %222, i32 noundef 3, ptr noundef nonnull %clks.i) #7
  %223 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %bw_vbios.i, align 8
  %low_yclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %224, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp59.i) #7
  %225 = ptrtoint ptr %clocks_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %clocks_in_khz.i, align 4
  %mul62.i = mul i32 %226, %memory_type_multiplier.0.i
  %conv63.i = zext i32 %mul62.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp59.i, i64 noundef %conv63.i, i64 noundef 1000) #7
  %227 = ptrtoint ptr %tmp59.i to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %tmp59.i, align 8
  %229 = ptrtoint ptr %low_yclk.i to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 %228, ptr %low_yclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp59.i) #7
  %230 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %bw_vbios.i, align 8
  %mid_yclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %231, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp65.i) #7
  %232 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %clks.i, align 4
  %shr.i = lshr i32 %233, 1
  %arrayidx68.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %shr.i
  %234 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx68.i, align 4
  %mul69.i = mul i32 %235, %memory_type_multiplier.0.i
  %conv70.i = zext i32 %mul69.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp65.i, i64 noundef %conv70.i, i64 noundef 1000) #7
  %236 = ptrtoint ptr %tmp65.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %tmp65.i, align 8
  %238 = ptrtoint ptr %mid_yclk.i to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %237, ptr %mid_yclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp65.i) #7
  %239 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %bw_vbios.i, align 8
  %high_yclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %240, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp72.i) #7
  %241 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %clks.i, align 4
  %sub75.i = add i32 %242, -1
  %arrayidx76.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %sub75.i
  %243 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx76.i, align 4
  %mul77.i = mul i32 %244, %memory_type_multiplier.0.i
  %conv78.i = zext i32 %mul77.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp72.i, i64 noundef %conv78.i, i64 noundef 1000) #7
  %245 = ptrtoint ptr %tmp72.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %tmp72.i, align 8
  %247 = ptrtoint ptr %high_yclk.i to i32
  call void @__asan_store8_noabort(i32 %247)
  store i64 %246, ptr %high_yclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp72.i) #7
  br label %dce112_resource_construct.exit.thread

if.end79.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %248 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %bw_vbios.i, align 8
  %high_sclk81.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %249, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp82.i) #7
  %data.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1
  %250 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %eng_clks.i, align 4
  %sub84.i = add i32 %251, -1
  %arrayidx85.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %sub84.i
  %252 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx85.i, align 4
  %conv87.i = zext i32 %253 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp82.i, i64 noundef %conv87.i, i64 noundef 1000) #7
  %254 = ptrtoint ptr %tmp82.i to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %tmp82.i, align 8
  %256 = ptrtoint ptr %high_sclk81.i to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %255, ptr %high_sclk81.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp82.i) #7
  %257 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %bw_vbios.i, align 8
  %mid1_sclk89.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %258, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp90.i) #7
  %259 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %eng_clks.i, align 4
  %div93343.i = lshr i32 %260, 3
  %arrayidx94.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div93343.i
  %261 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx94.i, align 4
  %conv96.i = zext i32 %262 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp90.i, i64 noundef %conv96.i, i64 noundef 1000) #7
  %263 = ptrtoint ptr %tmp90.i to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %tmp90.i, align 8
  %265 = ptrtoint ptr %mid1_sclk89.i to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 %264, ptr %mid1_sclk89.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp90.i) #7
  %266 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %bw_vbios.i, align 8
  %mid2_sclk98.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %267, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp99.i) #7
  %268 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %eng_clks.i, align 4
  %270 = lshr i32 %269, 2
  %div103344.i = and i32 %270, 536870911
  %arrayidx104.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div103344.i
  %271 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx104.i, align 4
  %conv106.i = zext i32 %272 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp99.i, i64 noundef %conv106.i, i64 noundef 1000) #7
  %273 = ptrtoint ptr %tmp99.i to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %tmp99.i, align 8
  %275 = ptrtoint ptr %mid2_sclk98.i to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 %274, ptr %mid2_sclk98.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp99.i) #7
  %276 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %bw_vbios.i, align 8
  %mid3_sclk108.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %277, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp109.i) #7
  %278 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %eng_clks.i, align 4
  %mul112.i = mul i32 %279, 3
  %div113345.i = lshr i32 %mul112.i, 3
  %arrayidx114.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div113345.i
  %280 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx114.i, align 4
  %conv116.i = zext i32 %281 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp109.i, i64 noundef %conv116.i, i64 noundef 1000) #7
  %282 = ptrtoint ptr %tmp109.i to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %tmp109.i, align 8
  %284 = ptrtoint ptr %mid3_sclk108.i to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %283, ptr %mid3_sclk108.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp109.i) #7
  %285 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %bw_vbios.i, align 8
  %mid4_sclk118.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %286, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp119.i) #7
  %287 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %eng_clks.i, align 4
  %289 = lshr i32 %288, 1
  %div123346.i = and i32 %289, 536870911
  %arrayidx124.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div123346.i
  %290 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx124.i, align 4
  %conv126.i = zext i32 %291 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp119.i, i64 noundef %conv126.i, i64 noundef 1000) #7
  %292 = ptrtoint ptr %tmp119.i to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %tmp119.i, align 8
  %294 = ptrtoint ptr %mid4_sclk118.i to i32
  call void @__asan_store8_noabort(i32 %294)
  store i64 %293, ptr %mid4_sclk118.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp119.i) #7
  %295 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %bw_vbios.i, align 8
  %mid5_sclk128.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %296, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp129.i) #7
  %297 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %eng_clks.i, align 4
  %mul132.i = mul i32 %298, 5
  %div133347.i = lshr i32 %mul132.i, 3
  %arrayidx134.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div133347.i
  %299 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx134.i, align 4
  %conv136.i = zext i32 %300 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp129.i, i64 noundef %conv136.i, i64 noundef 1000) #7
  %301 = ptrtoint ptr %tmp129.i to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %tmp129.i, align 8
  %303 = ptrtoint ptr %mid5_sclk128.i to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 %302, ptr %mid5_sclk128.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp129.i) #7
  %304 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %bw_vbios.i, align 8
  %mid6_sclk138.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %305, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp139.i) #7
  %306 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %eng_clks.i, align 4
  %mul142.i = mul i32 %307, 6
  %div143348.i = lshr i32 %mul142.i, 3
  %arrayidx144.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div143348.i
  %308 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx144.i, align 4
  %conv146.i = zext i32 %309 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp139.i, i64 noundef %conv146.i, i64 noundef 1000) #7
  %310 = ptrtoint ptr %tmp139.i to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %tmp139.i, align 8
  %312 = ptrtoint ptr %mid6_sclk138.i to i32
  call void @__asan_store8_noabort(i32 %312)
  store i64 %311, ptr %mid6_sclk138.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp139.i) #7
  %313 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %bw_vbios.i, align 8
  %low_sclk148.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %314, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp149.i) #7
  %315 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %data.i, align 4
  %conv153.i = zext i32 %316 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp149.i, i64 noundef %conv153.i, i64 noundef 1000) #7
  %317 = ptrtoint ptr %tmp149.i to i32
  call void @__asan_load8_noabort(i32 %317)
  %318 = load i64, ptr %tmp149.i, align 8
  %319 = ptrtoint ptr %low_sclk148.i to i32
  call void @__asan_store8_noabort(i32 %319)
  store i64 %318, ptr %low_sclk148.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp149.i) #7
  %320 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ctx1.i, align 8
  %call155.i = call zeroext i1 @dm_pp_get_clock_levels_by_type_with_latency(ptr noundef %321, i32 noundef 3, ptr noundef nonnull %mem_clks.i) #7
  %322 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %bw_vbios.i, align 8
  %low_yclk157.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %323, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp158.i) #7
  %data159.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %mem_clks.i, i32 0, i32 1
  %324 = ptrtoint ptr %data159.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %data159.i, align 4
  %mul162.i = mul i32 %325, %memory_type_multiplier.0.i
  %conv163.i = zext i32 %mul162.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp158.i, i64 noundef %conv163.i, i64 noundef 1000) #7
  %326 = ptrtoint ptr %tmp158.i to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %tmp158.i, align 8
  %328 = ptrtoint ptr %low_yclk157.i to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 %327, ptr %low_yclk157.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp158.i) #7
  %329 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %bw_vbios.i, align 8
  %mid_yclk165.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %330, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp166.i) #7
  %331 = ptrtoint ptr %mem_clks.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %mem_clks.i, align 4
  %shr169.i = lshr i32 %332, 1
  %arrayidx170.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %mem_clks.i, i32 0, i32 1, i32 %shr169.i
  %333 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx170.i, align 4
  %mul172.i = mul i32 %334, %memory_type_multiplier.0.i
  %conv173.i = zext i32 %mul172.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp166.i, i64 noundef %conv173.i, i64 noundef 1000) #7
  %335 = ptrtoint ptr %tmp166.i to i32
  call void @__asan_load8_noabort(i32 %335)
  %336 = load i64, ptr %tmp166.i, align 8
  %337 = ptrtoint ptr %mid_yclk165.i to i32
  call void @__asan_store8_noabort(i32 %337)
  store i64 %336, ptr %mid_yclk165.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp166.i) #7
  %338 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %bw_vbios.i, align 8
  %high_yclk175.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %339, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp176.i) #7
  %340 = ptrtoint ptr %mem_clks.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %mem_clks.i, align 4
  %sub179.i = add i32 %341, -1
  %arrayidx180.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %mem_clks.i, i32 0, i32 1, i32 %sub179.i
  %342 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx180.i, align 4
  %mul182.i = mul i32 %343, %memory_type_multiplier.0.i
  %conv183.i = zext i32 %mul182.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp176.i, i64 noundef %conv183.i, i64 noundef 1000) #7
  %344 = ptrtoint ptr %tmp176.i to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %tmp176.i, align 8
  %346 = ptrtoint ptr %high_yclk175.i to i32
  call void @__asan_store8_noabort(i32 %346)
  store i64 %345, ptr %high_yclk175.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp176.i) #7
  %347 = ptrtoint ptr %clk_ranges.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 4, ptr %clk_ranges.i, align 4
  %wm_clk_ranges.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1
  %348 = ptrtoint ptr %wm_clk_ranges.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 0, ptr %wm_clk_ranges.i, align 4
  %349 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %data.i, align 4
  %wm_min_eng_clk_in_khz.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 0, i32 1
  %351 = ptrtoint ptr %wm_min_eng_clk_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %350, ptr %wm_min_eng_clk_in_khz.i, align 4
  %352 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %eng_clks.i, align 4
  %mul192.i = mul i32 %353, 3
  %div193349.i = lshr i32 %mul192.i, 3
  %arrayidx194.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div193349.i
  %354 = ptrtoint ptr %arrayidx194.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx194.i, align 4
  %sub196.i = add i32 %355, -1
  %wm_max_eng_clk_in_khz.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 0, i32 2
  %356 = ptrtoint ptr %wm_max_eng_clk_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %sub196.i, ptr %wm_max_eng_clk_in_khz.i, align 4
  %357 = ptrtoint ptr %data159.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %data159.i, align 4
  %wm_min_mem_clk_in_khz.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 0, i32 3
  %359 = ptrtoint ptr %wm_min_mem_clk_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %358, ptr %wm_min_mem_clk_in_khz.i, align 4
  %360 = ptrtoint ptr %mem_clks.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %mem_clks.i, align 4
  %shr206.i = lshr i32 %361, 1
  %arrayidx207.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %mem_clks.i, i32 0, i32 1, i32 %shr206.i
  %362 = ptrtoint ptr %arrayidx207.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx207.i, align 4
  %sub209.i = add i32 %363, -1
  %wm_max_mem_clk_in_khz.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 0, i32 4
  %364 = ptrtoint ptr %wm_max_mem_clk_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %sub209.i, ptr %wm_max_mem_clk_in_khz.i, align 4
  %arrayidx213.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 1
  %365 = ptrtoint ptr %arrayidx213.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 1, ptr %arrayidx213.i, align 4
  %wm_min_eng_clk_in_khz223.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 1, i32 1
  %366 = ptrtoint ptr %wm_min_eng_clk_in_khz223.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %355, ptr %wm_min_eng_clk_in_khz223.i, align 4
  %wm_max_eng_clk_in_khz226.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 1, i32 2
  %367 = ptrtoint ptr %wm_max_eng_clk_in_khz226.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 5000000, ptr %wm_max_eng_clk_in_khz226.i, align 4
  %wm_min_mem_clk_in_khz232.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 1, i32 3
  %368 = ptrtoint ptr %wm_min_mem_clk_in_khz232.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %358, ptr %wm_min_mem_clk_in_khz232.i, align 4
  %wm_max_mem_clk_in_khz241.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 1, i32 4
  %369 = ptrtoint ptr %wm_max_mem_clk_in_khz241.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %sub209.i, ptr %wm_max_mem_clk_in_khz241.i, align 4
  %arrayidx243.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 2
  %370 = ptrtoint ptr %arrayidx243.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 2, ptr %arrayidx243.i, align 4
  %wm_min_eng_clk_in_khz250.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 2, i32 1
  %371 = ptrtoint ptr %wm_min_eng_clk_in_khz250.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %350, ptr %wm_min_eng_clk_in_khz250.i, align 4
  %wm_max_eng_clk_in_khz260.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 2, i32 2
  %372 = ptrtoint ptr %wm_max_eng_clk_in_khz260.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %sub196.i, ptr %wm_max_eng_clk_in_khz260.i, align 4
  %wm_min_mem_clk_in_khz268.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 2, i32 3
  %373 = ptrtoint ptr %wm_min_mem_clk_in_khz268.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %363, ptr %wm_min_mem_clk_in_khz268.i, align 4
  %wm_max_mem_clk_in_khz271.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 2, i32 4
  %374 = ptrtoint ptr %wm_max_mem_clk_in_khz271.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 5000000, ptr %wm_max_mem_clk_in_khz271.i, align 4
  %arrayidx273.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 3
  %375 = ptrtoint ptr %arrayidx273.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 3, ptr %arrayidx273.i, align 4
  %wm_min_eng_clk_in_khz283.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 3, i32 1
  %376 = ptrtoint ptr %wm_min_eng_clk_in_khz283.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %355, ptr %wm_min_eng_clk_in_khz283.i, align 4
  %wm_max_eng_clk_in_khz286.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 3, i32 2
  %377 = ptrtoint ptr %wm_max_eng_clk_in_khz286.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 5000000, ptr %wm_max_eng_clk_in_khz286.i, align 4
  %wm_min_mem_clk_in_khz294.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 3, i32 3
  %378 = ptrtoint ptr %wm_min_mem_clk_in_khz294.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %363, ptr %wm_min_mem_clk_in_khz294.i, align 4
  %wm_max_mem_clk_in_khz297.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 3, i32 4
  %379 = ptrtoint ptr %wm_max_mem_clk_in_khz297.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 5000000, ptr %wm_max_mem_clk_in_khz297.i, align 4
  %380 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %ctx1.i, align 8
  %call299.i = call zeroext i1 @dm_pp_notify_wm_clock_changes(ptr noundef %381, ptr noundef nonnull %clk_ranges.i) #7
  br label %dce112_resource_construct.exit.thread

dce112_resource_construct.exit.thread:            ; preds = %if.end79.i, %if.then2.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %clks.i) #7
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %clk_ranges.i) #7
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %mem_clks.i) #7
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %eng_clks.i) #7
  br label %cleanup

if.end3:                                          ; preds = %for.end185.i.if.end3_crit_edge, %do.body177.i, %do.body165.i, %do.body145.i, %do.body133.i, %do.body121.i, %do.body109.i, %do.body97.i, %if.end74.i.if.end3_crit_edge, %if.then70.i, %if.then60.i, %if.then.i
  call fastcc void @dce112_resource_destruct(ptr noundef %call7.i.i) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dce112_create_resource_pool, i32 noundef 1423) #7
  call void @kgdb_breakpoint() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %dce112_resource_construct.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dce112_resource_construct.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_resource_build_pipe_hw_param(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @resource_build_info_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce_dmcu_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce_abm_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_irq_service_dce110_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @resource_construct(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce112_hw_sequencer_construct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bw_calcs_init(ptr noundef, ptr noundef, [9 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce112_resource_destruct(ptr noundef %pool) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 19
  %0 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp233.not = icmp eq i32 %1, 0
  br i1 %cmp233.not, label %entry.for.cond47.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond47.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %for.inc.for.cond47.preheader_crit_edge, %entry.for.cond47.preheader_crit_edge
  %res_cap = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 41
  %2 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_cap, align 4
  %num_ddc235 = getelementptr inbounds %struct.resource_caps, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %num_ddc235 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ddc235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp49236.not = icmp eq i32 %5, 0
  br i1 %cmp49236.not, label %for.cond47.preheader.for.cond84.preheader_crit_edge, label %for.cond47.preheader.for.body50_crit_edge

for.cond47.preheader.for.body50_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body50

for.cond47.preheader.for.cond84.preheader_crit_edge: ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond84.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0234 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 5, i32 %i.0234
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp2.not = icmp eq ptr %7, null
  br i1 %cmp2.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dce110_opp_destroy(ptr noundef %arrayidx) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %arrayidx7 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 3, i32 %i.0234
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %cmp8.not = icmp eq ptr %9, null
  br i1 %cmp8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %9) #7
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx7, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %arrayidx15 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 2, i32 %i.0234
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx15, align 4
  %cmp16.not = icmp eq ptr %12, null
  br i1 %cmp16.not, label %if.end13.if.end21_crit_edge, label %if.then17

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dce_ipp_destroy(ptr noundef %arrayidx15) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  %arrayidx23 = getelementptr [6 x ptr], ptr %pool, i32 0, i32 %i.0234
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx23, align 4
  %cmp24.not = icmp eq ptr %14, null
  br i1 %cmp24.not, label %if.end21.if.end32_crit_edge, label %if.then25

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %14) #7
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx23, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end21.if.end32_crit_edge
  %arrayidx34 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 6, i32 %i.0234
  %16 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx34, align 4
  %cmp35.not = icmp eq ptr %17, null
  br i1 %cmp35.not, label %if.end32.for.inc_crit_edge, label %if.then36

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %17) #7
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx34, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %if.end32.for.inc_crit_edge
  %inc = add nuw i32 %i.0234, 1
  %19 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe_count, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond47.preheader_crit_edge

for.inc.for.cond47.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond47.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond84.preheader:                             ; preds = %for.inc81.for.cond84.preheader_crit_edge, %for.cond47.preheader.for.cond84.preheader_crit_edge
  %stream_enc_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 21
  %21 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream_enc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp86238.not = icmp eq i32 %22, 0
  br i1 %cmp86238.not, label %for.cond84.preheader.for.cond102.preheader_crit_edge, label %for.cond84.preheader.for.body87_crit_edge

for.cond84.preheader.for.body87_crit_edge:        ; preds = %for.cond84.preheader
  br label %for.body87

for.cond84.preheader.for.cond102.preheader_crit_edge: ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond102.preheader

for.body50:                                       ; preds = %for.inc81.for.body50_crit_edge, %for.cond47.preheader.for.body50_crit_edge
  %i.1237 = phi i32 [ %inc82, %for.inc81.for.body50_crit_edge ], [ 0, %for.cond47.preheader.for.body50_crit_edge ]
  %arrayidx52 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 11, i32 %i.1237
  %23 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx52, align 4
  %cmp53.not = icmp eq ptr %24, null
  br i1 %cmp53.not, label %for.body50.if.end58_crit_edge, label %if.then54

for.body50.if.end58_crit_edge:                    ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then54:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dce110_engine_destroy(ptr noundef %arrayidx52) #7
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %for.body50.if.end58_crit_edge
  %arrayidx60 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 12, i32 %i.1237
  %25 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx60, align 4
  %cmp61.not = icmp eq ptr %26, null
  br i1 %cmp61.not, label %if.end58.if.end69_crit_edge, label %if.then62

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %26) #7
  %27 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx60, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.end58.if.end69_crit_edge
  %arrayidx71 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 13, i32 %i.1237
  %28 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx71, align 4
  %cmp72.not = icmp eq ptr %29, null
  br i1 %cmp72.not, label %if.end69.for.inc81_crit_edge, label %if.then73

if.end69.for.inc81_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc81

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %29) #7
  %30 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx71, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %if.then73, %if.end69.for.inc81_crit_edge
  %inc82 = add nuw i32 %i.1237, 1
  %31 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %res_cap, align 4
  %num_ddc = getelementptr inbounds %struct.resource_caps, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %num_ddc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_ddc, align 4
  %cmp49 = icmp ult i32 %inc82, %34
  br i1 %cmp49, label %for.inc81.for.body50_crit_edge, label %for.inc81.for.cond84.preheader_crit_edge

for.inc81.for.cond84.preheader_crit_edge:         ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond84.preheader

for.inc81.for.body50_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body50

for.cond102.preheader:                            ; preds = %for.inc99.for.cond102.preheader_crit_edge, %for.cond84.preheader.for.cond102.preheader_crit_edge
  %clk_src_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 31
  %35 = ptrtoint ptr %clk_src_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clk_src_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp104240.not = icmp eq i32 %36, 0
  br i1 %cmp104240.not, label %for.cond102.preheader.for.end116_crit_edge, label %for.cond102.preheader.for.body105_crit_edge

for.cond102.preheader.for.body105_crit_edge:      ; preds = %for.cond102.preheader
  br label %for.body105

for.cond102.preheader.for.end116_crit_edge:       ; preds = %for.cond102.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end116

for.body87:                                       ; preds = %for.inc99.for.body87_crit_edge, %for.cond84.preheader.for.body87_crit_edge
  %i.2239 = phi i32 [ %inc100, %for.inc99.for.body87_crit_edge ], [ 0, %for.cond84.preheader.for.body87_crit_edge ]
  %arrayidx89 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 7, i32 %i.2239
  %37 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx89, align 4
  %cmp90.not = icmp eq ptr %38, null
  br i1 %cmp90.not, label %for.body87.for.inc99_crit_edge, label %if.then91

for.body87.for.inc99_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc99

if.then91:                                        ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %38) #7
  br label %for.inc99

for.inc99:                                        ; preds = %if.then91, %for.body87.for.inc99_crit_edge
  %inc100 = add nuw i32 %i.2239, 1
  %39 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stream_enc_count, align 4
  %cmp86 = icmp ult i32 %inc100, %40
  br i1 %cmp86, label %for.inc99.for.body87_crit_edge, label %for.inc99.for.cond102.preheader_crit_edge

for.inc99.for.cond102.preheader_crit_edge:        ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond102.preheader

for.inc99.for.body87_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body87

for.body105:                                      ; preds = %for.inc114.for.body105_crit_edge, %for.cond102.preheader.for.body105_crit_edge
  %i.3241 = phi i32 [ %inc115, %for.inc114.for.body105_crit_edge ], [ 0, %for.cond102.preheader.for.body105_crit_edge ]
  %arrayidx107 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 30, i32 %i.3241
  %41 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx107, align 4
  %cmp108.not = icmp eq ptr %42, null
  br i1 %cmp108.not, label %for.body105.for.inc114_crit_edge, label %if.then109

for.body105.for.inc114_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc114

if.then109:                                       ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %42) #7
  %43 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx107, align 4
  br label %for.inc114

for.inc114:                                       ; preds = %if.then109, %for.body105.for.inc114_crit_edge
  %inc115 = add nuw i32 %i.3241, 1
  %44 = ptrtoint ptr %clk_src_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %clk_src_count, align 4
  %cmp104 = icmp ult i32 %inc115, %45
  br i1 %cmp104, label %for.inc114.for.body105_crit_edge, label %for.inc114.for.end116_crit_edge

for.inc114.for.end116_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end116

for.inc114.for.body105_crit_edge:                 ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body105

for.end116:                                       ; preds = %for.inc114.for.end116_crit_edge, %for.cond102.preheader.for.end116_crit_edge
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 29
  %46 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dp_clock_source, align 4
  %cmp118.not = icmp eq ptr %47, null
  br i1 %cmp118.not, label %for.end116.if.end122_crit_edge, label %if.then119

for.end116.if.end122_crit_edge:                   ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then119:                                       ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %47) #7
  %48 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %dp_clock_source, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %for.end116.if.end122_crit_edge
  %audio_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 33
  %49 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %audio_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp125242.not = icmp eq i32 %50, 0
  br i1 %cmp125242.not, label %if.end122.for.end137_crit_edge, label %if.end122.for.body126_crit_edge

if.end122.for.body126_crit_edge:                  ; preds = %if.end122
  br label %for.body126

if.end122.for.end137_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end137

for.body126:                                      ; preds = %for.inc135.for.body126_crit_edge, %if.end122.for.body126_crit_edge
  %i.4243 = phi i32 [ %inc136, %for.inc135.for.body126_crit_edge ], [ 0, %if.end122.for.body126_crit_edge ]
  %arrayidx128 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 32, i32 %i.4243
  %51 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx128, align 4
  %cmp129.not = icmp eq ptr %52, null
  br i1 %cmp129.not, label %for.body126.for.inc135_crit_edge, label %if.then130

for.body126.for.inc135_crit_edge:                 ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc135

if.then130:                                       ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dce_aud_destroy(ptr noundef %arrayidx128) #7
  br label %for.inc135

for.inc135:                                       ; preds = %if.then130, %for.body126.for.inc135_crit_edge
  %inc136 = add nuw i32 %i.4243, 1
  %53 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %audio_count, align 4
  %cmp125 = icmp ult i32 %inc136, %54
  br i1 %cmp125, label %for.inc135.for.body126_crit_edge, label %for.inc135.for.end137_crit_edge

for.inc135.for.end137_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end137

for.inc135.for.body126_crit_edge:                 ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body126

for.end137:                                       ; preds = %for.inc135.for.end137_crit_edge, %if.end122.for.end137_crit_edge
  %abm = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 37
  %55 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %abm, align 4
  %cmp139.not = icmp eq ptr %56, null
  br i1 %cmp139.not, label %for.end137.if.end143_crit_edge, label %if.then140

for.end137.if.end143_crit_edge:                   ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then140:                                       ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dce_abm_destroy(ptr noundef %abm) #7
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %for.end137.if.end143_crit_edge
  %dmcu = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 38
  %57 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dmcu, align 4
  %cmp145.not = icmp eq ptr %58, null
  br i1 %cmp145.not, label %if.end143.if.end149_crit_edge, label %if.then146

if.end143.if.end149_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then146:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dce_dmcu_destroy(ptr noundef %dmcu) #7
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %if.end143.if.end149_crit_edge
  %irqs = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 36
  %59 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %irqs, align 4
  %cmp151.not = icmp eq ptr %60, null
  br i1 %cmp151.not, label %if.end149.if.end155_crit_edge, label %if.then152

if.end149.if.end155_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then152:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dal_irq_service_destroy(ptr noundef %irqs) #7
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %if.end149.if.end155_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce112_destroy_resource_pool(ptr nocapture noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  tail call fastcc void @dce112_resource_destruct(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pool, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce112_panel_cntl_create(ptr noundef %init_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inst = getelementptr inbounds %struct.panel_cntl_init_data, ptr %init_data, i32 0, i32 1
  %1 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inst, align 4
  %arrayidx = getelementptr [1 x %struct.dce_panel_cntl_registers], ptr @panel_cntl_regs, i32 0, i32 %2
  tail call void @dce_panel_cntl_construct(ptr noundef nonnull %call7.i.i, ptr noundef %init_data, ptr noundef %arrayidx, ptr noundef nonnull @panel_cntl_shift, ptr noundef nonnull @panel_cntl_mask) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce112_link_encoder_create(ptr noundef %enc_init_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %transmitter = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init_data, i32 0, i32 5
  %1 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %transmitter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %3 = icmp ult i32 %2, 10
  br i1 %3, label %switch.hole_check, label %if.end.land.end.i_crit_edge

if.end.land.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.end.i:                                       ; preds = %switch.hole_check.land.end.i_crit_edge, %if.end.land.end.i_crit_edge
  %.b47.i = load i1, ptr @map_transmitter_id_to_phy_instance.__already_done, align 1
  br i1 %.b47.i, label %land.end.i.if.then41.i_crit_edge, label %if.then.i, !prof !155

land.end.i.if.then41.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @map_transmitter_id_to_phy_instance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 464, i32 noundef 9, ptr noundef null) #7
  br label %if.then41.i

if.then41.i:                                      ; preds = %if.then.i, %land.end.i.if.then41.i_crit_edge
  tail call void @kgdb_breakpoint() #7
  br label %map_transmitter_id_to_phy_instance.exit

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %2 to i16
  %switch.shifted = lshr i16 575, %switch.maskindex
  %4 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.lobit.not = icmp eq i16 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i_crit_edge, label %switch.lookup

switch.hole_check.land.end.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dce112_link_encoder_create, i32 0, i32 %2
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %map_transmitter_id_to_phy_instance.exit

map_transmitter_id_to_phy_instance.exit:          ; preds = %switch.lookup, %if.then41.i
  %retval.0.i = phi i32 [ 0, %if.then41.i ], [ %switch.load, %switch.lookup ]
  %arrayidx = getelementptr [7 x %struct.dce110_link_enc_registers], ptr @link_enc_regs, i32 0, i32 %retval.0.i
  %6 = ptrtoint ptr %enc_init_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enc_init_data, align 4
  %sub = add i32 %7, -1
  %arrayidx2 = getelementptr [6 x %struct.dce110_link_enc_aux_registers], ptr @link_enc_aux_regs, i32 0, i32 %sub
  %hpd_source = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init_data, i32 0, i32 2
  %8 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hpd_source, align 4
  %arrayidx3 = getelementptr [6 x %struct.dce110_link_enc_hpd_registers], ptr @link_enc_hpd_regs, i32 0, i32 %9
  tail call void @dce110_link_encoder_construct(ptr noundef nonnull %call7.i.i, ptr noundef %enc_init_data, ptr noundef nonnull @link_enc_feature, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx3) #7
  br label %cleanup

cleanup:                                          ; preds = %map_transmitter_id_to_phy_instance.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @dce112_validate_global(ptr nocapture noundef readnone %dc, ptr nocapture noundef readonly %context) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count.i, align 8
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp25.not.i = icmp eq i8 %1, 0
  br i1 %cmp25.not.i, label %entry.dce112_validate_surface_sets.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dce112_validate_surface_sets.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_validate_surface_sets.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %cmp28.i = phi i1 [ %cmp.i, %for.inc.i.for.body.i_crit_edge ], [ true, %entry.for.body.i_crit_edge ]
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %plane_count.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.026.i, i32 2
  %2 = ptrtoint ptr %plane_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %plane_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i = icmp eq i32 %3, 0
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7.i = icmp sgt i32 %3, 1
  br i1 %cmp7.i, label %if.end.i.dce112_validate_surface_sets.exit_crit_edge, label %if.end10.i

if.end.i.dce112_validate_surface_sets.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_validate_surface_sets.exit

if.end10.i:                                       ; preds = %if.end.i
  %plane_states.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.026.i, i32 5
  %4 = ptrtoint ptr %plane_states.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plane_states.i, align 4
  %format.i = getelementptr inbounds %struct.dc_plane_state, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %7)
  %cmp14.i = icmp ugt i32 %7, 17
  br i1 %cmp14.i, label %if.end10.i.dce112_validate_surface_sets.exit_crit_edge, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end10.i.dce112_validate_surface_sets.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_validate_surface_sets.exit

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.dce112_validate_surface_sets.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dce112_validate_surface_sets.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce112_validate_surface_sets.exit

dce112_validate_surface_sets.exit:                ; preds = %for.inc.i.dce112_validate_surface_sets.exit_crit_edge, %if.end10.i.dce112_validate_surface_sets.exit_crit_edge, %if.end.i.dce112_validate_surface_sets.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.dce112_validate_surface_sets.exit_crit_edge ], [ %cmp28.i, %if.end10.i.dce112_validate_surface_sets.exit_crit_edge ], [ %cmp28.i, %if.end.i.dce112_validate_surface_sets.exit_crit_edge ]
  %spec.select = select i1 %cmp.lcssa.i, i32 9, i32 1
  br label %dce112_validate_surface_sets.exit.thread

dce112_validate_surface_sets.exit.thread:         ; preds = %dce112_validate_surface_sets.exit, %entry.dce112_validate_surface_sets.exit.thread_crit_edge
  %8 = phi i32 [ 1, %entry.dce112_validate_surface_sets.exit.thread_crit_edge ], [ %spec.select, %dce112_validate_surface_sets.exit ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce100_validate_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce110_find_first_free_match_stream_enc_for_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_panel_cntl_construct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_link_encoder_construct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce112_clk_src_construct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce112_mem_input_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_ipp_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_transform_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce110_aux_engine_construct(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce112_i2c_hw_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_dce_straps(ptr noundef %ctx, ptr noundef %straps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_stream_number = getelementptr inbounds %struct.resource_straps, ptr %straps, i32 0, i32 2
  %call = tail call i32 @generic_reg_get2(ptr noundef %ctx, i32 noundef 18457, i8 noundef zeroext 6, i32 noundef 64, ptr noundef %straps, i8 noundef zeroext 8, i32 noundef 1792, ptr noundef %audio_stream_number) #7
  %dc_pinstraps_audio = getelementptr inbounds %struct.resource_straps, ptr %straps, i32 0, i32 1
  %call1 = tail call i32 @generic_reg_get(ptr noundef %ctx, i32 noundef 18456, i8 noundef zeroext 14, i32 noundef 49152, ptr noundef %dc_pinstraps_audio) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @create_audio(ptr noundef %ctx, i32 noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x %struct.dce_audio_registers], ptr @audio_regs, i32 0, i32 %inst
  %call = tail call ptr @dce_audio_create(ptr noundef %ctx, i32 noundef %inst, ptr noundef %arrayidx, ptr noundef nonnull @audio_shift, ptr noundef nonnull @audio_mask) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce112_stream_encoder_create(i32 noundef %eng_id, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %1 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dc_bios, align 4
  %arrayidx = getelementptr [6 x %struct.dce110_stream_enc_registers], ptr @stream_enc_regs, i32 0, i32 %eng_id
  tail call void @dce110_stream_encoder_construct(ptr noundef nonnull %call7.i.i, ptr noundef %ctx, ptr noundef %2, i32 noundef %eng_id, ptr noundef %arrayidx, ptr noundef nonnull @se_shift, ptr noundef nonnull @se_mask) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @dce112_hwseq_create(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %call7.i.i, align 8
  %regs = getelementptr inbounds %struct.dce_hwseq, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hwseq_reg, ptr %regs, align 4
  %shifts = getelementptr inbounds %struct.dce_hwseq, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %shifts to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hwseq_shift, ptr %shifts, align 8
  %masks = getelementptr inbounds %struct.dce_hwseq, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %masks to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hwseq_mask, ptr %masks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get2(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce_audio_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_stream_encoder_construct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_get_clock_levels_by_type_with_latency(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_get_clock_levels_by_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bw_frc_to_fixed(ptr sret(%struct.bw_fixed) align 8, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_notify_wm_clock_changes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_ipp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_engine_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_aud_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_abm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_dmcu_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 892, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dce112_validate_bandwidth.__UNIQUE_ID_ddebug303, !1, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 906, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 913, i32 3}
!10 = !{ptr @dce112_validate_bandwidth.__UNIQUE_ID_ddebug304, !9, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1423, i32 2}
!13 = !{ptr @__func__.dce112_create_resource_pool, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1287, i32 4}
!16 = !{ptr @__func__.dce112_resource_construct, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1288, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1298, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1308, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1329, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1336, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1344, i32 4}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1352, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1362, i32 4}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1372, i32 4}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1379, i32 4}
!36 = !{ptr @bios_regs, !37, !"bios_regs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 389, i32 36}
!38 = !{ptr @polaris_11_resource_cap, !39, !"polaris_11_resource_cap", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 402, i32 35}
!40 = !{ptr @polaris_10_resource_cap, !41, !"polaris_10_resource_cap", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 394, i32 35}
!42 = !{ptr @dce112_res_pool_funcs, !43, !"dce112_res_pool_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 1048, i32 36}
!44 = !{ptr @panel_cntl_regs, !45, !"panel_cntl_regs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 244, i32 46}
!46 = !{ptr @panel_cntl_shift, !47, !"panel_cntl_shift", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 248, i32 42}
!48 = !{ptr @panel_cntl_mask, !49, !"panel_cntl_mask", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 252, i32 41}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 464, i32 3}
!52 = !{ptr @link_enc_feature, !53, !"link_enc_feature", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 611, i32 45}
!54 = !{ptr @link_enc_regs, !55, !"link_enc_regs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 275, i32 47}
!56 = !{ptr @link_enc_aux_regs, !57, !"link_enc_aux_regs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 235, i32 51}
!58 = !{ptr @link_enc_hpd_regs, !59, !"link_enc_hpd_regs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 261, i32 51}
!60 = !{ptr @__func__.dce112_clock_source_create, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 764, i32 2}
!62 = !{ptr @cs_shift, !63, !"cs_shift", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 381, i32 42}
!64 = !{ptr @cs_mask, !65, !"cs_mask", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 385, i32 41}
!66 = !{ptr @clk_src_regs, !67, !"clk_src_regs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 372, i32 41}
!68 = !{ptr @dmcu_regs, !69, !"dmcu_regs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 154, i32 40}
!70 = !{ptr @dmcu_shift, !71, !"dmcu_shift", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 158, i32 36}
!72 = !{ptr @dmcu_mask, !73, !"dmcu_mask", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 162, i32 35}
!74 = !{ptr @abm_regs, !75, !"abm_regs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 166, i32 39}
!76 = !{ptr @abm_shift, !77, !"abm_shift", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 170, i32 35}
!78 = !{ptr @abm_mask, !79, !"abm_mask", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 174, i32 34}
!80 = !{ptr @dce112_tg_offsets, !81, !"dce112_tg_offsets", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 119, i32 53}
!82 = !{ptr @__func__.dce112_mem_input_create, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 581, i32 3}
!84 = !{ptr @mi_regs, !85, !"mi_regs", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 556, i32 45}
!86 = !{ptr @mi_shifts, !87, !"mi_shifts", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 565, i32 41}
!88 = !{ptr @mi_masks, !89, !"mi_masks", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 569, i32 40}
!90 = !{ptr @__func__.dce112_ipp_create, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 667, i32 3}
!92 = !{ptr @ipp_regs, !93, !"ipp_regs", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 191, i32 39}
!94 = !{ptr @ipp_shift, !95, !"ipp_shift", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 200, i32 35}
!96 = !{ptr @ipp_mask, !97, !"ipp_mask", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 204, i32 34}
!98 = !{ptr @xfm_regs, !99, !"xfm_regs", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 213, i32 45}
!100 = !{ptr @xfm_shift, !101, !"xfm_shift", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 222, i32 41}
!102 = !{ptr @xfm_mask, !103, !"xfm_mask", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 226, i32 40}
!104 = !{ptr @opp_regs, !105, !"opp_regs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 313, i32 39}
!106 = !{ptr @opp_shift, !107, !"opp_shift", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 322, i32 35}
!108 = !{ptr @opp_mask, !109, !"opp_mask", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 326, i32 34}
!110 = !{ptr @aux_engine_regs, !111, !"aux_engine_regs", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 336, i32 42}
!112 = !{ptr @aux_mask, !113, !"aux_mask", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 182, i32 47}
!114 = !{ptr @aux_shift, !115, !"aux_shift", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 178, i32 48}
!116 = !{ptr @i2c_hw_regs, !117, !"i2c_hw_regs", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 712, i32 39}
!118 = !{ptr @i2c_shifts, !119, !"i2c_shifts", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 721, i32 35}
!120 = !{ptr @i2c_masks, !121, !"i2c_masks", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 725, i32 34}
!122 = !{ptr @res_create_funcs, !123, !"res_create_funcs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 548, i32 43}
!124 = !{ptr @audio_regs, !125, !"audio_regs", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 350, i32 41}
!126 = !{ptr @audio_shift, !127, !"audio_shift", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 359, i32 37}
!128 = !{ptr @audio_mask, !129, !"audio_mask", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 363, i32 36}
!130 = !{ptr @stream_enc_regs, !131, !"stream_enc_regs", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 291, i32 49}
!132 = !{ptr @se_shift, !133, !"se_shift", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 300, i32 46}
!134 = !{ptr @se_mask, !135, !"se_mask", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 304, i32 45}
!136 = !{ptr @hwseq_reg, !137, !"hwseq_reg", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 522, i32 41}
!138 = !{ptr @hwseq_shift, !139, !"hwseq_shift", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 526, i32 37}
!140 = !{ptr @hwseq_mask, !141, !"hwseq_mask", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 530, i32 36}
!142 = !{ptr @plane_cap, !143, !"plane_cap", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce112/dce112_resource.c", i32 410, i32 34}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2148237727, i64 2148237732, i64 2148237745, i64 2148237789, i64 2148237823, i64 2148237844}
!154 = !{i8 0, i8 2}
!155 = !{!"branch_weights", i32 2000, i32 1}
