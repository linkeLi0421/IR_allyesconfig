; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce120/dce120_resource.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bios_registers = type { i32, i32 }
%struct.resource_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.9 }
%struct.anon.9 = type { i32 }
%struct.dce110_clk_src_regs = type { i32, i32, i32, [6 x i32], [6 x i32], [6 x i32] }
%struct.dce_dmcu_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_dmcu_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_dmcu_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_abm_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_abm_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_abm_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_timing_generator_offsets = type { i32, i32, i32 }
%struct.resource_create_funcs = type { ptr, ptr, ptr, ptr }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.10, %struct.anon.11, %struct.anon.12, i32, i32 }
%struct.anon.10 = type { i8, [3 x i8] }
%struct.anon.11 = type { i32, i32, i32 }
%struct.anon.12 = type { i32, i32, i32 }
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
%struct.dm_pp_clock_levels_with_latency = type { i32, [16 x %struct.dm_pp_clock_with_latency] }
%struct.dm_pp_clock_with_latency = type { i32, i32 }
%struct.dm_pp_wm_sets_with_clock_ranges = type { i32, [4 x %struct.dm_pp_clock_range_for_wm_set] }
%struct.dm_pp_clock_range_for_wm_set = type { i32, i32, i32, i32, i32 }
%struct.bw_fixed = type { i64 }
%struct.irq_service_init_data = type { ptr }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
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
%struct.dc_phy_addr_space_config = type { %struct.anon.16, %struct.anon.17, i8, i8, i64 }
%struct.anon.16 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.17 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.68 }
%struct.anon.68 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
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
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.70, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.71, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.70 = type { i8, [3 x i8] }
%struct.anon.71 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.clock_source = type { ptr, ptr, i32, i8 }
%struct.dce_transform = type { %struct.transform, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.transform = type { ptr, ptr, i32, ptr, %struct.pwl_params }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon.29, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon.29 = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.fixed31_32 = type { i64 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.bw_calcs_vbios = type { i32, i32, i32, i32, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, i8, %struct.bw_fixed, i32, i32, i32, %struct.bw_fixed, %struct.bw_fixed }
%struct.panel_cntl_init_data = type { ptr, i32 }
%struct.encoder_init_data = type { i32, %struct.graphics_object_id, i32, %struct.graphics_object_id, ptr, i32 }
%struct.graphics_object_id = type { i32 }
%struct.resource_straps = type { i32, i32, i32 }
%struct.dce_hwseq = type { ptr, ptr, ptr, ptr, %struct.dce_hwseq_wa, %struct.hwseq_wa_state, %struct.hwseq_private_funcs, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dce_hwseq_wa = type { i8, i8, i8, i8, i8, i8 }
%struct.hwseq_wa_state = type { i8, i8, i32 }
%struct.hwseq_private_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.large_integer = type { i64 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce120_create_resource_pool = private unnamed_addr constant [28 x i8] c"dce120_create_resource_pool\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dce120_resource_construct.res_funcs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bios_regs = internal constant { %struct.bios_registers, [24 x i8] } { %struct.bios_registers { i32 79, i32 82 }, [24 x i8] zeroinitializer }, align 32
@res_cap = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 6, i32 0, i32 0, i32 7, i32 6, i32 6, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dce120_res_pool_funcs = internal constant { %struct.resource_funcs, [40 x i8] } { %struct.resource_funcs { ptr @dce120_destroy_resource_pool, ptr null, ptr @dce120_panel_cntl_create, ptr @dce120_link_encoder_create, ptr null, ptr @dce112_validate_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce100_validate_plane, ptr @dce112_add_stream_to_ctx, ptr null, ptr null, ptr @dce110_find_first_free_match_stream_enc_for_link, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@debug_defaults = internal constant { %struct.dc_debug_options, [64 x i8] } { %struct.dc_debug_options { i8 0, i8 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i8 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, %struct.dc_bw_validation_profile zeroinitializer, i8 0, i8 0, i32 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i8 0, %union.mem_low_power_enable_options zeroinitializer, %union.root_clock_optimization_options zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [64 x i8] zeroinitializer }, align 32
@clk_src_regs = internal constant { [6 x %struct.dce110_clk_src_regs], [104 x i8] } { [6 x %struct.dce110_clk_src_regs] [%struct.dce110_clk_src_regs { i32 0, i32 256, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 0, i32 257, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 0, i32 258, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 0, i32 259, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 0, i32 268, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 0, i32 318, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }], [104 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DC: failed to create clock sources!\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dce120_resource_construct = private unnamed_addr constant [26 x i8] c"dce120_resource_construct\00", align 1
@dmcu_regs = internal constant { %struct.dce_dmcu_registers, [36 x i8] } { %struct.dce_dmcu_registers { i32 14454, i32 14455, i32 14462, i32 13733, i32 0, i32 14467, i32 14468, i32 14482, i32 14483, i32 14484, i32 14485, i32 14486, i32 14487, i32 14488, i32 14489, i32 14490, i32 0, i32 14469, i32 14470, i32 14476, i32 302, i32 14478, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dmcu_shift = internal constant { %struct.dce_dmcu_shift, [45 x i8] } { %struct.dce_dmcu_shift { i8 11, i8 5, i8 2, i8 3, i8 4, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 7, i8 9, i8 10, i8 0, i8 0, i8 0 }, [45 x i8] zeroinitializer }, align 32
@dmcu_mask = internal constant { %struct.dce_dmcu_mask, [52 x i8] } { %struct.dce_dmcu_mask { i32 2048, i32 32, i32 4, i32 8, i32 16, i32 4, i32 1, i32 255, i32 1, i32 1, i32 0, i32 0, i32 64, i32 128, i32 512, i32 1024, i32 0, i32 0, i32 1 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC: failed to create dmcu!\0A\00", [36 x i8] zeroinitializer }, align 32
@abm_regs = internal constant { %struct.dce_abm_registers, [32 x i8] } { %struct.dce_abm_registers { i32 14538, i32 14539, i32 14501, i32 14529, i32 14511, i32 14497, i32 14496, i32 14495, i32 14535, i32 14528, i32 14512, i32 14517, i32 14486, i32 14485, i32 14482, i32 250 }, [32 x i8] zeroinitializer }, align 32
@abm_shift = internal constant { %struct.dce_abm_shift, [46 x i8] } { %struct.dce_abm_shift { i8 0, i8 8, i8 16, i8 16, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 24, i8 31, i8 0, i8 0, i8 8, i8 16 }, [46 x i8] zeroinitializer }, align 32
@abm_mask = internal constant { %struct.dce_abm_mask, [56 x i8] } { %struct.dce_abm_mask { i32 3, i32 256, i32 196608, i32 983040, i32 3840, i32 15, i32 131071, i32 131071, i32 131071, i32 1023, i32 67043328, i32 65536, i32 16777216, i32 -2147483648, i32 1, i32 255, i32 65280, i32 16711680 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC: failed to create abm!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC: skip invalid pipe %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@dce120_tg_offsets = internal constant { [6 x %struct.dce110_timing_generator_offsets], [56 x i8] } { [6 x %struct.dce110_timing_generator_offsets] [%struct.dce110_timing_generator_offsets zeroinitializer, %struct.dce110_timing_generator_offsets { i32 512, i32 0, i32 0 }, %struct.dce110_timing_generator_offsets { i32 1024, i32 0, i32 0 }, %struct.dce110_timing_generator_offsets { i32 1536, i32 0, i32 0 }, %struct.dce110_timing_generator_offsets { i32 2048, i32 0, i32 0 }, %struct.dce110_timing_generator_offsets { i32 2560, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC: failed to create tg!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DC: failed to create memory input!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DC: failed to create input pixel processor!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DC: failed to create transform!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DC: failed to create output pixel processor!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DC:failed to create aux engine!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DC:failed to create i2c engine!!\0A\00", [62 x i8] zeroinitializer }, align 32
@dce121_res_create_funcs = internal constant { %struct.resource_create_funcs, [16 x i8] } { %struct.resource_create_funcs { ptr @read_dce_straps, ptr @create_audio, ptr @dce120_stream_encoder_create, ptr @dce121_hwseq_create }, [16 x i8] zeroinitializer }, align 32
@res_create_funcs = internal constant { %struct.resource_create_funcs, [16 x i8] } { %struct.resource_create_funcs { ptr @read_dce_straps, ptr @create_audio, ptr @dce120_stream_encoder_create, ptr @dce120_hwseq_create }, [16 x i8] zeroinitializer }, align 32
@plane_cap = internal constant { %struct.dc_plane_cap, [52 x i8] } { %struct.dc_plane_cap { i32 1, i8 0, [3 x i8] undef, %struct.anon.10 { i8 -96, [3 x i8] undef }, %struct.anon.11 { i32 16000, i32 1, i32 1 }, %struct.anon.12 { i32 250, i32 1, i32 1 }, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@panel_cntl_regs = internal constant { [1 x %struct.dce_panel_cntl_registers], [32 x i8] } { [1 x %struct.dce_panel_cntl_registers] [%struct.dce_panel_cntl_registers { i32 8345, i32 8346, i32 21854, i32 21855, i32 21856, i32 21857, i32 8347, i32 250 }], [32 x i8] zeroinitializer }, align 32
@panel_cntl_shift = internal constant { %struct.dce_panel_cntl_shift, [17 x i8] } { %struct.dce_panel_cntl_shift { i8 24, i8 25, i8 16, i8 17, i8 4, i8 0, i8 16, i8 31, i8 0, i8 30, i8 0, i8 16, i8 31, i8 0, i8 8 }, [17 x i8] zeroinitializer }, align 32
@panel_cntl_mask = internal constant { %struct.dce_panel_cntl_mask, [36 x i8] } { %struct.dce_panel_cntl_mask { i32 16777216, i32 33554432, i32 65536, i32 131072, i32 16, i32 1, i32 -65536, i32 -2147483648, i32 65535, i32 1073741824, i32 65535, i32 983040, i32 -2147483648, i32 1, i32 256 }, [36 x i8] zeroinitializer }, align 32
@link_enc_regs = internal constant { [7 x %struct.dce110_link_enc_registers], [232 x i8] } { [7 x %struct.dce110_link_enc_registers] [%struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 14462, i32 13733, i32 0, i32 14469, i32 14470, i32 14476, i32 19845, i32 19846, i32 19937, i32 19949, i32 21967, i32 19955, i32 19956, i32 19951, i32 19952, i32 19953, i32 19950, i32 19934, i32 19945, i32 19984, i32 19985, i32 19986, i32 19987, i32 19969, i32 19938, i32 19962, i32 19994, i32 19995, i32 19970 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 14462, i32 13733, i32 0, i32 14469, i32 14470, i32 14476, i32 20101, i32 20102, i32 20193, i32 20205, i32 22223, i32 20211, i32 20212, i32 20207, i32 20208, i32 20209, i32 20206, i32 20190, i32 20201, i32 20240, i32 20241, i32 20242, i32 20243, i32 20225, i32 20194, i32 20218, i32 20250, i32 20251, i32 20226 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 14462, i32 13733, i32 0, i32 14469, i32 14470, i32 14476, i32 20357, i32 20358, i32 20449, i32 20461, i32 22479, i32 20467, i32 20468, i32 20463, i32 20464, i32 20465, i32 20462, i32 20446, i32 20457, i32 20496, i32 20497, i32 20498, i32 20499, i32 20481, i32 20450, i32 20474, i32 20506, i32 20507, i32 20482 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 14462, i32 13733, i32 0, i32 14469, i32 14470, i32 14476, i32 20613, i32 20614, i32 20705, i32 20717, i32 22735, i32 20723, i32 20724, i32 20719, i32 20720, i32 20721, i32 20718, i32 20702, i32 20713, i32 20752, i32 20753, i32 20754, i32 20755, i32 20737, i32 20706, i32 20730, i32 20762, i32 20763, i32 20738 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 14462, i32 13733, i32 0, i32 14469, i32 14470, i32 14476, i32 20869, i32 20870, i32 20961, i32 20973, i32 22991, i32 20979, i32 20980, i32 20975, i32 20976, i32 20977, i32 20974, i32 20958, i32 20969, i32 21008, i32 21009, i32 21010, i32 21011, i32 20993, i32 20962, i32 20986, i32 21018, i32 21019, i32 20994 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 14462, i32 13733, i32 0, i32 14469, i32 14470, i32 14476, i32 21125, i32 21126, i32 21217, i32 21229, i32 23247, i32 21235, i32 21236, i32 21231, i32 21232, i32 21233, i32 21230, i32 21214, i32 21225, i32 21264, i32 21265, i32 21266, i32 21267, i32 21249, i32 21218, i32 21242, i32 21274, i32 21275, i32 21250 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 14462, i32 13733, i32 0, i32 14469, i32 14470, i32 14476, i32 21381, i32 21382, i32 21473, i32 21485, i32 23503, i32 21491, i32 21492, i32 21487, i32 21488, i32 21489, i32 21486, i32 21470, i32 21481, i32 21520, i32 21521, i32 21522, i32 21523, i32 21505, i32 21474, i32 21498, i32 21530, i32 21531, i32 21506 }], [232 x i8] zeroinitializer }, align 32
@link_enc_aux_regs = internal constant { [6 x %struct.dce110_link_enc_aux_registers], [56 x i8] } { [6 x %struct.dce110_link_enc_aux_registers] [%struct.dce110_link_enc_aux_registers { i32 19494, i32 19504, i32 19505 }, %struct.dce110_link_enc_aux_registers { i32 19522, i32 19532, i32 19533 }, %struct.dce110_link_enc_aux_registers { i32 19550, i32 19560, i32 19561 }, %struct.dce110_link_enc_aux_registers { i32 19578, i32 19588, i32 19589 }, %struct.dce110_link_enc_aux_registers { i32 19606, i32 19616, i32 19617 }, %struct.dce110_link_enc_aux_registers { i32 19634, i32 19644, i32 19645 }], [56 x i8] zeroinitializer }, align 32
@link_enc_hpd_regs = internal constant { [6 x %struct.dce110_link_enc_hpd_registers], [40 x i8] } { [6 x %struct.dce110_link_enc_hpd_registers] [%struct.dce110_link_enc_hpd_registers { i32 19138 }, %struct.dce110_link_enc_hpd_registers { i32 19146 }, %struct.dce110_link_enc_hpd_registers { i32 19154 }, %struct.dce110_link_enc_hpd_registers { i32 19162 }, %struct.dce110_link_enc_hpd_registers { i32 19170 }, %struct.dce110_link_enc_hpd_registers { i32 19178 }], [40 x i8] zeroinitializer }, align 32
@map_transmitter_id_to_phy_instance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c\00", [62 x i8] zeroinitializer }, align 32
@link_enc_feature = internal constant { { { { i8, i8, [2 x i8] } }, i32, i32, i8, i8, i8 }, [16 x i8] } { { { { i8, i8, [2 x i8] } }, i32, i32, i8, i8, i8 } { { { i8, i8, [2 x i8] } } { { i8, i8, [2 x i8] } { i8 -16, i8 0, [2 x i8] undef } }, i32 4, i32 600000, i8 1, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@cs_shift = internal constant { %struct.dce110_clk_src_shift, [23 x i8] } { %struct.dce110_clk_src_shift { i8 0, i8 0, i8 4, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@cs_mask = internal constant { %struct.dce110_clk_src_mask, [60 x i8] } { %struct.dce110_clk_src_mask { i32 0, i32 0, i32 48, i32 512, i32 0, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.dce120_clock_source_create = private unnamed_addr constant [27 x i8] c"dce120_clock_source_create\00", align 1
@__func__.read_pipe_fuses = private unnamed_addr constant [16 x i8] c"read_pipe_fuses\00", align 1
@__func__.dce120_mem_input_create = private unnamed_addr constant [24 x i8] c"dce120_mem_input_create\00", align 1
@mi_regs = internal constant { [6 x %struct.dce_mem_input_registers], [208 x i8] } { [6 x %struct.dce_mem_input_registers] [%struct.dce_mem_input_registers { i32 14874, i32 14875, i32 14885, i32 14886, i32 14887, i32 14888, i32 14880, i32 15006, i32 14877, i32 14902, i32 14901, i32 14992, i32 14994, i32 14890, i32 14891, i32 14878, i32 14881, i32 14879, i32 14882, i32 15162, i32 0, i32 15164, i32 15165, i32 0, i32 0, i32 15169, i32 15167, i32 15168, i32 13743, i32 0, i32 13798, i32 13800, i32 13801, i32 13802 }, %struct.dce_mem_input_registers { i32 15386, i32 15387, i32 15397, i32 15398, i32 15399, i32 15400, i32 15392, i32 15518, i32 15389, i32 15414, i32 15413, i32 15504, i32 15506, i32 15402, i32 15403, i32 15390, i32 15393, i32 15391, i32 15394, i32 15674, i32 0, i32 15676, i32 15677, i32 0, i32 0, i32 15681, i32 15679, i32 15680, i32 13744, i32 0, i32 13798, i32 13800, i32 13801, i32 13802 }, %struct.dce_mem_input_registers { i32 15898, i32 15899, i32 15909, i32 15910, i32 15911, i32 15912, i32 15904, i32 16030, i32 15901, i32 15926, i32 15925, i32 16016, i32 16018, i32 15914, i32 15915, i32 15902, i32 15905, i32 15903, i32 15906, i32 16186, i32 0, i32 16188, i32 16189, i32 0, i32 0, i32 16193, i32 16191, i32 16192, i32 13745, i32 0, i32 13798, i32 13800, i32 13801, i32 13802 }, %struct.dce_mem_input_registers { i32 16410, i32 16411, i32 16421, i32 16422, i32 16423, i32 16424, i32 16416, i32 16542, i32 16413, i32 16438, i32 16437, i32 16528, i32 16530, i32 16426, i32 16427, i32 16414, i32 16417, i32 16415, i32 16418, i32 16698, i32 0, i32 16700, i32 16701, i32 0, i32 0, i32 16705, i32 16703, i32 16704, i32 13746, i32 0, i32 13798, i32 13800, i32 13801, i32 13802 }, %struct.dce_mem_input_registers { i32 16922, i32 16923, i32 16933, i32 16934, i32 16935, i32 16936, i32 16928, i32 17054, i32 16925, i32 16950, i32 16949, i32 17040, i32 17042, i32 16938, i32 16939, i32 16926, i32 16929, i32 16927, i32 16930, i32 17210, i32 0, i32 17212, i32 17213, i32 0, i32 0, i32 17217, i32 17215, i32 17216, i32 13747, i32 0, i32 13798, i32 13800, i32 13801, i32 13802 }, %struct.dce_mem_input_registers { i32 17434, i32 17435, i32 17445, i32 17446, i32 17447, i32 17448, i32 17440, i32 17566, i32 17437, i32 17462, i32 17461, i32 17552, i32 17554, i32 17450, i32 17451, i32 17438, i32 17441, i32 17439, i32 17442, i32 17722, i32 0, i32 17724, i32 17725, i32 0, i32 0, i32 17729, i32 17727, i32 17728, i32 13748, i32 0, i32 13798, i32 13800, i32 13801, i32 13802 }], [208 x i8] zeroinitializer }, align 32
@mi_shifts = internal constant { %struct.dce_mem_input_shift, [57 x i8] } { %struct.dce_mem_input_shift { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0, i8 1, i8 2, i8 3, i8 0, i8 1, i8 5, i8 9, i8 0, i8 8, i8 0, i8 8, i8 12, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 31, i8 20, i8 2, i8 18, i8 28, i8 0, i8 8, i8 0, i8 0, i8 8, i8 2, i8 0, i8 16, i8 0, i8 8, i8 15, i8 0, i8 0, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 15, i8 0, i8 7, i8 0, i8 16, i8 0, i8 4, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0 }, [57 x i8] zeroinitializer }, align 32
@mi_masks = internal constant { %struct.dce_mem_input_mask, [68 x i8] } { %struct.dce_mem_input_mask { i32 1, i32 16383, i32 16383, i32 32767, i32 32767, i32 32767, i32 7, i32 48, i32 768, i32 1, i32 2, i32 4, i32 8, i32 255, i32 30, i32 480, i32 523776, i32 63, i32 65280, i32 3, i32 1792, i32 28672, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2147483648, i32 32505856, i32 4, i32 786432, i32 1879048192, i32 255, i32 -256, i32 1, i32 255, i32 -256, i32 4, i32 1, i32 65536, i32 65535, i32 1792, i32 229376, i32 0, i32 7, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 256, i32 -32768, i32 1, i32 128, i32 65535, i32 -65536, i32 7, i32 16, i32 0, i32 65535, i32 -65536, i32 4194303, i32 262143, i32 262143 }, [68 x i8] zeroinitializer }, align 32
@__func__.dce120_ipp_create = private unnamed_addr constant [18 x i8] c"dce120_ipp_create\00", align 1
@ipp_regs = internal constant { [6 x %struct.dce_ipp_registers], [104 x i8] } { [6 x %struct.dce_ipp_registers] [%struct.dce_ipp_registers { i32 14961, i32 14953, i32 14957, i32 14958, i32 14959, i32 14960, i32 14955, i32 14956, i32 14954, i32 14902, i32 14903, i32 14904, i32 14905, i32 14889, i32 15133, i32 14980, i32 14974, i32 14982, i32 14975, i32 14976, i32 14942 }, %struct.dce_ipp_registers { i32 15473, i32 15465, i32 15469, i32 15470, i32 15471, i32 15472, i32 15467, i32 15468, i32 15466, i32 15414, i32 15415, i32 15416, i32 15417, i32 15401, i32 15645, i32 15492, i32 15486, i32 15494, i32 15487, i32 15488, i32 15454 }, %struct.dce_ipp_registers { i32 15985, i32 15977, i32 15981, i32 15982, i32 15983, i32 15984, i32 15979, i32 15980, i32 15978, i32 15926, i32 15927, i32 15928, i32 15929, i32 15913, i32 16157, i32 16004, i32 15998, i32 16006, i32 15999, i32 16000, i32 15966 }, %struct.dce_ipp_registers { i32 16497, i32 16489, i32 16493, i32 16494, i32 16495, i32 16496, i32 16491, i32 16492, i32 16490, i32 16438, i32 16439, i32 16440, i32 16441, i32 16425, i32 16669, i32 16516, i32 16510, i32 16518, i32 16511, i32 16512, i32 16478 }, %struct.dce_ipp_registers { i32 17009, i32 17001, i32 17005, i32 17006, i32 17007, i32 17008, i32 17003, i32 17004, i32 17002, i32 16950, i32 16951, i32 16952, i32 16953, i32 16937, i32 17181, i32 17028, i32 17022, i32 17030, i32 17023, i32 17024, i32 16990 }, %struct.dce_ipp_registers { i32 17521, i32 17513, i32 17517, i32 17518, i32 17519, i32 17520, i32 17515, i32 17516, i32 17514, i32 17462, i32 17463, i32 17464, i32 17465, i32 17449, i32 17693, i32 17540, i32 17534, i32 17542, i32 17535, i32 17536, i32 17502 }], [104 x i8] zeroinitializer }, align 32
@ipp_shift = internal constant { %struct.dce_ipp_shift, [58 x i8] } { %struct.dce_ipp_shift { i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 8, i8 16, i8 4, i8 0, i8 8, i8 16, i8 0, i8 8, i8 16, i8 16, i8 0, i8 0, i8 0, i8 4, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 2, i8 0, i8 0, i8 22, i8 14, i8 6, i8 0, i8 0, i8 0, i8 12, i8 8 }, [58 x i8] zeroinitializer }, align 32
@ipp_mask = internal constant { %struct.dce_ipp_mask, [40 x i8] } { %struct.dce_ipp_mask { i32 65536, i32 1, i32 1073676288, i32 16383, i32 8323072, i32 127, i32 768, i32 65536, i32 16, i32 255, i32 65280, i32 16711680, i32 255, i32 65280, i32 16711680, i32 8323072, i32 127, i32 255, i32 -1, i32 16, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 1, i32 4, i32 7, i32 1, i32 12582912, i32 49152, i32 192, i32 255, i32 65535, i32 3, i32 12288, i32 768 }, [40 x i8] zeroinitializer }, align 32
@xfm_regs = internal constant { [6 x %struct.dce_transform_registers], [392 x i8] } { [6 x %struct.dce_transform_registers] [%struct.dce_transform_registers { i32 0, i32 15066, i32 14943, i32 14944, i32 14945, i32 14946, i32 14947, i32 14948, i32 14949, i32 14914, i32 14915, i32 14916, i32 14917, i32 14918, i32 14919, i32 14913, i32 0, i32 15012, i32 15013, i32 15014, i32 15015, i32 15016, i32 15017, i32 15018, i32 15019, i32 15020, i32 15021, i32 15022, i32 15023, i32 15011, i32 15009, i32 15010, i32 15008, i32 14932, i32 14950, i32 14933, i32 14934, i32 14935, i32 14936, i32 15196, i32 15197, i32 15198, i32 15199, i32 15217, i32 15218, i32 15205, i32 15202, i32 15133, i32 15135, i32 15194, i32 15195, i32 15215, i32 15216, i32 15203, i32 15206, i32 15204, i32 0, i32 0, i32 15207, i32 15201, i32 0, i32 0, i32 15067, i32 15210, i32 15211 }, %struct.dce_transform_registers { i32 0, i32 15578, i32 15455, i32 15456, i32 15457, i32 15458, i32 15459, i32 15460, i32 15461, i32 15426, i32 15427, i32 15428, i32 15429, i32 15430, i32 15431, i32 15425, i32 0, i32 15524, i32 15525, i32 15526, i32 15527, i32 15528, i32 15529, i32 15530, i32 15531, i32 15532, i32 15533, i32 15534, i32 15535, i32 15523, i32 15521, i32 15522, i32 15520, i32 15444, i32 15462, i32 15445, i32 15446, i32 15447, i32 15448, i32 15708, i32 15709, i32 15710, i32 15711, i32 15729, i32 15730, i32 15717, i32 15714, i32 15645, i32 15647, i32 15706, i32 15707, i32 15727, i32 15728, i32 15715, i32 15718, i32 15716, i32 0, i32 0, i32 15719, i32 15713, i32 0, i32 0, i32 15579, i32 15722, i32 15723 }, %struct.dce_transform_registers { i32 0, i32 16090, i32 15967, i32 15968, i32 15969, i32 15970, i32 15971, i32 15972, i32 15973, i32 15938, i32 15939, i32 15940, i32 15941, i32 15942, i32 15943, i32 15937, i32 0, i32 16036, i32 16037, i32 16038, i32 16039, i32 16040, i32 16041, i32 16042, i32 16043, i32 16044, i32 16045, i32 16046, i32 16047, i32 16035, i32 16033, i32 16034, i32 16032, i32 15956, i32 15974, i32 15957, i32 15958, i32 15959, i32 15960, i32 16220, i32 16221, i32 16222, i32 16223, i32 16241, i32 16242, i32 16229, i32 16226, i32 16157, i32 16159, i32 16218, i32 16219, i32 16239, i32 16240, i32 16227, i32 16230, i32 16228, i32 0, i32 0, i32 16231, i32 16225, i32 0, i32 0, i32 16091, i32 16234, i32 16235 }, %struct.dce_transform_registers { i32 0, i32 16602, i32 16479, i32 16480, i32 16481, i32 16482, i32 16483, i32 16484, i32 16485, i32 16450, i32 16451, i32 16452, i32 16453, i32 16454, i32 16455, i32 16449, i32 0, i32 16548, i32 16549, i32 16550, i32 16551, i32 16552, i32 16553, i32 16554, i32 16555, i32 16556, i32 16557, i32 16558, i32 16559, i32 16547, i32 16545, i32 16546, i32 16544, i32 16468, i32 16486, i32 16469, i32 16470, i32 16471, i32 16472, i32 16732, i32 16733, i32 16734, i32 16735, i32 16753, i32 16754, i32 16741, i32 16738, i32 16669, i32 16671, i32 16730, i32 16731, i32 16751, i32 16752, i32 16739, i32 16742, i32 16740, i32 0, i32 0, i32 16743, i32 16737, i32 0, i32 0, i32 16603, i32 16746, i32 16747 }, %struct.dce_transform_registers { i32 0, i32 17114, i32 16991, i32 16992, i32 16993, i32 16994, i32 16995, i32 16996, i32 16997, i32 16962, i32 16963, i32 16964, i32 16965, i32 16966, i32 16967, i32 16961, i32 0, i32 17060, i32 17061, i32 17062, i32 17063, i32 17064, i32 17065, i32 17066, i32 17067, i32 17068, i32 17069, i32 17070, i32 17071, i32 17059, i32 17057, i32 17058, i32 17056, i32 16980, i32 16998, i32 16981, i32 16982, i32 16983, i32 16984, i32 17244, i32 17245, i32 17246, i32 17247, i32 17265, i32 17266, i32 17253, i32 17250, i32 17181, i32 17183, i32 17242, i32 17243, i32 17263, i32 17264, i32 17251, i32 17254, i32 17252, i32 0, i32 0, i32 17255, i32 17249, i32 0, i32 0, i32 17115, i32 17258, i32 17259 }, %struct.dce_transform_registers { i32 0, i32 17626, i32 17503, i32 17504, i32 17505, i32 17506, i32 17507, i32 17508, i32 17509, i32 17474, i32 17475, i32 17476, i32 17477, i32 17478, i32 17479, i32 17473, i32 0, i32 17572, i32 17573, i32 17574, i32 17575, i32 17576, i32 17577, i32 17578, i32 17579, i32 17580, i32 17581, i32 17582, i32 17583, i32 17571, i32 17569, i32 17570, i32 17568, i32 17492, i32 17510, i32 17493, i32 17494, i32 17495, i32 17496, i32 17756, i32 17757, i32 17758, i32 17759, i32 17777, i32 17778, i32 17765, i32 17762, i32 17693, i32 17695, i32 17754, i32 17755, i32 17775, i32 17776, i32 17763, i32 17766, i32 17764, i32 0, i32 0, i32 17767, i32 17761, i32 0, i32 0, i32 17627, i32 17770, i32 17771 }], [392 x i8] zeroinitializer }, align 32
@xfm_shift = internal constant { %struct.dce_transform_shift, [34 x i8] } { %struct.dce_transform_shift { i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 0, i8 4, i8 6, i8 8, i8 9, i8 10, i8 0, i8 0, i8 0, i8 2, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 16, i8 0, i8 5, i8 2, i8 0, i8 0, i8 0, i8 20, i8 0, i8 0, i8 16, i8 0, i8 0, i8 12, i8 16, i8 28, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0, i8 0, i8 16, i8 0, i8 16, i8 0, i8 8, i8 4, i8 16, i8 8, i8 0, i8 15, i8 0, i8 31, i8 16, i8 16, i8 0, i8 0, i8 16, i8 0, i8 0, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 24, i8 0, i8 0, i8 0, i8 20, i8 0, i8 8, i8 8, i8 0, i8 0, i8 24, i8 31 }, [34 x i8] zeroinitializer }, align 32
@xfm_mask = internal constant { %struct.dce_transform_mask, [72 x i8] } { %struct.dce_transform_mask { i32 1073676288, i32 16383, i32 1073676288, i32 16383, i32 1073676288, i32 16383, i32 15, i32 1, i32 48, i32 192, i32 256, i32 512, i32 1024, i32 7, i32 0, i32 3, i32 4, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 3, i32 65535, i32 -65536, i32 7, i32 32, i32 4, i32 0, i32 0, i32 262143, i32 133169152, i32 262143, i32 65535, i32 -65536, i32 65535, i32 511, i32 28672, i32 33488896, i32 1879048192, i32 0, i32 0, i32 7, i32 7, i32 3, i32 3, i32 16, i32 3840, i32 7, i32 1, i32 536805376, i32 8191, i32 536805376, i32 8191, i32 256, i32 48, i32 458752, i32 3840, i32 15, i32 32768, i32 16383, i32 -2147483648, i32 1073676288, i32 1073676288, i32 16383, i32 16383, i32 1073676288, i32 67108863, i32 67108863, i32 251658240, i32 16777215, i32 0, i32 0, i32 0, i32 0, i32 117440512, i32 16777215, i32 0, i32 0, i32 3145728, i32 8191, i32 256, i32 256, i32 0, i32 0, i32 16777216, i32 -2147483648 }, [72 x i8] zeroinitializer }, align 32
@opp_regs = internal constant { [6 x %struct.dce_opp_registers], [80 x i8] } { [6 x %struct.dce_opp_registers] [%struct.dce_opp_registers { i32 15365, i32 15367, i32 15366, i32 15368, i32 15369, i32 15370, i32 0, i32 0, i32 0, i32 19120, i32 15374, i32 15362, i32 15363, i32 15364 }, %struct.dce_opp_registers { i32 15877, i32 15879, i32 15878, i32 15880, i32 15881, i32 15882, i32 0, i32 0, i32 0, i32 19121, i32 15886, i32 15874, i32 15875, i32 15876 }, %struct.dce_opp_registers { i32 16389, i32 16391, i32 16390, i32 16392, i32 16393, i32 16394, i32 0, i32 0, i32 0, i32 19122, i32 16398, i32 16386, i32 16387, i32 16388 }, %struct.dce_opp_registers { i32 16901, i32 16903, i32 16902, i32 16904, i32 16905, i32 16906, i32 0, i32 0, i32 0, i32 19123, i32 16910, i32 16898, i32 16899, i32 16900 }, %struct.dce_opp_registers { i32 17413, i32 17415, i32 17414, i32 17416, i32 17417, i32 17418, i32 0, i32 0, i32 0, i32 19124, i32 17422, i32 17410, i32 17411, i32 17412 }, %struct.dce_opp_registers { i32 17925, i32 17927, i32 17926, i32 17928, i32 17929, i32 17930, i32 0, i32 0, i32 0, i32 19125, i32 17934, i32 17922, i32 17923, i32 17924 }], [80 x i8] zeroinitializer }, align 32
@opp_shift = internal constant { %struct.dce_opp_shift, [54 x i8] } { %struct.dce_opp_shift { i8 0, i8 4, i8 0, i8 4, i8 1, i8 8, i8 11, i8 9, i8 16, i8 25, i8 21, i8 17, i8 24, i8 26, i8 28, i8 30, i8 15, i8 13, i8 14, i8 8, i8 12, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 24, i8 31, i8 30, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 16, i8 20, i8 18, i8 21 }, [54 x i8] zeroinitializer }, align 32
@opp_mask = internal constant { %struct.dce_opp_mask, [56 x i8] } { %struct.dce_opp_mask { i32 1, i32 16, i32 1, i32 48, i32 2, i32 256, i32 6144, i32 1536, i32 65536, i32 33554432, i32 6291456, i32 393216, i32 16777216, i32 201326592, i32 805306368, i32 -1073741824, i32 32768, i32 8192, i32 16384, i32 3840, i32 12288, i32 1, i32 255, i32 255, i32 255, i32 7, i32 48, i32 117440512, i32 -2147483648, i32 1073741824, i32 1, i32 458752, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 196608, i32 1048576, i32 786432, i32 2097152 }, [56 x i8] zeroinitializer }, align 32
@aux_engine_regs = internal constant { [6 x %struct.dce110_aux_registers], [48 x i8] } { [6 x %struct.dce110_aux_registers] [%struct.dce110_aux_registers { i32 19494, i32 19496, i32 19500, i32 19495, i32 19497, i32 0, i32 19498, i32 21882, i32 21881, i32 0 }, %struct.dce110_aux_registers { i32 19522, i32 19524, i32 19528, i32 19523, i32 19525, i32 0, i32 19526, i32 21882, i32 21881, i32 0 }, %struct.dce110_aux_registers { i32 19550, i32 19552, i32 19556, i32 19551, i32 19553, i32 0, i32 19554, i32 21882, i32 21881, i32 0 }, %struct.dce110_aux_registers { i32 19578, i32 19580, i32 19584, i32 19579, i32 19581, i32 0, i32 19582, i32 21882, i32 21881, i32 0 }, %struct.dce110_aux_registers { i32 19606, i32 19608, i32 19612, i32 19607, i32 19609, i32 0, i32 19610, i32 21882, i32 21881, i32 0 }, %struct.dce110_aux_registers { i32 19634, i32 19636, i32 19640, i32 19635, i32 19637, i32 0, i32 19638, i32 21882, i32 21881, i32 0 }], [48 x i8] zeroinitializer }, align 32
@aux_mask = internal constant { %struct.dce110_aux_registers_mask, [32 x i8] } { %struct.dce110_aux_registers_mask { i32 1, i32 16, i32 32, i32 12, i32 65536, i32 131072, i32 -2147483648, i32 1, i32 2031616, i32 1, i32 65280, i32 520093696, i32 1, i32 2, i32 1, i32 1, i32 268435456, i32 268435456, i32 0, i32 0, i32 1024, i32 1024, i32 240, i32 2031616 }, [32 x i8] zeroinitializer }, align 32
@aux_shift = internal constant { %struct.dce110_aux_registers_shift, [40 x i8] } { %struct.dce110_aux_registers_shift { i8 0, i8 4, i8 5, i8 2, i8 16, i8 17, i8 31, i8 0, i8 16, i8 0, i8 8, i8 24, i8 0, i8 1, i8 0, i8 0, i8 28, i8 28, i8 0, i8 0, i8 10, i8 10, i8 4, i8 16 }, [40 x i8] zeroinitializer }, align 32
@i2c_hw_regs = internal constant { [6 x %struct.dce_i2c_registers], [80 x i8] } { [6 x %struct.dce_i2c_registers] [%struct.dce_i2c_registers { i32 19023, i32 19022, i32 19016, i32 19013, i32 19012, i32 19015, i32 19034, i32 19035, i32 19036, i32 19037, i32 19038, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 19025, i32 19024, i32 19017, i32 19013, i32 19012, i32 19015, i32 19034, i32 19035, i32 19036, i32 19037, i32 19038, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 19027, i32 19026, i32 19018, i32 19013, i32 19012, i32 19015, i32 19034, i32 19035, i32 19036, i32 19037, i32 19038, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 19029, i32 19028, i32 19019, i32 19013, i32 19012, i32 19015, i32 19034, i32 19035, i32 19036, i32 19037, i32 19038, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 19031, i32 19030, i32 19020, i32 19013, i32 19012, i32 19015, i32 19034, i32 19035, i32 19036, i32 19037, i32 19038, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 19033, i32 19032, i32 19021, i32 19013, i32 19012, i32 19015, i32 19034, i32 19035, i32 19036, i32 19037, i32 19038, i32 315, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@i2c_shifts = internal constant { %struct.dce_i2c_shift, [55 x i8] } { %struct.dce_i2c_shift { i8 6, i8 24, i8 0, i8 7, i8 1, i8 16, i8 8, i8 0, i8 21, i8 20, i8 4, i8 0, i8 1, i8 3, i8 0, i8 2, i8 20, i8 8, i8 16, i8 0, i8 8, i8 8, i8 5, i8 4, i8 2, i8 0, i8 8, i8 12, i8 0, i8 13, i8 16, i8 0, i8 8, i8 16, i8 31, i8 8, i8 0, i8 0, i8 2, i8 0, i8 0 }, [55 x i8] zeroinitializer }, align 32
@i2c_masks = internal constant { %struct.dce_i2c_mask, [60 x i8] } { %struct.dce_i2c_mask { i32 64, i32 -16777216, i32 1, i32 128, i32 2, i32 16711680, i32 65280, i32 3, i32 2097152, i32 1048576, i32 16, i32 3, i32 2, i32 8, i32 1, i32 4, i32 3145728, i32 1792, i32 -65536, i32 3, i32 768, i32 256, i32 32, i32 16, i32 4, i32 3, i32 256, i32 4096, i32 1, i32 8192, i32 67043328, i32 1, i32 65280, i32 67043328, i32 -2147483648, i32 32512, i32 127, i32 0, i32 12, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.read_dce_straps = private unnamed_addr constant [16 x i8] c"read_dce_straps\00", align 1
@audio_regs = internal constant { [6 x %struct.dce_audio_registers], [88 x i8] } { [6 x %struct.dce_audio_registers] [%struct.dce_audio_registers { i32 14656, i32 14657, i32 14790, i32 14789, i32 14791, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 14662, i32 14663, i32 14790, i32 14789, i32 14791, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 14668, i32 14669, i32 14790, i32 14789, i32 14791, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 14674, i32 14675, i32 14790, i32 14789, i32 14791, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 14680, i32 14681, i32 14790, i32 14789, i32 14791, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 14686, i32 14687, i32 14790, i32 14789, i32 14791, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }], [88 x i8] zeroinitializer }, align 32
@audio_shift = internal constant { %struct.dce_audio_shift, [40 x i8] } { %struct.dce_audio_shift { i8 0, i8 0, i8 0, i8 30, i8 31, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 20, i32 24, i32 28, i32 0 }, [40 x i8] zeroinitializer }, align 32
@audio_mask = internal constant { %struct.dce_audio_mask, [36 x i8] } { %struct.dce_audio_mask { i32 16383, i32 -1, i32 4095, i32 1073741824, i32 -2147483648, i32 7, i32 48, i32 -1, i32 -1, i32 -1, i32 -1, i32 1048576, i32 16777216, i32 268435456, i32 0 }, [36 x i8] zeroinitializer }, align 32
@stream_enc_regs = internal constant { [6 x %struct.dce110_stream_enc_registers], [360 x i8] } { [6 x %struct.dce110_stream_enc_registers] [%struct.dce110_stream_enc_registers { i32 19900, i32 19804, i32 19805, i32 19806, i32 19807, i32 19811, i32 19812, i32 19813, i32 19814, i32 19815, i32 19816, i32 19817, i32 19818, i32 19810, i32 19842, i32 19841, i32 0, i32 19840, i32 19794, i32 19843, i32 19830, i32 19831, i32 19837, i32 19774, i32 19981, i32 19983, i32 19935, i32 19969, i32 19939, i32 19944, i32 19943, i32 19938, i32 19942, i32 19975, i32 19979, i32 19783, i32 19793, i32 19790, i32 19819, i32 0, i32 0, i32 19788, i32 19789, i32 19787, i32 19785, i32 19786, i32 19820, i32 19821, i32 19822, i32 19823, i32 19824, i32 19825, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 20156, i32 20060, i32 20061, i32 20062, i32 20063, i32 20067, i32 20068, i32 20069, i32 20070, i32 20071, i32 20072, i32 20073, i32 20074, i32 20066, i32 20098, i32 20097, i32 0, i32 20096, i32 20050, i32 20099, i32 20086, i32 20087, i32 20093, i32 20030, i32 20237, i32 20239, i32 20191, i32 20225, i32 20195, i32 20200, i32 20199, i32 20194, i32 20198, i32 20231, i32 20235, i32 20039, i32 20049, i32 20046, i32 20075, i32 0, i32 0, i32 20044, i32 20045, i32 20043, i32 20041, i32 20042, i32 20076, i32 20077, i32 20078, i32 20079, i32 20080, i32 20081, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 20412, i32 20316, i32 20317, i32 20318, i32 20319, i32 20323, i32 20324, i32 20325, i32 20326, i32 20327, i32 20328, i32 20329, i32 20330, i32 20322, i32 20354, i32 20353, i32 0, i32 20352, i32 20306, i32 20355, i32 20342, i32 20343, i32 20349, i32 20286, i32 20493, i32 20495, i32 20447, i32 20481, i32 20451, i32 20456, i32 20455, i32 20450, i32 20454, i32 20487, i32 20491, i32 20295, i32 20305, i32 20302, i32 20331, i32 0, i32 0, i32 20300, i32 20301, i32 20299, i32 20297, i32 20298, i32 20332, i32 20333, i32 20334, i32 20335, i32 20336, i32 20337, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 20668, i32 20572, i32 20573, i32 20574, i32 20575, i32 20579, i32 20580, i32 20581, i32 20582, i32 20583, i32 20584, i32 20585, i32 20586, i32 20578, i32 20610, i32 20609, i32 0, i32 20608, i32 20562, i32 20611, i32 20598, i32 20599, i32 20605, i32 20542, i32 20749, i32 20751, i32 20703, i32 20737, i32 20707, i32 20712, i32 20711, i32 20706, i32 20710, i32 20743, i32 20747, i32 20551, i32 20561, i32 20558, i32 20587, i32 0, i32 0, i32 20556, i32 20557, i32 20555, i32 20553, i32 20554, i32 20588, i32 20589, i32 20590, i32 20591, i32 20592, i32 20593, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 20924, i32 20828, i32 20829, i32 20830, i32 20831, i32 20835, i32 20836, i32 20837, i32 20838, i32 20839, i32 20840, i32 20841, i32 20842, i32 20834, i32 20866, i32 20865, i32 0, i32 20864, i32 20818, i32 20867, i32 20854, i32 20855, i32 20861, i32 20798, i32 21005, i32 21007, i32 20959, i32 20993, i32 20963, i32 20968, i32 20967, i32 20962, i32 20966, i32 20999, i32 21003, i32 20807, i32 20817, i32 20814, i32 20843, i32 0, i32 0, i32 20812, i32 20813, i32 20811, i32 20809, i32 20810, i32 20844, i32 20845, i32 20846, i32 20847, i32 20848, i32 20849, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 21180, i32 21084, i32 21085, i32 21086, i32 21087, i32 21091, i32 21092, i32 21093, i32 21094, i32 21095, i32 21096, i32 21097, i32 21098, i32 21090, i32 21122, i32 21121, i32 0, i32 21120, i32 21074, i32 21123, i32 21110, i32 21111, i32 21117, i32 21054, i32 21261, i32 21263, i32 21215, i32 21249, i32 21219, i32 21224, i32 21223, i32 21218, i32 21222, i32 21255, i32 21259, i32 21063, i32 21073, i32 21070, i32 21099, i32 0, i32 0, i32 21068, i32 21069, i32 21067, i32 21065, i32 21066, i32 21100, i32 21101, i32 21102, i32 21103, i32 21104, i32 21105, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [360 x i8] zeroinitializer }, align 32
@se_shift = internal constant { %struct.dce_stream_encoder_shift, [32 x i8] } { %struct.dce_stream_encoder_shift { i8 30, i8 2, i8 3, i8 0, i8 8, i8 16, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 16, i8 5, i8 4, i8 24, i8 0, i8 24, i8 8, i8 16, i8 4, i8 0, i8 24, i8 2, i8 28, i8 5, i8 4, i8 0, i8 1, i8 4, i8 7, i8 8, i8 0, i8 26, i8 0, i8 0, i8 24, i8 0, i8 1, i8 0, i8 20, i8 0, i8 21, i8 22, i8 23, i8 0, i8 0, i8 0, i8 0, i8 24, i8 28, i8 8, i8 0, i8 16, i8 0, i8 8, i8 0, i8 0, i8 10, i8 0, i8 8, i8 16, i8 4, i8 26, i8 0, i8 28, i8 12, i8 8, i8 31, i8 12, i8 0, i8 12, i8 0, i8 12, i8 0, i8 20, i8 28, i8 20, i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 0, i8 0, i8 4, i8 8, i8 12, i8 16, i8 0, i8 0, i8 28, i8 30, i8 4, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 0 }, [32 x i8] zeroinitializer }, align 32
@se_mask = internal constant { %struct.dce_stream_encoder_mask, [128 x i8] } { %struct.dce_stream_encoder_mask { i32 -1073741824, i32 4, i32 8, i32 255, i32 65280, i32 16711680, i32 -16777216, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 4128768, i32 32, i32 16, i32 1056964608, i32 7, i32 117440512, i32 256, i32 65536, i32 16, i32 1, i32 16777216, i32 4, i32 805306368, i32 32, i32 16, i32 1, i32 2, i32 16, i32 128, i32 16128, i32 1, i32 -67108864, i32 67108863, i32 1, i32 -16777216, i32 1, i32 2, i32 63, i32 1048576, i32 1, i32 2097152, i32 4194304, i32 8388608, i32 0, i32 0, i32 0, i32 0, i32 16777216, i32 268435456, i32 768, i32 1, i32 65536, i32 1, i32 256, i32 16777215, i32 16777215, i32 1024, i32 7, i32 65280, i32 2031616, i32 48, i32 67108864, i32 1, i32 268435456, i32 4096, i32 256, i32 -2147483648, i32 -4096, i32 1048575, i32 -4096, i32 1048575, i32 -4096, i32 1048575, i32 15728640, i32 805306368, i32 15728640, i32 15, i32 240, i32 3840, i32 61440, i32 983040, i32 15728640, i32 16777215, i32 1, i32 16, i32 256, i32 4096, i32 65536, i32 1, i32 1, i32 268435456, i32 112, i32 256, i32 -1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 512, i32 7 }, [128 x i8] zeroinitializer }, align 32
@dce121_hwseq_reg = internal constant { %struct.dce_hwseq_registers, [132 x i8] } { %struct.dce_hwseq_registers { [6 x i32] [i32 15130, i32 15642, i32 16154, i32 16666, i32 17178, i32 17690], i32 0, i32 306, [6 x i32] [i32 15244, i32 15756, i32 16268, i32 16780, i32 17292, i32 17804], [6 x i32] [i32 15239, i32 15751, i32 16263, i32 16775, i32 17287, i32 17799], i32 0, [6 x i32] zeroinitializer, [6 x i32] [i32 320, i32 324, i32 328, i32 332, i32 336, i32 340], [6 x i32] [i32 323, i32 327, i32 331, i32 335, i32 339, i32 343], i32 13798, i32 13800, i32 13801, i32 13802, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 108579, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [132 x i8] zeroinitializer }, align 32
@dce121_hwseq_shift = internal constant { %struct.dce_hwseq_shift, [35 x i8] } { %struct.dce_hwseq_shift { i8 31, i8 0, i8 0, i8 0, i8 28, i8 1, i8 29, i8 31, i8 13, i8 16, i8 8, i8 20, i8 4, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [35 x i8] zeroinitializer }, align 32
@dce121_hwseq_mask = internal constant { %struct.dce_hwseq_mask, [108 x i8] } { %struct.dce_hwseq_mask { i32 -2147483648, i32 0, i32 1, i32 1, i32 268435456, i32 2, i32 536870912, i32 -2147483648, i32 8192, i32 196608, i32 768, i32 1048576, i32 16, i32 3, i32 7, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 112, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -65536, i32 65535, i32 0, i32 4194303, i32 262143, i32 262143, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer }, align 32
@hwseq_reg = internal constant { %struct.dce_hwseq_registers, [132 x i8] } { %struct.dce_hwseq_registers { [6 x i32] [i32 15130, i32 15642, i32 16154, i32 16666, i32 17178, i32 17690], i32 0, i32 306, [6 x i32] [i32 15244, i32 15756, i32 16268, i32 16780, i32 17292, i32 17804], [6 x i32] [i32 15239, i32 15751, i32 16263, i32 16775, i32 17287, i32 17799], i32 0, [6 x i32] zeroinitializer, [6 x i32] [i32 320, i32 324, i32 328, i32 332, i32 336, i32 340], [6 x i32] [i32 323, i32 327, i32 331, i32 335, i32 339, i32 343], i32 13798, i32 13800, i32 13801, i32 13802, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [132 x i8] zeroinitializer }, align 32
@hwseq_shift = internal constant { %struct.dce_hwseq_shift, [35 x i8] } { %struct.dce_hwseq_shift { i8 31, i8 0, i8 0, i8 0, i8 28, i8 1, i8 29, i8 31, i8 13, i8 16, i8 8, i8 20, i8 4, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [35 x i8] zeroinitializer }, align 32
@hwseq_mask = internal constant { %struct.dce_hwseq_mask, [108 x i8] } { %struct.dce_hwseq_mask { i32 -2147483648, i32 0, i32 1, i32 1, i32 268435456, i32 2, i32 536870912, i32 -2147483648, i32 8192, i32 196608, i32 768, i32 1048576, i32 16, i32 3, i32 7, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -65536, i32 65535, i32 0, i32 4194303, i32 262143, i32 262143, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer }, align 32
@switch.table.dce120_link_encoder_create = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 6], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1285, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"res_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1060, i32 45 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"bios_regs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 493, i32 36 }
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"res_cap\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 498, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"dce120_res_pool_funcs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 903, i32 36 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"debug_defaults\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 528, i32 38 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"clk_src_regs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 409, i32 41 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1121, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"dmcu_regs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 161, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"dmcu_shift\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 165, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"dmcu_mask\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 169, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1132, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"abm_regs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 173, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant [10 x i8] c"abm_shift\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 177, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [9 x i8] c"abm_mask\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 181, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1142, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1162, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"dce120_tg_offsets\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 101, i32 53 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1174, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1182, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1190, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1198, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1208, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1220, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1227, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"dce121_res_create_funcs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 836, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"res_create_funcs\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 829, i32 43 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"plane_cap\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 506, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"panel_cntl_regs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 297, i32 46 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"panel_cntl_shift\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 301, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"panel_cntl_mask\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 305, i32 41 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"link_enc_regs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 263, i32 47 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"link_enc_aux_regs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 234, i32 51 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"link_enc_hpd_regs\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 248, i32 51 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 399, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"link_enc_feature\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 690, i32 45 }
@___asan_gen_.122 = private unnamed_addr constant [9 x i8] c"cs_shift\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 418, i32 42 }
@___asan_gen_.125 = private unnamed_addr constant [8 x i8] c"cs_mask\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 422, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant [8 x i8] c"mi_regs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 845, i32 45 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"mi_shifts\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 854, i32 41 }
@___asan_gen_.134 = private unnamed_addr constant [9 x i8] c"mi_masks\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 858, i32 40 }
@___asan_gen_.137 = private unnamed_addr constant [9 x i8] c"ipp_regs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 190, i32 39 }
@___asan_gen_.140 = private unnamed_addr constant [10 x i8] c"ipp_shift\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 199, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant [9 x i8] c"ipp_mask\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 203, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant [9 x i8] c"xfm_regs\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 212, i32 45 }
@___asan_gen_.149 = private unnamed_addr constant [10 x i8] c"xfm_shift\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 221, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant [9 x i8] c"xfm_mask\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 225, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant [9 x i8] c"opp_regs\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 322, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant [10 x i8] c"opp_shift\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 331, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant [9 x i8] c"opp_mask\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 335, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"aux_engine_regs\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 344, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant [9 x i8] c"aux_mask\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 313, i32 47 }
@___asan_gen_.170 = private unnamed_addr constant [10 x i8] c"aux_shift\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 309, i32 48 }
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"i2c_hw_regs\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 461, i32 39 }
@___asan_gen_.176 = private unnamed_addr constant [11 x i8] c"i2c_shifts\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 470, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant [10 x i8] c"i2c_masks\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 474, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant [11 x i8] c"audio_regs\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 358, i32 41 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"audio_shift\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 372, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant [11 x i8] c"audio_mask\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 376, i32 36 }
@___asan_gen_.191 = private unnamed_addr constant [16 x i8] c"stream_enc_regs\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 280, i32 49 }
@___asan_gen_.194 = private unnamed_addr constant [9 x i8] c"se_shift\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 289, i32 46 }
@___asan_gen_.197 = private unnamed_addr constant [8 x i8] c"se_mask\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 293, i32 45 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"dce121_hwseq_reg\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 789, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant [19 x i8] c"dce121_hwseq_shift\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 793, i32 37 }
@___asan_gen_.206 = private unnamed_addr constant [18 x i8] c"dce121_hwseq_mask\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 797, i32 36 }
@___asan_gen_.209 = private unnamed_addr constant [10 x i8] c"hwseq_reg\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 776, i32 41 }
@___asan_gen_.212 = private unnamed_addr constant [12 x i8] c"hwseq_shift\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 780, i32 37 }
@___asan_gen_.215 = private unnamed_addr constant [11 x i8] c"hwseq_mask\00", align 1
@___asan_gen_.216 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 784, i32 36 }
@___asan_gen_.218 = private unnamed_addr constant [40 x i8] c"switch.table.dce120_link_encoder_create\00", align 1
@llvm.compiler.used = appending global [69 x ptr] [ptr @.str, ptr @dce120_resource_construct.res_funcs, ptr @bios_regs, ptr @res_cap, ptr @dce120_res_pool_funcs, ptr @debug_defaults, ptr @clk_src_regs, ptr @.str.1, ptr @dmcu_regs, ptr @dmcu_shift, ptr @dmcu_mask, ptr @.str.2, ptr @abm_regs, ptr @abm_shift, ptr @abm_mask, ptr @.str.3, ptr @.str.4, ptr @dce120_tg_offsets, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @dce121_res_create_funcs, ptr @res_create_funcs, ptr @plane_cap, ptr @panel_cntl_regs, ptr @panel_cntl_shift, ptr @panel_cntl_mask, ptr @link_enc_regs, ptr @link_enc_aux_regs, ptr @link_enc_hpd_regs, ptr @.str.12, ptr @link_enc_feature, ptr @cs_shift, ptr @cs_mask, ptr @mi_regs, ptr @mi_shifts, ptr @mi_masks, ptr @ipp_regs, ptr @ipp_shift, ptr @ipp_mask, ptr @xfm_regs, ptr @xfm_shift, ptr @xfm_mask, ptr @opp_regs, ptr @opp_shift, ptr @opp_mask, ptr @aux_engine_regs, ptr @aux_mask, ptr @aux_shift, ptr @i2c_hw_regs, ptr @i2c_shifts, ptr @i2c_masks, ptr @audio_regs, ptr @audio_shift, ptr @audio_mask, ptr @stream_enc_regs, ptr @se_shift, ptr @se_mask, ptr @dce121_hwseq_reg, ptr @dce121_hwseq_shift, ptr @dce121_hwseq_mask, ptr @hwseq_reg, ptr @hwseq_shift, ptr @hwseq_mask, ptr @switch.table.dce120_link_encoder_create], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce120_resource_construct.res_funcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bios_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_cap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce120_res_pool_funcs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_defaults to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_src_regs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_regs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_shift to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_mask to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_shift to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_mask to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce120_tg_offsets to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce121_res_create_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_create_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plane_cap to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_shift to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_mask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_regs to i32), i32 952, i32 1184, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_aux_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_hpd_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_feature to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_shift to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_mask to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_regs to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_shifts to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_masks to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_regs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_shift to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_mask to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_regs to i32), i32 1560, i32 1952, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_shift to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_mask to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_shift to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_mask to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_engine_regs to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_mask to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_shift to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hw_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_shifts to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_masks to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_regs to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_shift to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_mask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_regs to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se_shift to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se_mask to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce121_hwseq_reg to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce121_hwseq_shift to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce121_hwseq_mask to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_reg to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_shift to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_mask to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce120_link_encoder_create to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dce120_create_resource_pool(i8 noundef zeroext %num_virtual_links, ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  %eng_clks.i = alloca %struct.dm_pp_clock_levels_with_latency, align 4
  %mem_clks.i = alloca %struct.dm_pp_clock_levels_with_latency, align 4
  %clk_ranges.i = alloca %struct.dm_pp_wm_sets_with_clock_ranges, align 4
  %tmp.i = alloca %struct.bw_fixed, align 8
  %tmp9.i = alloca %struct.bw_fixed, align 8
  %tmp16.i = alloca %struct.bw_fixed, align 8
  %tmp24.i = alloca %struct.bw_fixed, align 8
  %tmp33.i = alloca %struct.bw_fixed, align 8
  %tmp42.i = alloca %struct.bw_fixed, align 8
  %tmp51.i = alloca %struct.bw_fixed, align 8
  %tmp60.i = alloca %struct.bw_fixed, align 8
  %tmp95.i = alloca %struct.bw_fixed, align 8
  %tmp102.i = alloca %struct.bw_fixed, align 8
  %tmp110.i = alloca %struct.bw_fixed, align 8
  %irq_init_data.i = alloca %struct.irq_service_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 516) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx1.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %1 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_init_data.i) #5
  %3 = ptrtoint ptr %irq_init_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %irq_init_data.i, align 4, !annotation !161
  %hw_internal_rev.i = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %hw_internal_rev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_internal_rev.i, align 4
  %6 = add i32 %5, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 215, i32 %6)
  %7 = icmp ult i32 %6, 215
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 7
  %8 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc_bios.i, align 4
  %regs.i = getelementptr inbounds %struct.dc_bios, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bios_regs, ptr %regs.i, align 4
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 41
  %11 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @res_cap, ptr %res_cap.i, align 4
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 40
  %12 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dce120_res_pool_funcs, ptr %funcs.i, align 8
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6, ptr %pipe_count.i, align 4
  %timing_generator_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 26
  %14 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %timing_generator_count.i, align 8
  %underlay_pipe_index.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %underlay_pipe_index.i, align 8
  %max_downscale_ratio.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 7
  %16 = ptrtoint ptr %max_downscale_ratio.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 200, ptr %max_downscale_ratio.i, align 4
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 8
  %17 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100, ptr %i2c_speed_in_khz.i, align 4
  %i2c_speed_in_khz_hdcp.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %i2c_speed_in_khz_hdcp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100, ptr %i2c_speed_in_khz_hdcp.i, align 4
  %max_cursor_size.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 11
  %19 = ptrtoint ptr %max_cursor_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %max_cursor_size.i, align 4
  %min_horizontal_blanking_period.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 13
  %20 = ptrtoint ptr %min_horizontal_blanking_period.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 80, ptr %min_horizontal_blanking_period.i, align 4
  %dual_link_dvi.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 18
  %21 = ptrtoint ptr %dual_link_dvi.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %dual_link_dvi.i, align 1
  %psp_setup_panel_mode.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 22
  %22 = ptrtoint ptr %psp_setup_panel_mode.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %psp_setup_panel_mode.i, align 1
  %extended_aux_timeout_support.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 23
  %23 = ptrtoint ptr %extended_aux_timeout_support.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %extended_aux_timeout_support.i, align 4
  %24 = call ptr @memcpy(ptr %dc, ptr @debug_defaults, i32 288)
  %25 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 184) #8
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.dce120_clock_source_create.exit.i_crit_edge, label %if.end.i.i

if.end.dce120_clock_source_create.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_clock_source_create.exit.i

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %2, ptr noundef %25, i32 noundef 9, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #5
  br i1 %call1.i.i, label %if.then2.i.i, label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dp_clk_src4.i.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %dp_clk_src4.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dp_clk_src4.i.i, align 4
  br label %dce120_clock_source_create.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_clock_source_create, i32 noundef 552) #5
  tail call void @kgdb_breakpoint() #5
  br label %dce120_clock_source_create.exit.i

dce120_clock_source_create.exit.i:                ; preds = %if.end7.i.i, %if.then2.i.i, %if.end.dce120_clock_source_create.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %if.then2.i.i ], [ null, %if.end7.i.i ], [ null, %if.end.dce120_clock_source_create.exit.i_crit_edge ]
  %clock_sources.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %28 = ptrtoint ptr %clock_sources.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i.i, ptr %clock_sources.i, align 8
  %29 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i375.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 184) #8
  %tobool.not.i376.i = icmp eq ptr %call7.i.i.i375.i, null
  br i1 %tobool.not.i376.i, label %dce120_clock_source_create.exit.i.dce120_clock_source_create.exit383.i_crit_edge, label %if.end.i378.i

dce120_clock_source_create.exit.i.dce120_clock_source_create.exit383.i_crit_edge: ; preds = %dce120_clock_source_create.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_clock_source_create.exit383.i

if.end.i378.i:                                    ; preds = %dce120_clock_source_create.exit.i
  %call1.i377.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i375.i, ptr noundef %2, ptr noundef %30, i32 noundef 10, ptr noundef getelementptr inbounds ([6 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #5
  br i1 %call1.i377.i, label %if.then2.i380.i, label %if.end7.i381.i

if.then2.i380.i:                                  ; preds = %if.end.i378.i
  call void @__sanitizer_cov_trace_pc() #7
  %dp_clk_src4.i379.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i375.i, i32 0, i32 3
  %32 = ptrtoint ptr %dp_clk_src4.i379.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %dp_clk_src4.i379.i, align 4
  br label %dce120_clock_source_create.exit383.i

if.end7.i381.i:                                   ; preds = %if.end.i378.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i375.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_clock_source_create, i32 noundef 552) #5
  tail call void @kgdb_breakpoint() #5
  br label %dce120_clock_source_create.exit383.i

dce120_clock_source_create.exit383.i:             ; preds = %if.end7.i381.i, %if.then2.i380.i, %dce120_clock_source_create.exit.i.dce120_clock_source_create.exit383.i_crit_edge
  %retval.0.i382.i = phi ptr [ %call7.i.i.i375.i, %if.then2.i380.i ], [ null, %if.end7.i381.i ], [ null, %dce120_clock_source_create.exit.i.dce120_clock_source_create.exit383.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %33 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i382.i, ptr %arrayidx24.i, align 4
  %34 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i384.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 184) #8
  %tobool.not.i385.i = icmp eq ptr %call7.i.i.i384.i, null
  br i1 %tobool.not.i385.i, label %dce120_clock_source_create.exit383.i.dce120_clock_source_create.exit392.i_crit_edge, label %if.end.i387.i

dce120_clock_source_create.exit383.i.dce120_clock_source_create.exit392.i_crit_edge: ; preds = %dce120_clock_source_create.exit383.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_clock_source_create.exit392.i

if.end.i387.i:                                    ; preds = %dce120_clock_source_create.exit383.i
  %call1.i386.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i384.i, ptr noundef %2, ptr noundef %35, i32 noundef 11, ptr noundef getelementptr inbounds ([6 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 2), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #5
  br i1 %call1.i386.i, label %if.then2.i389.i, label %if.end7.i390.i

if.then2.i389.i:                                  ; preds = %if.end.i387.i
  call void @__sanitizer_cov_trace_pc() #7
  %dp_clk_src4.i388.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i384.i, i32 0, i32 3
  %37 = ptrtoint ptr %dp_clk_src4.i388.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %dp_clk_src4.i388.i, align 4
  br label %dce120_clock_source_create.exit392.i

if.end7.i390.i:                                   ; preds = %if.end.i387.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i384.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_clock_source_create, i32 noundef 552) #5
  tail call void @kgdb_breakpoint() #5
  br label %dce120_clock_source_create.exit392.i

dce120_clock_source_create.exit392.i:             ; preds = %if.end7.i390.i, %if.then2.i389.i, %dce120_clock_source_create.exit383.i.dce120_clock_source_create.exit392.i_crit_edge
  %retval.0.i391.i = phi ptr [ %call7.i.i.i384.i, %if.then2.i389.i ], [ null, %if.end7.i390.i ], [ null, %dce120_clock_source_create.exit383.i.dce120_clock_source_create.exit392.i_crit_edge ]
  %arrayidx29.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 2
  %38 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i391.i, ptr %arrayidx29.i, align 8
  %39 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i393.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 184) #8
  %tobool.not.i394.i = icmp eq ptr %call7.i.i.i393.i, null
  br i1 %tobool.not.i394.i, label %dce120_clock_source_create.exit392.i.dce120_clock_source_create.exit401.i_crit_edge, label %if.end.i396.i

dce120_clock_source_create.exit392.i.dce120_clock_source_create.exit401.i_crit_edge: ; preds = %dce120_clock_source_create.exit392.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_clock_source_create.exit401.i

if.end.i396.i:                                    ; preds = %dce120_clock_source_create.exit392.i
  %call1.i395.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i393.i, ptr noundef %2, ptr noundef %40, i32 noundef 12, ptr noundef getelementptr inbounds ([6 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 3), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #5
  br i1 %call1.i395.i, label %if.then2.i398.i, label %if.end7.i399.i

if.then2.i398.i:                                  ; preds = %if.end.i396.i
  call void @__sanitizer_cov_trace_pc() #7
  %dp_clk_src4.i397.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i393.i, i32 0, i32 3
  %42 = ptrtoint ptr %dp_clk_src4.i397.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %dp_clk_src4.i397.i, align 4
  br label %dce120_clock_source_create.exit401.i

if.end7.i399.i:                                   ; preds = %if.end.i396.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i393.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_clock_source_create, i32 noundef 552) #5
  tail call void @kgdb_breakpoint() #5
  br label %dce120_clock_source_create.exit401.i

dce120_clock_source_create.exit401.i:             ; preds = %if.end7.i399.i, %if.then2.i398.i, %dce120_clock_source_create.exit392.i.dce120_clock_source_create.exit401.i_crit_edge
  %retval.0.i400.i = phi ptr [ %call7.i.i.i393.i, %if.then2.i398.i ], [ null, %if.end7.i399.i ], [ null, %dce120_clock_source_create.exit392.i.dce120_clock_source_create.exit401.i_crit_edge ]
  %arrayidx34.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 3
  %43 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.0.i400.i, ptr %arrayidx34.i, align 4
  %44 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i402.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 184) #8
  %tobool.not.i403.i = icmp eq ptr %call7.i.i.i402.i, null
  br i1 %tobool.not.i403.i, label %dce120_clock_source_create.exit401.i.dce120_clock_source_create.exit410.i_crit_edge, label %if.end.i405.i

dce120_clock_source_create.exit401.i.dce120_clock_source_create.exit410.i_crit_edge: ; preds = %dce120_clock_source_create.exit401.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_clock_source_create.exit410.i

if.end.i405.i:                                    ; preds = %dce120_clock_source_create.exit401.i
  %call1.i404.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i402.i, ptr noundef %2, ptr noundef %45, i32 noundef 13, ptr noundef getelementptr inbounds ([6 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 4), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #5
  br i1 %call1.i404.i, label %if.then2.i407.i, label %if.end7.i408.i

if.then2.i407.i:                                  ; preds = %if.end.i405.i
  call void @__sanitizer_cov_trace_pc() #7
  %dp_clk_src4.i406.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i402.i, i32 0, i32 3
  %47 = ptrtoint ptr %dp_clk_src4.i406.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %dp_clk_src4.i406.i, align 4
  br label %dce120_clock_source_create.exit410.i

if.end7.i408.i:                                   ; preds = %if.end.i405.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i402.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_clock_source_create, i32 noundef 552) #5
  tail call void @kgdb_breakpoint() #5
  br label %dce120_clock_source_create.exit410.i

dce120_clock_source_create.exit410.i:             ; preds = %if.end7.i408.i, %if.then2.i407.i, %dce120_clock_source_create.exit401.i.dce120_clock_source_create.exit410.i_crit_edge
  %retval.0.i409.i = phi ptr [ %call7.i.i.i402.i, %if.then2.i407.i ], [ null, %if.end7.i408.i ], [ null, %dce120_clock_source_create.exit401.i.dce120_clock_source_create.exit410.i_crit_edge ]
  %arrayidx39.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 4
  %48 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %retval.0.i409.i, ptr %arrayidx39.i, align 8
  %49 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i411.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 184) #8
  %tobool.not.i412.i = icmp eq ptr %call7.i.i.i411.i, null
  br i1 %tobool.not.i412.i, label %dce120_clock_source_create.exit410.i.dce120_clock_source_create.exit419.i_crit_edge, label %if.end.i414.i

dce120_clock_source_create.exit410.i.dce120_clock_source_create.exit419.i_crit_edge: ; preds = %dce120_clock_source_create.exit410.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_clock_source_create.exit419.i

if.end.i414.i:                                    ; preds = %dce120_clock_source_create.exit410.i
  %call1.i413.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i411.i, ptr noundef %2, ptr noundef %50, i32 noundef 14, ptr noundef getelementptr inbounds ([6 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 5), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #5
  br i1 %call1.i413.i, label %if.then2.i416.i, label %if.end7.i417.i

if.then2.i416.i:                                  ; preds = %if.end.i414.i
  call void @__sanitizer_cov_trace_pc() #7
  %dp_clk_src4.i415.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i411.i, i32 0, i32 3
  %52 = ptrtoint ptr %dp_clk_src4.i415.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %dp_clk_src4.i415.i, align 4
  br label %dce120_clock_source_create.exit419.i

if.end7.i417.i:                                   ; preds = %if.end.i414.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i411.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_clock_source_create, i32 noundef 552) #5
  tail call void @kgdb_breakpoint() #5
  br label %dce120_clock_source_create.exit419.i

dce120_clock_source_create.exit419.i:             ; preds = %if.end7.i417.i, %if.then2.i416.i, %dce120_clock_source_create.exit410.i.dce120_clock_source_create.exit419.i_crit_edge
  %retval.0.i418.i = phi ptr [ %call7.i.i.i411.i, %if.then2.i416.i ], [ null, %if.end7.i417.i ], [ null, %dce120_clock_source_create.exit410.i.dce120_clock_source_create.exit419.i_crit_edge ]
  %arrayidx44.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 5
  %53 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %retval.0.i418.i, ptr %arrayidx44.i, align 4
  %clk_src_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 31
  %54 = ptrtoint ptr %clk_src_count.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 6, ptr %clk_src_count.i, align 4
  %55 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dc_bios.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i420.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 184) #8
  %tobool.not.i421.i = icmp eq ptr %call7.i.i.i420.i, null
  br i1 %tobool.not.i421.i, label %dce120_clock_source_create.exit419.i.dce120_clock_source_create.exit428.i_crit_edge, label %if.end.i423.i

dce120_clock_source_create.exit419.i.dce120_clock_source_create.exit428.i_crit_edge: ; preds = %dce120_clock_source_create.exit419.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_clock_source_create.exit428.i

if.end.i423.i:                                    ; preds = %dce120_clock_source_create.exit419.i
  %call1.i422.i = tail call zeroext i1 @dce112_clk_src_construct(ptr noundef nonnull %call7.i.i.i420.i, ptr noundef %2, ptr noundef %56, i32 noundef 8, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #5
  br i1 %call1.i422.i, label %if.then2.i425.i, label %if.end7.i426.i

if.then2.i425.i:                                  ; preds = %if.end.i423.i
  call void @__sanitizer_cov_trace_pc() #7
  %dp_clk_src4.i424.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i420.i, i32 0, i32 3
  %58 = ptrtoint ptr %dp_clk_src4.i424.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %dp_clk_src4.i424.i, align 4
  br label %dce120_clock_source_create.exit428.i

if.end7.i426.i:                                   ; preds = %if.end.i423.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i420.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_clock_source_create, i32 noundef 552) #5
  tail call void @kgdb_breakpoint() #5
  br label %dce120_clock_source_create.exit428.i

dce120_clock_source_create.exit428.i:             ; preds = %if.end7.i426.i, %if.then2.i425.i, %dce120_clock_source_create.exit419.i.dce120_clock_source_create.exit428.i_crit_edge
  %retval.0.i427.i = phi ptr [ %call7.i.i.i420.i, %if.then2.i425.i ], [ null, %if.end7.i426.i ], [ null, %dce120_clock_source_create.exit419.i.dce120_clock_source_create.exit428.i_crit_edge ]
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %59 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i427.i, ptr %dp_clock_source.i, align 4
  %60 = ptrtoint ptr %clk_src_count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %clk_src_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp51472.not.i = icmp eq i32 %61, 0
  br i1 %cmp51472.not.i, label %dce120_clock_source_create.exit428.i.for.end.i_crit_edge, label %dce120_clock_source_create.exit428.i.for.body.i_crit_edge

dce120_clock_source_create.exit428.i.for.body.i_crit_edge: ; preds = %dce120_clock_source_create.exit428.i
  br label %for.body.i

dce120_clock_source_create.exit428.i.for.end.i_crit_edge: ; preds = %dce120_clock_source_create.exit428.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0473.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %61
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %dce120_clock_source_create.exit428.i.for.body.i_crit_edge
  %i.0473.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %dce120_clock_source_create.exit428.i.for.body.i_crit_edge ]
  %arrayidx54.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 %i.0473.i
  %62 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx54.i, align 4
  %cmp55.i = icmp eq ptr %63, null
  br i1 %cmp55.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_resource_construct, i32 noundef 1122) #5
  tail call void @kgdb_breakpoint() #5
  br label %if.end3

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %dce120_clock_source_create.exit428.i.for.end.i_crit_edge
  %call56.i = tail call ptr @dce_dmcu_create(ptr noundef %2, ptr noundef nonnull @dmcu_regs, ptr noundef nonnull @dmcu_shift, ptr noundef nonnull @dmcu_mask) #5
  %dmcu.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 38
  %64 = ptrtoint ptr %dmcu.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call56.i, ptr %dmcu.i, align 8
  %cmp60.i = icmp eq ptr %call56.i, null
  br i1 %cmp60.i, label %if.then61.i, label %if.end65.i

if.then61.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_resource_construct, i32 noundef 1133) #5
  tail call void @kgdb_breakpoint() #5
  br label %if.end3

if.end65.i:                                       ; preds = %for.end.i
  %call66.i = tail call ptr @dce_abm_create(ptr noundef %2, ptr noundef nonnull @abm_regs, ptr noundef nonnull @abm_shift, ptr noundef nonnull @abm_mask) #5
  %abm.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 37
  %65 = ptrtoint ptr %abm.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call66.i, ptr %abm.i, align 4
  %cmp70.i = icmp eq ptr %call66.i, null
  br i1 %cmp70.i, label %if.then71.i, label %if.end75.i

if.then71.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_resource_construct, i32 noundef 1143) #5
  tail call void @kgdb_breakpoint() #5
  br label %if.end3

if.end75.i:                                       ; preds = %if.end65.i
  %66 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctx1.i, align 8
  %68 = ptrtoint ptr %irq_init_data.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %irq_init_data.i, align 4
  %call78.i = call ptr @dal_irq_service_dce120_create(ptr noundef nonnull %irq_init_data.i) #5
  %irqs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 36
  %69 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call78.i, ptr %irqs.i, align 8
  %tobool.not.i = icmp eq ptr %call78.i, null
  br i1 %tobool.not.i, label %if.end75.i.if.end3_crit_edge, label %if.end83.i

if.end75.i.if.end3_crit_edge:                     ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end83.i:                                       ; preds = %if.end75.i
  br i1 %7, label %if.then85.i, label %if.end83.i.if.end87.i_crit_edge

if.end83.i.if.end87.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

if.then85.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 @dm_read_reg_func(ptr noundef %2, i32 noundef 13728, ptr noundef nonnull @__func__.read_pipe_fuses) #5
  %and.i.i = and i32 %call.i.i, 63
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then85.i, %if.end83.i.if.end87.i_crit_edge
  %pipe_fuses.0.i = phi i32 [ %and.i.i, %if.then85.i ], [ -1, %if.end83.i.if.end87.i_crit_edge ]
  %70 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp91474.not.i = icmp eq i32 %71, 0
  br i1 %cmp91474.not.i, label %if.end87.i.for.cond164.preheader.i_crit_edge, label %if.end87.i.for.body92.i_crit_edge

if.end87.i.for.body92.i_crit_edge:                ; preds = %if.end87.i
  br label %for.body92.i

if.end87.i.for.cond164.preheader.i_crit_edge:     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond164.preheader.i

for.cond164.preheader.i:                          ; preds = %for.inc161.i.for.cond164.preheader.i_crit_edge, %if.end87.i.for.cond164.preheader.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.end87.i.for.cond164.preheader.i_crit_edge ], [ %j.1.i, %for.inc161.i.for.cond164.preheader.i_crit_edge ]
  %72 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %res_cap.i, align 4
  %num_ddc480.i = getelementptr inbounds %struct.resource_caps, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %num_ddc480.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_ddc480.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp167481.not.i = icmp eq i32 %75, 0
  br i1 %cmp167481.not.i, label %for.cond164.preheader.i.for.end197.i_crit_edge, label %for.cond164.preheader.i.for.body168.i_crit_edge

for.cond164.preheader.i.for.body168.i_crit_edge:  ; preds = %for.cond164.preheader.i
  br label %for.body168.i

for.cond164.preheader.i.for.end197.i_crit_edge:   ; preds = %for.cond164.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end197.i

for.body92.i:                                     ; preds = %for.inc161.i.for.body92.i_crit_edge, %if.end87.i.for.body92.i_crit_edge
  %j.0478.i = phi i32 [ %j.1.i, %for.inc161.i.for.body92.i_crit_edge ], [ 0, %if.end87.i.for.body92.i_crit_edge ]
  %i.1475.i = phi i32 [ %inc162.i, %for.inc161.i.for.body92.i_crit_edge ], [ 0, %if.end87.i.for.body92.i_crit_edge ]
  br i1 %7, label %if.then94.i, label %for.body92.i.if.end98.i_crit_edge

for.body92.i.if.end98.i_crit_edge:                ; preds = %for.body92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98.i

if.then94.i:                                      ; preds = %for.body92.i
  %shl.i = shl nuw i32 1, %i.1475.i
  %and.i = and i32 %shl.i, %pipe_fuses.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp95.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp95.not.i, label %if.then94.i.if.end98.i_crit_edge, label %if.then96.i

if.then94.i.if.end98.i_crit_edge:                 ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98.i

if.then96.i:                                      ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %i.1475.i) #5
  br label %for.inc161.i

if.end98.i:                                       ; preds = %if.then94.i.if.end98.i_crit_edge, %for.body92.i.if.end98.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i429.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3520, i32 noundef 76) #8
  %tobool.not.i430.i = icmp eq ptr %call7.i.i.i429.i, null
  br i1 %tobool.not.i430.i, label %do.body108.i, label %if.end111.i

do.body108.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx102455.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %j.0478.i
  %77 = ptrtoint ptr %arrayidx102455.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx102455.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_resource_construct, i32 noundef 1173) #5
  call void @kgdb_breakpoint() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #5
  br label %if.end3

if.end111.i:                                      ; preds = %if.end98.i
  %arrayidx99.i = getelementptr [6 x %struct.dce110_timing_generator_offsets], ptr @dce120_tg_offsets, i32 0, i32 %i.1475.i
  call void @dce120_timing_generator_construct(ptr noundef nonnull %call7.i.i.i429.i, ptr noundef %2, i32 noundef %i.1475.i, ptr noundef %arrayidx99.i) #5
  %arrayidx102.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %j.0478.i
  %78 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i.i429.i, ptr %arrayidx102.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i432.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 272) #8
  %tobool.not.i433.i = icmp eq ptr %call7.i.i.i432.i, null
  br i1 %tobool.not.i433.i, label %do.body120.i, label %if.end123.i

do.body120.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_mem_input_create, i32 noundef 870) #5
  call void @kgdb_breakpoint() #5
  %arrayidx114456.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %j.0478.i
  %80 = ptrtoint ptr %arrayidx114456.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx114456.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_resource_construct, i32 noundef 1181) #5
  call void @kgdb_breakpoint() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #5
  br label %if.end3

if.end123.i:                                      ; preds = %if.end111.i
  %arrayidx.i.i = getelementptr [6 x %struct.dce_mem_input_registers], ptr @mi_regs, i32 0, i32 %i.1475.i
  call void @dce120_mem_input_construct(ptr noundef nonnull %call7.i.i.i432.i, ptr noundef %2, i32 noundef %i.1475.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mi_shifts, ptr noundef nonnull @mi_masks) #5
  %arrayidx114.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %j.0478.i
  %81 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i.i432.i, ptr %arrayidx114.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i435.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 24) #8
  %tobool.not.i436.i = icmp eq ptr %call7.i.i.i435.i, null
  br i1 %tobool.not.i436.i, label %do.body.i437.i, label %if.end.i439.i

do.body.i437.i:                                   ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_ipp_create, i32 noundef 747) #5
  call void @kgdb_breakpoint() #5
  br label %dce120_ipp_create.exit.i

if.end.i439.i:                                    ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i438.i = getelementptr [6 x %struct.dce_ipp_registers], ptr @ipp_regs, i32 0, i32 %i.1475.i
  call void @dce_ipp_construct(ptr noundef nonnull %call7.i.i.i435.i, ptr noundef %2, i32 noundef %i.1475.i, ptr noundef %arrayidx.i438.i, ptr noundef nonnull @ipp_shift, ptr noundef nonnull @ipp_mask) #5
  br label %dce120_ipp_create.exit.i

dce120_ipp_create.exit.i:                         ; preds = %if.end.i439.i, %do.body.i437.i
  %arrayidx126.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %j.0478.i
  %83 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i.i435.i, ptr %arrayidx126.i, align 4
  %arrayidx129.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1475.i
  %84 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx129.i, align 4
  %cmp130.i = icmp eq ptr %85, null
  br i1 %cmp130.i, label %do.body132.i, label %if.end135.i

do.body132.i:                                     ; preds = %dce120_ipp_create.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_resource_construct, i32 noundef 1189) #5
  call void @kgdb_breakpoint() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #5
  br label %if.end3

if.end135.i:                                      ; preds = %dce120_ipp_create.exit.i
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19280, i32 noundef 3520, i32 noundef 3) #9
  %tobool.not.i440.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i440.i, label %if.end135.i.dce120_transform_create.exit.i_crit_edge, label %if.end.i442.i

if.end135.i.dce120_transform_create.exit.i_crit_edge: ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_transform_create.exit.i

if.end.i442.i:                                    ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i441.i = getelementptr [6 x %struct.dce_transform_registers], ptr @xfm_regs, i32 0, i32 %i.1475.i
  call void @dce_transform_construct(ptr noundef nonnull %call1.i.i.i.i.i, ptr noundef %2, i32 noundef %i.1475.i, ptr noundef %arrayidx.i441.i, ptr noundef nonnull @xfm_shift, ptr noundef nonnull @xfm_mask) #5
  %lb_memory_size.i.i = getelementptr inbounds %struct.dce_transform, ptr %call1.i.i.i.i.i, i32 0, i32 9
  %86 = ptrtoint ptr %lb_memory_size.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 5124, ptr %lb_memory_size.i.i, align 64
  br label %dce120_transform_create.exit.i

dce120_transform_create.exit.i:                   ; preds = %if.end.i442.i, %if.end135.i.dce120_transform_create.exit.i_crit_edge
  %arrayidx138.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %j.0478.i
  %87 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx138.i, align 4
  %arrayidx141.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1475.i
  %88 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx141.i, align 4
  %cmp142.i = icmp eq ptr %89, null
  br i1 %cmp142.i, label %do.body144.i, label %if.end147.i

do.body144.i:                                     ; preds = %dce120_transform_create.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_resource_construct, i32 noundef 1197) #5
  call void @kgdb_breakpoint() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #5
  br label %if.end3

if.end147.i:                                      ; preds = %dce120_transform_create.exit.i
  %call1.i.i.i.i443.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19264, i32 noundef 3520, i32 noundef 3) #9
  %tobool.not.i444.i = icmp eq ptr %call1.i.i.i.i443.i, null
  br i1 %tobool.not.i444.i, label %do.body156.i, label %dce120_opp_create.exit.i

dce120_opp_create.exit.i:                         ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i445.i = getelementptr [6 x %struct.dce_opp_registers], ptr @opp_regs, i32 0, i32 %i.1475.i
  call void @dce110_opp_construct(ptr noundef nonnull %call1.i.i.i.i443.i, ptr noundef %2, i32 noundef %i.1475.i, ptr noundef %arrayidx.i445.i, ptr noundef nonnull @opp_shift, ptr noundef nonnull @opp_mask) #5
  %arrayidx150.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %j.0478.i
  %90 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call1.i.i.i.i443.i, ptr %arrayidx150.i, align 4
  br label %if.end159.i

do.body156.i:                                     ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx150457.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %j.0478.i
  %91 = ptrtoint ptr %arrayidx150457.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %arrayidx150457.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_resource_construct, i32 noundef 1207) #5
  call void @kgdb_breakpoint() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #5
  br label %if.end159.i

if.end159.i:                                      ; preds = %do.body156.i, %dce120_opp_create.exit.i
  %inc160.i = add i32 %j.0478.i, 1
  br label %for.inc161.i

for.inc161.i:                                     ; preds = %if.end159.i, %if.then96.i
  %j.1.i = phi i32 [ %j.0478.i, %if.then96.i ], [ %inc160.i, %if.end159.i ]
  %inc162.i = add nuw i32 %i.1475.i, 1
  %92 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pipe_count.i, align 4
  %cmp91.i = icmp ult i32 %inc162.i, %93
  br i1 %cmp91.i, label %for.inc161.i.for.body92.i_crit_edge, label %for.inc161.i.for.cond164.preheader.i_crit_edge

for.inc161.i.for.cond164.preheader.i_crit_edge:   ; preds = %for.inc161.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond164.preheader.i

for.inc161.i.for.body92.i_crit_edge:              ; preds = %for.inc161.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body92.i

for.body168.i:                                    ; preds = %if.end192.i.for.body168.i_crit_edge, %for.cond164.preheader.i.for.body168.i_crit_edge
  %i.2482.i = phi i32 [ %inc196.i, %if.end192.i.for.body168.i_crit_edge ], [ 0, %for.cond164.preheader.i.for.body168.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %94 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i447.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 3520, i32 noundef 76) #8
  %tobool.not.i448.i = icmp eq ptr %call7.i.i.i447.i, null
  br i1 %tobool.not.i448.i, label %do.body177.i, label %if.end180.i

do.body177.i:                                     ; preds = %for.body168.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx171458.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2482.i
  %95 = ptrtoint ptr %arrayidx171458.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %arrayidx171458.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_resource_construct, i32 noundef 1219) #5
  call void @kgdb_breakpoint() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #5
  br label %if.end3

if.end180.i:                                      ; preds = %for.body168.i
  %arrayidx.i449.i = getelementptr [6 x %struct.dce110_aux_registers], ptr @aux_engine_regs, i32 0, i32 %i.2482.i
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %2, align 8
  %extended_aux_timeout_support.i.i = getelementptr inbounds %struct.dc, ptr %97, i32 0, i32 2, i32 23
  %98 = ptrtoint ptr %extended_aux_timeout_support.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %extended_aux_timeout_support.i.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool1.i.i = icmp ne i8 %99, 0
  %call2.i.i = call ptr @dce110_aux_engine_construct(ptr noundef nonnull %call7.i.i.i447.i, ptr noundef %2, i32 noundef %i.2482.i, i32 noundef 2400, ptr noundef %arrayidx.i449.i, ptr noundef nonnull @aux_mask, ptr noundef nonnull @aux_shift, i1 noundef zeroext %tobool1.i.i) #5
  %arrayidx171.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2482.i
  %100 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i.i447.i, ptr %arrayidx171.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %101 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i451.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3520, i32 noundef 60) #8
  %tobool.not.i452.i = icmp eq ptr %call7.i.i.i451.i, null
  br i1 %tobool.not.i452.i, label %do.body189.i, label %if.end192.i

do.body189.i:                                     ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx183459.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2482.i
  %102 = ptrtoint ptr %arrayidx183459.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %arrayidx183459.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_resource_construct, i32 noundef 1226) #5
  call void @kgdb_breakpoint() #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #5
  br label %if.end3

if.end192.i:                                      ; preds = %if.end180.i
  %arrayidx.i453.i = getelementptr [6 x %struct.dce_i2c_registers], ptr @i2c_hw_regs, i32 0, i32 %i.2482.i
  call void @dce112_i2c_hw_construct(ptr noundef nonnull %call7.i.i.i451.i, ptr noundef %2, i32 noundef %i.2482.i, ptr noundef %arrayidx.i453.i, ptr noundef nonnull @i2c_shifts, ptr noundef nonnull @i2c_masks) #5
  %arrayidx183.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2482.i
  %103 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i.i.i451.i, ptr %arrayidx183.i, align 4
  %arrayidx194.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2482.i
  %104 = ptrtoint ptr %arrayidx194.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %arrayidx194.i, align 4
  %inc196.i = add nuw i32 %i.2482.i, 1
  %105 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %res_cap.i, align 4
  %num_ddc.i = getelementptr inbounds %struct.resource_caps, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %num_ddc.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_ddc.i, align 4
  %cmp167.i = icmp ult i32 %inc196.i, %108
  br i1 %cmp167.i, label %if.end192.i.for.body168.i_crit_edge, label %if.end192.i.for.end197.i_crit_edge

if.end192.i.for.end197.i_crit_edge:               ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end197.i

if.end192.i.for.body168.i_crit_edge:              ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body168.i

for.end197.i:                                     ; preds = %if.end192.i.for.end197.i_crit_edge, %for.cond164.preheader.i.for.end197.i_crit_edge
  %109 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %j.0.lcssa.i, ptr %pipe_count.i, align 4
  %110 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %j.0.lcssa.i, ptr %timing_generator_count.i, align 8
  %dce121_res_create_funcs.res_create_funcs.i = select i1 %7, ptr @dce121_res_create_funcs, ptr @res_create_funcs
  store ptr %dce121_res_create_funcs.res_create_funcs.i, ptr @dce120_resource_construct.res_funcs, align 4
  %conv.i = zext i8 %num_virtual_links to i32
  %call206.i = call zeroext i1 @resource_construct(i32 noundef %conv.i, ptr noundef %dc, ptr noundef %call7.i.i, ptr noundef nonnull %dce121_res_create_funcs.res_create_funcs.i) #5
  br i1 %call206.i, label %if.end208.i, label %for.end197.i.if.end3_crit_edge

for.end197.i.if.end3_crit_edge:                   ; preds = %for.end197.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end208.i:                                      ; preds = %for.end197.i
  call void @dce120_hw_sequencer_construct(ptr noundef %dc) #5
  %111 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pipe_count.i, align 4
  %max_planes.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 6
  %113 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %max_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp218483.not.i = icmp eq i32 %112, 0
  br i1 %cmp218483.not.i, label %if.end208.i.for.end225.i_crit_edge, label %if.end208.i.for.body220.i_crit_edge

if.end208.i.for.body220.i_crit_edge:              ; preds = %if.end208.i
  br label %for.body220.i

if.end208.i.for.end225.i_crit_edge:               ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end225.i

for.body220.i:                                    ; preds = %for.body220.i.for.body220.i_crit_edge, %if.end208.i.for.body220.i_crit_edge
  %i.3484.i = phi i32 [ %inc224.i, %for.body220.i.for.body220.i_crit_edge ], [ 0, %if.end208.i.for.body220.i_crit_edge ]
  %arrayidx222.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 2, i32 30, i32 %i.3484.i
  %114 = call ptr @memcpy(ptr %arrayidx222.i, ptr @plane_cap, i32 44)
  %inc224.i = add nuw i32 %i.3484.i, 1
  %115 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_planes.i, align 4
  %cmp218.i = icmp ult i32 %inc224.i, %116
  br i1 %cmp218.i, label %for.body220.i.for.body220.i_crit_edge, label %for.body220.i.for.end225.i_crit_edge

for.body220.i.for.end225.i_crit_edge:             ; preds = %for.body220.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end225.i

for.body220.i.for.body220.i_crit_edge:            ; preds = %for.body220.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body220.i

for.end225.i:                                     ; preds = %for.body220.i.for.end225.i_crit_edge, %if.end208.i.for.end225.i_crit_edge
  %bw_dceip.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 15
  %117 = ptrtoint ptr %bw_dceip.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bw_dceip.i, align 4
  %bw_vbios.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 16
  %119 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bw_vbios.i, align 8
  %121 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ctx1.i, align 8
  %asic_id227.i = getelementptr inbounds %struct.dc_context, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %asic_id227.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.unpack.i = load i32, ptr %asic_id227.i, align 4
  %124 = insertvalue [9 x i32] undef, i32 %.unpack.i, 0
  %.elt359.i = getelementptr inbounds %struct.dc_context, ptr %122, i32 0, i32 5, i32 1
  %125 = ptrtoint ptr %.elt359.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.unpack360.i = load i32, ptr %.elt359.i, align 4
  %126 = insertvalue [9 x i32] %124, i32 %.unpack360.i, 1
  %.elt361.i = getelementptr inbounds %struct.dc_context, ptr %122, i32 0, i32 5, i32 2
  %127 = ptrtoint ptr %.elt361.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %.unpack362.i = load i32, ptr %.elt361.i, align 4
  %128 = insertvalue [9 x i32] %126, i32 %.unpack362.i, 2
  %.elt363.i = getelementptr inbounds %struct.dc_context, ptr %122, i32 0, i32 5, i32 3
  %129 = ptrtoint ptr %.elt363.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.unpack364.i = load i32, ptr %.elt363.i, align 4
  %130 = insertvalue [9 x i32] %128, i32 %.unpack364.i, 3
  %.elt365.i = getelementptr inbounds %struct.dc_context, ptr %122, i32 0, i32 5, i32 4
  %131 = ptrtoint ptr %.elt365.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %.unpack366.i = load i32, ptr %.elt365.i, align 4
  %132 = insertvalue [9 x i32] %130, i32 %.unpack366.i, 4
  %.elt367.i = getelementptr inbounds %struct.dc_context, ptr %122, i32 0, i32 5, i32 5
  %133 = ptrtoint ptr %.elt367.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.unpack368.i = load i32, ptr %.elt367.i, align 4
  %134 = insertvalue [9 x i32] %132, i32 %.unpack368.i, 5
  %.elt369.i = getelementptr inbounds %struct.dc_context, ptr %122, i32 0, i32 5, i32 6
  %135 = ptrtoint ptr %.elt369.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.unpack370.i = load i32, ptr %.elt369.i, align 4
  %136 = insertvalue [9 x i32] %134, i32 %.unpack370.i, 6
  %.elt371.i = getelementptr inbounds %struct.dc_context, ptr %122, i32 0, i32 5, i32 7
  %137 = ptrtoint ptr %.elt371.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %.unpack372.i = load i32, ptr %.elt371.i, align 4
  %138 = insertvalue [9 x i32] %136, i32 %.unpack372.i, 7
  %.elt373.i = getelementptr inbounds %struct.dc_context, ptr %122, i32 0, i32 5, i32 8
  %139 = ptrtoint ptr %.elt373.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %.unpack374.i = load i32, ptr %.elt373.i, align 4
  %140 = insertvalue [9 x i32] %138, i32 %.unpack374.i, 8
  call void @bw_calcs_init(ptr noundef %118, ptr noundef %120, [9 x i32] %140) #5
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %eng_clks.i) #5
  %141 = call ptr @memset(ptr %eng_clks.i, i32 0, i32 132)
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %mem_clks.i) #5
  %142 = call ptr @memset(ptr %mem_clks.i, i32 0, i32 132)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %clk_ranges.i) #5
  %143 = call ptr @memset(ptr %clk_ranges.i, i32 0, i32 84)
  %144 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ctx1.i, align 8
  %call.i = call zeroext i1 @dm_pp_get_clock_levels_by_type_with_latency(ptr noundef %145, i32 noundef 2, ptr noundef nonnull %eng_clks.i) #5
  br i1 %call.i, label %lor.lhs.false.i, label %for.end225.i.if.then.i7_crit_edge

