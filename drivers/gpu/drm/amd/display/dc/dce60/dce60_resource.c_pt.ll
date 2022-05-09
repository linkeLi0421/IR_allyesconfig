; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce60/dce60_resource.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bios_registers = type { i32, i32 }
%struct.resource_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dce110_clk_src_regs = type { i32, i32, i32, [6 x i32], [6 x i32], [6 x i32] }
%struct.dce_dmcu_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_dmcu_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_dmcu_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_abm_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_abm_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_abm_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_timing_generator_offsets = type { i32, i32, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.10, %struct.anon.11, %struct.anon.12, i32, i32 }
%struct.anon.10 = type { i8, [3 x i8] }
%struct.anon.11 = type { i32, i32, i32 }
%struct.anon.12 = type { i32, i32, i32 }
%struct.resource_create_funcs = type { ptr, ptr, ptr, ptr }
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
%struct.irq_service_init_data = type { ptr }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.9 }
%struct.anon.9 = type { i32 }
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
%union.dpcd_ieee_vendor_signature = type { %struct.anon.65 }
%struct.anon.65 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
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
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.67, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.68, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.67 = type { i8, [3 x i8] }
%struct.anon.68 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.clock_source = type { ptr, ptr, i32, i8 }
%struct.dce_mem_input = type { %struct.mem_input, ptr, ptr, ptr, %struct.dce_mem_input_wa }
%struct.mem_input = type { ptr, ptr, %struct.dc_plane_address, %struct.dc_plane_address, i32, %struct.stutter_modes }
%struct.dc_plane_address = type { i32, i8, %union.anon, %union.large_integer, i8 }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%union.large_integer = type { i64 }
%struct.stutter_modes = type { i8, i8, i8 }
%struct.dce_mem_input_wa = type { i8 }
%struct.dce_transform = type { %struct.transform, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.transform = type { ptr, ptr, i32, ptr, %struct.pwl_params }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon.29, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon.29 = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.fixed31_32 = type { i64 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.panel_cntl_init_data = type { ptr, i32 }
%struct.encoder_init_data = type { i32, %struct.graphics_object_id, i32, %struct.graphics_object_id, ptr, i32 }
%struct.graphics_object_id = type { i32 }
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
%struct.scl_inits = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.sharpness_adj = type { i32, i32 }
%struct.line_buffer_params = type { i8, i8, i8, i32, i32 }
%struct.dcn_fe_bandwidth = type { i32 }
%struct.stream_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.pixel_clk_params, %struct.encoder_info_frame, ptr, i8 }
%struct.pixel_clk_params = type { i32, i32, i32, %struct.graphics_object_id, i32, i32, i32, %struct.csdp_ref_clk_ds_params, i32, %struct.pixel_clk_flags }
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
%struct.atomic_t = type { i32 }
%struct.anon.60 = type { i32 }
%struct.dc_plane_state = type { %struct.dc_plane_address, %struct.dc_plane_flip_time, i8, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, ptr, ptr, ptr, %struct.dc_csc_transform, %struct.fixed31_32, %struct.fixed31_32, %struct.colorspace_transform, %struct.dc_hdr_static_metadata, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32, %union.surface_update_flags, i8, i8, %struct.dc_plane_status, ptr, i8, i32, %struct.kref }
%struct.dc_plane_flip_time = type { [10 x i32], i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%union.dc_tiling_info = type { %struct.anon.5 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_plane_dcc_param = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_hdr_static_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.surface_update_flags = type { %struct.anon.33 }
%struct.anon.33 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }
%struct.resource_straps = type { i32, i32, i32 }
%struct.dce_hwseq = type { ptr, ptr, ptr, ptr, %struct.dce_hwseq_wa, %struct.hwseq_wa_state, %struct.hwseq_private_funcs, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dce_hwseq_wa = type { i8, i8, i8, i8, i8, i8 }
%struct.hwseq_wa_state = type { i8, i8, i32 }
%struct.hwseq_private_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce60_create_resource_pool = private unnamed_addr constant [27 x i8] c"dce60_create_resource_pool\00", align 1
@__func__.dce61_create_resource_pool = private unnamed_addr constant [27 x i8] c"dce61_create_resource_pool\00", align 1
@__func__.dce64_create_resource_pool = private unnamed_addr constant [27 x i8] c"dce64_create_resource_pool\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bios_regs = internal constant { %struct.bios_registers, [24 x i8] } { %struct.bios_registers { i32 1484, i32 1487 }, [24 x i8] zeroinitializer }, align 32
@res_cap = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 6, i32 0, i32 0, i32 6, i32 6, i32 2, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dce60_res_pool_funcs = internal constant { %struct.resource_funcs, [40 x i8] } { %struct.resource_funcs { ptr @dce60_destroy_resource_pool, ptr null, ptr @dce60_panel_cntl_create, ptr @dce60_link_encoder_create, ptr null, ptr @dce60_validate_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce60_validate_global, ptr null, ptr @dce100_validate_plane, ptr @dce100_add_stream_to_ctx, ptr null, ptr null, ptr @dce100_find_first_free_match_stream_enc_for_link, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_src_regs = internal constant { [3 x %struct.dce110_clk_src_regs], [36 x i8] } { [3 x %struct.dce110_clk_src_regs] [%struct.dce110_clk_src_regs { i32 314, i32 0, i32 5895, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 312, i32 0, i32 5911, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 313, i32 0, i32 5927, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DC: failed to create dp clock source!\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.dce60_construct = private unnamed_addr constant [16 x i8] c"dce60_construct\00", align 1
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DC: failed to create clock sources!\0A\00", [59 x i8] zeroinitializer }, align 32
@dmcu_regs = internal constant { %struct.dce_dmcu_registers, [36 x i8] } { %struct.dce_dmcu_registers { i32 5632, i32 5633, i32 5640, i32 0, i32 0, i32 5645, i32 5646, i32 5660, i32 5661, i32 5662, i32 5663, i32 5664, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 0, i32 5656, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dmcu_shift = internal constant { %struct.dce_dmcu_shift, [45 x i8] } { %struct.dce_dmcu_shift { i8 0, i8 5, i8 2, i8 3, i8 4, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [45 x i8] zeroinitializer }, align 32
@dmcu_mask = internal constant { %struct.dce_dmcu_mask, [52 x i8] } { %struct.dce_dmcu_mask { i32 0, i32 32, i32 4, i32 8, i32 16, i32 4, i32 1, i32 255, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC: failed to create dmcu!\0A\00", [36 x i8] zeroinitializer }, align 32
@abm_regs = internal constant { %struct.dce_abm_registers, [32 x i8] } { %struct.dce_abm_registers { i32 5716, i32 5717, i32 5679, i32 5707, i32 5689, i32 5675, i32 5674, i32 5673, i32 5713, i32 5706, i32 5690, i32 5695, i32 5664, i32 5663, i32 5660, i32 1483 }, [32 x i8] zeroinitializer }, align 32
@abm_shift = internal constant { %struct.dce_abm_shift, [46 x i8] } { %struct.dce_abm_shift { i8 0, i8 8, i8 16, i8 16, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 24, i8 31, i8 0, i8 0, i8 8, i8 16 }, [46 x i8] zeroinitializer }, align 32
@abm_mask = internal constant { %struct.dce_abm_mask, [56 x i8] } { %struct.dce_abm_mask { i32 3, i32 256, i32 196608, i32 983040, i32 3840, i32 15, i32 131071, i32 131071, i32 131071, i32 1023, i32 67043328, i32 65536, i32 16777216, i32 -2147483648, i32 1, i32 255, i32 65280, i32 16711680 }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC: failed to create abm!\0A\00", [37 x i8] zeroinitializer }, align 32
@dce60_tg_offsets = internal constant { [6 x %struct.dce110_timing_generator_offsets], [56 x i8] } { [6 x %struct.dce110_timing_generator_offsets] [%struct.dce110_timing_generator_offsets zeroinitializer, %struct.dce110_timing_generator_offsets { i32 768, i32 768, i32 768 }, %struct.dce110_timing_generator_offsets { i32 9728, i32 9728, i32 9728 }, %struct.dce110_timing_generator_offsets { i32 10496, i32 10496, i32 10496 }, %struct.dce110_timing_generator_offsets { i32 11264, i32 11264, i32 11264 }, %struct.dce110_timing_generator_offsets { i32 12032, i32 12032, i32 12032 }], [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC: failed to create tg!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DC: failed to create memory input!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DC: failed to create input pixel processor!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DC: failed to create transform!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DC: failed to create output pixel processor!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DC:failed to create aux engine!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DC:failed to create i2c engine!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DC:failed to create sw i2c!!\0A\00", [34 x i8] zeroinitializer }, align 32
@plane_cap = internal constant { %struct.dc_plane_cap, [52 x i8] } { %struct.dc_plane_cap { i32 1, i8 0, [3 x i8] undef, %struct.anon.10 { i8 -128, [3 x i8] undef }, %struct.anon.11 { i32 16000, i32 1, i32 1 }, %struct.anon.12 { i32 250, i32 1, i32 1 }, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@res_create_funcs = internal constant { %struct.resource_create_funcs, [16 x i8] } { %struct.resource_create_funcs { ptr @read_dce_straps, ptr @create_audio, ptr @dce60_stream_encoder_create, ptr @dce60_hwseq_create }, [16 x i8] zeroinitializer }, align 32
@panel_cntl_regs = internal constant { [1 x %struct.dce_panel_cntl_registers], [32 x i8] } { [1 x %struct.dce_panel_cntl_registers] [%struct.dce_panel_cntl_registers { i32 6425, i32 6426, i32 6430, i32 6431, i32 6432, i32 6433, i32 6427, i32 1483 }], [32 x i8] zeroinitializer }, align 32
@panel_cntl_shift = internal constant { %struct.dce_panel_cntl_shift, [17 x i8] } { %struct.dce_panel_cntl_shift { i8 24, i8 25, i8 16, i8 17, i8 4, i8 0, i8 16, i8 31, i8 0, i8 30, i8 0, i8 16, i8 31, i8 0, i8 8 }, [17 x i8] zeroinitializer }, align 32
@panel_cntl_mask = internal constant { %struct.dce_panel_cntl_mask, [36 x i8] } { %struct.dce_panel_cntl_mask { i32 16777216, i32 33554432, i32 65536, i32 131072, i32 16, i32 1, i32 -65536, i32 -2147483648, i32 65535, i32 1073741824, i32 65535, i32 983040, i32 -2147483648, i32 1, i32 256 }, [36 x i8] zeroinitializer }, align 32
@link_enc_regs = internal constant { [6 x %struct.dce110_link_enc_registers], [208 x i8] } { [6 x %struct.dce110_link_enc_registers] [%struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 7248, i32 7249, i32 7362, i32 7376, i32 7390, i32 7380, i32 0, i32 7378, i32 7392, i32 7391, i32 7377, i32 7360, i32 7372, i32 7396, i32 7397, i32 7398, i32 7399, i32 7328, i32 7363, i32 7374, i32 0, i32 0, i32 7339 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 8016, i32 8017, i32 8130, i32 8144, i32 8158, i32 8148, i32 0, i32 8146, i32 8160, i32 8159, i32 8145, i32 8128, i32 8140, i32 8164, i32 8165, i32 8166, i32 8167, i32 8096, i32 8131, i32 8142, i32 0, i32 0, i32 8107 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 16976, i32 16977, i32 17090, i32 17104, i32 17118, i32 17108, i32 0, i32 17106, i32 17120, i32 17119, i32 17105, i32 17088, i32 17100, i32 17124, i32 17125, i32 17126, i32 17127, i32 17056, i32 17091, i32 17102, i32 0, i32 0, i32 17067 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 17744, i32 17745, i32 17858, i32 17872, i32 17886, i32 17876, i32 0, i32 17874, i32 17888, i32 17887, i32 17873, i32 17856, i32 17868, i32 17892, i32 17893, i32 17894, i32 17895, i32 17824, i32 17859, i32 17870, i32 0, i32 0, i32 17835 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 18512, i32 18513, i32 18626, i32 18640, i32 18654, i32 18644, i32 0, i32 18642, i32 18656, i32 18655, i32 18641, i32 18624, i32 18636, i32 18660, i32 18661, i32 18662, i32 18663, i32 18592, i32 18627, i32 18638, i32 0, i32 0, i32 18603 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 19280, i32 19281, i32 19394, i32 19408, i32 19422, i32 19412, i32 0, i32 19410, i32 19424, i32 19423, i32 19409, i32 19392, i32 19404, i32 19428, i32 19429, i32 19430, i32 19431, i32 19360, i32 19395, i32 19406, i32 0, i32 0, i32 19371 }], [208 x i8] zeroinitializer }, align 32
@link_enc_aux_regs = internal constant { [6 x %struct.dce110_link_enc_aux_registers], [56 x i8] } { [6 x %struct.dce110_link_enc_aux_registers] [%struct.dce110_link_enc_aux_registers { i32 6272, i32 6282, i32 6283 }, %struct.dce110_link_enc_aux_registers { i32 6292, i32 6302, i32 6303 }, %struct.dce110_link_enc_aux_registers { i32 6312, i32 6322, i32 6323 }, %struct.dce110_link_enc_aux_registers { i32 6336, i32 6346, i32 6347 }, %struct.dce110_link_enc_aux_registers { i32 6356, i32 6366, i32 6367 }, %struct.dce110_link_enc_aux_registers { i32 6376, i32 6386, i32 6387 }], [56 x i8] zeroinitializer }, align 32
@link_enc_hpd_regs = internal constant { [6 x %struct.dce110_link_enc_hpd_registers], [40 x i8] } { [6 x %struct.dce110_link_enc_hpd_registers] [%struct.dce110_link_enc_hpd_registers { i32 6298 }, %struct.dce110_link_enc_hpd_registers { i32 6306 }, %struct.dce110_link_enc_hpd_registers { i32 6314 }, %struct.dce110_link_enc_hpd_registers { i32 6322 }, %struct.dce110_link_enc_hpd_registers { i32 6330 }, %struct.dce110_link_enc_hpd_registers { i32 6338 }], [40 x i8] zeroinitializer }, align 32
@map_transmitter_id_to_phy_instance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c\00", [32 x i8] zeroinitializer }, align 32
@link_enc_feature = internal constant { { { { i8, i8, [2 x i8] } }, i32, i32, i8, i8, i8 }, [16 x i8] } { { { { i8, i8, [2 x i8] } }, i32, i32, i8, i8, i8 } { { { i8, i8, [2 x i8] } } { { i8, i8, [2 x i8] } { i8 -96, i8 0, [2 x i8] undef } }, i32 4, i32 297000, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@cs_shift = internal constant { %struct.dce110_clk_src_shift, [23 x i8] } { %struct.dce110_clk_src_shift { i8 16, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@cs_mask = internal constant { %struct.dce110_clk_src_mask, [60 x i8] } { %struct.dce110_clk_src_mask { i32 458752, i32 48, i32 0, i32 0, i32 127, i32 1023, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.dce60_clock_source_create = private unnamed_addr constant [26 x i8] c"dce60_clock_source_create\00", align 1
@__func__.dce60_mem_input_create = private unnamed_addr constant [23 x i8] c"dce60_mem_input_create\00", align 1
@mi_regs = internal constant { [6 x %struct.dce_mem_input_registers], [208 x i8] } { [6 x %struct.dce_mem_input_registers] [%struct.dce_mem_input_registers { i32 6656, i32 6657, i32 6667, i32 6668, i32 6669, i32 6670, i32 6662, i32 0, i32 6659, i32 6701, i32 0, i32 0, i32 0, i32 6673, i32 6674, i32 6660, i32 6663, i32 6661, i32 6664, i32 6960, i32 6962, i32 0, i32 6963, i32 0, i32 6966, i32 0, i32 6965, i32 0, i32 808, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 7424, i32 7425, i32 7435, i32 7436, i32 7437, i32 7438, i32 7430, i32 0, i32 7427, i32 7469, i32 0, i32 0, i32 0, i32 7441, i32 7442, i32 7428, i32 7431, i32 7429, i32 7432, i32 7728, i32 7730, i32 0, i32 7731, i32 0, i32 7734, i32 0, i32 7733, i32 0, i32 816, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 16384, i32 16385, i32 16395, i32 16396, i32 16397, i32 16398, i32 16390, i32 0, i32 16387, i32 16429, i32 0, i32 0, i32 0, i32 16401, i32 16402, i32 16388, i32 16391, i32 16389, i32 16392, i32 16688, i32 16690, i32 0, i32 16691, i32 0, i32 16694, i32 0, i32 16693, i32 0, i32 824, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 17152, i32 17153, i32 17163, i32 17164, i32 17165, i32 17166, i32 17158, i32 0, i32 17155, i32 17197, i32 0, i32 0, i32 0, i32 17169, i32 17170, i32 17156, i32 17159, i32 17157, i32 17160, i32 17456, i32 17458, i32 0, i32 17459, i32 0, i32 17462, i32 0, i32 17461, i32 0, i32 832, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 17920, i32 17921, i32 17931, i32 17932, i32 17933, i32 17934, i32 17926, i32 0, i32 17923, i32 17965, i32 0, i32 0, i32 0, i32 17937, i32 17938, i32 17924, i32 17927, i32 17925, i32 17928, i32 18224, i32 18226, i32 0, i32 18227, i32 0, i32 18230, i32 0, i32 18229, i32 0, i32 840, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 18688, i32 18689, i32 18699, i32 18700, i32 18701, i32 18702, i32 18694, i32 0, i32 18691, i32 18733, i32 0, i32 0, i32 0, i32 18705, i32 18706, i32 18692, i32 18695, i32 18693, i32 18696, i32 18992, i32 18994, i32 0, i32 18995, i32 0, i32 18998, i32 0, i32 18997, i32 0, i32 848, i32 2120, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@mi_shifts = internal constant { %struct.dce_mem_input_shift, [57 x i8] } { %struct.dce_mem_input_shift { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0, i8 1, i8 2, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 2, i8 6, i8 11, i8 18, i8 13, i8 0, i8 24, i8 20, i8 31, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 0, i8 0, i8 8, i8 2, i8 0, i8 16, i8 0, i8 16, i8 0, i8 12, i8 12, i8 0, i8 16, i8 0, i8 0, i8 0, i8 4, i8 8, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i8 16, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [57 x i8] zeroinitializer }, align 32
@mi_masks = internal constant { %struct.dce_mem_input_mask, [68 x i8] } { %struct.dce_mem_input_mask { i32 1, i32 16383, i32 16383, i32 32767, i32 32767, i32 32767, i32 0, i32 48, i32 768, i32 1, i32 2, i32 4, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1792, i32 12, i32 192, i32 6144, i32 786432, i32 57344, i32 0, i32 520093696, i32 15728640, i32 -2147483648, i32 0, i32 0, i32 0, i32 0, i32 255, i32 -256, i32 0, i32 255, i32 -256, i32 4, i32 1, i32 65536, i32 65535, i32 196608, i32 0, i32 12288, i32 12288, i32 65535, i32 -65536, i32 0, i32 0, i32 1, i32 16, i32 256, i32 -65536, i32 0, i32 0, i32 0, i32 0, i32 1, i32 128, i32 -65536, i32 0, i32 7, i32 16, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, [68 x i8] zeroinitializer }, align 32
@__func__.dce60_ipp_create = private unnamed_addr constant [17 x i8] c"dce60_ipp_create\00", align 1
@ipp_regs = internal constant { [6 x %struct.dce_ipp_registers], [104 x i8] } { [6 x %struct.dce_ipp_registers] [%struct.dce_ipp_registers { i32 6766, i32 6758, i32 6762, i32 6763, i32 6764, i32 6765, i32 6760, i32 6761, i32 6759, i32 6701, i32 6702, i32 6703, i32 6704, i32 6672, i32 0, i32 6782, i32 6776, i32 6784, i32 6777, i32 6778, i32 6744 }, %struct.dce_ipp_registers { i32 7534, i32 7526, i32 7530, i32 7531, i32 7532, i32 7533, i32 7528, i32 7529, i32 7527, i32 7469, i32 7470, i32 7471, i32 7472, i32 7440, i32 0, i32 7550, i32 7544, i32 7552, i32 7545, i32 7546, i32 7512 }, %struct.dce_ipp_registers { i32 16494, i32 16486, i32 16490, i32 16491, i32 16492, i32 16493, i32 16488, i32 16489, i32 16487, i32 16429, i32 16430, i32 16431, i32 16432, i32 16400, i32 0, i32 16510, i32 16504, i32 16512, i32 16505, i32 16506, i32 16472 }, %struct.dce_ipp_registers { i32 17262, i32 17254, i32 17258, i32 17259, i32 17260, i32 17261, i32 17256, i32 17257, i32 17255, i32 17197, i32 17198, i32 17199, i32 17200, i32 17168, i32 0, i32 17278, i32 17272, i32 17280, i32 17273, i32 17274, i32 17240 }, %struct.dce_ipp_registers { i32 18030, i32 18022, i32 18026, i32 18027, i32 18028, i32 18029, i32 18024, i32 18025, i32 18023, i32 17965, i32 17966, i32 17967, i32 17968, i32 17936, i32 0, i32 18046, i32 18040, i32 18048, i32 18041, i32 18042, i32 18008 }, %struct.dce_ipp_registers { i32 18798, i32 18790, i32 18794, i32 18795, i32 18796, i32 18797, i32 18792, i32 18793, i32 18791, i32 18733, i32 18734, i32 18735, i32 18736, i32 18704, i32 0, i32 18814, i32 18808, i32 18816, i32 18809, i32 18810, i32 18776 }], [104 x i8] zeroinitializer }, align 32
@ipp_shift = internal constant { %struct.dce_ipp_shift, [58 x i8] } { %struct.dce_ipp_shift { i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 8, i8 16, i8 4, i8 0, i8 8, i8 16, i8 0, i8 8, i8 16, i8 16, i8 0, i8 0, i8 0, i8 4, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 22, i8 14, i8 6, i8 0, i8 0, i8 0, i8 12, i8 0 }, [58 x i8] zeroinitializer }, align 32
@ipp_mask = internal constant { %struct.dce_ipp_mask, [40 x i8] } { %struct.dce_ipp_mask { i32 65536, i32 1, i32 1073676288, i32 16383, i32 4128768, i32 63, i32 768, i32 65536, i32 16, i32 255, i32 65280, i32 16711680, i32 255, i32 65280, i32 16711680, i32 4128768, i32 63, i32 255, i32 -1, i32 16, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 3, i32 0, i32 7, i32 1, i32 12582912, i32 49152, i32 192, i32 255, i32 65535, i32 3, i32 12288, i32 0 }, [40 x i8] zeroinitializer }, align 32
@xfm_regs = internal constant { [6 x %struct.dce_transform_registers], [392 x i8] } { [6 x %struct.dce_transform_registers] [%struct.dce_transform_registers { i32 6848, i32 0, i32 6745, i32 6746, i32 6747, i32 6748, i32 6749, i32 6750, i32 6751, i32 6717, i32 6718, i32 6719, i32 6720, i32 6721, i32 6722, i32 6716, i32 7039, i32 6820, i32 6821, i32 6822, i32 6823, i32 6824, i32 6825, i32 6826, i32 6827, i32 6828, i32 6829, i32 6830, i32 6831, i32 6819, i32 6817, i32 6818, i32 6816, i32 6736, i32 6752, i32 6737, i32 0, i32 0, i32 0, i32 0, i32 6979, i32 6980, i32 6981, i32 7006, i32 7007, i32 6990, i32 6986, i32 0, i32 0, i32 6976, i32 6977, i32 7004, i32 7005, i32 6987, i32 6991, i32 0, i32 0, i32 0, i32 6992, i32 6983, i32 6851, i32 6852, i32 0, i32 6993, i32 6995 }, %struct.dce_transform_registers { i32 7616, i32 0, i32 7513, i32 7514, i32 7515, i32 7516, i32 7517, i32 7518, i32 7519, i32 7485, i32 7486, i32 7487, i32 7488, i32 7489, i32 7490, i32 7484, i32 7807, i32 7588, i32 7589, i32 7590, i32 7591, i32 7592, i32 7593, i32 7594, i32 7595, i32 7596, i32 7597, i32 7598, i32 7599, i32 7587, i32 7585, i32 7586, i32 7584, i32 7504, i32 7520, i32 7505, i32 0, i32 0, i32 0, i32 0, i32 7747, i32 7748, i32 7749, i32 7774, i32 7775, i32 7758, i32 7754, i32 0, i32 0, i32 7744, i32 7745, i32 7772, i32 7773, i32 7755, i32 7759, i32 0, i32 0, i32 0, i32 7760, i32 7751, i32 7619, i32 7620, i32 0, i32 7761, i32 7763 }, %struct.dce_transform_registers { i32 16576, i32 0, i32 16473, i32 16474, i32 16475, i32 16476, i32 16477, i32 16478, i32 16479, i32 16445, i32 16446, i32 16447, i32 16448, i32 16449, i32 16450, i32 16444, i32 16767, i32 16548, i32 16549, i32 16550, i32 16551, i32 16552, i32 16553, i32 16554, i32 16555, i32 16556, i32 16557, i32 16558, i32 16559, i32 16547, i32 16545, i32 16546, i32 16544, i32 16464, i32 16480, i32 16465, i32 0, i32 0, i32 0, i32 0, i32 16707, i32 16708, i32 16709, i32 16734, i32 16735, i32 16718, i32 16714, i32 0, i32 0, i32 16704, i32 16705, i32 16732, i32 16733, i32 16715, i32 16719, i32 0, i32 0, i32 0, i32 16720, i32 16711, i32 16579, i32 16580, i32 0, i32 16721, i32 16723 }, %struct.dce_transform_registers { i32 17344, i32 0, i32 17241, i32 17242, i32 17243, i32 17244, i32 17245, i32 17246, i32 17247, i32 17213, i32 17214, i32 17215, i32 17216, i32 17217, i32 17218, i32 17212, i32 17535, i32 17316, i32 17317, i32 17318, i32 17319, i32 17320, i32 17321, i32 17322, i32 17323, i32 17324, i32 17325, i32 17326, i32 17327, i32 17315, i32 17313, i32 17314, i32 17312, i32 17232, i32 17248, i32 17233, i32 0, i32 0, i32 0, i32 0, i32 17475, i32 17476, i32 17477, i32 17502, i32 17503, i32 17486, i32 17482, i32 0, i32 0, i32 17472, i32 17473, i32 17500, i32 17501, i32 17483, i32 17487, i32 0, i32 0, i32 0, i32 17488, i32 17479, i32 17347, i32 17348, i32 0, i32 17489, i32 17491 }, %struct.dce_transform_registers { i32 18112, i32 0, i32 18009, i32 18010, i32 18011, i32 18012, i32 18013, i32 18014, i32 18015, i32 17981, i32 17982, i32 17983, i32 17984, i32 17985, i32 17986, i32 17980, i32 18303, i32 18084, i32 18085, i32 18086, i32 18087, i32 18088, i32 18089, i32 18090, i32 18091, i32 18092, i32 18093, i32 18094, i32 18095, i32 18083, i32 18081, i32 18082, i32 18080, i32 18000, i32 18016, i32 18001, i32 0, i32 0, i32 0, i32 0, i32 18243, i32 18244, i32 18245, i32 18270, i32 18271, i32 18254, i32 18250, i32 0, i32 0, i32 18240, i32 18241, i32 18268, i32 18269, i32 18251, i32 18255, i32 0, i32 0, i32 0, i32 18256, i32 18247, i32 18115, i32 18116, i32 0, i32 18257, i32 18259 }, %struct.dce_transform_registers { i32 18880, i32 0, i32 18777, i32 18778, i32 18779, i32 18780, i32 18781, i32 18782, i32 18783, i32 18749, i32 18750, i32 18751, i32 18752, i32 18753, i32 18754, i32 18748, i32 19071, i32 18852, i32 18853, i32 18854, i32 18855, i32 18856, i32 18857, i32 18858, i32 18859, i32 18860, i32 18861, i32 18862, i32 18863, i32 18851, i32 18849, i32 18850, i32 18848, i32 18768, i32 18784, i32 18769, i32 0, i32 0, i32 0, i32 0, i32 19011, i32 19012, i32 19013, i32 19038, i32 19039, i32 19022, i32 19018, i32 0, i32 0, i32 19008, i32 19009, i32 19036, i32 19037, i32 19019, i32 19023, i32 0, i32 0, i32 0, i32 19024, i32 19015, i32 18883, i32 18884, i32 0, i32 19025, i32 19027 }], [392 x i8] zeroinitializer }, align 32
@xfm_shift = internal constant { %struct.dce_transform_shift, [34 x i8] } { %struct.dce_transform_shift { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 6, i8 8, i8 9, i8 10, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 6, i8 2, i8 0, i8 20, i8 0, i8 0, i8 16, i8 0, i8 0, i8 12, i8 16, i8 28, i8 0, i8 20, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 0, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 0, i8 16, i8 8, i8 0, i8 15, i8 0, i8 31, i8 16, i8 16, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 20, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [34 x i8] zeroinitializer }, align 32
@xfm_mask = internal constant { %struct.dce_transform_mask, [72 x i8] } { %struct.dce_transform_mask { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 1, i32 48, i32 64, i32 256, i32 512, i32 1024, i32 7, i32 1, i32 0, i32 0, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 3, i32 65535, i32 -65536, i32 7, i32 0, i32 0, i32 64, i32 4, i32 262143, i32 133169152, i32 262143, i32 65535, i32 -65536, i32 65535, i32 511, i32 28672, i32 33488896, i32 1879048192, i32 0, i32 3145728, i32 7, i32 7, i32 0, i32 3, i32 0, i32 3840, i32 7, i32 0, i32 268369920, i32 4095, i32 268369920, i32 4095, i32 0, i32 0, i32 196608, i32 3840, i32 15, i32 32768, i32 16383, i32 -2147483648, i32 1073676288, i32 1073676288, i32 16383, i32 16383, i32 1073676288, i32 67108863, i32 67108863, i32 0, i32 0, i32 983040, i32 65535, i32 458752, i32 65535, i32 458752, i32 65535, i32 3145728, i32 2047, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0 }, [72 x i8] zeroinitializer }, align 32
@opp_regs = internal constant { [6 x %struct.dce_opp_registers], [80 x i8] } { [6 x %struct.dce_opp_registers] [%struct.dce_opp_registers { i32 7149, i32 7154, i32 7150, i32 7155, i32 7156, i32 7157, i32 0, i32 0, i32 0, i32 0, i32 7161, i32 0, i32 0, i32 0 }, %struct.dce_opp_registers { i32 7917, i32 7922, i32 7918, i32 7923, i32 7924, i32 7925, i32 0, i32 0, i32 0, i32 0, i32 7929, i32 0, i32 0, i32 0 }, %struct.dce_opp_registers { i32 16877, i32 16882, i32 16878, i32 16883, i32 16884, i32 16885, i32 0, i32 0, i32 0, i32 0, i32 16889, i32 0, i32 0, i32 0 }, %struct.dce_opp_registers { i32 17645, i32 17650, i32 17646, i32 17651, i32 17652, i32 17653, i32 0, i32 0, i32 0, i32 0, i32 17657, i32 0, i32 0, i32 0 }, %struct.dce_opp_registers { i32 18413, i32 18418, i32 18414, i32 18419, i32 18420, i32 18421, i32 0, i32 0, i32 0, i32 0, i32 18425, i32 0, i32 0, i32 0 }, %struct.dce_opp_registers { i32 19181, i32 19186, i32 19182, i32 19187, i32 19188, i32 19189, i32 0, i32 0, i32 0, i32 0, i32 19193, i32 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@opp_shift = internal constant { %struct.dce_opp_shift, [54 x i8] } { %struct.dce_opp_shift { i8 0, i8 4, i8 0, i8 4, i8 0, i8 8, i8 12, i8 9, i8 16, i8 25, i8 21, i8 20, i8 24, i8 26, i8 28, i8 30, i8 15, i8 13, i8 14, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0 }, [54 x i8] zeroinitializer }, align 32
@opp_mask = internal constant { %struct.dce_opp_mask, [56 x i8] } { %struct.dce_opp_mask { i32 1, i32 16, i32 1, i32 16, i32 0, i32 256, i32 4096, i32 1536, i32 65536, i32 33554432, i32 6291456, i32 1048576, i32 16777216, i32 201326592, i32 805306368, i32 -1073741824, i32 32768, i32 8192, i32 16384, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 458752, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@aux_engine_regs = internal constant { [6 x %struct.dce110_aux_registers], [48 x i8] } { [6 x %struct.dce110_aux_registers] [%struct.dce110_aux_registers { i32 6272, i32 6274, i32 6278, i32 6273, i32 6275, i32 0, i32 6276, i32 6412, i32 6411, i32 0 }, %struct.dce110_aux_registers { i32 6292, i32 6294, i32 6298, i32 6293, i32 6295, i32 0, i32 6296, i32 6412, i32 6411, i32 0 }, %struct.dce110_aux_registers { i32 6312, i32 6314, i32 6318, i32 6313, i32 6315, i32 0, i32 6316, i32 6412, i32 6411, i32 0 }, %struct.dce110_aux_registers { i32 6336, i32 6338, i32 6342, i32 6337, i32 6339, i32 0, i32 6340, i32 6412, i32 6411, i32 0 }, %struct.dce110_aux_registers { i32 6356, i32 6358, i32 6362, i32 6357, i32 6359, i32 0, i32 6360, i32 6412, i32 6411, i32 0 }, %struct.dce110_aux_registers { i32 6376, i32 6378, i32 6382, i32 6377, i32 6379, i32 0, i32 6380, i32 6412, i32 6411, i32 0 }], [48 x i8] zeroinitializer }, align 32
@aux_mask = internal constant { %struct.dce110_aux_registers_mask, [32 x i8] } { %struct.dce110_aux_registers_mask { i32 1, i32 0, i32 0, i32 12, i32 65536, i32 131072, i32 -2147483648, i32 1, i32 2031616, i32 1, i32 65280, i32 520093696, i32 1, i32 2, i32 1, i32 1, i32 268435456, i32 268435456, i32 0, i32 0, i32 1024, i32 1024, i32 240, i32 2031616 }, [32 x i8] zeroinitializer }, align 32
@aux_shift = internal constant { %struct.dce110_aux_registers_shift, [40 x i8] } { %struct.dce110_aux_registers_shift { i8 0, i8 0, i8 0, i8 2, i8 16, i8 17, i8 31, i8 0, i8 16, i8 0, i8 8, i8 24, i8 0, i8 1, i8 0, i8 0, i8 28, i8 28, i8 0, i8 0, i8 10, i8 10, i8 4, i8 16 }, [40 x i8] zeroinitializer }, align 32
@i2c_hw_regs = internal constant { [6 x %struct.dce_i2c_registers], [80 x i8] } { [6 x %struct.dce_i2c_registers] [%struct.dce_i2c_registers { i32 6180, i32 6179, i32 6173, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 6182, i32 6181, i32 6174, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 6184, i32 6183, i32 6175, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 6186, i32 6185, i32 6176, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 6188, i32 6187, i32 6177, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 6190, i32 6189, i32 6178, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@i2c_shifts = internal constant { %struct.dce_i2c_shift, [55 x i8] } { %struct.dce_i2c_shift { i8 6, i8 24, i8 0, i8 7, i8 1, i8 16, i8 8, i8 0, i8 21, i8 20, i8 4, i8 0, i8 1, i8 3, i8 0, i8 2, i8 20, i8 8, i8 16, i8 0, i8 0, i8 8, i8 5, i8 4, i8 2, i8 0, i8 8, i8 12, i8 0, i8 13, i8 16, i8 0, i8 8, i8 16, i8 31, i8 8, i8 0, i8 0, i8 2, i8 0, i8 0 }, [55 x i8] zeroinitializer }, align 32
@i2c_masks = internal constant { %struct.dce_i2c_mask, [60 x i8] } { %struct.dce_i2c_mask { i32 64, i32 -16777216, i32 1, i32 128, i32 2, i32 16711680, i32 65280, i32 3, i32 2097152, i32 1048576, i32 16, i32 3, i32 2, i32 8, i32 1, i32 4, i32 3145728, i32 1792, i32 -65536, i32 3, i32 0, i32 256, i32 32, i32 16, i32 4, i32 3, i32 256, i32 4096, i32 1, i32 8192, i32 16711680, i32 1, i32 65280, i32 16711680, i32 -2147483648, i32 32512, i32 127, i32 0, i32 12, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@audio_regs = internal constant { [6 x %struct.dce_audio_registers], [88 x i8] } { [6 x %struct.dce_audio_registers] [%struct.dce_audio_registers { i32 6016, i32 6017, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 369, i32 368, i32 0 }, %struct.dce_audio_registers { i32 6022, i32 6023, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 369, i32 368, i32 0 }, %struct.dce_audio_registers { i32 6028, i32 6029, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 369, i32 368, i32 0 }, %struct.dce_audio_registers { i32 6034, i32 6035, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 369, i32 368, i32 0 }, %struct.dce_audio_registers { i32 6040, i32 6041, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 369, i32 368, i32 0 }, %struct.dce_audio_registers { i32 6046, i32 6047, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 369, i32 368, i32 0 }], [88 x i8] zeroinitializer }, align 32
@audio_shift = internal constant { %struct.dce_audio_shift, [40 x i8] } { %struct.dce_audio_shift { i8 0, i8 0, i8 0, i8 30, i8 31, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@audio_mask = internal constant { %struct.dce_audio_mask, [36 x i8] } { %struct.dce_audio_mask { i32 255, i32 -1, i32 4095, i32 1073741824, i32 -2147483648, i32 7, i32 16, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@stream_enc_regs = internal constant { [6 x %struct.dce110_stream_enc_registers], [360 x i8] } { [6 x %struct.dce110_stream_enc_registers] [%struct.dce110_stream_enc_registers { i32 0, i32 7201, i32 7202, i32 7203, i32 7204, i32 7208, i32 7209, i32 7210, i32 7211, i32 7212, i32 7213, i32 7214, i32 7215, i32 7207, i32 7245, i32 7244, i32 0, i32 7243, i32 7191, i32 7247, i32 7233, i32 7234, i32 7240, i32 7168, i32 7393, i32 7395, i32 7361, i32 7328, i32 7364, i32 7371, i32 7370, i32 7363, i32 7369, i32 7333, i32 7337, i32 7180, i32 7190, i32 7187, i32 7216, i32 0, i32 0, i32 7185, i32 7186, i32 7184, i32 7182, i32 7183, i32 7223, i32 7224, i32 7225, i32 7226, i32 7227, i32 7228, i32 7292, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 7969, i32 7970, i32 7971, i32 7972, i32 7976, i32 7977, i32 7978, i32 7979, i32 7980, i32 7981, i32 7982, i32 7983, i32 7975, i32 8013, i32 8012, i32 0, i32 8011, i32 7959, i32 8015, i32 8001, i32 8002, i32 8008, i32 7936, i32 8161, i32 8163, i32 8129, i32 8096, i32 8132, i32 8139, i32 8138, i32 8131, i32 8137, i32 8101, i32 8105, i32 7948, i32 7958, i32 7955, i32 7984, i32 0, i32 0, i32 7953, i32 7954, i32 7952, i32 7950, i32 7951, i32 7991, i32 7992, i32 7993, i32 7994, i32 7995, i32 7996, i32 8060, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 16929, i32 16930, i32 16931, i32 16932, i32 16936, i32 16937, i32 16938, i32 16939, i32 16940, i32 16941, i32 16942, i32 16943, i32 16935, i32 16973, i32 16972, i32 0, i32 16971, i32 16919, i32 16975, i32 16961, i32 16962, i32 16968, i32 16896, i32 17121, i32 17123, i32 17089, i32 17056, i32 17092, i32 17099, i32 17098, i32 17091, i32 17097, i32 17061, i32 17065, i32 16908, i32 16918, i32 16915, i32 16944, i32 0, i32 0, i32 16913, i32 16914, i32 16912, i32 16910, i32 16911, i32 16951, i32 16952, i32 16953, i32 16954, i32 16955, i32 16956, i32 17020, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 17697, i32 17698, i32 17699, i32 17700, i32 17704, i32 17705, i32 17706, i32 17707, i32 17708, i32 17709, i32 17710, i32 17711, i32 17703, i32 17741, i32 17740, i32 0, i32 17739, i32 17687, i32 17743, i32 17729, i32 17730, i32 17736, i32 17664, i32 17889, i32 17891, i32 17857, i32 17824, i32 17860, i32 17867, i32 17866, i32 17859, i32 17865, i32 17829, i32 17833, i32 17676, i32 17686, i32 17683, i32 17712, i32 0, i32 0, i32 17681, i32 17682, i32 17680, i32 17678, i32 17679, i32 17719, i32 17720, i32 17721, i32 17722, i32 17723, i32 17724, i32 17788, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 18465, i32 18466, i32 18467, i32 18468, i32 18472, i32 18473, i32 18474, i32 18475, i32 18476, i32 18477, i32 18478, i32 18479, i32 18471, i32 18509, i32 18508, i32 0, i32 18507, i32 18455, i32 18511, i32 18497, i32 18498, i32 18504, i32 18432, i32 18657, i32 18659, i32 18625, i32 18592, i32 18628, i32 18635, i32 18634, i32 18627, i32 18633, i32 18597, i32 18601, i32 18444, i32 18454, i32 18451, i32 18480, i32 0, i32 0, i32 18449, i32 18450, i32 18448, i32 18446, i32 18447, i32 18487, i32 18488, i32 18489, i32 18490, i32 18491, i32 18492, i32 18556, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 19233, i32 19234, i32 19235, i32 19236, i32 19240, i32 19241, i32 19242, i32 19243, i32 19244, i32 19245, i32 19246, i32 19247, i32 19239, i32 19277, i32 19276, i32 0, i32 19275, i32 19223, i32 19279, i32 19265, i32 19266, i32 19272, i32 19200, i32 19425, i32 19427, i32 19393, i32 19360, i32 19396, i32 19403, i32 19402, i32 19395, i32 19401, i32 19365, i32 19369, i32 19212, i32 19222, i32 19219, i32 19248, i32 0, i32 0, i32 19217, i32 19218, i32 19216, i32 19214, i32 19215, i32 19255, i32 19256, i32 19257, i32 19258, i32 19259, i32 19260, i32 19324, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [360 x i8] zeroinitializer }, align 32
@se_shift = internal constant { %struct.dce_stream_encoder_shift, [32 x i8] } { %struct.dce_stream_encoder_shift { i8 30, i8 2, i8 3, i8 0, i8 8, i8 16, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 16, i8 5, i8 4, i8 24, i8 0, i8 24, i8 8, i8 16, i8 4, i8 0, i8 24, i8 0, i8 28, i8 5, i8 4, i8 0, i8 0, i8 4, i8 7, i8 8, i8 0, i8 26, i8 0, i8 0, i8 24, i8 0, i8 1, i8 0, i8 20, i8 0, i8 21, i8 22, i8 23, i8 0, i8 0, i8 0, i8 0, i8 24, i8 28, i8 8, i8 0, i8 16, i8 0, i8 8, i8 0, i8 0, i8 10, i8 0, i8 8, i8 16, i8 4, i8 26, i8 0, i8 28, i8 12, i8 8, i8 31, i8 12, i8 0, i8 12, i8 0, i8 12, i8 0, i8 20, i8 28, i8 20, i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 0, i8 0, i8 4, i8 8, i8 12, i8 16, i8 0, i8 0, i8 4, i8 8, i8 4, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@se_mask = internal constant { %struct.dce_stream_encoder_mask, [128 x i8] } { %struct.dce_stream_encoder_mask { i32 -1073741824, i32 4, i32 8, i32 255, i32 65280, i32 16711680, i32 -16777216, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 4128768, i32 32, i32 16, i32 1056964608, i32 3, i32 117440512, i32 256, i32 65536, i32 16, i32 1, i32 16777216, i32 0, i32 805306368, i32 32, i32 16, i32 1, i32 0, i32 16, i32 128, i32 16128, i32 1, i32 -67108864, i32 67108863, i32 1, i32 -16777216, i32 1, i32 2, i32 63, i32 1048576, i32 1, i32 2097152, i32 4194304, i32 8388608, i32 0, i32 0, i32 0, i32 0, i32 16777216, i32 268435456, i32 768, i32 1, i32 65536, i32 1, i32 256, i32 16777215, i32 16777215, i32 1024, i32 7, i32 65280, i32 2031616, i32 48, i32 67108864, i32 1, i32 268435456, i32 4096, i32 256, i32 -2147483648, i32 -4096, i32 1048575, i32 -4096, i32 1048575, i32 -4096, i32 1048575, i32 15728640, i32 805306368, i32 15728640, i32 15, i32 240, i32 3840, i32 61440, i32 983040, i32 15728640, i32 16777215, i32 1, i32 16, i32 256, i32 4096, i32 65536, i32 1, i32 0, i32 16, i32 112, i32 256, i32 768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7 }, [128 x i8] zeroinitializer }, align 32
@hwseq_reg = internal constant { %struct.dce_hwseq_registers, [132 x i8] } { %struct.dce_hwseq_registers { [6 x i32] [i32 7036, i32 7804, i32 16764, i32 17532, i32 18300, i32 19068], i32 0, i32 0, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, i32 0, [6 x i32] zeroinitializer, [6 x i32] [i32 320, i32 324, i32 328, i32 332, i32 336, i32 340], [6 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [132 x i8] zeroinitializer }, align 32
@hwseq_shift = internal constant { %struct.dce_hwseq_shift, [35 x i8] } { %struct.dce_hwseq_shift { i8 31, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [35 x i8] zeroinitializer }, align 32
@hwseq_mask = internal constant { %struct.dce_hwseq_mask, [108 x i8] } { %struct.dce_hwseq_mask { i32 -2147483648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer }, align 32
@res_cap_61 = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 4, i32 0, i32 0, i32 6, i32 6, i32 3, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__func__.dce61_construct = private unnamed_addr constant [16 x i8] c"dce61_construct\00", align 1
@res_cap_64 = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 2, i32 0, i32 0, i32 2, i32 2, i32 2, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__func__.dce64_construct = private unnamed_addr constant [16 x i8] c"dce64_construct\00", align 1
@switch.table.dce60_link_encoder_create = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 6], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1130, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"bios_regs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 367, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [8 x i8] c"res_cap\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 372, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"dce60_res_pool_funcs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 929, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"clk_src_regs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 353, i32 41 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 993, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1000, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"dmcu_regs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 418, i32 40 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"dmcu_shift\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 422, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"dmcu_mask\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 426, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1011, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"abm_regs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 429, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant [10 x i8] c"abm_shift\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 433, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"abm_mask\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 437, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1021, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"dce60_tg_offsets\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 112, i32 53 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1039, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1046, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1053, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1060, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1067, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1076, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1083, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1090, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"plane_cap\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 396, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"res_create_funcs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 636, i32 43 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"panel_cntl_regs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 268, i32 46 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"panel_cntl_shift\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 272, i32 42 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"panel_cntl_mask\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 276, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"link_enc_regs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 236, i32 47 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"link_enc_aux_regs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 208, i32 51 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"link_enc_hpd_regs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 222, i32 51 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 471, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"link_enc_feature\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 705, i32 45 }
@___asan_gen_.117 = private unnamed_addr constant [9 x i8] c"cs_shift\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 359, i32 42 }
@___asan_gen_.120 = private unnamed_addr constant [8 x i8] c"cs_mask\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 363, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant [8 x i8] c"mi_regs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 647, i32 45 }
@___asan_gen_.126 = private unnamed_addr constant [10 x i8] c"mi_shifts\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 656, i32 41 }
@___asan_gen_.129 = private unnamed_addr constant [9 x i8] c"mi_masks\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 661, i32 40 }
@___asan_gen_.132 = private unnamed_addr constant [9 x i8] c"ipp_regs\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 164, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant [10 x i8] c"ipp_shift\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 173, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant [9 x i8] c"ipp_mask\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 177, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant [9 x i8] c"xfm_regs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 186, i32 45 }
@___asan_gen_.144 = private unnamed_addr constant [10 x i8] c"xfm_shift\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 195, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant [9 x i8] c"xfm_mask\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 199, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"opp_regs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 285, i32 39 }
@___asan_gen_.153 = private unnamed_addr constant [10 x i8] c"opp_shift\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 294, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant [9 x i8] c"opp_mask\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 298, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"aux_engine_regs\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 316, i32 42 }
@___asan_gen_.162 = private unnamed_addr constant [9 x i8] c"aux_mask\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 306, i32 47 }
@___asan_gen_.165 = private unnamed_addr constant [10 x i8] c"aux_shift\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 302, i32 48 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"i2c_hw_regs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 545, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant [11 x i8] c"i2c_shifts\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 554, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant [10 x i8] c"i2c_masks\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 558, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant [11 x i8] c"audio_regs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 330, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"audio_shift\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 339, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant [11 x i8] c"audio_mask\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 343, i32 36 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"stream_enc_regs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 251, i32 49 }
@___asan_gen_.189 = private unnamed_addr constant [9 x i8] c"se_shift\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 260, i32 46 }
@___asan_gen_.192 = private unnamed_addr constant [8 x i8] c"se_mask\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 264, i32 45 }
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"hwseq_reg\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 610, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"hwseq_shift\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 614, i32 37 }
@___asan_gen_.201 = private unnamed_addr constant [11 x i8] c"hwseq_mask\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 618, i32 36 }
@___asan_gen_.204 = private unnamed_addr constant [11 x i8] c"res_cap_61\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 380, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant [11 x i8] c"res_cap_64\00", align 1
@___asan_gen_.208 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 388, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant [39 x i8] c"switch.table.dce60_link_encoder_create\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @.str, ptr @bios_regs, ptr @res_cap, ptr @dce60_res_pool_funcs, ptr @clk_src_regs, ptr @.str.1, ptr @.str.2, ptr @dmcu_regs, ptr @dmcu_shift, ptr @dmcu_mask, ptr @.str.3, ptr @abm_regs, ptr @abm_shift, ptr @abm_mask, ptr @.str.4, ptr @dce60_tg_offsets, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @plane_cap, ptr @res_create_funcs, ptr @panel_cntl_regs, ptr @panel_cntl_shift, ptr @panel_cntl_mask, ptr @link_enc_regs, ptr @link_enc_aux_regs, ptr @link_enc_hpd_regs, ptr @.str.13, ptr @link_enc_feature, ptr @cs_shift, ptr @cs_mask, ptr @mi_regs, ptr @mi_shifts, ptr @mi_masks, ptr @ipp_regs, ptr @ipp_shift, ptr @ipp_mask, ptr @xfm_regs, ptr @xfm_shift, ptr @xfm_mask, ptr @opp_regs, ptr @opp_shift, ptr @opp_mask, ptr @aux_engine_regs, ptr @aux_mask, ptr @aux_shift, ptr @i2c_hw_regs, ptr @i2c_shifts, ptr @i2c_masks, ptr @audio_regs, ptr @audio_shift, ptr @audio_mask, ptr @stream_enc_regs, ptr @se_shift, ptr @se_mask, ptr @hwseq_reg, ptr @hwseq_shift, ptr @hwseq_mask, ptr @res_cap_61, ptr @res_cap_64, ptr @switch.table.dce60_link_encoder_create], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bios_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_cap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_res_pool_funcs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_src_regs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_regs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_shift to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_mask to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_shift to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_mask to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_tg_offsets to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plane_cap to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_create_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_shift to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_mask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_regs to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_aux_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_hpd_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_feature to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_shift to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_mask to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_regs to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_shifts to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_masks to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_regs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_shift to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_mask to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_regs to i32), i32 1560, i32 1952, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_shift to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_mask to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_shift to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_mask to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_engine_regs to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_mask to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_shift to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hw_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_shifts to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_masks to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_regs to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_shift to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_mask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_regs to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se_shift to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se_mask to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_reg to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_shift to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_mask to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_cap_61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_cap_64 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce60_link_encoder_create to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dce60_create_resource_pool(i8 noundef zeroext %num_virtual_links, ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  %init_data.i = alloca %struct.irq_service_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 516) #10
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
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 41
  %6 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @res_cap, ptr %res_cap.i, align 4
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 40
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dce60_res_pool_funcs, ptr %funcs.i, align 8
  %underlay_pipe_index.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 20
  %8 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %underlay_pipe_index.i, align 8
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %pipe_count.i, align 4
  %timing_generator_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 26
  %10 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %timing_generator_count.i, align 8
  %max_downscale_ratio.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %max_downscale_ratio.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 200, ptr %max_downscale_ratio.i, align 4
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 40, ptr %i2c_speed_in_khz.i, align 4
  %max_cursor_size.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 11
  %13 = ptrtoint ptr %max_cursor_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 64, ptr %max_cursor_size.i, align 4
  %dual_link_dvi.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 18
  %14 = ptrtoint ptr %dual_link_dvi.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %dual_link_dvi.i, align 1
  %extended_aux_timeout_support.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 23
  %15 = ptrtoint ptr %extended_aux_timeout_support.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %extended_aux_timeout_support.i, align 4
  %16 = load ptr, ptr %dc_bios.i, align 4
  %fw_info_valid.i = getelementptr inbounds %struct.dc_bios, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %fw_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fw_info_valid.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %external_clock_source_frequency_for_dp.i = getelementptr inbounds %struct.dc_bios, ptr %16, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %external_clock_source_frequency_for_dp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %external_clock_source_frequency_for_dp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.dce60_clock_source_create.exit.i_crit_edge, label %if.end.i.i

if.then.i.dce60_clock_source_create.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %2, ptr noundef %16, i32 noundef 4, ptr noundef null, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i.i, label %if.then2.i.i, label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %dp_clk_src4.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %dp_clk_src4.i.i, align 4
  br label %dce60_clock_source_create.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit.i

dce60_clock_source_create.exit.i:                 ; preds = %if.end7.i.i, %if.then2.i.i, %if.then.i.dce60_clock_source_create.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %if.then2.i.i ], [ null, %if.end7.i.i ], [ null, %if.then.i.dce60_clock_source_create.exit.i_crit_edge ]
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %23 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i.i, ptr %dp_clock_source.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i316.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i317.i = icmp eq ptr %call7.i.i.i316.i, null
  br i1 %tobool.not.i317.i, label %dce60_clock_source_create.exit.i.dce60_clock_source_create.exit324.i_crit_edge, label %if.end.i319.i

dce60_clock_source_create.exit.i.dce60_clock_source_create.exit324.i_crit_edge: ; preds = %dce60_clock_source_create.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit324.i

if.end.i319.i:                                    ; preds = %dce60_clock_source_create.exit.i
  %call1.i318.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i316.i, ptr noundef %2, ptr noundef %16, i32 noundef 1, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i318.i, label %if.then2.i321.i, label %if.end7.i322.i

if.then2.i321.i:                                  ; preds = %if.end.i319.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i320.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i316.i, i32 0, i32 3
  %25 = ptrtoint ptr %dp_clk_src4.i320.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %dp_clk_src4.i320.i, align 4
  br label %dce60_clock_source_create.exit324.i

if.end7.i322.i:                                   ; preds = %if.end.i319.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i316.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit324.i

dce60_clock_source_create.exit324.i:              ; preds = %if.end7.i322.i, %if.then2.i321.i, %dce60_clock_source_create.exit.i.dce60_clock_source_create.exit324.i_crit_edge
  %retval.0.i323.i = phi ptr [ %call7.i.i.i316.i, %if.then2.i321.i ], [ null, %if.end7.i322.i ], [ null, %dce60_clock_source_create.exit.i.dce60_clock_source_create.exit324.i_crit_edge ]
  %clock_sources.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %26 = ptrtoint ptr %clock_sources.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i323.i, ptr %clock_sources.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i325.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i326.i = icmp eq ptr %call7.i.i.i325.i, null
  br i1 %tobool.not.i326.i, label %dce60_clock_source_create.exit324.i.dce60_clock_source_create.exit333.i_crit_edge, label %if.end.i328.i

dce60_clock_source_create.exit324.i.dce60_clock_source_create.exit333.i_crit_edge: ; preds = %dce60_clock_source_create.exit324.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit333.i

if.end.i328.i:                                    ; preds = %dce60_clock_source_create.exit324.i
  %call1.i327.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i325.i, ptr noundef %2, ptr noundef %16, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i327.i, label %if.then2.i330.i, label %if.end7.i331.i

if.then2.i330.i:                                  ; preds = %if.end.i328.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i329.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i325.i, i32 0, i32 3
  %28 = ptrtoint ptr %dp_clk_src4.i329.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %dp_clk_src4.i329.i, align 4
  br label %dce60_clock_source_create.exit333.i

if.end7.i331.i:                                   ; preds = %if.end.i328.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i325.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit333.i

dce60_clock_source_create.exit333.i:              ; preds = %if.end7.i331.i, %if.then2.i330.i, %dce60_clock_source_create.exit324.i.dce60_clock_source_create.exit333.i_crit_edge
  %retval.0.i332.i = phi ptr [ %call7.i.i.i325.i, %if.then2.i330.i ], [ null, %if.end7.i331.i ], [ null, %dce60_clock_source_create.exit324.i.dce60_clock_source_create.exit333.i_crit_edge ]
  %arrayidx17.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %29 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i332.i, ptr %arrayidx17.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i334.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i335.i = icmp eq ptr %call7.i.i.i334.i, null
  br i1 %tobool.not.i335.i, label %if.else.i.dce60_clock_source_create.exit342.i_crit_edge, label %if.end.i337.i

if.else.i.dce60_clock_source_create.exit342.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit342.i

if.end.i337.i:                                    ; preds = %if.else.i
  %call1.i336.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i334.i, ptr noundef %2, ptr noundef %16, i32 noundef 1, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i336.i, label %if.then2.i339.i, label %if.end7.i340.i

if.then2.i339.i:                                  ; preds = %if.end.i337.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i338.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i334.i, i32 0, i32 3
  %31 = ptrtoint ptr %dp_clk_src4.i338.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %dp_clk_src4.i338.i, align 4
  br label %dce60_clock_source_create.exit342.i

if.end7.i340.i:                                   ; preds = %if.end.i337.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i334.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit342.i

dce60_clock_source_create.exit342.i:              ; preds = %if.end7.i340.i, %if.then2.i339.i, %if.else.i.dce60_clock_source_create.exit342.i_crit_edge
  %retval.0.i341.i = phi ptr [ %call7.i.i.i334.i, %if.then2.i339.i ], [ null, %if.end7.i340.i ], [ null, %if.else.i.dce60_clock_source_create.exit342.i_crit_edge ]
  %dp_clock_source21.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %32 = ptrtoint ptr %dp_clock_source21.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i341.i, ptr %dp_clock_source21.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i343.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i344.i = icmp eq ptr %call7.i.i.i343.i, null
  br i1 %tobool.not.i344.i, label %dce60_clock_source_create.exit342.i.dce60_clock_source_create.exit351.i_crit_edge, label %if.end.i346.i

dce60_clock_source_create.exit342.i.dce60_clock_source_create.exit351.i_crit_edge: ; preds = %dce60_clock_source_create.exit342.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit351.i

if.end.i346.i:                                    ; preds = %dce60_clock_source_create.exit342.i
  %call1.i345.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i343.i, ptr noundef %2, ptr noundef %16, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i345.i, label %if.then2.i348.i, label %if.end7.i349.i

if.then2.i348.i:                                  ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i347.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i343.i, i32 0, i32 3
  %34 = ptrtoint ptr %dp_clk_src4.i347.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %dp_clk_src4.i347.i, align 4
  br label %dce60_clock_source_create.exit351.i

if.end7.i349.i:                                   ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i343.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit351.i

dce60_clock_source_create.exit351.i:              ; preds = %if.end7.i349.i, %if.then2.i348.i, %dce60_clock_source_create.exit342.i.dce60_clock_source_create.exit351.i_crit_edge
  %retval.0.i350.i = phi ptr [ %call7.i.i.i343.i, %if.then2.i348.i ], [ null, %if.end7.i349.i ], [ null, %dce60_clock_source_create.exit342.i.dce60_clock_source_create.exit351.i_crit_edge ]
  %clock_sources24.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %35 = ptrtoint ptr %clock_sources24.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i350.i, ptr %clock_sources24.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %dce60_clock_source_create.exit351.i, %dce60_clock_source_create.exit333.i
  %exitcond.not.i = phi i1 [ true, %dce60_clock_source_create.exit351.i ], [ false, %dce60_clock_source_create.exit333.i ]
  %.sink.i = phi i32 [ 1, %dce60_clock_source_create.exit351.i ], [ 2, %dce60_clock_source_create.exit333.i ]
  %clk_src_count27.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 31
  %36 = ptrtoint ptr %clk_src_count27.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink.i, ptr %clk_src_count27.i, align 4
  %dp_clock_source29.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %37 = ptrtoint ptr %dp_clock_source29.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dp_clock_source29.i, align 4
  %cmp30.i = icmp eq ptr %38, null
  br i1 %cmp30.i, label %if.then31.i, label %for.body.i

if.then31.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 994) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.cond.i:                                       ; preds = %for.body.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i.1

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.cond.i
  %arrayidx38.i.1 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %39 = ptrtoint ptr %arrayidx38.i.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx38.i.1, align 4
  %cmp39.i.1 = icmp eq ptr %40, null
  br i1 %cmp39.i.1, label %for.body.i.1.if.then40.i_crit_edge, label %for.body.i.1.for.end.i_crit_edge

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.1.if.then40.i_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i

for.body.i:                                       ; preds = %if.end.i
  %arrayidx38.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 0
  %41 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx38.i, align 8
  %cmp39.i = icmp eq ptr %42, null
  br i1 %cmp39.i, label %for.body.i.if.then40.i_crit_edge, label %for.cond.i

for.body.i.if.then40.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i

if.then40.i:                                      ; preds = %for.body.i.if.then40.i_crit_edge, %for.body.i.1.if.then40.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1001) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.end.i:                                        ; preds = %for.body.i.1.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %call45.i = tail call ptr @dce_dmcu_create(ptr noundef %2, ptr noundef nonnull @dmcu_regs, ptr noundef nonnull @dmcu_shift, ptr noundef nonnull @dmcu_mask) #7
  %dmcu.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 38
  %43 = ptrtoint ptr %dmcu.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call45.i, ptr %dmcu.i, align 8
  %cmp49.i = icmp eq ptr %call45.i, null
  br i1 %cmp49.i, label %if.then50.i, label %if.end54.i

if.then50.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1012) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end54.i:                                       ; preds = %for.end.i
  %call55.i = tail call ptr @dce_abm_create(ptr noundef %2, ptr noundef nonnull @abm_regs, ptr noundef nonnull @abm_shift, ptr noundef nonnull @abm_mask) #7
  %abm.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 37
  %44 = ptrtoint ptr %abm.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call55.i, ptr %abm.i, align 4
  %cmp59.i = icmp eq ptr %call55.i, null
  br i1 %cmp59.i, label %if.then60.i, label %if.end64.i

if.then60.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1022) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end64.i:                                       ; preds = %if.end54.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_data.i) #7
  %45 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx1.i, align 8
  %47 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %init_data.i, align 4
  %call67.i = call ptr @dal_irq_service_dce60_create(ptr noundef nonnull %init_data.i) #7
  %irqs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 36
  %48 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call67.i, ptr %irqs.i, align 8
  %tobool71.not.i = icmp eq ptr %call67.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_data.i) #7
  br i1 %tobool71.not.i, label %if.end64.i.do.body_crit_edge, label %for.cond74.preheader.i

if.end64.i.do.body_crit_edge:                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond74.preheader.i:                           ; preds = %if.end64.i
  %49 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp77412.not.i = icmp eq i32 %50, 0
  br i1 %cmp77412.not.i, label %for.cond74.preheader.i.for.cond143.preheader.i_crit_edge, label %for.cond74.preheader.i.for.body78.i_crit_edge

for.cond74.preheader.i.for.body78.i_crit_edge:    ; preds = %for.cond74.preheader.i
  br label %for.body78.i

for.cond74.preheader.i.for.cond143.preheader.i_crit_edge: ; preds = %for.cond74.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond143.preheader.i

for.cond143.preheader.i:                          ; preds = %for.inc140.i.for.cond143.preheader.i_crit_edge, %for.cond74.preheader.i.for.cond143.preheader.i_crit_edge
  %51 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %res_cap.i, align 4
  %num_ddc414.i = getelementptr inbounds %struct.resource_caps, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %num_ddc414.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_ddc414.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp146415.not.i = icmp eq i32 %54, 0
  br i1 %cmp146415.not.i, label %for.cond143.preheader.i.for.end186.i_crit_edge, label %for.cond143.preheader.i.for.body147.i_crit_edge

for.cond143.preheader.i.for.body147.i_crit_edge:  ; preds = %for.cond143.preheader.i
  br label %for.body147.i

for.cond143.preheader.i.for.end186.i_crit_edge:   ; preds = %for.cond143.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end186.i

for.body78.i:                                     ; preds = %for.inc140.i.for.body78.i_crit_edge, %for.cond74.preheader.i.for.body78.i_crit_edge
  %i.1413.i = phi i32 [ %inc141.i, %for.inc140.i.for.body78.i_crit_edge ], [ 0, %for.cond74.preheader.i.for.body78.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i352.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i353.i = icmp eq ptr %call7.i.i.i352.i, null
  br i1 %tobool.not.i353.i, label %do.body88.i, label %if.end91.i

do.body88.i:                                      ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx82381.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1413.i
  %56 = ptrtoint ptr %arrayidx82381.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx82381.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1038) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #7
  br label %do.body

if.end91.i:                                       ; preds = %for.body78.i
  %arrayidx79.i = getelementptr [6 x %struct.dce110_timing_generator_offsets], ptr @dce60_tg_offsets, i32 0, i32 %i.1413.i
  call void @dce60_timing_generator_construct(ptr noundef nonnull %call7.i.i.i352.i, ptr noundef %2, i32 noundef %i.1413.i, ptr noundef %arrayidx79.i) #7
  %arrayidx82.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1413.i
  %57 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i.i352.i, ptr %arrayidx82.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i355.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 272) #10
  %tobool.not.i356.i = icmp eq ptr %call7.i.i.i355.i, null
  br i1 %tobool.not.i356.i, label %do.body100.i, label %if.end103.i

do.body100.i:                                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_mem_input_create, i32 noundef 674) #7
  call void @kgdb_breakpoint() #7
  %arrayidx94382.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1413.i
  %59 = ptrtoint ptr %arrayidx94382.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx94382.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1045) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #7
  br label %do.body

if.end103.i:                                      ; preds = %if.end91.i
  %arrayidx.i.i = getelementptr [6 x %struct.dce_mem_input_registers], ptr @mi_regs, i32 0, i32 %i.1413.i
  call void @dce60_mem_input_construct(ptr noundef nonnull %call7.i.i.i355.i, ptr noundef %2, i32 noundef %i.1413.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mi_shifts, ptr noundef nonnull @mi_masks) #7
  %wa.i.i = getelementptr inbounds %struct.dce_mem_input, ptr %call7.i.i.i355.i, i32 0, i32 4
  %60 = ptrtoint ptr %wa.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %wa.i.i, align 4
  %arrayidx94.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1413.i
  %61 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i355.i, ptr %arrayidx94.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i358.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i359.i = icmp eq ptr %call7.i.i.i358.i, null
  br i1 %tobool.not.i359.i, label %do.body112.i, label %if.end115.i

do.body112.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_ipp_create, i32 noundef 787) #7
  call void @kgdb_breakpoint() #7
  %arrayidx106383.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1413.i
  %63 = ptrtoint ptr %arrayidx106383.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx106383.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1052) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %do.body

if.end115.i:                                      ; preds = %if.end103.i
  %arrayidx.i361.i = getelementptr [6 x %struct.dce_ipp_registers], ptr @ipp_regs, i32 0, i32 %i.1413.i
  call void @dce60_ipp_construct(ptr noundef nonnull %call7.i.i.i358.i, ptr noundef %2, i32 noundef %i.1413.i, ptr noundef %arrayidx.i361.i, ptr noundef nonnull @ipp_shift, ptr noundef nonnull @ipp_mask) #7
  %arrayidx106.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1413.i
  %64 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i.i358.i, ptr %arrayidx106.i, align 4
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19280, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i363.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i363.i, label %do.body124.i, label %if.end127.i

do.body124.i:                                     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx118384.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1413.i
  %65 = ptrtoint ptr %arrayidx118384.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx118384.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1059) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %do.body

if.end127.i:                                      ; preds = %if.end115.i
  %arrayidx.i364.i = getelementptr [6 x %struct.dce_transform_registers], ptr @xfm_regs, i32 0, i32 %i.1413.i
  call void @dce60_transform_construct(ptr noundef nonnull %call1.i.i.i.i.i, ptr noundef %2, i32 noundef %i.1413.i, ptr noundef %arrayidx.i364.i, ptr noundef nonnull @xfm_shift, ptr noundef nonnull @xfm_mask) #7
  %prescaler_on.i.i = getelementptr inbounds %struct.dce_transform, ptr %call1.i.i.i.i.i, i32 0, i32 11
  %66 = ptrtoint ptr %prescaler_on.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %prescaler_on.i.i, align 8
  %arrayidx118.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1413.i
  %67 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx118.i, align 4
  %call1.i.i.i.i366.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19264, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i367.i = icmp eq ptr %call1.i.i.i.i366.i, null
  br i1 %tobool.not.i367.i, label %do.body136.i, label %for.inc140.i

do.body136.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx130385.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1413.i
  %68 = ptrtoint ptr %arrayidx130385.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx130385.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1066) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %do.body

for.inc140.i:                                     ; preds = %if.end127.i
  %arrayidx.i368.i = getelementptr [6 x %struct.dce_opp_registers], ptr @opp_regs, i32 0, i32 %i.1413.i
  call void @dce60_opp_construct(ptr noundef nonnull %call1.i.i.i.i366.i, ptr noundef %2, i32 noundef %i.1413.i, ptr noundef %arrayidx.i368.i, ptr noundef nonnull @opp_shift, ptr noundef nonnull @opp_mask) #7
  %arrayidx130.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1413.i
  %69 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call1.i.i.i.i366.i, ptr %arrayidx130.i, align 4
  %inc141.i = add nuw i32 %i.1413.i, 1
  %70 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pipe_count.i, align 4
  %cmp77.i = icmp ult i32 %inc141.i, %71
  br i1 %cmp77.i, label %for.inc140.i.for.body78.i_crit_edge, label %for.inc140.i.for.cond143.preheader.i_crit_edge

for.inc140.i.for.cond143.preheader.i_crit_edge:   ; preds = %for.inc140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond143.preheader.i

for.inc140.i.for.body78.i_crit_edge:              ; preds = %for.inc140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body78.i

for.body147.i:                                    ; preds = %for.inc184.i.for.body147.i_crit_edge, %for.cond143.preheader.i.for.body147.i_crit_edge
  %i.2416.i = phi i32 [ %inc185.i, %for.inc184.i.for.body147.i_crit_edge ], [ 0, %for.cond143.preheader.i.for.body147.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i370.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i371.i = icmp eq ptr %call7.i.i.i370.i, null
  br i1 %tobool.not.i371.i, label %do.body156.i, label %if.end159.i

do.body156.i:                                     ; preds = %for.body147.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx150386.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2416.i
  %73 = ptrtoint ptr %arrayidx150386.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %arrayidx150386.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1075) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %do.body

if.end159.i:                                      ; preds = %for.body147.i
  %arrayidx.i372.i = getelementptr [6 x %struct.dce110_aux_registers], ptr @aux_engine_regs, i32 0, i32 %i.2416.i
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %2, align 8
  %extended_aux_timeout_support.i.i = getelementptr inbounds %struct.dc, ptr %75, i32 0, i32 2, i32 23
  %76 = ptrtoint ptr %extended_aux_timeout_support.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %extended_aux_timeout_support.i.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool1.i.i = icmp ne i8 %77, 0
  %call2.i.i = call ptr @dce110_aux_engine_construct(ptr noundef nonnull %call7.i.i.i370.i, ptr noundef %2, i32 noundef %i.2416.i, i32 noundef 2400, ptr noundef %arrayidx.i372.i, ptr noundef nonnull @aux_mask, ptr noundef nonnull @aux_shift, i1 noundef zeroext %tobool1.i.i) #7
  %arrayidx150.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2416.i
  %78 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i.i370.i, ptr %arrayidx150.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i374.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not.i375.i = icmp eq ptr %call7.i.i.i374.i, null
  br i1 %tobool.not.i375.i, label %do.body168.i, label %if.end171.i

do.body168.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx162387.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2416.i
  %80 = ptrtoint ptr %arrayidx162387.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx162387.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1082) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %do.body

if.end171.i:                                      ; preds = %if.end159.i
  %arrayidx.i376.i = getelementptr [6 x %struct.dce_i2c_registers], ptr @i2c_hw_regs, i32 0, i32 %i.2416.i
  call void @dce_i2c_hw_construct(ptr noundef nonnull %call7.i.i.i374.i, ptr noundef %2, i32 noundef %i.2416.i, ptr noundef %arrayidx.i376.i, ptr noundef nonnull @i2c_shifts, ptr noundef nonnull @i2c_masks) #7
  %arrayidx162.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2416.i
  %81 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i.i374.i, ptr %arrayidx162.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i378.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not.i379.i = icmp eq ptr %call7.i.i.i378.i, null
  br i1 %tobool.not.i379.i, label %do.body180.i, label %for.inc184.i

do.body180.i:                                     ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx174388.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2416.i
  %83 = ptrtoint ptr %arrayidx174388.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %arrayidx174388.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_construct, i32 noundef 1089) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %do.body

for.inc184.i:                                     ; preds = %if.end171.i
  call void @dce_i2c_sw_construct(ptr noundef nonnull %call7.i.i.i378.i, ptr noundef %2) #7
  %arrayidx174.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2416.i
  %84 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i.i378.i, ptr %arrayidx174.i, align 4
  %inc185.i = add nuw i32 %i.2416.i, 1
  %85 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %res_cap.i, align 4
  %num_ddc.i = getelementptr inbounds %struct.resource_caps, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %num_ddc.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_ddc.i, align 4
  %cmp146.i = icmp ult i32 %inc185.i, %88
  br i1 %cmp146.i, label %for.inc184.i.for.body147.i_crit_edge, label %for.inc184.i.for.end186.i_crit_edge

for.inc184.i.for.end186.i_crit_edge:              ; preds = %for.inc184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end186.i

for.inc184.i.for.body147.i_crit_edge:             ; preds = %for.inc184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body147.i

for.end186.i:                                     ; preds = %for.inc184.i.for.end186.i_crit_edge, %for.cond143.preheader.i.for.end186.i_crit_edge
  %89 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pipe_count.i, align 4
  %max_planes.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 6
  %91 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %max_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp193417.not.i = icmp eq i32 %90, 0
  br i1 %cmp193417.not.i, label %for.end186.i.for.end199.i_crit_edge, label %for.end186.i.for.body194.i_crit_edge

for.end186.i.for.body194.i_crit_edge:             ; preds = %for.end186.i
  br label %for.body194.i

for.end186.i.for.end199.i_crit_edge:              ; preds = %for.end186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end199.i

for.body194.i:                                    ; preds = %for.body194.i.for.body194.i_crit_edge, %for.end186.i.for.body194.i_crit_edge
  %i.3418.i = phi i32 [ %inc198.i, %for.body194.i.for.body194.i_crit_edge ], [ 0, %for.end186.i.for.body194.i_crit_edge ]
  %arrayidx196.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 2, i32 30, i32 %i.3418.i
  %92 = call ptr @memcpy(ptr %arrayidx196.i, ptr @plane_cap, i32 44)
  %inc198.i = add nuw i32 %i.3418.i, 1
  %93 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_planes.i, align 4
  %cmp193.i = icmp ult i32 %inc198.i, %94
  br i1 %cmp193.i, label %for.body194.i.for.body194.i_crit_edge, label %for.body194.i.for.end199.i_crit_edge

for.body194.i.for.end199.i_crit_edge:             ; preds = %for.body194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end199.i

for.body194.i.for.body194.i_crit_edge:            ; preds = %for.body194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body194.i

for.end199.i:                                     ; preds = %for.body194.i.for.end199.i_crit_edge, %for.end186.i.for.end199.i_crit_edge
  %disable_dp_clk_share.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 21
  %95 = ptrtoint ptr %disable_dp_clk_share.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %disable_dp_clk_share.i, align 2
  %conv.i = zext i8 %num_virtual_links to i32
  %call202.i = call zeroext i1 @resource_construct(i32 noundef %conv.i, ptr noundef %dc, ptr noundef %call7.i.i, ptr noundef nonnull @res_create_funcs) #7
  br i1 %call202.i, label %dce60_construct.exit.thread, label %for.end199.i.do.body_crit_edge

for.end199.i.do.body_crit_edge:                   ; preds = %for.end199.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

dce60_construct.exit.thread:                      ; preds = %for.end199.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dce60_hw_sequencer_construct(ptr noundef %dc) #7
  br label %cleanup

do.body:                                          ; preds = %for.end199.i.do.body_crit_edge, %do.body180.i, %do.body168.i, %do.body156.i, %do.body136.i, %do.body124.i, %do.body112.i, %do.body100.i, %do.body88.i, %if.end64.i.do.body_crit_edge, %if.then60.i, %if.then50.i, %if.then40.i, %if.then31.i
  call fastcc void @dce60_resource_destruct(ptr noundef %call7.i.i) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_create_resource_pool, i32 noundef 1130) #7
  call void @kgdb_breakpoint() #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %dce60_construct.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dce60_construct.exit.thread ]
  ret ptr %retval.0
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
define dso_local ptr @dce61_create_resource_pool(i8 noundef zeroext %num_virtual_links, ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  %init_data.i = alloca %struct.irq_service_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 516) #10
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
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 41
  %6 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @res_cap_61, ptr %res_cap.i, align 4
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 40
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dce60_res_pool_funcs, ptr %funcs.i, align 8
  %underlay_pipe_index.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 20
  %8 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %underlay_pipe_index.i, align 8
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %pipe_count.i, align 4
  %timing_generator_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 26
  %10 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %timing_generator_count.i, align 8
  %max_downscale_ratio.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %max_downscale_ratio.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 200, ptr %max_downscale_ratio.i, align 4
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 40, ptr %i2c_speed_in_khz.i, align 4
  %max_cursor_size.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 11
  %13 = ptrtoint ptr %max_cursor_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 64, ptr %max_cursor_size.i, align 4
  %is_apu.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 17
  %14 = ptrtoint ptr %is_apu.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_apu.i, align 2
  %15 = load ptr, ptr %dc_bios.i, align 4
  %fw_info_valid.i = getelementptr inbounds %struct.dc_bios, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %fw_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fw_info_valid.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %external_clock_source_frequency_for_dp.i = getelementptr inbounds %struct.dc_bios, ptr %15, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %external_clock_source_frequency_for_dp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %external_clock_source_frequency_for_dp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.dce60_clock_source_create.exit.i_crit_edge, label %if.end.i.i

if.then.i.dce60_clock_source_create.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %2, ptr noundef %15, i32 noundef 4, ptr noundef null, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i.i, label %if.then2.i.i, label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %dp_clk_src4.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %dp_clk_src4.i.i, align 4
  br label %dce60_clock_source_create.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit.i

dce60_clock_source_create.exit.i:                 ; preds = %if.end7.i.i, %if.then2.i.i, %if.then.i.dce60_clock_source_create.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %if.then2.i.i ], [ null, %if.end7.i.i ], [ null, %if.then.i.dce60_clock_source_create.exit.i_crit_edge ]
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %22 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i.i, ptr %dp_clock_source.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i328.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i329.i = icmp eq ptr %call7.i.i.i328.i, null
  br i1 %tobool.not.i329.i, label %dce60_clock_source_create.exit.i.dce60_clock_source_create.exit336.i_crit_edge, label %if.end.i331.i

dce60_clock_source_create.exit.i.dce60_clock_source_create.exit336.i_crit_edge: ; preds = %dce60_clock_source_create.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit336.i

if.end.i331.i:                                    ; preds = %dce60_clock_source_create.exit.i
  %call1.i330.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i328.i, ptr noundef %2, ptr noundef %15, i32 noundef 1, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i330.i, label %if.then2.i333.i, label %if.end7.i334.i

if.then2.i333.i:                                  ; preds = %if.end.i331.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i332.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i328.i, i32 0, i32 3
  %24 = ptrtoint ptr %dp_clk_src4.i332.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %dp_clk_src4.i332.i, align 4
  br label %dce60_clock_source_create.exit336.i

if.end7.i334.i:                                   ; preds = %if.end.i331.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i328.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit336.i

dce60_clock_source_create.exit336.i:              ; preds = %if.end7.i334.i, %if.then2.i333.i, %dce60_clock_source_create.exit.i.dce60_clock_source_create.exit336.i_crit_edge
  %retval.0.i335.i = phi ptr [ %call7.i.i.i328.i, %if.then2.i333.i ], [ null, %if.end7.i334.i ], [ null, %dce60_clock_source_create.exit.i.dce60_clock_source_create.exit336.i_crit_edge ]
  %clock_sources.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %25 = ptrtoint ptr %clock_sources.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i335.i, ptr %clock_sources.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i337.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i338.i = icmp eq ptr %call7.i.i.i337.i, null
  br i1 %tobool.not.i338.i, label %dce60_clock_source_create.exit336.i.dce60_clock_source_create.exit345.i_crit_edge, label %if.end.i340.i

dce60_clock_source_create.exit336.i.dce60_clock_source_create.exit345.i_crit_edge: ; preds = %dce60_clock_source_create.exit336.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit345.i

if.end.i340.i:                                    ; preds = %dce60_clock_source_create.exit336.i
  %call1.i339.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i337.i, ptr noundef %2, ptr noundef %15, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i339.i, label %if.then2.i342.i, label %if.end7.i343.i

if.then2.i342.i:                                  ; preds = %if.end.i340.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i341.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i337.i, i32 0, i32 3
  %27 = ptrtoint ptr %dp_clk_src4.i341.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dp_clk_src4.i341.i, align 4
  br label %dce60_clock_source_create.exit345.i

if.end7.i343.i:                                   ; preds = %if.end.i340.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i337.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit345.i

dce60_clock_source_create.exit345.i:              ; preds = %if.end7.i343.i, %if.then2.i342.i, %dce60_clock_source_create.exit336.i.dce60_clock_source_create.exit345.i_crit_edge
  %retval.0.i344.i = phi ptr [ %call7.i.i.i337.i, %if.then2.i342.i ], [ null, %if.end7.i343.i ], [ null, %dce60_clock_source_create.exit336.i.dce60_clock_source_create.exit345.i_crit_edge ]
  %arrayidx16.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %28 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i344.i, ptr %arrayidx16.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i346.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i347.i = icmp eq ptr %call7.i.i.i346.i, null
  br i1 %tobool.not.i347.i, label %dce60_clock_source_create.exit345.i.dce60_clock_source_create.exit354.i_crit_edge, label %if.end.i349.i

dce60_clock_source_create.exit345.i.dce60_clock_source_create.exit354.i_crit_edge: ; preds = %dce60_clock_source_create.exit345.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit354.i

if.end.i349.i:                                    ; preds = %dce60_clock_source_create.exit345.i
  %call1.i348.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i346.i, ptr noundef %2, ptr noundef %15, i32 noundef 3, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 2), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i348.i, label %if.then2.i351.i, label %if.end7.i352.i

if.then2.i351.i:                                  ; preds = %if.end.i349.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i350.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i346.i, i32 0, i32 3
  %30 = ptrtoint ptr %dp_clk_src4.i350.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %dp_clk_src4.i350.i, align 4
  br label %dce60_clock_source_create.exit354.i

if.end7.i352.i:                                   ; preds = %if.end.i349.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i346.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit354.i

dce60_clock_source_create.exit354.i:              ; preds = %if.end7.i352.i, %if.then2.i351.i, %dce60_clock_source_create.exit345.i.dce60_clock_source_create.exit354.i_crit_edge
  %retval.0.i353.i = phi ptr [ %call7.i.i.i346.i, %if.then2.i351.i ], [ null, %if.end7.i352.i ], [ null, %dce60_clock_source_create.exit345.i.dce60_clock_source_create.exit354.i_crit_edge ]
  %arrayidx20.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 2
  %31 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %retval.0.i353.i, ptr %arrayidx20.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i355.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i356.i = icmp eq ptr %call7.i.i.i355.i, null
  br i1 %tobool.not.i356.i, label %if.else.i.dce60_clock_source_create.exit363.i_crit_edge, label %if.end.i358.i

if.else.i.dce60_clock_source_create.exit363.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit363.i

if.end.i358.i:                                    ; preds = %if.else.i
  %call1.i357.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i355.i, ptr noundef %2, ptr noundef %15, i32 noundef 1, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i357.i, label %if.then2.i360.i, label %if.end7.i361.i

if.then2.i360.i:                                  ; preds = %if.end.i358.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i359.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i355.i, i32 0, i32 3
  %33 = ptrtoint ptr %dp_clk_src4.i359.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dp_clk_src4.i359.i, align 4
  br label %dce60_clock_source_create.exit363.i

if.end7.i361.i:                                   ; preds = %if.end.i358.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i355.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit363.i

dce60_clock_source_create.exit363.i:              ; preds = %if.end7.i361.i, %if.then2.i360.i, %if.else.i.dce60_clock_source_create.exit363.i_crit_edge
  %retval.0.i362.i = phi ptr [ %call7.i.i.i355.i, %if.then2.i360.i ], [ null, %if.end7.i361.i ], [ null, %if.else.i.dce60_clock_source_create.exit363.i_crit_edge ]
  %dp_clock_source24.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %34 = ptrtoint ptr %dp_clock_source24.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i362.i, ptr %dp_clock_source24.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i364.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i365.i = icmp eq ptr %call7.i.i.i364.i, null
  br i1 %tobool.not.i365.i, label %dce60_clock_source_create.exit363.i.dce60_clock_source_create.exit372.i_crit_edge, label %if.end.i367.i

dce60_clock_source_create.exit363.i.dce60_clock_source_create.exit372.i_crit_edge: ; preds = %dce60_clock_source_create.exit363.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit372.i

if.end.i367.i:                                    ; preds = %dce60_clock_source_create.exit363.i
  %call1.i366.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i364.i, ptr noundef %2, ptr noundef %15, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i366.i, label %if.then2.i369.i, label %if.end7.i370.i

if.then2.i369.i:                                  ; preds = %if.end.i367.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i368.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i364.i, i32 0, i32 3
  %36 = ptrtoint ptr %dp_clk_src4.i368.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %dp_clk_src4.i368.i, align 4
  br label %dce60_clock_source_create.exit372.i

if.end7.i370.i:                                   ; preds = %if.end.i367.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i364.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit372.i

dce60_clock_source_create.exit372.i:              ; preds = %if.end7.i370.i, %if.then2.i369.i, %dce60_clock_source_create.exit363.i.dce60_clock_source_create.exit372.i_crit_edge
  %retval.0.i371.i = phi ptr [ %call7.i.i.i364.i, %if.then2.i369.i ], [ null, %if.end7.i370.i ], [ null, %dce60_clock_source_create.exit363.i.dce60_clock_source_create.exit372.i_crit_edge ]
  %clock_sources27.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %37 = ptrtoint ptr %clock_sources27.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i371.i, ptr %clock_sources27.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i373.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i374.i = icmp eq ptr %call7.i.i.i373.i, null
  br i1 %tobool.not.i374.i, label %dce60_clock_source_create.exit372.i.dce60_clock_source_create.exit381.i_crit_edge, label %if.end.i376.i

dce60_clock_source_create.exit372.i.dce60_clock_source_create.exit381.i_crit_edge: ; preds = %dce60_clock_source_create.exit372.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit381.i

if.end.i376.i:                                    ; preds = %dce60_clock_source_create.exit372.i
  %call1.i375.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i373.i, ptr noundef %2, ptr noundef %15, i32 noundef 3, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 2), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i375.i, label %if.then2.i378.i, label %if.end7.i379.i

if.then2.i378.i:                                  ; preds = %if.end.i376.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i377.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i373.i, i32 0, i32 3
  %39 = ptrtoint ptr %dp_clk_src4.i377.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %dp_clk_src4.i377.i, align 4
  br label %dce60_clock_source_create.exit381.i

if.end7.i379.i:                                   ; preds = %if.end.i376.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i373.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit381.i

dce60_clock_source_create.exit381.i:              ; preds = %if.end7.i379.i, %if.then2.i378.i, %dce60_clock_source_create.exit372.i.dce60_clock_source_create.exit381.i_crit_edge
  %retval.0.i380.i = phi ptr [ %call7.i.i.i373.i, %if.then2.i378.i ], [ null, %if.end7.i379.i ], [ null, %dce60_clock_source_create.exit372.i.dce60_clock_source_create.exit381.i_crit_edge ]
  %arrayidx32.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %40 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %retval.0.i380.i, ptr %arrayidx32.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %dce60_clock_source_create.exit381.i, %dce60_clock_source_create.exit354.i
  %exitcond.not.i.1 = phi i1 [ true, %dce60_clock_source_create.exit381.i ], [ false, %dce60_clock_source_create.exit354.i ]
  %.sink.i = phi i32 [ 2, %dce60_clock_source_create.exit381.i ], [ 3, %dce60_clock_source_create.exit354.i ]
  %clk_src_count34.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 31
  %41 = ptrtoint ptr %clk_src_count34.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink.i, ptr %clk_src_count34.i, align 4
  %dp_clock_source36.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %42 = ptrtoint ptr %dp_clock_source36.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dp_clock_source36.i, align 4
  %cmp37.i = icmp eq ptr %43, null
  br i1 %cmp37.i, label %if.then38.i, label %for.body.i

if.then38.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1191) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.body.i.1:                                     ; preds = %for.body.i
  %arrayidx45.i.1 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %44 = ptrtoint ptr %arrayidx45.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx45.i.1, align 4
  %cmp46.i.1 = icmp eq ptr %45, null
  br i1 %cmp46.i.1, label %for.body.i.1.if.then47.i_crit_edge, label %for.cond.i.1

for.body.i.1.if.then47.i_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47.i

for.cond.i.1:                                     ; preds = %for.body.i.1
  br i1 %exitcond.not.i.1, label %for.cond.i.1.for.end.i_crit_edge, label %for.body.i.2

for.cond.i.1.for.end.i_crit_edge:                 ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.cond.i.1
  %arrayidx45.i.2 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 2
  %46 = ptrtoint ptr %arrayidx45.i.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx45.i.2, align 8
  %cmp46.i.2 = icmp eq ptr %47, null
  br i1 %cmp46.i.2, label %for.body.i.2.if.then47.i_crit_edge, label %for.body.i.2.for.end.i_crit_edge

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.2.if.then47.i_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47.i

for.body.i:                                       ; preds = %if.end.i
  %arrayidx45.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 0
  %48 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx45.i, align 8
  %cmp46.i = icmp eq ptr %49, null
  br i1 %cmp46.i, label %for.body.i.if.then47.i_crit_edge, label %for.body.i.1

for.body.i.if.then47.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47.i

if.then47.i:                                      ; preds = %for.body.i.if.then47.i_crit_edge, %for.body.i.2.if.then47.i_crit_edge, %for.body.i.1.if.then47.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1198) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.end.i:                                        ; preds = %for.body.i.2.for.end.i_crit_edge, %for.cond.i.1.for.end.i_crit_edge
  %call52.i = tail call ptr @dce_dmcu_create(ptr noundef %2, ptr noundef nonnull @dmcu_regs, ptr noundef nonnull @dmcu_shift, ptr noundef nonnull @dmcu_mask) #7
  %dmcu.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 38
  %50 = ptrtoint ptr %dmcu.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call52.i, ptr %dmcu.i, align 8
  %cmp56.i = icmp eq ptr %call52.i, null
  br i1 %cmp56.i, label %if.then57.i, label %if.end61.i

if.then57.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1209) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end61.i:                                       ; preds = %for.end.i
  %call62.i = tail call ptr @dce_abm_create(ptr noundef %2, ptr noundef nonnull @abm_regs, ptr noundef nonnull @abm_shift, ptr noundef nonnull @abm_mask) #7
  %abm.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 37
  %51 = ptrtoint ptr %abm.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call62.i, ptr %abm.i, align 4
  %cmp66.i = icmp eq ptr %call62.i, null
  br i1 %cmp66.i, label %if.then67.i, label %if.end71.i

if.then67.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1219) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end71.i:                                       ; preds = %if.end61.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_data.i) #7
  %52 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx1.i, align 8
  %54 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %init_data.i, align 4
  %call74.i = call ptr @dal_irq_service_dce60_create(ptr noundef nonnull %init_data.i) #7
  %irqs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 36
  %55 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call74.i, ptr %irqs.i, align 8
  %tobool78.not.i = icmp eq ptr %call74.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_data.i) #7
  br i1 %tobool78.not.i, label %if.end71.i.do.body_crit_edge, label %for.cond81.preheader.i

if.end71.i.do.body_crit_edge:                     ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond81.preheader.i:                           ; preds = %if.end71.i
  %56 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp84442.not.i = icmp eq i32 %57, 0
  br i1 %cmp84442.not.i, label %for.cond81.preheader.i.for.cond150.preheader.i_crit_edge, label %for.cond81.preheader.i.for.body85.i_crit_edge

for.cond81.preheader.i.for.body85.i_crit_edge:    ; preds = %for.cond81.preheader.i
  br label %for.body85.i

for.cond81.preheader.i.for.cond150.preheader.i_crit_edge: ; preds = %for.cond81.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond150.preheader.i

for.cond150.preheader.i:                          ; preds = %for.inc147.i.for.cond150.preheader.i_crit_edge, %for.cond81.preheader.i.for.cond150.preheader.i_crit_edge
  %58 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %res_cap.i, align 4
  %num_ddc444.i = getelementptr inbounds %struct.resource_caps, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %num_ddc444.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_ddc444.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp153445.not.i = icmp eq i32 %61, 0
  br i1 %cmp153445.not.i, label %for.cond150.preheader.i.for.end193.i_crit_edge, label %for.cond150.preheader.i.for.body154.i_crit_edge

for.cond150.preheader.i.for.body154.i_crit_edge:  ; preds = %for.cond150.preheader.i
  br label %for.body154.i

for.cond150.preheader.i.for.end193.i_crit_edge:   ; preds = %for.cond150.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end193.i

for.body85.i:                                     ; preds = %for.inc147.i.for.body85.i_crit_edge, %for.cond81.preheader.i.for.body85.i_crit_edge
  %i.1443.i = phi i32 [ %inc148.i, %for.inc147.i.for.body85.i_crit_edge ], [ 0, %for.cond81.preheader.i.for.body85.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i382.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i383.i = icmp eq ptr %call7.i.i.i382.i, null
  br i1 %tobool.not.i383.i, label %do.body95.i, label %if.end98.i

do.body95.i:                                      ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx89411.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1443.i
  %63 = ptrtoint ptr %arrayidx89411.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx89411.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1235) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #7
  br label %do.body

if.end98.i:                                       ; preds = %for.body85.i
  %arrayidx86.i = getelementptr [6 x %struct.dce110_timing_generator_offsets], ptr @dce60_tg_offsets, i32 0, i32 %i.1443.i
  call void @dce60_timing_generator_construct(ptr noundef nonnull %call7.i.i.i382.i, ptr noundef %2, i32 noundef %i.1443.i, ptr noundef %arrayidx86.i) #7
  %arrayidx89.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1443.i
  %64 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i.i382.i, ptr %arrayidx89.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i385.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 272) #10
  %tobool.not.i386.i = icmp eq ptr %call7.i.i.i385.i, null
  br i1 %tobool.not.i386.i, label %do.body107.i, label %if.end110.i

do.body107.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_mem_input_create, i32 noundef 674) #7
  call void @kgdb_breakpoint() #7
  %arrayidx101412.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1443.i
  %66 = ptrtoint ptr %arrayidx101412.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx101412.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1242) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #7
  br label %do.body

if.end110.i:                                      ; preds = %if.end98.i
  %arrayidx.i.i = getelementptr [6 x %struct.dce_mem_input_registers], ptr @mi_regs, i32 0, i32 %i.1443.i
  call void @dce60_mem_input_construct(ptr noundef nonnull %call7.i.i.i385.i, ptr noundef %2, i32 noundef %i.1443.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mi_shifts, ptr noundef nonnull @mi_masks) #7
  %wa.i.i = getelementptr inbounds %struct.dce_mem_input, ptr %call7.i.i.i385.i, i32 0, i32 4
  %67 = ptrtoint ptr %wa.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 2, ptr %wa.i.i, align 4
  %arrayidx101.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1443.i
  %68 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i.i385.i, ptr %arrayidx101.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i388.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i389.i = icmp eq ptr %call7.i.i.i388.i, null
  br i1 %tobool.not.i389.i, label %do.body119.i, label %if.end122.i

do.body119.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_ipp_create, i32 noundef 787) #7
  call void @kgdb_breakpoint() #7
  %arrayidx113413.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1443.i
  %70 = ptrtoint ptr %arrayidx113413.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %arrayidx113413.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1249) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %do.body

if.end122.i:                                      ; preds = %if.end110.i
  %arrayidx.i391.i = getelementptr [6 x %struct.dce_ipp_registers], ptr @ipp_regs, i32 0, i32 %i.1443.i
  call void @dce60_ipp_construct(ptr noundef nonnull %call7.i.i.i388.i, ptr noundef %2, i32 noundef %i.1443.i, ptr noundef %arrayidx.i391.i, ptr noundef nonnull @ipp_shift, ptr noundef nonnull @ipp_mask) #7
  %arrayidx113.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1443.i
  %71 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i.i388.i, ptr %arrayidx113.i, align 4
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19280, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i393.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i393.i, label %do.body131.i, label %if.end134.i

do.body131.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx125414.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1443.i
  %72 = ptrtoint ptr %arrayidx125414.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx125414.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1256) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %do.body

if.end134.i:                                      ; preds = %if.end122.i
  %arrayidx.i394.i = getelementptr [6 x %struct.dce_transform_registers], ptr @xfm_regs, i32 0, i32 %i.1443.i
  call void @dce60_transform_construct(ptr noundef nonnull %call1.i.i.i.i.i, ptr noundef %2, i32 noundef %i.1443.i, ptr noundef %arrayidx.i394.i, ptr noundef nonnull @xfm_shift, ptr noundef nonnull @xfm_mask) #7
  %prescaler_on.i.i = getelementptr inbounds %struct.dce_transform, ptr %call1.i.i.i.i.i, i32 0, i32 11
  %73 = ptrtoint ptr %prescaler_on.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %prescaler_on.i.i, align 8
  %arrayidx125.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1443.i
  %74 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx125.i, align 4
  %call1.i.i.i.i396.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19264, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i397.i = icmp eq ptr %call1.i.i.i.i396.i, null
  br i1 %tobool.not.i397.i, label %do.body143.i, label %for.inc147.i

do.body143.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx137415.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1443.i
  %75 = ptrtoint ptr %arrayidx137415.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arrayidx137415.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1263) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %do.body

for.inc147.i:                                     ; preds = %if.end134.i
  %arrayidx.i398.i = getelementptr [6 x %struct.dce_opp_registers], ptr @opp_regs, i32 0, i32 %i.1443.i
  call void @dce60_opp_construct(ptr noundef nonnull %call1.i.i.i.i396.i, ptr noundef %2, i32 noundef %i.1443.i, ptr noundef %arrayidx.i398.i, ptr noundef nonnull @opp_shift, ptr noundef nonnull @opp_mask) #7
  %arrayidx137.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1443.i
  %76 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call1.i.i.i.i396.i, ptr %arrayidx137.i, align 4
  %inc148.i = add nuw i32 %i.1443.i, 1
  %77 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pipe_count.i, align 4
  %cmp84.i = icmp ult i32 %inc148.i, %78
  br i1 %cmp84.i, label %for.inc147.i.for.body85.i_crit_edge, label %for.inc147.i.for.cond150.preheader.i_crit_edge

for.inc147.i.for.cond150.preheader.i_crit_edge:   ; preds = %for.inc147.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond150.preheader.i

for.inc147.i.for.body85.i_crit_edge:              ; preds = %for.inc147.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body85.i

for.body154.i:                                    ; preds = %for.inc191.i.for.body154.i_crit_edge, %for.cond150.preheader.i.for.body154.i_crit_edge
  %i.2446.i = phi i32 [ %inc192.i, %for.inc191.i.for.body154.i_crit_edge ], [ 0, %for.cond150.preheader.i.for.body154.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i400.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i401.i = icmp eq ptr %call7.i.i.i400.i, null
  br i1 %tobool.not.i401.i, label %do.body163.i, label %if.end166.i

do.body163.i:                                     ; preds = %for.body154.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx157416.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2446.i
  %80 = ptrtoint ptr %arrayidx157416.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx157416.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1272) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %do.body

if.end166.i:                                      ; preds = %for.body154.i
  %arrayidx.i402.i = getelementptr [6 x %struct.dce110_aux_registers], ptr @aux_engine_regs, i32 0, i32 %i.2446.i
  %81 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %2, align 8
  %extended_aux_timeout_support.i.i = getelementptr inbounds %struct.dc, ptr %82, i32 0, i32 2, i32 23
  %83 = ptrtoint ptr %extended_aux_timeout_support.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %extended_aux_timeout_support.i.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool1.i.i = icmp ne i8 %84, 0
  %call2.i.i = call ptr @dce110_aux_engine_construct(ptr noundef nonnull %call7.i.i.i400.i, ptr noundef %2, i32 noundef %i.2446.i, i32 noundef 2400, ptr noundef %arrayidx.i402.i, ptr noundef nonnull @aux_mask, ptr noundef nonnull @aux_shift, i1 noundef zeroext %tobool1.i.i) #7
  %arrayidx157.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2446.i
  %85 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call7.i.i.i400.i, ptr %arrayidx157.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i404.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not.i405.i = icmp eq ptr %call7.i.i.i404.i, null
  br i1 %tobool.not.i405.i, label %do.body175.i, label %if.end178.i

do.body175.i:                                     ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx169417.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2446.i
  %87 = ptrtoint ptr %arrayidx169417.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %arrayidx169417.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1279) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %do.body

if.end178.i:                                      ; preds = %if.end166.i
  %arrayidx.i406.i = getelementptr [6 x %struct.dce_i2c_registers], ptr @i2c_hw_regs, i32 0, i32 %i.2446.i
  call void @dce_i2c_hw_construct(ptr noundef nonnull %call7.i.i.i404.i, ptr noundef %2, i32 noundef %i.2446.i, ptr noundef %arrayidx.i406.i, ptr noundef nonnull @i2c_shifts, ptr noundef nonnull @i2c_masks) #7
  %arrayidx169.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2446.i
  %88 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i.i404.i, ptr %arrayidx169.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i408.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not.i409.i = icmp eq ptr %call7.i.i.i408.i, null
  br i1 %tobool.not.i409.i, label %do.body187.i, label %for.inc191.i

do.body187.i:                                     ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx181418.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2446.i
  %90 = ptrtoint ptr %arrayidx181418.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %arrayidx181418.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_construct, i32 noundef 1286) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %do.body

for.inc191.i:                                     ; preds = %if.end178.i
  call void @dce_i2c_sw_construct(ptr noundef nonnull %call7.i.i.i408.i, ptr noundef %2) #7
  %arrayidx181.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2446.i
  %91 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i.i408.i, ptr %arrayidx181.i, align 4
  %inc192.i = add nuw i32 %i.2446.i, 1
  %92 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %res_cap.i, align 4
  %num_ddc.i = getelementptr inbounds %struct.resource_caps, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %num_ddc.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_ddc.i, align 4
  %cmp153.i = icmp ult i32 %inc192.i, %95
  br i1 %cmp153.i, label %for.inc191.i.for.body154.i_crit_edge, label %for.inc191.i.for.end193.i_crit_edge

for.inc191.i.for.end193.i_crit_edge:              ; preds = %for.inc191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end193.i

for.inc191.i.for.body154.i_crit_edge:             ; preds = %for.inc191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body154.i

for.end193.i:                                     ; preds = %for.inc191.i.for.end193.i_crit_edge, %for.cond150.preheader.i.for.end193.i_crit_edge
  %96 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pipe_count.i, align 4
  %max_planes.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 6
  %98 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %max_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp200447.not.i = icmp eq i32 %97, 0
  br i1 %cmp200447.not.i, label %for.end193.i.for.end206.i_crit_edge, label %for.end193.i.for.body201.i_crit_edge

for.end193.i.for.body201.i_crit_edge:             ; preds = %for.end193.i
  br label %for.body201.i

for.end193.i.for.end206.i_crit_edge:              ; preds = %for.end193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end206.i

for.body201.i:                                    ; preds = %for.body201.i.for.body201.i_crit_edge, %for.end193.i.for.body201.i_crit_edge
  %i.3448.i = phi i32 [ %inc205.i, %for.body201.i.for.body201.i_crit_edge ], [ 0, %for.end193.i.for.body201.i_crit_edge ]
  %arrayidx203.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 2, i32 30, i32 %i.3448.i
  %99 = call ptr @memcpy(ptr %arrayidx203.i, ptr @plane_cap, i32 44)
  %inc205.i = add nuw i32 %i.3448.i, 1
  %100 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %max_planes.i, align 4
  %cmp200.i = icmp ult i32 %inc205.i, %101
  br i1 %cmp200.i, label %for.body201.i.for.body201.i_crit_edge, label %for.body201.i.for.end206.i_crit_edge

for.body201.i.for.end206.i_crit_edge:             ; preds = %for.body201.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end206.i

for.body201.i.for.body201.i_crit_edge:            ; preds = %for.body201.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body201.i

for.end206.i:                                     ; preds = %for.body201.i.for.end206.i_crit_edge, %for.end193.i.for.end206.i_crit_edge
  %disable_dp_clk_share.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 21
  %102 = ptrtoint ptr %disable_dp_clk_share.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %disable_dp_clk_share.i, align 2
  %conv.i = zext i8 %num_virtual_links to i32
  %call209.i = call zeroext i1 @resource_construct(i32 noundef %conv.i, ptr noundef %dc, ptr noundef %call7.i.i, ptr noundef nonnull @res_create_funcs) #7
  br i1 %call209.i, label %dce61_construct.exit.thread, label %for.end206.i.do.body_crit_edge

for.end206.i.do.body_crit_edge:                   ; preds = %for.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

dce61_construct.exit.thread:                      ; preds = %for.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dce60_hw_sequencer_construct(ptr noundef %dc) #7
  br label %cleanup

do.body:                                          ; preds = %for.end206.i.do.body_crit_edge, %do.body187.i, %do.body175.i, %do.body163.i, %do.body143.i, %do.body131.i, %do.body119.i, %do.body107.i, %do.body95.i, %if.end71.i.do.body_crit_edge, %if.then67.i, %if.then57.i, %if.then47.i, %if.then38.i
  call fastcc void @dce60_resource_destruct(ptr noundef %call7.i.i) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce61_create_resource_pool, i32 noundef 1327) #7
  call void @kgdb_breakpoint() #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %dce61_construct.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dce61_construct.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dce64_create_resource_pool(i8 noundef zeroext %num_virtual_links, ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  %init_data.i = alloca %struct.irq_service_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 516) #10
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
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 41
  %6 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @res_cap_64, ptr %res_cap.i, align 4
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 40
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dce60_res_pool_funcs, ptr %funcs.i, align 8
  %underlay_pipe_index.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 20
  %8 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %underlay_pipe_index.i, align 8
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %pipe_count.i, align 4
  %timing_generator_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 26
  %10 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %timing_generator_count.i, align 8
  %max_downscale_ratio.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %max_downscale_ratio.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 200, ptr %max_downscale_ratio.i, align 4
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 40, ptr %i2c_speed_in_khz.i, align 4
  %max_cursor_size.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 11
  %13 = ptrtoint ptr %max_cursor_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 64, ptr %max_cursor_size.i, align 4
  %is_apu.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 17
  %14 = ptrtoint ptr %is_apu.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_apu.i, align 2
  %15 = load ptr, ptr %dc_bios.i, align 4
  %fw_info_valid.i = getelementptr inbounds %struct.dc_bios, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %fw_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fw_info_valid.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %external_clock_source_frequency_for_dp.i = getelementptr inbounds %struct.dc_bios, ptr %15, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %external_clock_source_frequency_for_dp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %external_clock_source_frequency_for_dp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.dce60_clock_source_create.exit.i_crit_edge, label %if.end.i.i

if.then.i.dce60_clock_source_create.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %2, ptr noundef %15, i32 noundef 4, ptr noundef null, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i.i, label %if.then2.i.i, label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %dp_clk_src4.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %dp_clk_src4.i.i, align 4
  br label %dce60_clock_source_create.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit.i

dce60_clock_source_create.exit.i:                 ; preds = %if.end7.i.i, %if.then2.i.i, %if.then.i.dce60_clock_source_create.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %if.then2.i.i ], [ null, %if.end7.i.i ], [ null, %if.then.i.dce60_clock_source_create.exit.i_crit_edge ]
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %22 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i.i, ptr %dp_clock_source.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i314.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i315.i = icmp eq ptr %call7.i.i.i314.i, null
  br i1 %tobool.not.i315.i, label %dce60_clock_source_create.exit.i.dce60_clock_source_create.exit322.i_crit_edge, label %if.end.i317.i

dce60_clock_source_create.exit.i.dce60_clock_source_create.exit322.i_crit_edge: ; preds = %dce60_clock_source_create.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit322.i

if.end.i317.i:                                    ; preds = %dce60_clock_source_create.exit.i
  %call1.i316.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i314.i, ptr noundef %2, ptr noundef %15, i32 noundef 2, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i316.i, label %if.then2.i319.i, label %if.end7.i320.i

if.then2.i319.i:                                  ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i318.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i314.i, i32 0, i32 3
  %24 = ptrtoint ptr %dp_clk_src4.i318.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %dp_clk_src4.i318.i, align 4
  br label %dce60_clock_source_create.exit322.i

if.end7.i320.i:                                   ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i314.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit322.i

dce60_clock_source_create.exit322.i:              ; preds = %if.end7.i320.i, %if.then2.i319.i, %dce60_clock_source_create.exit.i.dce60_clock_source_create.exit322.i_crit_edge
  %retval.0.i321.i = phi ptr [ %call7.i.i.i314.i, %if.then2.i319.i ], [ null, %if.end7.i320.i ], [ null, %dce60_clock_source_create.exit.i.dce60_clock_source_create.exit322.i_crit_edge ]
  %clock_sources.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %25 = ptrtoint ptr %clock_sources.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i321.i, ptr %clock_sources.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i323.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i324.i = icmp eq ptr %call7.i.i.i323.i, null
  br i1 %tobool.not.i324.i, label %dce60_clock_source_create.exit322.i.dce60_clock_source_create.exit331.i_crit_edge, label %if.end.i326.i

dce60_clock_source_create.exit322.i.dce60_clock_source_create.exit331.i_crit_edge: ; preds = %dce60_clock_source_create.exit322.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit331.i

if.end.i326.i:                                    ; preds = %dce60_clock_source_create.exit322.i
  %call1.i325.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i323.i, ptr noundef %2, ptr noundef %15, i32 noundef 3, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i325.i, label %if.then2.i328.i, label %if.end7.i329.i

if.then2.i328.i:                                  ; preds = %if.end.i326.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i327.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i323.i, i32 0, i32 3
  %27 = ptrtoint ptr %dp_clk_src4.i327.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dp_clk_src4.i327.i, align 4
  br label %dce60_clock_source_create.exit331.i

if.end7.i329.i:                                   ; preds = %if.end.i326.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i323.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit331.i

dce60_clock_source_create.exit331.i:              ; preds = %if.end7.i329.i, %if.then2.i328.i, %dce60_clock_source_create.exit322.i.dce60_clock_source_create.exit331.i_crit_edge
  %retval.0.i330.i = phi ptr [ %call7.i.i.i323.i, %if.then2.i328.i ], [ null, %if.end7.i329.i ], [ null, %dce60_clock_source_create.exit322.i.dce60_clock_source_create.exit331.i_crit_edge ]
  %arrayidx16.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %28 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i330.i, ptr %arrayidx16.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i332.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i333.i = icmp eq ptr %call7.i.i.i332.i, null
  br i1 %tobool.not.i333.i, label %if.else.i.dce60_clock_source_create.exit340.i_crit_edge, label %if.end.i335.i

if.else.i.dce60_clock_source_create.exit340.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit340.i

if.end.i335.i:                                    ; preds = %if.else.i
  %call1.i334.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i332.i, ptr noundef %2, ptr noundef %15, i32 noundef 2, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i334.i, label %if.then2.i337.i, label %if.end7.i338.i

if.then2.i337.i:                                  ; preds = %if.end.i335.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i336.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i332.i, i32 0, i32 3
  %30 = ptrtoint ptr %dp_clk_src4.i336.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %dp_clk_src4.i336.i, align 4
  br label %dce60_clock_source_create.exit340.i

if.end7.i338.i:                                   ; preds = %if.end.i335.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i332.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit340.i

dce60_clock_source_create.exit340.i:              ; preds = %if.end7.i338.i, %if.then2.i337.i, %if.else.i.dce60_clock_source_create.exit340.i_crit_edge
  %retval.0.i339.i = phi ptr [ %call7.i.i.i332.i, %if.then2.i337.i ], [ null, %if.end7.i338.i ], [ null, %if.else.i.dce60_clock_source_create.exit340.i_crit_edge ]
  %dp_clock_source20.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %31 = ptrtoint ptr %dp_clock_source20.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %retval.0.i339.i, ptr %dp_clock_source20.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i341.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i342.i = icmp eq ptr %call7.i.i.i341.i, null
  br i1 %tobool.not.i342.i, label %dce60_clock_source_create.exit340.i.dce60_clock_source_create.exit349.i_crit_edge, label %if.end.i344.i

dce60_clock_source_create.exit340.i.dce60_clock_source_create.exit349.i_crit_edge: ; preds = %dce60_clock_source_create.exit340.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_clock_source_create.exit349.i

if.end.i344.i:                                    ; preds = %dce60_clock_source_create.exit340.i
  %call1.i343.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i341.i, ptr noundef %2, ptr noundef %15, i32 noundef 3, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i343.i, label %if.then2.i346.i, label %if.end7.i347.i

if.then2.i346.i:                                  ; preds = %if.end.i344.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i345.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i341.i, i32 0, i32 3
  %33 = ptrtoint ptr %dp_clk_src4.i345.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %dp_clk_src4.i345.i, align 4
  br label %dce60_clock_source_create.exit349.i

if.end7.i347.i:                                   ; preds = %if.end.i344.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i341.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_clock_source_create, i32 noundef 771) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce60_clock_source_create.exit349.i

dce60_clock_source_create.exit349.i:              ; preds = %if.end7.i347.i, %if.then2.i346.i, %dce60_clock_source_create.exit340.i.dce60_clock_source_create.exit349.i_crit_edge
  %retval.0.i348.i = phi ptr [ %call7.i.i.i341.i, %if.then2.i346.i ], [ null, %if.end7.i347.i ], [ null, %dce60_clock_source_create.exit340.i.dce60_clock_source_create.exit349.i_crit_edge ]
  %clock_sources23.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %34 = ptrtoint ptr %clock_sources23.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i348.i, ptr %clock_sources23.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %dce60_clock_source_create.exit349.i, %dce60_clock_source_create.exit331.i
  %exitcond.not.i = phi i1 [ true, %dce60_clock_source_create.exit349.i ], [ false, %dce60_clock_source_create.exit331.i ]
  %.sink.i = phi i32 [ 1, %dce60_clock_source_create.exit349.i ], [ 2, %dce60_clock_source_create.exit331.i ]
  %clk_src_count26.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 31
  %35 = ptrtoint ptr %clk_src_count26.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %clk_src_count26.i, align 4
  %dp_clock_source28.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %36 = ptrtoint ptr %dp_clock_source28.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dp_clock_source28.i, align 4
  %cmp29.i = icmp eq ptr %37, null
  br i1 %cmp29.i, label %if.then30.i, label %for.body.i

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1384) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.cond.i:                                       ; preds = %for.body.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i.1

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.cond.i
  %arrayidx37.i.1 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %38 = ptrtoint ptr %arrayidx37.i.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx37.i.1, align 4
  %cmp38.i.1 = icmp eq ptr %39, null
  br i1 %cmp38.i.1, label %for.body.i.1.if.then39.i_crit_edge, label %for.body.i.1.for.end.i_crit_edge

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.1.if.then39.i_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

for.body.i:                                       ; preds = %if.end.i
  %arrayidx37.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 0
  %40 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx37.i, align 8
  %cmp38.i = icmp eq ptr %41, null
  br i1 %cmp38.i, label %for.body.i.if.then39.i_crit_edge, label %for.cond.i

for.body.i.if.then39.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

if.then39.i:                                      ; preds = %for.body.i.if.then39.i_crit_edge, %for.body.i.1.if.then39.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1391) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.end.i:                                        ; preds = %for.body.i.1.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %call44.i = tail call ptr @dce_dmcu_create(ptr noundef %2, ptr noundef nonnull @dmcu_regs, ptr noundef nonnull @dmcu_shift, ptr noundef nonnull @dmcu_mask) #7
  %dmcu.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 38
  %42 = ptrtoint ptr %dmcu.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call44.i, ptr %dmcu.i, align 8
  %cmp48.i = icmp eq ptr %call44.i, null
  br i1 %cmp48.i, label %if.then49.i, label %if.end53.i

if.then49.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1402) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end53.i:                                       ; preds = %for.end.i
  %call54.i = tail call ptr @dce_abm_create(ptr noundef %2, ptr noundef nonnull @abm_regs, ptr noundef nonnull @abm_shift, ptr noundef nonnull @abm_mask) #7
  %abm.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 37
  %43 = ptrtoint ptr %abm.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call54.i, ptr %abm.i, align 4
  %cmp58.i = icmp eq ptr %call54.i, null
  br i1 %cmp58.i, label %if.then59.i, label %if.end63.i

if.then59.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1412) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end63.i:                                       ; preds = %if.end53.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_data.i) #7
  %44 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx1.i, align 8
  %46 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %init_data.i, align 4
  %call66.i = call ptr @dal_irq_service_dce60_create(ptr noundef nonnull %init_data.i) #7
  %irqs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 36
  %47 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call66.i, ptr %irqs.i, align 8
  %tobool70.not.i = icmp eq ptr %call66.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_data.i) #7
  br i1 %tobool70.not.i, label %if.end63.i.do.body_crit_edge, label %for.cond73.preheader.i

if.end63.i.do.body_crit_edge:                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond73.preheader.i:                           ; preds = %if.end63.i
  %48 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp76410.not.i = icmp eq i32 %49, 0
  br i1 %cmp76410.not.i, label %for.cond73.preheader.i.for.cond142.preheader.i_crit_edge, label %for.cond73.preheader.i.for.body77.i_crit_edge

for.cond73.preheader.i.for.body77.i_crit_edge:    ; preds = %for.cond73.preheader.i
  br label %for.body77.i

for.cond73.preheader.i.for.cond142.preheader.i_crit_edge: ; preds = %for.cond73.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond142.preheader.i

for.cond142.preheader.i:                          ; preds = %for.inc139.i.for.cond142.preheader.i_crit_edge, %for.cond73.preheader.i.for.cond142.preheader.i_crit_edge
  %50 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %res_cap.i, align 4
  %num_ddc412.i = getelementptr inbounds %struct.resource_caps, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %num_ddc412.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_ddc412.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp145413.not.i = icmp eq i32 %53, 0
  br i1 %cmp145413.not.i, label %for.cond142.preheader.i.for.end185.i_crit_edge, label %for.cond142.preheader.i.for.body146.i_crit_edge

for.cond142.preheader.i.for.body146.i_crit_edge:  ; preds = %for.cond142.preheader.i
  br label %for.body146.i

for.cond142.preheader.i.for.end185.i_crit_edge:   ; preds = %for.cond142.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end185.i

for.body77.i:                                     ; preds = %for.inc139.i.for.body77.i_crit_edge, %for.cond73.preheader.i.for.body77.i_crit_edge
  %i.1411.i = phi i32 [ %inc140.i, %for.inc139.i.for.body77.i_crit_edge ], [ 0, %for.cond73.preheader.i.for.body77.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i350.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i351.i = icmp eq ptr %call7.i.i.i350.i, null
  br i1 %tobool.not.i351.i, label %do.body87.i, label %if.end90.i

do.body87.i:                                      ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx81379.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1411.i
  %55 = ptrtoint ptr %arrayidx81379.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx81379.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1428) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #7
  br label %do.body

if.end90.i:                                       ; preds = %for.body77.i
  %arrayidx78.i = getelementptr [6 x %struct.dce110_timing_generator_offsets], ptr @dce60_tg_offsets, i32 0, i32 %i.1411.i
  call void @dce60_timing_generator_construct(ptr noundef nonnull %call7.i.i.i350.i, ptr noundef %2, i32 noundef %i.1411.i, ptr noundef %arrayidx78.i) #7
  %arrayidx81.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1411.i
  %56 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i.i350.i, ptr %arrayidx81.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i353.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 272) #10
  %tobool.not.i354.i = icmp eq ptr %call7.i.i.i353.i, null
  br i1 %tobool.not.i354.i, label %do.body99.i, label %if.end102.i