for.end225.i.if.then.i7_crit_edge:                ; preds = %for.end225.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i7

lor.lhs.false.i:                                  ; preds = %for.end225.i
  %146 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %eng_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.i = icmp eq i32 %147, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i7_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

lor.lhs.false.i.if.then.i7_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i7

if.then.i7:                                       ; preds = %lor.lhs.false.i.if.then.i7_crit_edge, %for.end225.i.if.then.i7_crit_edge
  %148 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 8, ptr %eng_clks.i, align 4
  %arrayidx.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 0
  %149 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 300000, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 1
  %150 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 400000, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 2
  %151 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 500000, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 3
  %152 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 600000, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 4
  %153 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 700000, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 5
  %154 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 800000, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 6
  %155 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 900000, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 7
  %156 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1000000, ptr %arrayidx.7.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i7, %lor.lhs.false.i.if.end.i_crit_edge
  %157 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bw_vbios.i, align 8
  %high_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %158, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #5
  %data4.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1
  %159 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %eng_clks.i, align 4
  %sub.i = add i32 %160, -1
  %arrayidx6.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %sub.i
  %161 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx6.i, align 4
  %conv.i9 = zext i32 %162 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp.i, i64 noundef %conv.i9, i64 noundef 1000) #5
  %163 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %tmp.i, align 8
  %165 = ptrtoint ptr %high_sclk.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %high_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #5
  %166 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bw_vbios.i, align 8
  %mid1_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %167, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp9.i) #5
  %168 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %eng_clks.i, align 4
  %div260.i = lshr i32 %169, 3
  %arrayidx12.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div260.i
  %170 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx12.i, align 4
  %conv14.i = zext i32 %171 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp9.i, i64 noundef %conv14.i, i64 noundef 1000) #5
  %172 = ptrtoint ptr %tmp9.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %tmp9.i, align 8
  %174 = ptrtoint ptr %mid1_sclk.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %173, ptr %mid1_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp9.i) #5
  %175 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bw_vbios.i, align 8
  %mid2_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %176, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp16.i) #5
  %177 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %eng_clks.i, align 4
  %179 = lshr i32 %178, 2
  %div19261.i = and i32 %179, 536870911
  %arrayidx20.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div19261.i
  %180 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx20.i, align 4
  %conv22.i = zext i32 %181 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp16.i, i64 noundef %conv22.i, i64 noundef 1000) #5
  %182 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %tmp16.i, align 8
  %184 = ptrtoint ptr %mid2_sclk.i to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %183, ptr %mid2_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp16.i) #5
  %185 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bw_vbios.i, align 8
  %mid3_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %186, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp24.i) #5
  %187 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %eng_clks.i, align 4
  %mul27.i = mul i32 %188, 3
  %div28262.i = lshr i32 %mul27.i, 3
  %arrayidx29.i10 = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div28262.i
  %189 = ptrtoint ptr %arrayidx29.i10 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx29.i10, align 4
  %conv31.i = zext i32 %190 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp24.i, i64 noundef %conv31.i, i64 noundef 1000) #5
  %191 = ptrtoint ptr %tmp24.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %tmp24.i, align 8
  %193 = ptrtoint ptr %mid3_sclk.i to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %192, ptr %mid3_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp24.i) #5
  %194 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %bw_vbios.i, align 8
  %mid4_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %195, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp33.i) #5
  %196 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %eng_clks.i, align 4
  %198 = lshr i32 %197, 1
  %div37263.i = and i32 %198, 536870911
  %arrayidx38.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div37263.i
  %199 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx38.i, align 4
  %conv40.i = zext i32 %200 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp33.i, i64 noundef %conv40.i, i64 noundef 1000) #5
  %201 = ptrtoint ptr %tmp33.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %tmp33.i, align 8
  %203 = ptrtoint ptr %mid4_sclk.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %202, ptr %mid4_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp33.i) #5
  %204 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %bw_vbios.i, align 8
  %mid5_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %205, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp42.i) #5
  %206 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %eng_clks.i, align 4
  %mul45.i = mul i32 %207, 5
  %div46264.i = lshr i32 %mul45.i, 3
  %arrayidx47.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div46264.i
  %208 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx47.i, align 4
  %conv49.i = zext i32 %209 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp42.i, i64 noundef %conv49.i, i64 noundef 1000) #5
  %210 = ptrtoint ptr %tmp42.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %tmp42.i, align 8
  %212 = ptrtoint ptr %mid5_sclk.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %211, ptr %mid5_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp42.i) #5
  %213 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bw_vbios.i, align 8
  %mid6_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %214, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp51.i) #5
  %215 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %eng_clks.i, align 4
  %mul54.i = mul i32 %216, 6
  %div55265.i = lshr i32 %mul54.i, 3
  %arrayidx56.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div55265.i
  %217 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx56.i, align 4
  %conv58.i = zext i32 %218 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp51.i, i64 noundef %conv58.i, i64 noundef 1000) #5
  %219 = ptrtoint ptr %tmp51.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %tmp51.i, align 8
  %221 = ptrtoint ptr %mid6_sclk.i to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %220, ptr %mid6_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp51.i) #5
  %222 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %bw_vbios.i, align 8
  %low_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %223, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp60.i) #5
  %224 = ptrtoint ptr %data4.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %data4.i, align 4
  %conv64.i = zext i32 %225 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp60.i, i64 noundef %conv64.i, i64 noundef 1000) #5
  %226 = ptrtoint ptr %tmp60.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %tmp60.i, align 8
  %228 = ptrtoint ptr %low_sclk.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %227, ptr %low_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp60.i) #5
  %229 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ctx1.i, align 8
  %call66.i11 = call zeroext i1 @dm_pp_get_clock_levels_by_type_with_latency(ptr noundef %230, i32 noundef 3, ptr noundef nonnull %mem_clks.i) #5
  br i1 %call66.i11, label %lor.lhs.false67.i, label %if.end.i.if.then71.i12_crit_edge

if.end.i.if.then71.i12_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then71.i12

lor.lhs.false67.i:                                ; preds = %if.end.i
  %231 = ptrtoint ptr %mem_clks.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %mem_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp69.i = icmp eq i32 %232, 0
  br i1 %cmp69.i, label %lor.lhs.false67.i.if.then71.i12_crit_edge, label %lor.lhs.false67.i.dce120_resource_construct.exit.thread_crit_edge

lor.lhs.false67.i.dce120_resource_construct.exit.thread_crit_edge: ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_resource_construct.exit.thread

lor.lhs.false67.i.if.then71.i12_crit_edge:        ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then71.i12

if.then71.i12:                                    ; preds = %lor.lhs.false67.i.if.then71.i12_crit_edge, %if.end.i.if.then71.i12_crit_edge
  %233 = ptrtoint ptr %mem_clks.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 3, ptr %mem_clks.i, align 4
  %234 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %eng_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp75272.not.i = icmp eq i32 %235, 0
  br i1 %cmp75272.not.i, label %if.then71.i12.dce120_resource_construct.exit.thread_crit_edge, label %if.then71.i12.for.body77.i_crit_edge

if.then71.i12.for.body77.i_crit_edge:             ; preds = %if.then71.i12
  br label %for.body77.i

if.then71.i12.dce120_resource_construct.exit.thread_crit_edge: ; preds = %if.then71.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_resource_construct.exit.thread