do.body99.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_mem_input_create, i32 noundef 674) #7
  call void @kgdb_breakpoint() #7
  %arrayidx93380.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1411.i
  %58 = ptrtoint ptr %arrayidx93380.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx93380.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1435) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #7
  br label %do.body

if.end102.i:                                      ; preds = %if.end90.i
  %arrayidx.i.i = getelementptr [6 x %struct.dce_mem_input_registers], ptr @mi_regs, i32 0, i32 %i.1411.i
  call void @dce60_mem_input_construct(ptr noundef nonnull %call7.i.i.i353.i, ptr noundef %2, i32 noundef %i.1411.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mi_shifts, ptr noundef nonnull @mi_masks) #7
  %wa.i.i = getelementptr inbounds %struct.dce_mem_input, ptr %call7.i.i.i353.i, i32 0, i32 4
  %59 = ptrtoint ptr %wa.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %wa.i.i, align 4
  %arrayidx93.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1411.i
  %60 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i.i353.i, ptr %arrayidx93.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i356.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i357.i = icmp eq ptr %call7.i.i.i356.i, null
  br i1 %tobool.not.i357.i, label %do.body111.i, label %if.end114.i

do.body111.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce60_ipp_create, i32 noundef 787) #7
  call void @kgdb_breakpoint() #7
  %arrayidx105381.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1411.i
  %62 = ptrtoint ptr %arrayidx105381.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx105381.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1442) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %do.body