for.body77.i:                                     ; preds = %for.body77.i.for.body77.i_crit_edge, %if.then71.i12.for.body77.i_crit_edge
  %latency.0275.i = phi i32 [ %sub84.i, %for.body77.i.for.body77.i_crit_edge ], [ 45, %if.then71.i12.for.body77.i_crit_edge ]
  %clk.1274.i = phi i32 [ %add83.i, %for.body77.i.for.body77.i_crit_edge ], [ 250000, %if.then71.i12.for.body77.i_crit_edge ]
  %i.1273.i = phi i32 [ %inc86.i, %for.body77.i.for.body77.i_crit_edge ], [ 0, %if.then71.i12.for.body77.i_crit_edge ]
  %arrayidx79.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %mem_clks.i, i32 0, i32 1, i32 %i.1273.i
  %236 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %clk.1274.i, ptr %arrayidx79.i, align 4
  %latency_in_us.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %mem_clks.i, i32 0, i32 1, i32 %i.1273.i, i32 1
  %237 = ptrtoint ptr %latency_in_us.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %latency.0275.i, ptr %latency_in_us.i, align 4
  %add83.i = add i32 %clk.1274.i, 500000
  %sub84.i = add i32 %latency.0275.i, -5
  %inc86.i = add nuw i32 %i.1273.i, 1
  %exitcond.not.i13 = icmp eq i32 %inc86.i, %235
  br i1 %exitcond.not.i13, label %for.body77.i.dce120_resource_construct.exit.thread_crit_edge, label %for.body77.i.for.body77.i_crit_edge

for.body77.i.for.body77.i_crit_edge:              ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body77.i

for.body77.i.dce120_resource_construct.exit.thread_crit_edge: ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce120_resource_construct.exit.thread

dce120_resource_construct.exit.thread:            ; preds = %for.body77.i.dce120_resource_construct.exit.thread_crit_edge, %if.then71.i12.dce120_resource_construct.exit.thread_crit_edge, %lor.lhs.false67.i.dce120_resource_construct.exit.thread_crit_edge
  %238 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %bw_vbios.i, align 8
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %239, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 295, i32 %241)
  %cmp90.i = icmp eq i32 %241, 295
  %spec.select.i = select i1 %cmp90.i, i32 2, i32 4
  %low_yclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %239, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp95.i) #5
  %data96.i = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, ptr %mem_clks.i, i32 0, i32 1
  %242 = ptrtoint ptr %data96.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %data96.i, align 4
  %mul99.i = mul i32 %243, %spec.select.i
  %conv100.i = zext i32 %mul99.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp95.i, i64 noundef %conv100.i, i64 noundef 1000) #5
  %244 = ptrtoint ptr %tmp95.i to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %tmp95.i, align 8
  %246 = ptrtoint ptr %low_yclk.i to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %245, ptr %low_yclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp95.i) #5
  %247 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %bw_vbios.i, align 8
  %mid_yclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %248, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp102.i) #5
  %249 = ptrtoint ptr %mem_clks.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %mem_clks.i, align 4
  %shr.i = lshr i32 %250, 1
  %arrayidx105.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %mem_clks.i, i32 0, i32 1, i32 %shr.i
  %251 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx105.i, align 4
  %mul107.i = mul i32 %252, %spec.select.i
  %conv108.i = zext i32 %mul107.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp102.i, i64 noundef %conv108.i, i64 noundef 1000) #5
  %253 = ptrtoint ptr %tmp102.i to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %tmp102.i, align 8
  %255 = ptrtoint ptr %mid_yclk.i to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 %254, ptr %mid_yclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp102.i) #5
  %256 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %bw_vbios.i, align 8
  %high_yclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %257, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp110.i) #5
  %258 = ptrtoint ptr %mem_clks.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %mem_clks.i, align 4
  %sub113.i = add i32 %259, -1
  %arrayidx114.i14 = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %mem_clks.i, i32 0, i32 1, i32 %sub113.i
  %260 = ptrtoint ptr %arrayidx114.i14 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx114.i14, align 4
  %mul116.i = mul i32 %261, %spec.select.i
  %conv117.i = zext i32 %mul116.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp110.i, i64 noundef %conv117.i, i64 noundef 1000) #5
  %262 = ptrtoint ptr %tmp110.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %tmp110.i, align 8
  %264 = ptrtoint ptr %high_yclk.i to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %263, ptr %high_yclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp110.i) #5
  %265 = ptrtoint ptr %clk_ranges.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 4, ptr %clk_ranges.i, align 4
  %wm_clk_ranges.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1
  %266 = ptrtoint ptr %wm_clk_ranges.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %wm_clk_ranges.i, align 4
  %267 = ptrtoint ptr %data4.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %data4.i, align 4
  %wm_min_eng_clk_in_khz.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 0, i32 1
  %269 = ptrtoint ptr %wm_min_eng_clk_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %wm_min_eng_clk_in_khz.i, align 4
  %270 = ptrtoint ptr %eng_clks.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %eng_clks.i, align 4
  %mul126.i = mul i32 %271, 3
  %div127266.i = lshr i32 %mul126.i, 3
  %arrayidx128.i = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %eng_clks.i, i32 0, i32 1, i32 %div127266.i
  %272 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx128.i, align 4
  %sub130.i = add i32 %273, -1
  %wm_max_eng_clk_in_khz.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 0, i32 2
  %274 = ptrtoint ptr %wm_max_eng_clk_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %sub130.i, ptr %wm_max_eng_clk_in_khz.i, align 4
  %275 = ptrtoint ptr %data96.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %data96.i, align 4
  %wm_min_mem_clk_in_khz.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 0, i32 3
  %277 = ptrtoint ptr %wm_min_mem_clk_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %wm_min_mem_clk_in_khz.i, align 4
  %278 = ptrtoint ptr %mem_clks.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %mem_clks.i, align 4
  %shr140.i = lshr i32 %279, 1
  %arrayidx141.i15 = getelementptr %struct.dm_pp_clock_levels_with_latency, ptr %mem_clks.i, i32 0, i32 1, i32 %shr140.i
  %280 = ptrtoint ptr %arrayidx141.i15 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx141.i15, align 4
  %sub143.i = add i32 %281, -1
  %wm_max_mem_clk_in_khz.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 0, i32 4
  %282 = ptrtoint ptr %wm_max_mem_clk_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %sub143.i, ptr %wm_max_mem_clk_in_khz.i, align 4
  %arrayidx147.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 1
  %283 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 1, ptr %arrayidx147.i, align 4
  %wm_min_eng_clk_in_khz157.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 1, i32 1
  %284 = ptrtoint ptr %wm_min_eng_clk_in_khz157.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %273, ptr %wm_min_eng_clk_in_khz157.i, align 4
  %wm_max_eng_clk_in_khz160.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 1, i32 2
  %285 = ptrtoint ptr %wm_max_eng_clk_in_khz160.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 5000000, ptr %wm_max_eng_clk_in_khz160.i, align 4
  %wm_min_mem_clk_in_khz166.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 1, i32 3
  %286 = ptrtoint ptr %wm_min_mem_clk_in_khz166.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %276, ptr %wm_min_mem_clk_in_khz166.i, align 4
  %wm_max_mem_clk_in_khz175.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 1, i32 4
  %287 = ptrtoint ptr %wm_max_mem_clk_in_khz175.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %sub143.i, ptr %wm_max_mem_clk_in_khz175.i, align 4
  %arrayidx177.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 2
  %288 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 2, ptr %arrayidx177.i, align 4
  %wm_min_eng_clk_in_khz184.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 2, i32 1
  %289 = ptrtoint ptr %wm_min_eng_clk_in_khz184.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %268, ptr %wm_min_eng_clk_in_khz184.i, align 4
  %wm_max_eng_clk_in_khz194.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 2, i32 2
  %290 = ptrtoint ptr %wm_max_eng_clk_in_khz194.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %sub130.i, ptr %wm_max_eng_clk_in_khz194.i, align 4
  %wm_min_mem_clk_in_khz202.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 2, i32 3
  %291 = ptrtoint ptr %wm_min_mem_clk_in_khz202.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %281, ptr %wm_min_mem_clk_in_khz202.i, align 4
  %wm_max_mem_clk_in_khz205.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 2, i32 4
  %292 = ptrtoint ptr %wm_max_mem_clk_in_khz205.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 5000000, ptr %wm_max_mem_clk_in_khz205.i, align 4
  %arrayidx207.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 3
  %293 = ptrtoint ptr %arrayidx207.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 3, ptr %arrayidx207.i, align 4
  %wm_min_eng_clk_in_khz217.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 3, i32 1
  %294 = ptrtoint ptr %wm_min_eng_clk_in_khz217.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %273, ptr %wm_min_eng_clk_in_khz217.i, align 4
  %wm_max_eng_clk_in_khz220.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 3, i32 2
  %295 = ptrtoint ptr %wm_max_eng_clk_in_khz220.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 5000000, ptr %wm_max_eng_clk_in_khz220.i, align 4
  %wm_min_mem_clk_in_khz228.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 3, i32 3
  %296 = ptrtoint ptr %wm_min_mem_clk_in_khz228.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %281, ptr %wm_min_mem_clk_in_khz228.i, align 4
  %wm_max_mem_clk_in_khz231.i = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, ptr %clk_ranges.i, i32 0, i32 1, i32 3, i32 4
  %297 = ptrtoint ptr %wm_max_mem_clk_in_khz231.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 5000000, ptr %wm_max_mem_clk_in_khz231.i, align 4
  %298 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ctx1.i, align 8
  %call233.i = call zeroext i1 @dm_pp_notify_wm_clock_changes(ptr noundef %299, ptr noundef nonnull %clk_ranges.i) #5
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %clk_ranges.i) #5
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %mem_clks.i) #5
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %eng_clks.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_init_data.i) #5
  br label %cleanup