if.end114.i:                                      ; preds = %if.end102.i
  %arrayidx.i359.i = getelementptr [6 x %struct.dce_ipp_registers], ptr @ipp_regs, i32 0, i32 %i.1411.i
  call void @dce60_ipp_construct(ptr noundef nonnull %call7.i.i.i356.i, ptr noundef %2, i32 noundef %i.1411.i, ptr noundef %arrayidx.i359.i, ptr noundef nonnull @ipp_shift, ptr noundef nonnull @ipp_mask) #7
  %arrayidx105.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1411.i
  %63 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i356.i, ptr %arrayidx105.i, align 4
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19280, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i361.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i361.i, label %do.body123.i, label %if.end126.i

do.body123.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx117382.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1411.i
  %64 = ptrtoint ptr %arrayidx117382.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx117382.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1449) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %do.body

if.end126.i:                                      ; preds = %if.end114.i
  %arrayidx.i362.i = getelementptr [6 x %struct.dce_transform_registers], ptr @xfm_regs, i32 0, i32 %i.1411.i
  call void @dce60_transform_construct(ptr noundef nonnull %call1.i.i.i.i.i, ptr noundef %2, i32 noundef %i.1411.i, ptr noundef %arrayidx.i362.i, ptr noundef nonnull @xfm_shift, ptr noundef nonnull @xfm_mask) #7
  %prescaler_on.i.i = getelementptr inbounds %struct.dce_transform, ptr %call1.i.i.i.i.i, i32 0, i32 11
  %65 = ptrtoint ptr %prescaler_on.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %prescaler_on.i.i, align 8
  %arrayidx117.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1411.i
  %66 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx117.i, align 4
  %call1.i.i.i.i364.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19264, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i365.i = icmp eq ptr %call1.i.i.i.i364.i, null
  br i1 %tobool.not.i365.i, label %do.body135.i, label %for.inc139.i