if.end3:                                          ; preds = %for.end197.i.if.end3_crit_edge, %do.body189.i, %do.body177.i, %do.body144.i, %do.body132.i, %do.body120.i, %do.body108.i, %if.end75.i.if.end3_crit_edge, %if.then71.i, %if.then61.i, %if.then.i
  call fastcc void @dce120_resource_destruct(ptr noundef %call7.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_init_data.i) #5
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce120_create_resource_pool, i32 noundef 1285) #5
  call void @kgdb_breakpoint() #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %dce120_resource_construct.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dce120_resource_construct.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
declare dso_local ptr @dal_irq_service_dce120_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @resource_construct(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bw_calcs_init(ptr noundef, ptr noundef, [9 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce120_resource_destruct(ptr noundef %pool) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 19
  %0 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp232.not = icmp eq i32 %1, 0
  br i1 %cmp232.not, label %entry.for.cond53.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond53.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond53.preheader

for.body.lr.ph:                                   ; preds = %entry
  %irqs = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 36
  br label %for.body

for.cond53.preheader:                             ; preds = %for.inc.for.cond53.preheader_crit_edge, %entry.for.cond53.preheader_crit_edge
  %res_cap = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 41
  %2 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_cap, align 4
  %num_ddc234 = getelementptr inbounds %struct.resource_caps, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %num_ddc234 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ddc234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp55235.not = icmp eq i32 %5, 0
  br i1 %cmp55235.not, label %for.cond53.preheader.for.cond90.preheader_crit_edge, label %for.cond53.preheader.for.body56_crit_edge

for.cond53.preheader.for.body56_crit_edge:        ; preds = %for.cond53.preheader
  br label %for.body56

for.cond53.preheader.for.cond90.preheader_crit_edge: ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond90.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0233 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 5, i32 %i.0233
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp2.not = icmp eq ptr %7, null
  br i1 %cmp2.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dce110_opp_destroy(ptr noundef %arrayidx) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %arrayidx7 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 3, i32 %i.0233
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %cmp8.not = icmp eq ptr %9, null
  br i1 %cmp8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %9) #5
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx7, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %arrayidx15 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 2, i32 %i.0233
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx15, align 4
  %cmp16.not = icmp eq ptr %12, null
  br i1 %cmp16.not, label %if.end13.if.end21_crit_edge, label %if.then17

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dce_ipp_destroy(ptr noundef %arrayidx15) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  %arrayidx23 = getelementptr [6 x ptr], ptr %pool, i32 0, i32 %i.0233
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx23, align 4
  %cmp24.not = icmp eq ptr %14, null
  br i1 %cmp24.not, label %if.end21.if.end32_crit_edge, label %if.then25

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %14) #5
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx23, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end21.if.end32_crit_edge
  %16 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irqs, align 4
  %cmp34.not = icmp eq ptr %17, null
  br i1 %cmp34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dal_irq_service_destroy(ptr noundef %irqs) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %arrayidx40 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 6, i32 %i.0233
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx40, align 4
  %cmp41.not = icmp eq ptr %19, null
  br i1 %cmp41.not, label %if.end38.for.inc_crit_edge, label %if.then42

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %19) #5
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx40, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %if.end38.for.inc_crit_edge
  %inc = add nuw i32 %i.0233, 1
  %21 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pipe_count, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond53.preheader_crit_edge