do.body135.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx129383.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1411.i
  %67 = ptrtoint ptr %arrayidx129383.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %arrayidx129383.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1456) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %do.body

for.inc139.i:                                     ; preds = %if.end126.i
  %arrayidx.i366.i = getelementptr [6 x %struct.dce_opp_registers], ptr @opp_regs, i32 0, i32 %i.1411.i
  call void @dce60_opp_construct(ptr noundef nonnull %call1.i.i.i.i364.i, ptr noundef %2, i32 noundef %i.1411.i, ptr noundef %arrayidx.i366.i, ptr noundef nonnull @opp_shift, ptr noundef nonnull @opp_mask) #7
  %arrayidx129.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1411.i
  %68 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call1.i.i.i.i364.i, ptr %arrayidx129.i, align 4
  %inc140.i = add nuw i32 %i.1411.i, 1
  %69 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pipe_count.i, align 4
  %cmp76.i = icmp ult i32 %inc140.i, %70
  br i1 %cmp76.i, label %for.inc139.i.for.body77.i_crit_edge, label %for.inc139.i.for.cond142.preheader.i_crit_edge

for.inc139.i.for.cond142.preheader.i_crit_edge:   ; preds = %for.inc139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond142.preheader.i

for.inc139.i.for.body77.i_crit_edge:              ; preds = %for.inc139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body77.i

for.body146.i:                                    ; preds = %for.inc183.i.for.body146.i_crit_edge, %for.cond142.preheader.i.for.body146.i_crit_edge
  %i.2414.i = phi i32 [ %inc184.i, %for.inc183.i.for.body146.i_crit_edge ], [ 0, %for.cond142.preheader.i.for.body146.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i368.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i369.i = icmp eq ptr %call7.i.i.i368.i, null
  br i1 %tobool.not.i369.i, label %do.body155.i, label %if.end158.i

do.body155.i:                                     ; preds = %for.body146.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx149384.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2414.i
  %72 = ptrtoint ptr %arrayidx149384.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx149384.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1465) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %do.body

if.end158.i:                                      ; preds = %for.body146.i
  %arrayidx.i370.i = getelementptr [6 x %struct.dce110_aux_registers], ptr @aux_engine_regs, i32 0, i32 %i.2414.i
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %2, align 8
  %extended_aux_timeout_support.i.i = getelementptr inbounds %struct.dc, ptr %74, i32 0, i32 2, i32 23
  %75 = ptrtoint ptr %extended_aux_timeout_support.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %extended_aux_timeout_support.i.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool1.i.i = icmp ne i8 %76, 0
  %call2.i.i = call ptr @dce110_aux_engine_construct(ptr noundef nonnull %call7.i.i.i368.i, ptr noundef %2, i32 noundef %i.2414.i, i32 noundef 2400, ptr noundef %arrayidx.i370.i, ptr noundef nonnull @aux_mask, ptr noundef nonnull @aux_shift, i1 noundef zeroext %tobool1.i.i) #7
  %arrayidx149.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2414.i
  %77 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i.i368.i, ptr %arrayidx149.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i372.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not.i373.i = icmp eq ptr %call7.i.i.i372.i, null
  br i1 %tobool.not.i373.i, label %do.body167.i, label %if.end170.i