for.inc.for.cond53.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond53.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond90.preheader:                             ; preds = %for.inc87.for.cond90.preheader_crit_edge, %for.cond53.preheader.for.cond90.preheader_crit_edge
  %audio_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 33
  %23 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %audio_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp92237.not = icmp eq i32 %24, 0
  br i1 %cmp92237.not, label %for.cond90.preheader.for.cond104.preheader_crit_edge, label %for.cond90.preheader.for.body93_crit_edge

for.cond90.preheader.for.body93_crit_edge:        ; preds = %for.cond90.preheader
  br label %for.body93

for.cond90.preheader.for.cond104.preheader_crit_edge: ; preds = %for.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond104.preheader

for.body56:                                       ; preds = %for.inc87.for.body56_crit_edge, %for.cond53.preheader.for.body56_crit_edge
  %i.1236 = phi i32 [ %inc88, %for.inc87.for.body56_crit_edge ], [ 0, %for.cond53.preheader.for.body56_crit_edge ]
  %arrayidx58 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 11, i32 %i.1236
  %25 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx58, align 4
  %cmp59.not = icmp eq ptr %26, null
  br i1 %cmp59.not, label %for.body56.if.end64_crit_edge, label %if.then60

for.body56.if.end64_crit_edge:                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then60:                                        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dce110_engine_destroy(ptr noundef %arrayidx58) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %for.body56.if.end64_crit_edge
  %arrayidx66 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 12, i32 %i.1236
  %27 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx66, align 4
  %cmp67.not = icmp eq ptr %28, null
  br i1 %cmp67.not, label %if.end64.if.end75_crit_edge, label %if.then68

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %28) #5
  %29 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx66, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then68, %if.end64.if.end75_crit_edge
  %arrayidx77 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 13, i32 %i.1236
  %30 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx77, align 4
  %cmp78.not = icmp eq ptr %31, null
  br i1 %cmp78.not, label %if.end75.for.inc87_crit_edge, label %if.then79

if.end75.for.inc87_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %31) #5
  %32 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx77, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %if.then79, %if.end75.for.inc87_crit_edge
  %inc88 = add nuw i32 %i.1236, 1
  %33 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %res_cap, align 4
  %num_ddc = getelementptr inbounds %struct.resource_caps, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %num_ddc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_ddc, align 4
  %cmp55 = icmp ult i32 %inc88, %36
  br i1 %cmp55, label %for.inc87.for.body56_crit_edge, label %for.inc87.for.cond90.preheader_crit_edge

for.inc87.for.cond90.preheader_crit_edge:         ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond90.preheader

for.inc87.for.body56_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body56

for.cond104.preheader:                            ; preds = %for.inc101.for.cond104.preheader_crit_edge, %for.cond90.preheader.for.cond104.preheader_crit_edge
  %stream_enc_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 21
  %37 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stream_enc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp106239.not = icmp eq i32 %38, 0
  br i1 %cmp106239.not, label %for.cond104.preheader.for.cond122.preheader_crit_edge, label %for.cond104.preheader.for.body107_crit_edge

for.cond104.preheader.for.body107_crit_edge:      ; preds = %for.cond104.preheader
  br label %for.body107

for.cond104.preheader.for.cond122.preheader_crit_edge: ; preds = %for.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond122.preheader

for.body93:                                       ; preds = %for.inc101.for.body93_crit_edge, %for.cond90.preheader.for.body93_crit_edge
  %i.2238 = phi i32 [ %inc102, %for.inc101.for.body93_crit_edge ], [ 0, %for.cond90.preheader.for.body93_crit_edge ]
  %arrayidx95 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 32, i32 %i.2238
  %39 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx95, align 4
  %tobool.not = icmp eq ptr %40, null
  br i1 %tobool.not, label %for.body93.for.inc101_crit_edge, label %if.then96

for.body93.for.inc101_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc101

if.then96:                                        ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dce_aud_destroy(ptr noundef %arrayidx95) #5
  br label %for.inc101

for.inc101:                                       ; preds = %if.then96, %for.body93.for.inc101_crit_edge
  %inc102 = add nuw i32 %i.2238, 1
  %41 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %audio_count, align 4
  %cmp92 = icmp ult i32 %inc102, %42
  br i1 %cmp92, label %for.inc101.for.body93_crit_edge, label %for.inc101.for.cond104.preheader_crit_edge

for.inc101.for.cond104.preheader_crit_edge:       ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond104.preheader

for.inc101.for.body93_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body93

for.cond122.preheader:                            ; preds = %for.inc119.for.cond122.preheader_crit_edge, %for.cond104.preheader.for.cond122.preheader_crit_edge
  %clk_src_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 31
  %43 = ptrtoint ptr %clk_src_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %clk_src_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp124241.not = icmp eq i32 %44, 0
  br i1 %cmp124241.not, label %for.cond122.preheader.for.end136_crit_edge, label %for.cond122.preheader.for.body125_crit_edge

for.cond122.preheader.for.body125_crit_edge:      ; preds = %for.cond122.preheader
  br label %for.body125

for.cond122.preheader.for.end136_crit_edge:       ; preds = %for.cond122.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end136

for.body107:                                      ; preds = %for.inc119.for.body107_crit_edge, %for.cond104.preheader.for.body107_crit_edge
  %i.3240 = phi i32 [ %inc120, %for.inc119.for.body107_crit_edge ], [ 0, %for.cond104.preheader.for.body107_crit_edge ]
  %arrayidx109 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 7, i32 %i.3240
  %45 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx109, align 4
  %cmp110.not = icmp eq ptr %46, null
  br i1 %cmp110.not, label %for.body107.for.inc119_crit_edge, label %if.then111

for.body107.for.inc119_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc119

if.then111:                                       ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %46) #5
  br label %for.inc119

for.inc119:                                       ; preds = %if.then111, %for.body107.for.inc119_crit_edge
  %inc120 = add nuw i32 %i.3240, 1
  %47 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stream_enc_count, align 4
  %cmp106 = icmp ult i32 %inc120, %48
  br i1 %cmp106, label %for.inc119.for.body107_crit_edge, label %for.inc119.for.cond122.preheader_crit_edge

for.inc119.for.cond122.preheader_crit_edge:       ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond122.preheader

for.inc119.for.body107_crit_edge:                 ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body107

for.body125:                                      ; preds = %for.inc134.for.body125_crit_edge, %for.cond122.preheader.for.body125_crit_edge
  %i.4242 = phi i32 [ %inc135, %for.inc134.for.body125_crit_edge ], [ 0, %for.cond122.preheader.for.body125_crit_edge ]
  %arrayidx127 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 30, i32 %i.4242
  %49 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx127, align 4
  %cmp128.not = icmp eq ptr %50, null
  br i1 %cmp128.not, label %for.body125.for.inc134_crit_edge, label %if.then129

for.body125.for.inc134_crit_edge:                 ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc134

if.then129:                                       ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %50) #5
  %51 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx127, align 4
  br label %for.inc134

for.inc134:                                       ; preds = %if.then129, %for.body125.for.inc134_crit_edge
  %inc135 = add nuw i32 %i.4242, 1
  %52 = ptrtoint ptr %clk_src_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %clk_src_count, align 4
  %cmp124 = icmp ult i32 %inc135, %53
  br i1 %cmp124, label %for.inc134.for.body125_crit_edge, label %for.inc134.for.end136_crit_edge

for.inc134.for.end136_crit_edge:                  ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end136

for.inc134.for.body125_crit_edge:                 ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body125

for.end136:                                       ; preds = %for.inc134.for.end136_crit_edge, %for.cond122.preheader.for.end136_crit_edge
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 29
  %54 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dp_clock_source, align 4
  %cmp138.not = icmp eq ptr %55, null
  br i1 %cmp138.not, label %for.end136.if.end142_crit_edge, label %if.then139

for.end136.if.end142_crit_edge:                   ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then139:                                       ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %55) #5
  %56 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %dp_clock_source, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %for.end136.if.end142_crit_edge
  %abm = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 37
  %57 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %abm, align 4
  %cmp144.not = icmp eq ptr %58, null
  br i1 %cmp144.not, label %if.end142.if.end148_crit_edge, label %if.then145

if.end142.if.end148_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dce_abm_destroy(ptr noundef %abm) #5
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.end142.if.end148_crit_edge
  %dmcu = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 38
  %59 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dmcu, align 4
  %cmp150.not = icmp eq ptr %60, null
  br i1 %cmp150.not, label %if.end148.if.end154_crit_edge, label %if.then151

if.end148.if.end154_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dce_dmcu_destroy(ptr noundef %dmcu) #5
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end148.if.end154_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce120_destroy_resource_pool(ptr nocapture noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  tail call fastcc void @dce120_resource_destruct(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pool, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce120_panel_cntl_create(ptr noundef %init_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %inst = getelementptr inbounds %struct.panel_cntl_init_data, ptr %init_data, i32 0, i32 1
  %1 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inst, align 4
  %arrayidx = getelementptr [1 x %struct.dce_panel_cntl_registers], ptr @panel_cntl_regs, i32 0, i32 %2
  tail call void @dce_panel_cntl_construct(ptr noundef nonnull %call7.i.i, ptr noundef %init_data, ptr noundef %arrayidx, ptr noundef nonnull @panel_cntl_shift, ptr noundef nonnull @panel_cntl_mask) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce120_link_encoder_create(ptr noundef %enc_init_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.end.i:                                       ; preds = %switch.hole_check.land.end.i_crit_edge, %if.end.land.end.i_crit_edge
  %.b47.i = load i1, ptr @map_transmitter_id_to_phy_instance.__already_done, align 1
  br i1 %.b47.i, label %land.end.i.if.then41.i_crit_edge, label %if.then.i, !prof !163

land.end.i.if.then41.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @map_transmitter_id_to_phy_instance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 399, i32 noundef 9, ptr noundef null) #5
  br label %if.then41.i

if.then41.i:                                      ; preds = %if.then.i, %land.end.i.if.then41.i_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %map_transmitter_id_to_phy_instance.exit

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %2 to i16
  %switch.shifted = lshr i16 575, %switch.maskindex
  %4 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.lobit.not = icmp eq i16 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i_crit_edge, label %switch.lookup

switch.hole_check.land.end.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dce120_link_encoder_create, i32 0, i32 %2
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
  tail call void @dce110_link_encoder_construct(ptr noundef nonnull %call7.i.i, ptr noundef %enc_init_data, ptr noundef nonnull @link_enc_feature, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx3) #5
  br label %cleanup

cleanup:                                          ; preds = %map_transmitter_id_to_phy_instance.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce112_validate_bandwidth(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce100_validate_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce112_add_stream_to_ctx(ptr noundef, ptr noundef, ptr noundef) #2

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
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce120_timing_generator_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce120_mem_input_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
define internal void @read_dce_straps(ptr noundef %ctx, ptr nocapture noundef writeonly %straps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef 21847, ptr noundef nonnull @__func__.read_dce_straps) #5
  %and.i = lshr i32 %call, 8
  %shr.i = and i32 %and.i, 7
  %audio_stream_number = getelementptr inbounds %struct.resource_straps, ptr %straps, i32 0, i32 2
  %0 = ptrtoint ptr %audio_stream_number to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr.i, ptr %audio_stream_number, align 4
  %and.i13 = lshr i32 %call, 6
  %shr.i14 = and i32 %and.i13, 1
  %1 = ptrtoint ptr %straps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr.i14, ptr %straps, align 4
  %call6 = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef 21846, ptr noundef nonnull @__func__.read_dce_straps) #5
  %and.i15 = lshr i32 %call6, 14
  %shr.i16 = and i32 %and.i15, 3
  %dc_pinstraps_audio = getelementptr inbounds %struct.resource_straps, ptr %straps, i32 0, i32 1
  %2 = ptrtoint ptr %dc_pinstraps_audio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i16, ptr %dc_pinstraps_audio, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @create_audio(ptr noundef %ctx, i32 noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x %struct.dce_audio_registers], ptr @audio_regs, i32 0, i32 %inst
  %call = tail call ptr @dce_audio_create(ptr noundef %ctx, i32 noundef %inst, ptr noundef %arrayidx, ptr noundef nonnull @audio_shift, ptr noundef nonnull @audio_mask) #5
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce120_stream_encoder_create(i32 noundef %eng_id, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %1 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dc_bios, align 4
  %arrayidx = getelementptr [6 x %struct.dce110_stream_enc_registers], ptr @stream_enc_regs, i32 0, i32 %eng_id
  tail call void @dce110_stream_encoder_construct(ptr noundef nonnull %call7.i.i, ptr noundef %ctx, ptr noundef %2, i32 noundef %eng_id, ptr noundef %arrayidx, ptr noundef nonnull @se_shift, ptr noundef nonnull @se_mask) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @dce121_hwseq_create(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %call7.i.i, align 8
  %regs = getelementptr inbounds %struct.dce_hwseq, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce121_hwseq_reg, ptr %regs, align 4
  %shifts = getelementptr inbounds %struct.dce_hwseq, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %shifts to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dce121_hwseq_shift, ptr %shifts, align 8
  %masks = getelementptr inbounds %struct.dce_hwseq, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %masks to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dce121_hwseq_mask, ptr %masks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce_audio_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_stream_encoder_construct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @dce120_hwseq_create(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
declare dso_local void @dce120_hw_sequencer_construct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_get_clock_levels_by_type_with_latency(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bw_frc_to_fixed(ptr sret(%struct.bw_fixed) align 8, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_notify_wm_clock_changes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_ipp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_engine_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_aud_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_abm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_dmcu_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1285, i32 2}
!2 = !{ptr @__func__.dce120_create_resource_pool, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @dce120_resource_construct.res_funcs, !4, !"res_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1060, i32 45}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1121, i32 4}
!7 = !{ptr @__func__.dce120_resource_construct, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1122, i32 4}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1132, i32 3}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1142, i32 3}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1162, i32 5}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1174, i32 4}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1182, i32 4}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1190, i32 4}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1198, i32 4}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1208, i32 4}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1220, i32 4}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1227, i32 4}
!29 = !{ptr @bios_regs, !30, !"bios_regs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 493, i32 36}
!31 = !{ptr @res_cap, !32, !"res_cap", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 498, i32 35}
!33 = !{ptr @dce120_res_pool_funcs, !34, !"dce120_res_pool_funcs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 903, i32 36}
!35 = !{ptr @panel_cntl_regs, !36, !"panel_cntl_regs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 297, i32 46}
!37 = !{ptr @panel_cntl_shift, !38, !"panel_cntl_shift", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 301, i32 42}
!39 = !{ptr @panel_cntl_mask, !40, !"panel_cntl_mask", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 305, i32 41}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 399, i32 3}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @link_enc_feature, !45, !"link_enc_feature", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 690, i32 45}
!46 = !{ptr @link_enc_regs, !47, !"link_enc_regs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 263, i32 47}
!48 = !{ptr @link_enc_aux_regs, !49, !"link_enc_aux_regs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 234, i32 51}
!50 = !{ptr @link_enc_hpd_regs, !51, !"link_enc_hpd_regs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 248, i32 51}
!52 = !{ptr @debug_defaults, !53, !"debug_defaults", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 528, i32 38}
!54 = !{ptr @__func__.dce120_clock_source_create, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 552, i32 2}
!56 = !{ptr @cs_shift, !57, !"cs_shift", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 418, i32 42}
!58 = !{ptr @cs_mask, !59, !"cs_mask", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 422, i32 41}
!60 = !{ptr @clk_src_regs, !61, !"clk_src_regs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 409, i32 41}
!62 = !{ptr @dmcu_regs, !63, !"dmcu_regs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 161, i32 40}
!64 = !{ptr @dmcu_shift, !65, !"dmcu_shift", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 165, i32 36}
!66 = !{ptr @dmcu_mask, !67, !"dmcu_mask", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 169, i32 35}
!68 = !{ptr @abm_regs, !69, !"abm_regs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 173, i32 39}
!70 = !{ptr @abm_shift, !71, !"abm_shift", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 177, i32 35}
!72 = !{ptr @abm_mask, !73, !"abm_mask", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 181, i32 34}
!74 = !{ptr @__func__.read_pipe_fuses, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 1045, i32 19}
!76 = distinct !{null, !77, !"DCE_BASE", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/vega10_ip_offset.h", i32 48, i32 44}
!78 = !{ptr @dce120_tg_offsets, !79, !"dce120_tg_offsets", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 101, i32 53}
!80 = !{ptr @__func__.dce120_mem_input_create, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 870, i32 3}
!82 = !{ptr @mi_regs, !83, !"mi_regs", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 845, i32 45}
!84 = !{ptr @mi_shifts, !85, !"mi_shifts", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 854, i32 41}
!86 = !{ptr @mi_masks, !87, !"mi_masks", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 858, i32 40}
!88 = !{ptr @__func__.dce120_ipp_create, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 747, i32 3}
!90 = !{ptr @ipp_regs, !91, !"ipp_regs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 190, i32 39}
!92 = !{ptr @ipp_shift, !93, !"ipp_shift", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 199, i32 35}
!94 = !{ptr @ipp_mask, !95, !"ipp_mask", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 203, i32 34}
!96 = !{ptr @xfm_regs, !97, !"xfm_regs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 212, i32 45}
!98 = !{ptr @xfm_shift, !99, !"xfm_shift", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 221, i32 41}
!100 = !{ptr @xfm_mask, !101, !"xfm_mask", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 225, i32 40}
!102 = !{ptr @opp_regs, !103, !"opp_regs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 322, i32 39}
!104 = !{ptr @opp_shift, !105, !"opp_shift", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 331, i32 35}
!106 = !{ptr @opp_mask, !107, !"opp_mask", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 335, i32 34}
!108 = !{ptr @aux_engine_regs, !109, !"aux_engine_regs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 344, i32 42}
!110 = !{ptr @aux_mask, !111, !"aux_mask", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 313, i32 47}
!112 = !{ptr @aux_shift, !113, !"aux_shift", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 309, i32 48}
!114 = !{ptr @i2c_hw_regs, !115, !"i2c_hw_regs", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 461, i32 39}
!116 = !{ptr @i2c_shifts, !117, !"i2c_shifts", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 470, i32 35}
!118 = !{ptr @i2c_masks, !119, !"i2c_masks", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 474, i32 34}
!120 = !{ptr @dce121_res_create_funcs, !121, !"dce121_res_create_funcs", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 836, i32 43}
!122 = !{ptr @__func__.read_dce_straps, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 668, i32 21}
!124 = !{ptr @audio_regs, !125, !"audio_regs", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 358, i32 41}
!126 = !{ptr @audio_shift, !127, !"audio_shift", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 372, i32 37}
!128 = !{ptr @audio_mask, !129, !"audio_mask", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 376, i32 36}
!130 = !{ptr @stream_enc_regs, !131, !"stream_enc_regs", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 280, i32 49}
!132 = !{ptr @se_shift, !133, !"se_shift", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 289, i32 46}
!134 = !{ptr @se_mask, !135, !"se_mask", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 293, i32 45}
!136 = !{ptr @dce121_hwseq_reg, !137, !"dce121_hwseq_reg", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 789, i32 41}
!138 = !{ptr @dce121_hwseq_shift, !139, !"dce121_hwseq_shift", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 793, i32 37}
!140 = !{ptr @dce121_hwseq_mask, !141, !"dce121_hwseq_mask", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 797, i32 36}
!142 = !{ptr @res_create_funcs, !143, !"res_create_funcs", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 829, i32 43}
!144 = !{ptr @hwseq_reg, !145, !"hwseq_reg", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 776, i32 41}
!146 = !{ptr @hwseq_shift, !147, !"hwseq_shift", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 780, i32 37}
!148 = !{ptr @hwseq_mask, !149, !"hwseq_mask", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 784, i32 36}
!150 = !{ptr @plane_cap, !151, !"plane_cap", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce120/dce120_resource.c", i32 506, i32 34}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{!"auto-init"}
!162 = !{i8 0, i8 2}
!163 = !{!"branch_weights", i32 2000, i32 1}