do.body167.i:                                     ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx161385.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2414.i
  %79 = ptrtoint ptr %arrayidx161385.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %arrayidx161385.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1472) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %do.body

if.end170.i:                                      ; preds = %if.end158.i
  %arrayidx.i374.i = getelementptr [6 x %struct.dce_i2c_registers], ptr @i2c_hw_regs, i32 0, i32 %i.2414.i
  call void @dce_i2c_hw_construct(ptr noundef nonnull %call7.i.i.i372.i, ptr noundef %2, i32 noundef %i.2414.i, ptr noundef %arrayidx.i374.i, ptr noundef nonnull @i2c_shifts, ptr noundef nonnull @i2c_masks) #7
  %arrayidx161.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2414.i
  %80 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i.i372.i, ptr %arrayidx161.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i376.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not.i377.i = icmp eq ptr %call7.i.i.i376.i, null
  br i1 %tobool.not.i377.i, label %do.body179.i, label %for.inc183.i

do.body179.i:                                     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx173386.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2414.i
  %82 = ptrtoint ptr %arrayidx173386.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %arrayidx173386.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_construct, i32 noundef 1479) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %do.body

for.inc183.i:                                     ; preds = %if.end170.i
  call void @dce_i2c_sw_construct(ptr noundef nonnull %call7.i.i.i376.i, ptr noundef %2) #7
  %arrayidx173.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2414.i
  %83 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i.i376.i, ptr %arrayidx173.i, align 4
  %inc184.i = add nuw i32 %i.2414.i, 1
  %84 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %res_cap.i, align 4
  %num_ddc.i = getelementptr inbounds %struct.resource_caps, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %num_ddc.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_ddc.i, align 4
  %cmp145.i = icmp ult i32 %inc184.i, %87
  br i1 %cmp145.i, label %for.inc183.i.for.body146.i_crit_edge, label %for.inc183.i.for.end185.i_crit_edge

for.inc183.i.for.end185.i_crit_edge:              ; preds = %for.inc183.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end185.i

for.inc183.i.for.body146.i_crit_edge:             ; preds = %for.inc183.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body146.i

for.end185.i:                                     ; preds = %for.inc183.i.for.end185.i_crit_edge, %for.cond142.preheader.i.for.end185.i_crit_edge
  %88 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pipe_count.i, align 4
  %max_planes.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 6
  %90 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %max_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp192415.not.i = icmp eq i32 %89, 0
  br i1 %cmp192415.not.i, label %for.end185.i.for.end198.i_crit_edge, label %for.end185.i.for.body193.i_crit_edge

for.end185.i.for.body193.i_crit_edge:             ; preds = %for.end185.i
  br label %for.body193.i

for.end185.i.for.end198.i_crit_edge:              ; preds = %for.end185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end198.i

for.body193.i:                                    ; preds = %for.body193.i.for.body193.i_crit_edge, %for.end185.i.for.body193.i_crit_edge
  %i.3416.i = phi i32 [ %inc197.i, %for.body193.i.for.body193.i_crit_edge ], [ 0, %for.end185.i.for.body193.i_crit_edge ]
  %arrayidx195.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 2, i32 30, i32 %i.3416.i
  %91 = call ptr @memcpy(ptr %arrayidx195.i, ptr @plane_cap, i32 44)
  %inc197.i = add nuw i32 %i.3416.i, 1
  %92 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_planes.i, align 4
  %cmp192.i = icmp ult i32 %inc197.i, %93
  br i1 %cmp192.i, label %for.body193.i.for.body193.i_crit_edge, label %for.body193.i.for.end198.i_crit_edge

for.body193.i.for.end198.i_crit_edge:             ; preds = %for.body193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end198.i

for.body193.i.for.body193.i_crit_edge:            ; preds = %for.body193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body193.i

for.end198.i:                                     ; preds = %for.body193.i.for.end198.i_crit_edge, %for.end185.i.for.end198.i_crit_edge
  %disable_dp_clk_share.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 21
  %94 = ptrtoint ptr %disable_dp_clk_share.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %disable_dp_clk_share.i, align 2
  %conv.i = zext i8 %num_virtual_links to i32
  %call201.i = call zeroext i1 @resource_construct(i32 noundef %conv.i, ptr noundef %dc, ptr noundef %call7.i.i, ptr noundef nonnull @res_create_funcs) #7
  br i1 %call201.i, label %dce64_construct.exit.thread, label %for.end198.i.do.body_crit_edge

for.end198.i.do.body_crit_edge:                   ; preds = %for.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

dce64_construct.exit.thread:                      ; preds = %for.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dce60_hw_sequencer_construct(ptr noundef %dc) #7
  br label %cleanup

do.body:                                          ; preds = %for.end198.i.do.body_crit_edge, %do.body179.i, %do.body167.i, %do.body155.i, %do.body135.i, %do.body123.i, %do.body111.i, %do.body99.i, %do.body87.i, %if.end63.i.do.body_crit_edge, %if.then59.i, %if.then49.i, %if.then39.i, %if.then30.i
  call fastcc void @dce60_resource_destruct(ptr noundef %call7.i.i) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce64_create_resource_pool, i32 noundef 1520) #7
  call void @kgdb_breakpoint() #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %dce64_construct.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dce64_construct.exit.thread ]
  ret ptr %retval.0
}

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
declare dso_local ptr @dal_irq_service_dce60_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @resource_construct(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce60_hw_sequencer_construct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce60_resource_destruct(ptr noundef %pool) unnamed_addr #0 align 64 {
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
  %abm = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 37
  %46 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %abm, align 4
  %cmp118.not = icmp eq ptr %47, null
  br i1 %cmp118.not, label %for.end116.if.end122_crit_edge, label %if.then119

for.end116.if.end122_crit_edge:                   ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then119:                                       ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dce_abm_destroy(ptr noundef %abm) #7
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %for.end116.if.end122_crit_edge
  %dmcu = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 38
  %48 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dmcu, align 4
  %cmp124.not = icmp eq ptr %49, null
  br i1 %cmp124.not, label %if.end122.if.end128_crit_edge, label %if.then125

if.end122.if.end128_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dce_dmcu_destroy(ptr noundef %dmcu) #7
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %if.end122.if.end128_crit_edge
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 29
  %50 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dp_clock_source, align 4
  %cmp130.not = icmp eq ptr %51, null
  br i1 %cmp130.not, label %if.end128.if.end134_crit_edge, label %if.then131

if.end128.if.end134_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %51) #7
  %52 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %dp_clock_source, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.end128.if.end134_crit_edge
  %audio_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 33
  %53 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %audio_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp137242.not = icmp eq i32 %54, 0
  br i1 %cmp137242.not, label %if.end134.for.end149_crit_edge, label %if.end134.for.body138_crit_edge

if.end134.for.body138_crit_edge:                  ; preds = %if.end134
  br label %for.body138

if.end134.for.end149_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end149

for.body138:                                      ; preds = %for.inc147.for.body138_crit_edge, %if.end134.for.body138_crit_edge
  %i.4243 = phi i32 [ %inc148, %for.inc147.for.body138_crit_edge ], [ 0, %if.end134.for.body138_crit_edge ]
  %arrayidx140 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 32, i32 %i.4243
  %55 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx140, align 4
  %cmp141.not = icmp eq ptr %56, null
  br i1 %cmp141.not, label %for.body138.for.inc147_crit_edge, label %if.then142

for.body138.for.inc147_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc147

if.then142:                                       ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dce_aud_destroy(ptr noundef %arrayidx140) #7
  br label %for.inc147

for.inc147:                                       ; preds = %if.then142, %for.body138.for.inc147_crit_edge
  %inc148 = add nuw i32 %i.4243, 1
  %57 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %audio_count, align 4
  %cmp137 = icmp ult i32 %inc148, %58
  br i1 %cmp137, label %for.inc147.for.body138_crit_edge, label %for.inc147.for.end149_crit_edge

for.inc147.for.end149_crit_edge:                  ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end149

for.inc147.for.body138_crit_edge:                 ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body138

for.end149:                                       ; preds = %for.inc147.for.end149_crit_edge, %if.end134.for.end149_crit_edge
  %irqs = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 36
  %59 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %irqs, align 4
  %cmp151.not = icmp eq ptr %60, null
  br i1 %cmp151.not, label %for.end149.if.end155_crit_edge, label %if.then152

for.end149.if.end155_crit_edge:                   ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then152:                                       ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dal_irq_service_destroy(ptr noundef %irqs) #7
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %for.end149.if.end155_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_destroy_resource_pool(ptr nocapture noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  tail call fastcc void @dce60_resource_destruct(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pool, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce60_panel_cntl_create(ptr noundef %init_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #10
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
define internal ptr @dce60_link_encoder_create(ptr noundef %enc_init_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #10
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
  br i1 %.b47.i, label %land.end.i.if.then41.i_crit_edge, label %if.then.i, !prof !158

land.end.i.if.then41.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @map_transmitter_id_to_phy_instance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 471, i32 noundef 9, ptr noundef null) #7
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
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dce60_link_encoder_create, i32 0, i32 %2
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %map_transmitter_id_to_phy_instance.exit

map_transmitter_id_to_phy_instance.exit:          ; preds = %switch.lookup, %if.then41.i
  %retval.0.i = phi i32 [ 0, %if.then41.i ], [ %switch.load, %switch.lookup ]
  %arrayidx = getelementptr [6 x %struct.dce110_link_enc_registers], ptr @link_enc_regs, i32 0, i32 %retval.0.i
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
  tail call void @dce60_link_encoder_construct(ptr noundef nonnull %call7.i.i, ptr noundef %enc_init_data, ptr noundef nonnull @link_enc_feature, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx3) #7
  br label %cleanup

cleanup:                                          ; preds = %map_transmitter_id_to_phy_instance.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce60_validate_bandwidth(ptr nocapture noundef readonly %dc, ptr nocapture noundef %context, i1 noundef zeroext %fast_validate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.not = icmp eq i32 %3, 0
  br i1 %cmp19.not, label %entry.if.else_crit_edge, label %for.body.lr.ph

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.lr.ph:                                   ; preds = %entry
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %at_least_one_pipe.0.off021 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.020, i32 1
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream, align 4
  %tobool.not = icmp ne ptr %5, null
  %spec.select = select i1 %tobool.not, i1 true, i1 %at_least_one_pipe.0.off021
  %inc = add nuw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %spec.select, label %for.end.if.end11_crit_edge, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else:                                          ; preds = %for.end.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end11

if.end11:                                         ; preds = %if.else, %for.end.if.end11_crit_edge
  %.sink22 = phi i32 [ 0, %if.else ], [ 681000, %for.end.if.end11_crit_edge ]
  %.sink = phi i32 [ 0, %if.else ], [ 1000000, %for.end.if.end11_crit_edge ]
  %dispclk_khz7 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 12
  %6 = ptrtoint ptr %dispclk_khz7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink22, ptr %dispclk_khz7, align 4
  %yclk_khz10 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 11
  %7 = ptrtoint ptr %yclk_khz10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %yclk_khz10, align 8
  ret i1 true
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @dce60_validate_global(ptr nocapture noundef readnone %dc, ptr nocapture noundef readonly %context) #6 align 64 {
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
  br i1 %cmp25.not.i, label %entry.dce60_validate_surface_sets.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dce60_validate_surface_sets.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_validate_surface_sets.exit.thread

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
  br i1 %cmp7.i, label %if.end.i.dce60_validate_surface_sets.exit_crit_edge, label %if.end10.i

if.end.i.dce60_validate_surface_sets.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_validate_surface_sets.exit

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
  br i1 %cmp14.i, label %if.end10.i.dce60_validate_surface_sets.exit_crit_edge, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end10.i.dce60_validate_surface_sets.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_validate_surface_sets.exit

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.dce60_validate_surface_sets.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dce60_validate_surface_sets.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce60_validate_surface_sets.exit

dce60_validate_surface_sets.exit:                 ; preds = %for.inc.i.dce60_validate_surface_sets.exit_crit_edge, %if.end10.i.dce60_validate_surface_sets.exit_crit_edge, %if.end.i.dce60_validate_surface_sets.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.dce60_validate_surface_sets.exit_crit_edge ], [ %cmp28.i, %if.end10.i.dce60_validate_surface_sets.exit_crit_edge ], [ %cmp28.i, %if.end.i.dce60_validate_surface_sets.exit_crit_edge ]
  %spec.select = select i1 %cmp.lcssa.i, i32 9, i32 1
  br label %dce60_validate_surface_sets.exit.thread

dce60_validate_surface_sets.exit.thread:          ; preds = %dce60_validate_surface_sets.exit, %entry.dce60_validate_surface_sets.exit.thread_crit_edge
  %8 = phi i32 [ 1, %entry.dce60_validate_surface_sets.exit.thread_crit_edge ], [ %spec.select, %dce60_validate_surface_sets.exit ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce100_validate_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce100_add_stream_to_ctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce100_find_first_free_match_stream_enc_for_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_panel_cntl_construct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce60_link_encoder_construct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_clk_src_construct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce60_timing_generator_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce60_mem_input_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce60_ipp_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce60_transform_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce60_opp_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce110_aux_engine_construct(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_i2c_hw_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_i2c_sw_construct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_dce_straps(ptr noundef %ctx, ptr noundef %straps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_stream_number = getelementptr inbounds %struct.resource_straps, ptr %straps, i32 0, i32 2
  %call = tail call i32 @generic_reg_get2(ptr noundef %ctx, i32 noundef 6424, i8 noundef zeroext 6, i32 noundef 64, ptr noundef %straps, i8 noundef zeroext 8, i32 noundef 1792, ptr noundef %audio_stream_number) #7
  %dc_pinstraps_audio = getelementptr inbounds %struct.resource_straps, ptr %straps, i32 0, i32 1
  %call1 = tail call i32 @generic_reg_get(ptr noundef %ctx, i32 noundef 6423, i8 noundef zeroext 14, i32 noundef 49152, ptr noundef %dc_pinstraps_audio) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @create_audio(ptr noundef %ctx, i32 noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x %struct.dce_audio_registers], ptr @audio_regs, i32 0, i32 %inst
  %call = tail call ptr @dce60_audio_create(ptr noundef %ctx, i32 noundef %inst, ptr noundef %arrayidx, ptr noundef nonnull @audio_shift, ptr noundef nonnull @audio_mask) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce60_stream_encoder_create(i32 noundef %eng_id, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #10
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
define internal noalias ptr @dce60_hwseq_create(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #10
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
declare dso_local ptr @dce60_audio_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_stream_encoder_construct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_ipp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_engine_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_abm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_dmcu_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_aud_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1130, i32 2}
!2 = !{ptr @__func__.dce60_create_resource_pool, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.dce61_create_resource_pool, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1327, i32 2}
!5 = !{ptr @__func__.dce64_create_resource_pool, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1520, i32 2}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 993, i32 3}
!9 = !{ptr @__func__.dce60_construct, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 994, i32 3}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1000, i32 4}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1011, i32 3}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1021, i32 3}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1039, i32 4}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1046, i32 4}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1053, i32 4}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1060, i32 4}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1067, i32 4}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1076, i32 4}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1083, i32 4}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1090, i32 4}
!33 = !{ptr @bios_regs, !34, !"bios_regs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 367, i32 36}
!35 = !{ptr @res_cap, !36, !"res_cap", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 372, i32 35}
!37 = !{ptr @dce60_res_pool_funcs, !38, !"dce60_res_pool_funcs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 929, i32 36}
!39 = !{ptr @panel_cntl_regs, !40, !"panel_cntl_regs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 268, i32 46}
!41 = !{ptr @panel_cntl_shift, !42, !"panel_cntl_shift", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 272, i32 42}
!43 = !{ptr @panel_cntl_mask, !44, !"panel_cntl_mask", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 276, i32 41}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 471, i32 3}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @link_enc_feature, !49, !"link_enc_feature", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 705, i32 45}
!50 = !{ptr @link_enc_regs, !51, !"link_enc_regs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 236, i32 47}
!52 = !{ptr @link_enc_aux_regs, !53, !"link_enc_aux_regs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 208, i32 51}
!54 = !{ptr @link_enc_hpd_regs, !55, !"link_enc_hpd_regs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 222, i32 51}
!56 = !{ptr @__func__.dce60_clock_source_create, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 771, i32 2}
!58 = !{ptr @cs_shift, !59, !"cs_shift", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 359, i32 42}
!60 = !{ptr @cs_mask, !61, !"cs_mask", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 363, i32 41}
!62 = !{ptr @clk_src_regs, !63, !"clk_src_regs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 353, i32 41}
!64 = !{ptr @dmcu_regs, !65, !"dmcu_regs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 418, i32 40}
!66 = !{ptr @dmcu_shift, !67, !"dmcu_shift", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 422, i32 36}
!68 = !{ptr @dmcu_mask, !69, !"dmcu_mask", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 426, i32 35}
!70 = !{ptr @abm_regs, !71, !"abm_regs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 429, i32 39}
!72 = !{ptr @abm_shift, !73, !"abm_shift", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 433, i32 35}
!74 = !{ptr @abm_mask, !75, !"abm_mask", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 437, i32 34}
!76 = !{ptr @dce60_tg_offsets, !77, !"dce60_tg_offsets", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 112, i32 53}
!78 = !{ptr @__func__.dce60_mem_input_create, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 674, i32 3}
!80 = !{ptr @mi_regs, !81, !"mi_regs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 647, i32 45}
!82 = !{ptr @mi_shifts, !83, !"mi_shifts", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 656, i32 41}
!84 = !{ptr @mi_masks, !85, !"mi_masks", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 661, i32 40}
!86 = !{ptr @__func__.dce60_ipp_create, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 787, i32 3}
!88 = !{ptr @ipp_regs, !89, !"ipp_regs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 164, i32 39}
!90 = !{ptr @ipp_shift, !91, !"ipp_shift", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 173, i32 35}
!92 = !{ptr @ipp_mask, !93, !"ipp_mask", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 177, i32 34}
!94 = !{ptr @xfm_regs, !95, !"xfm_regs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 186, i32 45}
!96 = !{ptr @xfm_shift, !97, !"xfm_shift", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 195, i32 41}
!98 = !{ptr @xfm_mask, !99, !"xfm_mask", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 199, i32 40}
!100 = !{ptr @opp_regs, !101, !"opp_regs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 285, i32 39}
!102 = !{ptr @opp_shift, !103, !"opp_shift", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 294, i32 35}
!104 = !{ptr @opp_mask, !105, !"opp_mask", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 298, i32 34}
!106 = !{ptr @aux_engine_regs, !107, !"aux_engine_regs", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 316, i32 42}
!108 = !{ptr @aux_mask, !109, !"aux_mask", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 306, i32 47}
!110 = !{ptr @aux_shift, !111, !"aux_shift", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 302, i32 48}
!112 = !{ptr @i2c_hw_regs, !113, !"i2c_hw_regs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 545, i32 39}
!114 = !{ptr @i2c_shifts, !115, !"i2c_shifts", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 554, i32 35}
!116 = !{ptr @i2c_masks, !117, !"i2c_masks", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 558, i32 34}
!118 = !{ptr @plane_cap, !119, !"plane_cap", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 396, i32 34}
!120 = !{ptr @res_create_funcs, !121, !"res_create_funcs", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 636, i32 43}
!122 = !{ptr @audio_regs, !123, !"audio_regs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 330, i32 41}
!124 = !{ptr @audio_shift, !125, !"audio_shift", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 339, i32 37}
!126 = !{ptr @audio_mask, !127, !"audio_mask", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 343, i32 36}
!128 = !{ptr @stream_enc_regs, !129, !"stream_enc_regs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 251, i32 49}
!130 = !{ptr @se_shift, !131, !"se_shift", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 260, i32 46}
!132 = !{ptr @se_mask, !133, !"se_mask", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 264, i32 45}
!134 = !{ptr @hwseq_reg, !135, !"hwseq_reg", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 610, i32 41}
!136 = !{ptr @hwseq_shift, !137, !"hwseq_shift", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 614, i32 37}
!138 = !{ptr @hwseq_mask, !139, !"hwseq_mask", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 618, i32 36}
!140 = !{ptr @__func__.dce61_construct, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1191, i32 3}
!142 = !{ptr @res_cap_61, !143, !"res_cap_61", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 380, i32 35}
!144 = !{ptr @__func__.dce64_construct, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 1384, i32 3}
!146 = !{ptr @res_cap_64, !147, !"res_cap_64", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce60/dce60_resource.c", i32 388, i32 35}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i8 0, i8 2}
!158 = !{!"branch_weights", i32 2000, i32 1}
