; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce80/dce80_resource.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c"
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
@__func__.dce80_create_resource_pool = private unnamed_addr constant [27 x i8] c"dce80_create_resource_pool\00", align 1
@__func__.dce81_create_resource_pool = private unnamed_addr constant [27 x i8] c"dce81_create_resource_pool\00", align 1
@__func__.dce83_create_resource_pool = private unnamed_addr constant [27 x i8] c"dce83_create_resource_pool\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bios_regs = internal constant { %struct.bios_registers, [24 x i8] } { %struct.bios_registers { i32 1484, i32 1487 }, [24 x i8] zeroinitializer }, align 32
@res_cap = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 6, i32 0, i32 0, i32 6, i32 6, i32 3, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dce80_res_pool_funcs = internal constant { %struct.resource_funcs, [40 x i8] } { %struct.resource_funcs { ptr @dce80_destroy_resource_pool, ptr null, ptr @dce80_panel_cntl_create, ptr @dce80_link_encoder_create, ptr null, ptr @dce80_validate_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce80_validate_global, ptr null, ptr @dce100_validate_plane, ptr @dce100_add_stream_to_ctx, ptr null, ptr null, ptr @dce100_find_first_free_match_stream_enc_for_link, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_src_regs = internal constant { [3 x %struct.dce110_clk_src_regs], [36 x i8] } { [3 x %struct.dce110_clk_src_regs] [%struct.dce110_clk_src_regs { i32 314, i32 0, i32 5895, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 312, i32 0, i32 5915, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 313, i32 0, i32 5935, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DC: failed to create dp clock source!\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.dce80_construct = private unnamed_addr constant [16 x i8] c"dce80_construct\00", align 1
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DC: failed to create clock sources!\0A\00", [59 x i8] zeroinitializer }, align 32
@dmcu_regs = internal constant { %struct.dce_dmcu_registers, [36 x i8] } { %struct.dce_dmcu_registers { i32 5632, i32 5633, i32 5640, i32 0, i32 0, i32 5645, i32 5646, i32 5660, i32 5661, i32 5662, i32 5663, i32 5664, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 302, i32 5656, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dmcu_shift = internal constant { %struct.dce_dmcu_shift, [45 x i8] } { %struct.dce_dmcu_shift { i8 0, i8 5, i8 2, i8 3, i8 4, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [45 x i8] zeroinitializer }, align 32
@dmcu_mask = internal constant { %struct.dce_dmcu_mask, [52 x i8] } { %struct.dce_dmcu_mask { i32 0, i32 32, i32 4, i32 8, i32 16, i32 4, i32 1, i32 255, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC: failed to create dmcu!\0A\00", [36 x i8] zeroinitializer }, align 32
@abm_regs = internal constant { %struct.dce_abm_registers, [32 x i8] } { %struct.dce_abm_registers { i32 5716, i32 5717, i32 5679, i32 5707, i32 5689, i32 5675, i32 5674, i32 5673, i32 5713, i32 5706, i32 5690, i32 5695, i32 5664, i32 5663, i32 5660, i32 1483 }, [32 x i8] zeroinitializer }, align 32
@abm_shift = internal constant { %struct.dce_abm_shift, [46 x i8] } { %struct.dce_abm_shift { i8 0, i8 8, i8 16, i8 16, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 24, i8 31, i8 0, i8 0, i8 8, i8 16 }, [46 x i8] zeroinitializer }, align 32
@abm_mask = internal constant { %struct.dce_abm_mask, [56 x i8] } { %struct.dce_abm_mask { i32 3, i32 256, i32 196608, i32 983040, i32 3840, i32 15, i32 131071, i32 131071, i32 131071, i32 1023, i32 67043328, i32 65536, i32 16777216, i32 -2147483648, i32 1, i32 255, i32 65280, i32 16711680 }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC: failed to create abm!\0A\00", [37 x i8] zeroinitializer }, align 32
@dce80_tg_offsets = internal constant { [6 x %struct.dce110_timing_generator_offsets], [56 x i8] } { [6 x %struct.dce110_timing_generator_offsets] [%struct.dce110_timing_generator_offsets zeroinitializer, %struct.dce110_timing_generator_offsets { i32 768, i32 768, i32 768 }, %struct.dce110_timing_generator_offsets { i32 9728, i32 9728, i32 9728 }, %struct.dce110_timing_generator_offsets { i32 10496, i32 10496, i32 10496 }, %struct.dce110_timing_generator_offsets { i32 11264, i32 11264, i32 11264 }, %struct.dce110_timing_generator_offsets { i32 12032, i32 12032, i32 12032 }], [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC: failed to create tg!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DC: failed to create memory input!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DC: failed to create input pixel processor!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DC: failed to create transform!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DC: failed to create output pixel processor!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DC:failed to create aux engine!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DC:failed to create i2c engine!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DC:failed to create sw i2c!!\0A\00", [34 x i8] zeroinitializer }, align 32
@plane_cap = internal constant { %struct.dc_plane_cap, [52 x i8] } { %struct.dc_plane_cap { i32 1, i8 0, [3 x i8] undef, %struct.anon.10 { i8 -96, [3 x i8] undef }, %struct.anon.11 { i32 16000, i32 1, i32 1 }, %struct.anon.12 { i32 250, i32 1, i32 1 }, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@res_create_funcs = internal constant { %struct.resource_create_funcs, [16 x i8] } { %struct.resource_create_funcs { ptr @read_dce_straps, ptr @create_audio, ptr @dce80_stream_encoder_create, ptr @dce80_hwseq_create }, [16 x i8] zeroinitializer }, align 32
@panel_cntl_regs = internal constant { [1 x %struct.dce_panel_cntl_registers], [32 x i8] } { [1 x %struct.dce_panel_cntl_registers] [%struct.dce_panel_cntl_registers { i32 6425, i32 6426, i32 6430, i32 6431, i32 6432, i32 6433, i32 6427, i32 1483 }], [32 x i8] zeroinitializer }, align 32
@panel_cntl_shift = internal constant { %struct.dce_panel_cntl_shift, [17 x i8] } { %struct.dce_panel_cntl_shift { i8 24, i8 25, i8 16, i8 17, i8 4, i8 0, i8 16, i8 31, i8 0, i8 30, i8 0, i8 16, i8 31, i8 0, i8 8 }, [17 x i8] zeroinitializer }, align 32
@panel_cntl_mask = internal constant { %struct.dce_panel_cntl_mask, [36 x i8] } { %struct.dce_panel_cntl_mask { i32 16777216, i32 33554432, i32 65536, i32 131072, i32 16, i32 1, i32 -65536, i32 -2147483648, i32 65535, i32 1073741824, i32 65535, i32 983040, i32 -2147483648, i32 1, i32 256 }, [36 x i8] zeroinitializer }, align 32
@link_enc_regs = internal constant { [7 x %struct.dce110_link_enc_registers], [232 x i8] } { [7 x %struct.dce110_link_enc_registers] [%struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 7248, i32 7249, i32 7362, i32 7376, i32 7390, i32 7380, i32 7381, i32 7378, i32 7392, i32 7391, i32 7377, i32 7360, i32 7372, i32 7396, i32 7397, i32 7398, i32 7399, i32 7328, i32 7363, i32 7374, i32 0, i32 0, i32 7339 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 8016, i32 8017, i32 8130, i32 8144, i32 8158, i32 8148, i32 8149, i32 8146, i32 8160, i32 8159, i32 8145, i32 8128, i32 8140, i32 8164, i32 8165, i32 8166, i32 8167, i32 8096, i32 8131, i32 8142, i32 0, i32 0, i32 8107 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 16976, i32 16977, i32 17090, i32 17104, i32 17118, i32 17108, i32 17109, i32 17106, i32 17120, i32 17119, i32 17105, i32 17088, i32 17100, i32 17124, i32 17125, i32 17126, i32 17127, i32 17056, i32 17091, i32 17102, i32 0, i32 0, i32 17067 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 17744, i32 17745, i32 17858, i32 17872, i32 17886, i32 17876, i32 17877, i32 17874, i32 17888, i32 17887, i32 17873, i32 17856, i32 17868, i32 17892, i32 17893, i32 17894, i32 17895, i32 17824, i32 17859, i32 17870, i32 0, i32 0, i32 17835 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 18512, i32 18513, i32 18626, i32 18640, i32 18654, i32 18644, i32 18645, i32 18642, i32 18656, i32 18655, i32 18641, i32 18624, i32 18636, i32 18660, i32 18661, i32 18662, i32 18663, i32 18592, i32 18627, i32 18638, i32 0, i32 0, i32 18603 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 19280, i32 19281, i32 19394, i32 19408, i32 19422, i32 19412, i32 19413, i32 19410, i32 19424, i32 19423, i32 19409, i32 19392, i32 19404, i32 19428, i32 19429, i32 19430, i32 19431, i32 19360, i32 19395, i32 19406, i32 0, i32 0, i32 19371 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 0, i32 0, i32 5647, i32 5648, i32 5654, i32 20048, i32 20049, i32 20162, i32 20176, i32 20190, i32 20180, i32 20181, i32 20178, i32 20192, i32 20191, i32 20177, i32 20160, i32 20172, i32 20196, i32 20197, i32 20198, i32 20199, i32 20128, i32 20163, i32 20174, i32 0, i32 0, i32 20139 }], [232 x i8] zeroinitializer }, align 32
@link_enc_aux_regs = internal constant { [6 x %struct.dce110_link_enc_aux_registers], [56 x i8] } { [6 x %struct.dce110_link_enc_aux_registers] [%struct.dce110_link_enc_aux_registers { i32 6272, i32 6282, i32 6283 }, %struct.dce110_link_enc_aux_registers { i32 6292, i32 6302, i32 6303 }, %struct.dce110_link_enc_aux_registers { i32 6312, i32 6322, i32 6323 }, %struct.dce110_link_enc_aux_registers { i32 6336, i32 6346, i32 6347 }, %struct.dce110_link_enc_aux_registers { i32 6356, i32 6366, i32 6367 }, %struct.dce110_link_enc_aux_registers { i32 6376, i32 6386, i32 6387 }], [56 x i8] zeroinitializer }, align 32
@link_enc_hpd_regs = internal constant { [6 x %struct.dce110_link_enc_hpd_registers], [40 x i8] } { [6 x %struct.dce110_link_enc_hpd_registers] [%struct.dce110_link_enc_hpd_registers { i32 6298 }, %struct.dce110_link_enc_hpd_registers { i32 6306 }, %struct.dce110_link_enc_hpd_registers { i32 6314 }, %struct.dce110_link_enc_hpd_registers { i32 6322 }, %struct.dce110_link_enc_hpd_registers { i32 6330 }, %struct.dce110_link_enc_hpd_registers { i32 6338 }], [40 x i8] zeroinitializer }, align 32
@map_transmitter_id_to_phy_instance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c\00", [32 x i8] zeroinitializer }, align 32
@link_enc_feature = internal constant { { { { i8, i8, [2 x i8] } }, i32, i32, i8, i8, i8 }, [16 x i8] } { { { { i8, i8, [2 x i8] } }, i32, i32, i8, i8, i8 } { { { i8, i8, [2 x i8] } } { { i8, i8, [2 x i8] } { i8 -96, i8 0, [2 x i8] undef } }, i32 4, i32 297000, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@cs_shift = internal constant { %struct.dce110_clk_src_shift, [23 x i8] } { %struct.dce110_clk_src_shift { i8 16, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@cs_mask = internal constant { %struct.dce110_clk_src_mask, [60 x i8] } { %struct.dce110_clk_src_mask { i32 458752, i32 48, i32 0, i32 0, i32 127, i32 1023, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.dce80_clock_source_create = private unnamed_addr constant [26 x i8] c"dce80_clock_source_create\00", align 1
@__func__.dce80_mem_input_create = private unnamed_addr constant [23 x i8] c"dce80_mem_input_create\00", align 1
@mi_regs = internal constant { [6 x %struct.dce_mem_input_registers], [208 x i8] } { [6 x %struct.dce_mem_input_registers] [%struct.dce_mem_input_registers { i32 6656, i32 6657, i32 6667, i32 6668, i32 6669, i32 6670, i32 6662, i32 6814, i32 6659, i32 6701, i32 0, i32 0, i32 0, i32 6673, i32 6674, i32 6660, i32 6663, i32 6661, i32 6664, i32 6960, i32 0, i32 6962, i32 6963, i32 0, i32 6966, i32 0, i32 6965, i32 0, i32 808, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 7424, i32 7425, i32 7435, i32 7436, i32 7437, i32 7438, i32 7430, i32 7582, i32 7427, i32 7469, i32 0, i32 0, i32 0, i32 7441, i32 7442, i32 7428, i32 7431, i32 7429, i32 7432, i32 7728, i32 0, i32 7730, i32 7731, i32 0, i32 7734, i32 0, i32 7733, i32 0, i32 816, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 16384, i32 16385, i32 16395, i32 16396, i32 16397, i32 16398, i32 16390, i32 16542, i32 16387, i32 16429, i32 0, i32 0, i32 0, i32 16401, i32 16402, i32 16388, i32 16391, i32 16389, i32 16392, i32 16688, i32 0, i32 16690, i32 16691, i32 0, i32 16694, i32 0, i32 16693, i32 0, i32 824, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 17152, i32 17153, i32 17163, i32 17164, i32 17165, i32 17166, i32 17158, i32 17310, i32 17155, i32 17197, i32 0, i32 0, i32 0, i32 17169, i32 17170, i32 17156, i32 17159, i32 17157, i32 17160, i32 17456, i32 0, i32 17458, i32 17459, i32 0, i32 17462, i32 0, i32 17461, i32 0, i32 832, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 17920, i32 17921, i32 17931, i32 17932, i32 17933, i32 17934, i32 17926, i32 18078, i32 17923, i32 17965, i32 0, i32 0, i32 0, i32 17937, i32 17938, i32 17924, i32 17927, i32 17925, i32 17928, i32 18224, i32 0, i32 18226, i32 18227, i32 0, i32 18230, i32 0, i32 18229, i32 0, i32 840, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 18688, i32 18689, i32 18699, i32 18700, i32 18701, i32 18702, i32 18694, i32 18846, i32 18691, i32 18733, i32 0, i32 0, i32 0, i32 18705, i32 18706, i32 18692, i32 18695, i32 18693, i32 18696, i32 18992, i32 0, i32 18994, i32 18995, i32 0, i32 18998, i32 0, i32 18997, i32 0, i32 848, i32 2120, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@mi_shifts = internal constant { %struct.dce_mem_input_shift, [57 x i8] } { %struct.dce_mem_input_shift { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0, i8 1, i8 2, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 2, i8 6, i8 11, i8 18, i8 13, i8 29, i8 24, i8 20, i8 31, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 0, i8 0, i8 8, i8 2, i8 0, i8 16, i8 0, i8 8, i8 0, i8 16, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 4, i8 8, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i8 16, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [57 x i8] zeroinitializer }, align 32
@mi_masks = internal constant { %struct.dce_mem_input_mask, [68 x i8] } { %struct.dce_mem_input_mask { i32 1, i32 16383, i32 16383, i32 32767, i32 32767, i32 32767, i32 7, i32 48, i32 768, i32 1, i32 2, i32 4, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1792, i32 12, i32 192, i32 6144, i32 786432, i32 57344, i32 1610612736, i32 520093696, i32 15728640, i32 -2147483648, i32 0, i32 0, i32 0, i32 0, i32 255, i32 -256, i32 0, i32 255, i32 -256, i32 4, i32 1, i32 65536, i32 65535, i32 768, i32 0, i32 196608, i32 3, i32 65535, i32 -65536, i32 0, i32 0, i32 1, i32 16, i32 256, i32 -65536, i32 0, i32 0, i32 0, i32 0, i32 1, i32 128, i32 -65536, i32 0, i32 7, i32 16, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, [68 x i8] zeroinitializer }, align 32
@__func__.dce80_ipp_create = private unnamed_addr constant [17 x i8] c"dce80_ipp_create\00", align 1
@ipp_regs = internal constant { [6 x %struct.dce_ipp_registers], [104 x i8] } { [6 x %struct.dce_ipp_registers] [%struct.dce_ipp_registers { i32 6766, i32 6758, i32 6762, i32 6763, i32 6764, i32 6765, i32 6760, i32 6761, i32 6759, i32 6701, i32 6702, i32 6703, i32 6704, i32 6672, i32 0, i32 6782, i32 6776, i32 6784, i32 6777, i32 6778, i32 6744 }, %struct.dce_ipp_registers { i32 7534, i32 7526, i32 7530, i32 7531, i32 7532, i32 7533, i32 7528, i32 7529, i32 7527, i32 7469, i32 7470, i32 7471, i32 7472, i32 7440, i32 0, i32 7550, i32 7544, i32 7552, i32 7545, i32 7546, i32 7512 }, %struct.dce_ipp_registers { i32 16494, i32 16486, i32 16490, i32 16491, i32 16492, i32 16493, i32 16488, i32 16489, i32 16487, i32 16429, i32 16430, i32 16431, i32 16432, i32 16400, i32 0, i32 16510, i32 16504, i32 16512, i32 16505, i32 16506, i32 16472 }, %struct.dce_ipp_registers { i32 17262, i32 17254, i32 17258, i32 17259, i32 17260, i32 17261, i32 17256, i32 17257, i32 17255, i32 17197, i32 17198, i32 17199, i32 17200, i32 17168, i32 0, i32 17278, i32 17272, i32 17280, i32 17273, i32 17274, i32 17240 }, %struct.dce_ipp_registers { i32 18030, i32 18022, i32 18026, i32 18027, i32 18028, i32 18029, i32 18024, i32 18025, i32 18023, i32 17965, i32 17966, i32 17967, i32 17968, i32 17936, i32 0, i32 18046, i32 18040, i32 18048, i32 18041, i32 18042, i32 18008 }, %struct.dce_ipp_registers { i32 18798, i32 18790, i32 18794, i32 18795, i32 18796, i32 18797, i32 18792, i32 18793, i32 18791, i32 18733, i32 18734, i32 18735, i32 18736, i32 18704, i32 0, i32 18814, i32 18808, i32 18816, i32 18809, i32 18810, i32 18776 }], [104 x i8] zeroinitializer }, align 32
@ipp_shift = internal constant { %struct.dce_ipp_shift, [58 x i8] } { %struct.dce_ipp_shift { i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 8, i8 16, i8 4, i8 0, i8 8, i8 16, i8 0, i8 8, i8 16, i8 16, i8 0, i8 0, i8 0, i8 4, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 22, i8 14, i8 6, i8 0, i8 0, i8 0, i8 12, i8 8 }, [58 x i8] zeroinitializer }, align 32
@ipp_mask = internal constant { %struct.dce_ipp_mask, [40 x i8] } { %struct.dce_ipp_mask { i32 65536, i32 1, i32 1073676288, i32 16383, i32 8323072, i32 127, i32 768, i32 65536, i32 16, i32 255, i32 65280, i32 16711680, i32 255, i32 65280, i32 16711680, i32 8323072, i32 127, i32 255, i32 -1, i32 16, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 3, i32 0, i32 7, i32 1, i32 12582912, i32 49152, i32 192, i32 255, i32 65535, i32 3, i32 12288, i32 768 }, [40 x i8] zeroinitializer }, align 32
@xfm_regs = internal constant { [6 x %struct.dce_transform_registers], [392 x i8] } { [6 x %struct.dce_transform_registers] [%struct.dce_transform_registers { i32 0, i32 6848, i32 6745, i32 6746, i32 6747, i32 6748, i32 6749, i32 6750, i32 6751, i32 6717, i32 6718, i32 6719, i32 6720, i32 6721, i32 6722, i32 6716, i32 7039, i32 6820, i32 6821, i32 6822, i32 6823, i32 6824, i32 6825, i32 6826, i32 6827, i32 6828, i32 6829, i32 6830, i32 6831, i32 6819, i32 6817, i32 6818, i32 6816, i32 6736, i32 6752, i32 6737, i32 6738, i32 6812, i32 6813, i32 6978, i32 6979, i32 6980, i32 6981, i32 7006, i32 7007, i32 6987, i32 6984, i32 0, i32 0, i32 6976, i32 6977, i32 7004, i32 7005, i32 6985, i32 6988, i32 6986, i32 0, i32 0, i32 6989, i32 6983, i32 0, i32 0, i32 6849, i32 6993, i32 6995 }, %struct.dce_transform_registers { i32 0, i32 7616, i32 7513, i32 7514, i32 7515, i32 7516, i32 7517, i32 7518, i32 7519, i32 7485, i32 7486, i32 7487, i32 7488, i32 7489, i32 7490, i32 7484, i32 7807, i32 7588, i32 7589, i32 7590, i32 7591, i32 7592, i32 7593, i32 7594, i32 7595, i32 7596, i32 7597, i32 7598, i32 7599, i32 7587, i32 7585, i32 7586, i32 7584, i32 7504, i32 7520, i32 7505, i32 7506, i32 7580, i32 7581, i32 7746, i32 7747, i32 7748, i32 7749, i32 7774, i32 7775, i32 7755, i32 7752, i32 0, i32 0, i32 7744, i32 7745, i32 7772, i32 7773, i32 7753, i32 7756, i32 7754, i32 0, i32 0, i32 7757, i32 7751, i32 0, i32 0, i32 7617, i32 7761, i32 7763 }, %struct.dce_transform_registers { i32 0, i32 16576, i32 16473, i32 16474, i32 16475, i32 16476, i32 16477, i32 16478, i32 16479, i32 16445, i32 16446, i32 16447, i32 16448, i32 16449, i32 16450, i32 16444, i32 16767, i32 16548, i32 16549, i32 16550, i32 16551, i32 16552, i32 16553, i32 16554, i32 16555, i32 16556, i32 16557, i32 16558, i32 16559, i32 16547, i32 16545, i32 16546, i32 16544, i32 16464, i32 16480, i32 16465, i32 16466, i32 16540, i32 16541, i32 16706, i32 16707, i32 16708, i32 16709, i32 16734, i32 16735, i32 16715, i32 16712, i32 0, i32 0, i32 16704, i32 16705, i32 16732, i32 16733, i32 16713, i32 16716, i32 16714, i32 0, i32 0, i32 16717, i32 16711, i32 0, i32 0, i32 16577, i32 16721, i32 16723 }, %struct.dce_transform_registers { i32 0, i32 17344, i32 17241, i32 17242, i32 17243, i32 17244, i32 17245, i32 17246, i32 17247, i32 17213, i32 17214, i32 17215, i32 17216, i32 17217, i32 17218, i32 17212, i32 17535, i32 17316, i32 17317, i32 17318, i32 17319, i32 17320, i32 17321, i32 17322, i32 17323, i32 17324, i32 17325, i32 17326, i32 17327, i32 17315, i32 17313, i32 17314, i32 17312, i32 17232, i32 17248, i32 17233, i32 17234, i32 17308, i32 17309, i32 17474, i32 17475, i32 17476, i32 17477, i32 17502, i32 17503, i32 17483, i32 17480, i32 0, i32 0, i32 17472, i32 17473, i32 17500, i32 17501, i32 17481, i32 17484, i32 17482, i32 0, i32 0, i32 17485, i32 17479, i32 0, i32 0, i32 17345, i32 17489, i32 17491 }, %struct.dce_transform_registers { i32 0, i32 18112, i32 18009, i32 18010, i32 18011, i32 18012, i32 18013, i32 18014, i32 18015, i32 17981, i32 17982, i32 17983, i32 17984, i32 17985, i32 17986, i32 17980, i32 18303, i32 18084, i32 18085, i32 18086, i32 18087, i32 18088, i32 18089, i32 18090, i32 18091, i32 18092, i32 18093, i32 18094, i32 18095, i32 18083, i32 18081, i32 18082, i32 18080, i32 18000, i32 18016, i32 18001, i32 18002, i32 18076, i32 18077, i32 18242, i32 18243, i32 18244, i32 18245, i32 18270, i32 18271, i32 18251, i32 18248, i32 0, i32 0, i32 18240, i32 18241, i32 18268, i32 18269, i32 18249, i32 18252, i32 18250, i32 0, i32 0, i32 18253, i32 18247, i32 0, i32 0, i32 18113, i32 18257, i32 18259 }, %struct.dce_transform_registers { i32 0, i32 18880, i32 18777, i32 18778, i32 18779, i32 18780, i32 18781, i32 18782, i32 18783, i32 18749, i32 18750, i32 18751, i32 18752, i32 18753, i32 18754, i32 18748, i32 19071, i32 18852, i32 18853, i32 18854, i32 18855, i32 18856, i32 18857, i32 18858, i32 18859, i32 18860, i32 18861, i32 18862, i32 18863, i32 18851, i32 18849, i32 18850, i32 18848, i32 18768, i32 18784, i32 18769, i32 18770, i32 18844, i32 18845, i32 19010, i32 19011, i32 19012, i32 19013, i32 19038, i32 19039, i32 19019, i32 19016, i32 0, i32 0, i32 19008, i32 19009, i32 19036, i32 19037, i32 19017, i32 19020, i32 19018, i32 0, i32 0, i32 19021, i32 19015, i32 0, i32 0, i32 18881, i32 19025, i32 19027 }], [392 x i8] zeroinitializer }, align 32
@xfm_shift = internal constant { %struct.dce_transform_shift, [34 x i8] } { %struct.dce_transform_shift { i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 0, i8 4, i8 6, i8 8, i8 9, i8 10, i8 0, i8 0, i8 0, i8 2, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 6, i8 2, i8 0, i8 20, i8 0, i8 0, i8 16, i8 0, i8 0, i8 12, i8 16, i8 28, i8 0, i8 20, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 0, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 0, i8 16, i8 8, i8 0, i8 15, i8 0, i8 31, i8 16, i8 16, i8 0, i8 0, i8 16, i8 0, i8 0, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 24, i8 0, i8 0, i8 0, i8 20, i8 0, i8 8, i8 8, i8 0, i8 0, i8 24, i8 31 }, [34 x i8] zeroinitializer }, align 32
@xfm_mask = internal constant { %struct.dce_transform_mask, [72 x i8] } { %struct.dce_transform_mask { i32 1073676288, i32 16383, i32 1073676288, i32 16383, i32 1073676288, i32 16383, i32 15, i32 1, i32 48, i32 192, i32 256, i32 512, i32 1024, i32 7, i32 0, i32 3, i32 4, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 3, i32 65535, i32 -65536, i32 7, i32 0, i32 0, i32 64, i32 4, i32 262143, i32 133169152, i32 262143, i32 65535, i32 -65536, i32 65535, i32 511, i32 28672, i32 33488896, i32 1879048192, i32 0, i32 3145728, i32 7, i32 7, i32 3, i32 3, i32 0, i32 3840, i32 7, i32 1, i32 536805376, i32 8191, i32 536805376, i32 8191, i32 0, i32 0, i32 458752, i32 3840, i32 15, i32 32768, i32 16383, i32 -2147483648, i32 1073676288, i32 1073676288, i32 16383, i32 16383, i32 1073676288, i32 67108863, i32 67108863, i32 251658240, i32 16777215, i32 0, i32 0, i32 0, i32 0, i32 117440512, i32 16777215, i32 0, i32 0, i32 3145728, i32 4095, i32 256, i32 256, i32 0, i32 0, i32 16777216, i32 -2147483648 }, [72 x i8] zeroinitializer }, align 32
@opp_regs = internal constant { [6 x %struct.dce_opp_registers], [80 x i8] } { [6 x %struct.dce_opp_registers] [%struct.dce_opp_registers { i32 7149, i32 7154, i32 7150, i32 7155, i32 7156, i32 7157, i32 7158, i32 7159, i32 7160, i32 0, i32 7161, i32 7144, i32 7145, i32 7146 }, %struct.dce_opp_registers { i32 7917, i32 7922, i32 7918, i32 7923, i32 7924, i32 7925, i32 7926, i32 7927, i32 7928, i32 0, i32 7929, i32 7912, i32 7913, i32 7914 }, %struct.dce_opp_registers { i32 16877, i32 16882, i32 16878, i32 16883, i32 16884, i32 16885, i32 16886, i32 16887, i32 16888, i32 0, i32 16889, i32 16872, i32 16873, i32 16874 }, %struct.dce_opp_registers { i32 17645, i32 17650, i32 17646, i32 17651, i32 17652, i32 17653, i32 17654, i32 17655, i32 17656, i32 0, i32 17657, i32 17640, i32 17641, i32 17642 }, %struct.dce_opp_registers { i32 18413, i32 18418, i32 18414, i32 18419, i32 18420, i32 18421, i32 18422, i32 18423, i32 18424, i32 0, i32 18425, i32 18408, i32 18409, i32 18410 }, %struct.dce_opp_registers { i32 19181, i32 19186, i32 19182, i32 19187, i32 19188, i32 19189, i32 19190, i32 19191, i32 19192, i32 0, i32 19193, i32 19176, i32 19177, i32 19178 }], [80 x i8] zeroinitializer }, align 32
@opp_shift = internal constant { %struct.dce_opp_shift, [54 x i8] } { %struct.dce_opp_shift { i8 0, i8 4, i8 0, i8 4, i8 1, i8 8, i8 11, i8 9, i8 16, i8 25, i8 21, i8 17, i8 24, i8 26, i8 28, i8 30, i8 15, i8 13, i8 14, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 24, i8 0, i8 0, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 16, i8 18, i8 17, i8 0 }, [54 x i8] zeroinitializer }, align 32
@opp_mask = internal constant { %struct.dce_opp_mask, [56 x i8] } { %struct.dce_opp_mask { i32 1, i32 16, i32 1, i32 48, i32 2, i32 256, i32 6144, i32 1536, i32 65536, i32 33554432, i32 6291456, i32 393216, i32 16777216, i32 201326592, i32 805306368, i32 -1073741824, i32 32768, i32 8192, i32 16384, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 117440512, i32 0, i32 0, i32 1, i32 458752, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65536, i32 262144, i32 131072, i32 0 }, [56 x i8] zeroinitializer }, align 32
@aux_engine_regs = internal constant { [6 x %struct.dce110_aux_registers], [48 x i8] } { [6 x %struct.dce110_aux_registers] [%struct.dce110_aux_registers { i32 6272, i32 6274, i32 6278, i32 6273, i32 6275, i32 0, i32 6276, i32 6412, i32 6411, i32 0 }, %struct.dce110_aux_registers { i32 6292, i32 6294, i32 6298, i32 6293, i32 6295, i32 0, i32 6296, i32 6412, i32 6411, i32 0 }, %struct.dce110_aux_registers { i32 6312, i32 6314, i32 6318, i32 6313, i32 6315, i32 0, i32 6316, i32 6412, i32 6411, i32 0 }, %struct.dce110_aux_registers { i32 6336, i32 6338, i32 6342, i32 6337, i32 6339, i32 0, i32 6340, i32 6412, i32 6411, i32 0 }, %struct.dce110_aux_registers { i32 6356, i32 6358, i32 6362, i32 6357, i32 6359, i32 0, i32 6360, i32 6412, i32 6411, i32 0 }, %struct.dce110_aux_registers { i32 6376, i32 6378, i32 6382, i32 6377, i32 6379, i32 0, i32 6380, i32 6412, i32 6411, i32 0 }], [48 x i8] zeroinitializer }, align 32
@aux_mask = internal constant { %struct.dce110_aux_registers_mask, [32 x i8] } { %struct.dce110_aux_registers_mask { i32 1, i32 0, i32 0, i32 12, i32 65536, i32 131072, i32 -2147483648, i32 1, i32 2031616, i32 1, i32 65280, i32 520093696, i32 1, i32 2, i32 1, i32 1, i32 268435456, i32 268435456, i32 0, i32 0, i32 1024, i32 1024, i32 240, i32 2031616 }, [32 x i8] zeroinitializer }, align 32
@aux_shift = internal constant { %struct.dce110_aux_registers_shift, [40 x i8] } { %struct.dce110_aux_registers_shift { i8 0, i8 0, i8 0, i8 2, i8 16, i8 17, i8 31, i8 0, i8 16, i8 0, i8 8, i8 24, i8 0, i8 1, i8 0, i8 0, i8 28, i8 28, i8 0, i8 0, i8 10, i8 10, i8 4, i8 16 }, [40 x i8] zeroinitializer }, align 32
@i2c_hw_regs = internal constant { [6 x %struct.dce_i2c_registers], [80 x i8] } { [6 x %struct.dce_i2c_registers] [%struct.dce_i2c_registers { i32 6180, i32 6179, i32 6173, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 6182, i32 6181, i32 6174, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 6184, i32 6183, i32 6175, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 6186, i32 6185, i32 6176, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 6188, i32 6187, i32 6177, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 6190, i32 6189, i32 6178, i32 6170, i32 6169, i32 6172, i32 6191, i32 6192, i32 6193, i32 6194, i32 6195, i32 315, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@i2c_shifts = internal constant { %struct.dce_i2c_shift, [55 x i8] } { %struct.dce_i2c_shift { i8 6, i8 24, i8 0, i8 7, i8 1, i8 16, i8 8, i8 0, i8 21, i8 20, i8 4, i8 0, i8 1, i8 3, i8 0, i8 2, i8 20, i8 8, i8 16, i8 0, i8 0, i8 8, i8 5, i8 4, i8 2, i8 0, i8 8, i8 12, i8 0, i8 13, i8 16, i8 0, i8 8, i8 16, i8 31, i8 8, i8 0, i8 0, i8 2, i8 0, i8 0 }, [55 x i8] zeroinitializer }, align 32
@i2c_masks = internal constant { %struct.dce_i2c_mask, [60 x i8] } { %struct.dce_i2c_mask { i32 64, i32 -16777216, i32 1, i32 128, i32 2, i32 16711680, i32 65280, i32 3, i32 2097152, i32 1048576, i32 16, i32 3, i32 2, i32 8, i32 1, i32 4, i32 3145728, i32 1792, i32 -65536, i32 3, i32 0, i32 256, i32 32, i32 16, i32 4, i32 3, i32 256, i32 4096, i32 1, i32 8192, i32 16711680, i32 1, i32 65280, i32 16711680, i32 -2147483648, i32 32512, i32 127, i32 0, i32 12, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@audio_regs = internal constant { [7 x %struct.dce_audio_registers], [76 x i8] } { [7 x %struct.dce_audio_registers] [%struct.dce_audio_registers { i32 6016, i32 6017, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6022, i32 6023, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6028, i32 6029, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6034, i32 6035, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6040, i32 6041, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6046, i32 6047, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6052, i32 6053, i32 6105, i32 6104, i32 6106, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }], [76 x i8] zeroinitializer }, align 32
@audio_shift = internal constant { %struct.dce_audio_shift, [40 x i8] } { %struct.dce_audio_shift { i8 0, i8 0, i8 0, i8 30, i8 31, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 20, i32 24, i32 28, i32 0 }, [40 x i8] zeroinitializer }, align 32
@audio_mask = internal constant { %struct.dce_audio_mask, [36 x i8] } { %struct.dce_audio_mask { i32 16383, i32 -1, i32 4095, i32 1073741824, i32 -2147483648, i32 7, i32 48, i32 -1, i32 -1, i32 -1, i32 -1, i32 1048576, i32 16777216, i32 268435456, i32 0 }, [36 x i8] zeroinitializer }, align 32
@stream_enc_regs = internal constant { [7 x %struct.dce110_stream_enc_registers], [436 x i8] } { [7 x %struct.dce110_stream_enc_registers] [%struct.dce110_stream_enc_registers { i32 0, i32 7201, i32 7202, i32 7203, i32 7204, i32 7208, i32 7209, i32 7210, i32 7211, i32 7212, i32 7213, i32 7214, i32 7215, i32 7207, i32 7245, i32 7244, i32 0, i32 7243, i32 7191, i32 7247, i32 7233, i32 7234, i32 7240, i32 7168, i32 7393, i32 7395, i32 7361, i32 7328, i32 7364, i32 7371, i32 7370, i32 7363, i32 7369, i32 7333, i32 7337, i32 7180, i32 7190, i32 7187, i32 7216, i32 0, i32 0, i32 7185, i32 7186, i32 7184, i32 7182, i32 7183, i32 7223, i32 7224, i32 7225, i32 7226, i32 7227, i32 7228, i32 7292, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 7969, i32 7970, i32 7971, i32 7972, i32 7976, i32 7977, i32 7978, i32 7979, i32 7980, i32 7981, i32 7982, i32 7983, i32 7975, i32 8013, i32 8012, i32 0, i32 8011, i32 7959, i32 8015, i32 8001, i32 8002, i32 8008, i32 7936, i32 8161, i32 8163, i32 8129, i32 8096, i32 8132, i32 8139, i32 8138, i32 8131, i32 8137, i32 8101, i32 8105, i32 7948, i32 7958, i32 7955, i32 7984, i32 0, i32 0, i32 7953, i32 7954, i32 7952, i32 7950, i32 7951, i32 7991, i32 7992, i32 7993, i32 7994, i32 7995, i32 7996, i32 8060, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 16929, i32 16930, i32 16931, i32 16932, i32 16936, i32 16937, i32 16938, i32 16939, i32 16940, i32 16941, i32 16942, i32 16943, i32 16935, i32 16973, i32 16972, i32 0, i32 16971, i32 16919, i32 16975, i32 16961, i32 16962, i32 16968, i32 16896, i32 17121, i32 17123, i32 17089, i32 17056, i32 17092, i32 17099, i32 17098, i32 17091, i32 17097, i32 17061, i32 17065, i32 16908, i32 16918, i32 16915, i32 16944, i32 0, i32 0, i32 16913, i32 16914, i32 16912, i32 16910, i32 16911, i32 16951, i32 16952, i32 16953, i32 16954, i32 16955, i32 16956, i32 17020, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 17697, i32 17698, i32 17699, i32 17700, i32 17704, i32 17705, i32 17706, i32 17707, i32 17708, i32 17709, i32 17710, i32 17711, i32 17703, i32 17741, i32 17740, i32 0, i32 17739, i32 17687, i32 17743, i32 17729, i32 17730, i32 17736, i32 17664, i32 17889, i32 17891, i32 17857, i32 17824, i32 17860, i32 17867, i32 17866, i32 17859, i32 17865, i32 17829, i32 17833, i32 17676, i32 17686, i32 17683, i32 17712, i32 0, i32 0, i32 17681, i32 17682, i32 17680, i32 17678, i32 17679, i32 17719, i32 17720, i32 17721, i32 17722, i32 17723, i32 17724, i32 17788, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 18465, i32 18466, i32 18467, i32 18468, i32 18472, i32 18473, i32 18474, i32 18475, i32 18476, i32 18477, i32 18478, i32 18479, i32 18471, i32 18509, i32 18508, i32 0, i32 18507, i32 18455, i32 18511, i32 18497, i32 18498, i32 18504, i32 18432, i32 18657, i32 18659, i32 18625, i32 18592, i32 18628, i32 18635, i32 18634, i32 18627, i32 18633, i32 18597, i32 18601, i32 18444, i32 18454, i32 18451, i32 18480, i32 0, i32 0, i32 18449, i32 18450, i32 18448, i32 18446, i32 18447, i32 18487, i32 18488, i32 18489, i32 18490, i32 18491, i32 18492, i32 18556, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 19233, i32 19234, i32 19235, i32 19236, i32 19240, i32 19241, i32 19242, i32 19243, i32 19244, i32 19245, i32 19246, i32 19247, i32 19239, i32 19277, i32 19276, i32 0, i32 19275, i32 19223, i32 19279, i32 19265, i32 19266, i32 19272, i32 19200, i32 19425, i32 19427, i32 19393, i32 19360, i32 19396, i32 19403, i32 19402, i32 19395, i32 19401, i32 19365, i32 19369, i32 19212, i32 19222, i32 19219, i32 19248, i32 0, i32 0, i32 19217, i32 19218, i32 19216, i32 19214, i32 19215, i32 19255, i32 19256, i32 19257, i32 19258, i32 19259, i32 19260, i32 19324, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 0, i32 20001, i32 20002, i32 20003, i32 20004, i32 20008, i32 20009, i32 20010, i32 20011, i32 20012, i32 20013, i32 20014, i32 20015, i32 20007, i32 20045, i32 20044, i32 0, i32 20043, i32 19991, i32 20047, i32 20033, i32 20034, i32 20040, i32 19968, i32 20193, i32 20195, i32 20161, i32 20128, i32 20164, i32 20171, i32 20170, i32 20163, i32 20169, i32 20133, i32 20137, i32 19980, i32 19990, i32 19987, i32 20016, i32 0, i32 0, i32 19985, i32 19986, i32 19984, i32 19982, i32 19983, i32 20023, i32 20024, i32 20025, i32 20026, i32 20027, i32 20028, i32 20092, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [436 x i8] zeroinitializer }, align 32
@se_shift = internal constant { %struct.dce_stream_encoder_shift, [32 x i8] } { %struct.dce_stream_encoder_shift { i8 30, i8 2, i8 3, i8 0, i8 8, i8 16, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 16, i8 5, i8 4, i8 24, i8 0, i8 24, i8 8, i8 16, i8 4, i8 0, i8 24, i8 0, i8 28, i8 5, i8 4, i8 0, i8 0, i8 4, i8 7, i8 8, i8 0, i8 26, i8 0, i8 0, i8 24, i8 0, i8 1, i8 0, i8 20, i8 0, i8 21, i8 22, i8 23, i8 0, i8 0, i8 0, i8 0, i8 24, i8 28, i8 8, i8 0, i8 16, i8 0, i8 8, i8 0, i8 0, i8 10, i8 0, i8 8, i8 16, i8 4, i8 26, i8 0, i8 28, i8 12, i8 8, i8 31, i8 12, i8 0, i8 12, i8 0, i8 12, i8 0, i8 20, i8 28, i8 20, i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 0, i8 0, i8 4, i8 8, i8 12, i8 16, i8 0, i8 0, i8 4, i8 8, i8 4, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@se_mask = internal constant { %struct.dce_stream_encoder_mask, [128 x i8] } { %struct.dce_stream_encoder_mask { i32 -1073741824, i32 4, i32 8, i32 255, i32 65280, i32 16711680, i32 -16777216, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 4128768, i32 32, i32 16, i32 1056964608, i32 7, i32 117440512, i32 256, i32 65536, i32 16, i32 1, i32 16777216, i32 0, i32 805306368, i32 32, i32 16, i32 1, i32 0, i32 16, i32 128, i32 16128, i32 1, i32 -67108864, i32 67108863, i32 1, i32 -16777216, i32 1, i32 2, i32 63, i32 1048576, i32 1, i32 2097152, i32 4194304, i32 8388608, i32 0, i32 0, i32 0, i32 0, i32 16777216, i32 268435456, i32 768, i32 1, i32 65536, i32 1, i32 256, i32 16777215, i32 16777215, i32 1024, i32 7, i32 65280, i32 2031616, i32 48, i32 67108864, i32 1, i32 268435456, i32 4096, i32 256, i32 -2147483648, i32 -4096, i32 1048575, i32 -4096, i32 1048575, i32 -4096, i32 1048575, i32 15728640, i32 805306368, i32 15728640, i32 15, i32 240, i32 3840, i32 61440, i32 983040, i32 15728640, i32 16777215, i32 1, i32 16, i32 256, i32 4096, i32 65536, i32 1, i32 0, i32 16, i32 112, i32 256, i32 768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7 }, [128 x i8] zeroinitializer }, align 32
@hwseq_reg = internal constant { %struct.dce_hwseq_registers, [132 x i8] } { %struct.dce_hwseq_registers { [6 x i32] [i32 7036, i32 7804, i32 16764, i32 17532, i32 18300, i32 19068], i32 0, i32 0, [6 x i32] [i32 7027, i32 7795, i32 16755, i32 17523, i32 18291, i32 19059], [6 x i32] [i32 7021, i32 7789, i32 16749, i32 17517, i32 18285, i32 19053], i32 0, [6 x i32] zeroinitializer, [6 x i32] [i32 320, i32 324, i32 328, i32 332, i32 336, i32 340], [6 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [132 x i8] zeroinitializer }, align 32
@hwseq_shift = internal constant { %struct.dce_hwseq_shift, [35 x i8] } { %struct.dce_hwseq_shift { i8 31, i8 0, i8 0, i8 0, i8 28, i8 1, i8 0, i8 0, i8 0, i8 0, i8 8, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [35 x i8] zeroinitializer }, align 32
@hwseq_mask = internal constant { %struct.dce_hwseq_mask, [108 x i8] } { %struct.dce_hwseq_mask { i32 -2147483648, i32 0, i32 0, i32 1, i32 268435456, i32 2, i32 0, i32 0, i32 0, i32 0, i32 768, i32 0, i32 16, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer }, align 32
@res_cap_81 = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 4, i32 0, i32 0, i32 7, i32 7, i32 3, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__func__.dce81_construct = private unnamed_addr constant [16 x i8] c"dce81_construct\00", align 1
@res_cap_83 = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 2, i32 0, i32 0, i32 6, i32 6, i32 2, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__func__.dce83_construct = private unnamed_addr constant [16 x i8] c"dce83_construct\00", align 1
@switch.table.dce80_link_encoder_create = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 6], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1141, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"bios_regs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 372, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [8 x i8] c"res_cap\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 377, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"dce80_res_pool_funcs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 934, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"clk_src_regs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 358, i32 41 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1004, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1011, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"dmcu_regs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 423, i32 40 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"dmcu_shift\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 427, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"dmcu_mask\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 431, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1022, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"abm_regs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 434, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant [10 x i8] c"abm_shift\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 438, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"abm_mask\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 442, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1032, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"dce80_tg_offsets\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 114, i32 53 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1050, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1057, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1064, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1071, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1078, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1087, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1094, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1101, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"plane_cap\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 401, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"res_create_funcs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 641, i32 43 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"panel_cntl_regs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 272, i32 46 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"panel_cntl_shift\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 276, i32 42 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"panel_cntl_mask\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 280, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"link_enc_regs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 238, i32 47 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"link_enc_aux_regs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 210, i32 51 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"link_enc_hpd_regs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 224, i32 51 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 476, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"link_enc_feature\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 710, i32 45 }
@___asan_gen_.117 = private unnamed_addr constant [9 x i8] c"cs_shift\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 364, i32 42 }
@___asan_gen_.120 = private unnamed_addr constant [8 x i8] c"cs_mask\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 368, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant [8 x i8] c"mi_regs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 652, i32 45 }
@___asan_gen_.126 = private unnamed_addr constant [10 x i8] c"mi_shifts\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 661, i32 41 }
@___asan_gen_.129 = private unnamed_addr constant [9 x i8] c"mi_masks\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 666, i32 40 }
@___asan_gen_.132 = private unnamed_addr constant [9 x i8] c"ipp_regs\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 166, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant [10 x i8] c"ipp_shift\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 175, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant [9 x i8] c"ipp_mask\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 179, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant [9 x i8] c"xfm_regs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 188, i32 45 }
@___asan_gen_.144 = private unnamed_addr constant [10 x i8] c"xfm_shift\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 197, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant [9 x i8] c"xfm_mask\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 201, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"opp_regs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 289, i32 39 }
@___asan_gen_.153 = private unnamed_addr constant [10 x i8] c"opp_shift\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 298, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant [9 x i8] c"opp_mask\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 302, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"aux_engine_regs\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 320, i32 42 }
@___asan_gen_.162 = private unnamed_addr constant [9 x i8] c"aux_mask\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 310, i32 47 }
@___asan_gen_.165 = private unnamed_addr constant [10 x i8] c"aux_shift\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 306, i32 48 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"i2c_hw_regs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 550, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant [11 x i8] c"i2c_shifts\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 559, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant [10 x i8] c"i2c_masks\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 563, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant [11 x i8] c"audio_regs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 334, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"audio_shift\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 344, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant [11 x i8] c"audio_mask\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 348, i32 36 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"stream_enc_regs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 254, i32 49 }
@___asan_gen_.189 = private unnamed_addr constant [9 x i8] c"se_shift\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 264, i32 46 }
@___asan_gen_.192 = private unnamed_addr constant [8 x i8] c"se_mask\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 268, i32 45 }
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"hwseq_reg\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 615, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"hwseq_shift\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 619, i32 37 }
@___asan_gen_.201 = private unnamed_addr constant [11 x i8] c"hwseq_mask\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 623, i32 36 }
@___asan_gen_.204 = private unnamed_addr constant [11 x i8] c"res_cap_81\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 385, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant [11 x i8] c"res_cap_83\00", align 1
@___asan_gen_.208 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 393, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant [39 x i8] c"switch.table.dce80_link_encoder_create\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @.str, ptr @bios_regs, ptr @res_cap, ptr @dce80_res_pool_funcs, ptr @clk_src_regs, ptr @.str.1, ptr @.str.2, ptr @dmcu_regs, ptr @dmcu_shift, ptr @dmcu_mask, ptr @.str.3, ptr @abm_regs, ptr @abm_shift, ptr @abm_mask, ptr @.str.4, ptr @dce80_tg_offsets, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @plane_cap, ptr @res_create_funcs, ptr @panel_cntl_regs, ptr @panel_cntl_shift, ptr @panel_cntl_mask, ptr @link_enc_regs, ptr @link_enc_aux_regs, ptr @link_enc_hpd_regs, ptr @.str.13, ptr @link_enc_feature, ptr @cs_shift, ptr @cs_mask, ptr @mi_regs, ptr @mi_shifts, ptr @mi_masks, ptr @ipp_regs, ptr @ipp_shift, ptr @ipp_mask, ptr @xfm_regs, ptr @xfm_shift, ptr @xfm_mask, ptr @opp_regs, ptr @opp_shift, ptr @opp_mask, ptr @aux_engine_regs, ptr @aux_mask, ptr @aux_shift, ptr @i2c_hw_regs, ptr @i2c_shifts, ptr @i2c_masks, ptr @audio_regs, ptr @audio_shift, ptr @audio_mask, ptr @stream_enc_regs, ptr @se_shift, ptr @se_mask, ptr @hwseq_reg, ptr @hwseq_shift, ptr @hwseq_mask, ptr @res_cap_81, ptr @res_cap_83, ptr @switch.table.dce80_link_encoder_create], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bios_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_cap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce80_res_pool_funcs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_src_regs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_regs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_shift to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_mask to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_shift to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_mask to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce80_tg_offsets to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plane_cap to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_create_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_shift to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_mask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_regs to i32), i32 952, i32 1184, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_aux_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_hpd_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_feature to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_shift to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_mask to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_regs to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_shifts to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_masks to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_regs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_shift to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_mask to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_regs to i32), i32 1560, i32 1952, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_shift to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_mask to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_shift to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_mask to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_engine_regs to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_mask to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_shift to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hw_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_shifts to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_masks to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_regs to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_shift to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_mask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_regs to i32), i32 1708, i32 2144, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se_shift to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se_mask to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_reg to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_shift to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_mask to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_cap_81 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_cap_83 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce80_link_encoder_create to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dce80_create_resource_pool(i8 noundef zeroext %num_virtual_links, ptr noundef %dc) local_unnamed_addr #0 align 64 {
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
  store ptr @dce80_res_pool_funcs, ptr %funcs.i, align 8
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
  %i2c_speed_in_khz_hdcp.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 9
  %13 = ptrtoint ptr %i2c_speed_in_khz_hdcp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 40, ptr %i2c_speed_in_khz_hdcp.i, align 4
  %max_cursor_size.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 11
  %14 = ptrtoint ptr %max_cursor_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %max_cursor_size.i, align 4
  %min_horizontal_blanking_period.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 13
  %15 = ptrtoint ptr %min_horizontal_blanking_period.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 80, ptr %min_horizontal_blanking_period.i, align 4
  %dual_link_dvi.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 18
  %16 = ptrtoint ptr %dual_link_dvi.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %dual_link_dvi.i, align 1
  %extended_aux_timeout_support.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 23
  %17 = ptrtoint ptr %extended_aux_timeout_support.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %extended_aux_timeout_support.i, align 4
  %18 = load ptr, ptr %dc_bios.i, align 4
  %fw_info_valid.i = getelementptr inbounds %struct.dc_bios, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %fw_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fw_info_valid.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %external_clock_source_frequency_for_dp.i = getelementptr inbounds %struct.dc_bios, ptr %18, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %external_clock_source_frequency_for_dp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %external_clock_source_frequency_for_dp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.dce80_clock_source_create.exit.i_crit_edge, label %if.end.i.i

if.then.i.dce80_clock_source_create.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %2, ptr noundef %18, i32 noundef 4, ptr noundef null, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i.i, label %if.then2.i.i, label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %dp_clk_src4.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %dp_clk_src4.i.i, align 4
  br label %dce80_clock_source_create.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit.i

dce80_clock_source_create.exit.i:                 ; preds = %if.end7.i.i, %if.then2.i.i, %if.then.i.dce80_clock_source_create.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %if.then2.i.i ], [ null, %if.end7.i.i ], [ null, %if.then.i.dce80_clock_source_create.exit.i_crit_edge ]
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %25 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i.i, ptr %dp_clock_source.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i334.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i335.i = icmp eq ptr %call7.i.i.i334.i, null
  br i1 %tobool.not.i335.i, label %dce80_clock_source_create.exit.i.dce80_clock_source_create.exit342.i_crit_edge, label %if.end.i337.i

dce80_clock_source_create.exit.i.dce80_clock_source_create.exit342.i_crit_edge: ; preds = %dce80_clock_source_create.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit342.i

if.end.i337.i:                                    ; preds = %dce80_clock_source_create.exit.i
  %call1.i336.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i334.i, ptr noundef %2, ptr noundef %18, i32 noundef 1, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i336.i, label %if.then2.i339.i, label %if.end7.i340.i

if.then2.i339.i:                                  ; preds = %if.end.i337.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i338.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i334.i, i32 0, i32 3
  %27 = ptrtoint ptr %dp_clk_src4.i338.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dp_clk_src4.i338.i, align 4
  br label %dce80_clock_source_create.exit342.i

if.end7.i340.i:                                   ; preds = %if.end.i337.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i334.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit342.i

dce80_clock_source_create.exit342.i:              ; preds = %if.end7.i340.i, %if.then2.i339.i, %dce80_clock_source_create.exit.i.dce80_clock_source_create.exit342.i_crit_edge
  %retval.0.i341.i = phi ptr [ %call7.i.i.i334.i, %if.then2.i339.i ], [ null, %if.end7.i340.i ], [ null, %dce80_clock_source_create.exit.i.dce80_clock_source_create.exit342.i_crit_edge ]
  %clock_sources.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %28 = ptrtoint ptr %clock_sources.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i341.i, ptr %clock_sources.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i343.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i344.i = icmp eq ptr %call7.i.i.i343.i, null
  br i1 %tobool.not.i344.i, label %dce80_clock_source_create.exit342.i.dce80_clock_source_create.exit351.i_crit_edge, label %if.end.i346.i

dce80_clock_source_create.exit342.i.dce80_clock_source_create.exit351.i_crit_edge: ; preds = %dce80_clock_source_create.exit342.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit351.i

if.end.i346.i:                                    ; preds = %dce80_clock_source_create.exit342.i
  %call1.i345.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i343.i, ptr noundef %2, ptr noundef %18, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i345.i, label %if.then2.i348.i, label %if.end7.i349.i

if.then2.i348.i:                                  ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i347.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i343.i, i32 0, i32 3
  %30 = ptrtoint ptr %dp_clk_src4.i347.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %dp_clk_src4.i347.i, align 4
  br label %dce80_clock_source_create.exit351.i

if.end7.i349.i:                                   ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i343.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit351.i

dce80_clock_source_create.exit351.i:              ; preds = %if.end7.i349.i, %if.then2.i348.i, %dce80_clock_source_create.exit342.i.dce80_clock_source_create.exit351.i_crit_edge
  %retval.0.i350.i = phi ptr [ %call7.i.i.i343.i, %if.then2.i348.i ], [ null, %if.end7.i349.i ], [ null, %dce80_clock_source_create.exit342.i.dce80_clock_source_create.exit351.i_crit_edge ]
  %arrayidx19.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %31 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %retval.0.i350.i, ptr %arrayidx19.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i352.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i353.i = icmp eq ptr %call7.i.i.i352.i, null
  br i1 %tobool.not.i353.i, label %dce80_clock_source_create.exit351.i.dce80_clock_source_create.exit360.i_crit_edge, label %if.end.i355.i

dce80_clock_source_create.exit351.i.dce80_clock_source_create.exit360.i_crit_edge: ; preds = %dce80_clock_source_create.exit351.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit360.i

if.end.i355.i:                                    ; preds = %dce80_clock_source_create.exit351.i
  %call1.i354.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i352.i, ptr noundef %2, ptr noundef %18, i32 noundef 3, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 2), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i354.i, label %if.then2.i357.i, label %if.end7.i358.i

if.then2.i357.i:                                  ; preds = %if.end.i355.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i356.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i352.i, i32 0, i32 3
  %33 = ptrtoint ptr %dp_clk_src4.i356.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %dp_clk_src4.i356.i, align 4
  br label %dce80_clock_source_create.exit360.i

if.end7.i358.i:                                   ; preds = %if.end.i355.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i352.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit360.i

dce80_clock_source_create.exit360.i:              ; preds = %if.end7.i358.i, %if.then2.i357.i, %dce80_clock_source_create.exit351.i.dce80_clock_source_create.exit360.i_crit_edge
  %retval.0.i359.i = phi ptr [ %call7.i.i.i352.i, %if.then2.i357.i ], [ null, %if.end7.i358.i ], [ null, %dce80_clock_source_create.exit351.i.dce80_clock_source_create.exit360.i_crit_edge ]
  %arrayidx23.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 2
  %34 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i359.i, ptr %arrayidx23.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i361.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i362.i = icmp eq ptr %call7.i.i.i361.i, null
  br i1 %tobool.not.i362.i, label %if.else.i.dce80_clock_source_create.exit369.i_crit_edge, label %if.end.i364.i

if.else.i.dce80_clock_source_create.exit369.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit369.i

if.end.i364.i:                                    ; preds = %if.else.i
  %call1.i363.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i361.i, ptr noundef %2, ptr noundef %18, i32 noundef 1, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i363.i, label %if.then2.i366.i, label %if.end7.i367.i

if.then2.i366.i:                                  ; preds = %if.end.i364.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i365.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i361.i, i32 0, i32 3
  %36 = ptrtoint ptr %dp_clk_src4.i365.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %dp_clk_src4.i365.i, align 4
  br label %dce80_clock_source_create.exit369.i

if.end7.i367.i:                                   ; preds = %if.end.i364.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i361.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit369.i

dce80_clock_source_create.exit369.i:              ; preds = %if.end7.i367.i, %if.then2.i366.i, %if.else.i.dce80_clock_source_create.exit369.i_crit_edge
  %retval.0.i368.i = phi ptr [ %call7.i.i.i361.i, %if.then2.i366.i ], [ null, %if.end7.i367.i ], [ null, %if.else.i.dce80_clock_source_create.exit369.i_crit_edge ]
  %dp_clock_source27.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %37 = ptrtoint ptr %dp_clock_source27.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i368.i, ptr %dp_clock_source27.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i370.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i371.i = icmp eq ptr %call7.i.i.i370.i, null
  br i1 %tobool.not.i371.i, label %dce80_clock_source_create.exit369.i.dce80_clock_source_create.exit378.i_crit_edge, label %if.end.i373.i

dce80_clock_source_create.exit369.i.dce80_clock_source_create.exit378.i_crit_edge: ; preds = %dce80_clock_source_create.exit369.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit378.i

if.end.i373.i:                                    ; preds = %dce80_clock_source_create.exit369.i
  %call1.i372.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i370.i, ptr noundef %2, ptr noundef %18, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i372.i, label %if.then2.i375.i, label %if.end7.i376.i

if.then2.i375.i:                                  ; preds = %if.end.i373.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i374.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i370.i, i32 0, i32 3
  %39 = ptrtoint ptr %dp_clk_src4.i374.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %dp_clk_src4.i374.i, align 4
  br label %dce80_clock_source_create.exit378.i

if.end7.i376.i:                                   ; preds = %if.end.i373.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i370.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit378.i

dce80_clock_source_create.exit378.i:              ; preds = %if.end7.i376.i, %if.then2.i375.i, %dce80_clock_source_create.exit369.i.dce80_clock_source_create.exit378.i_crit_edge
  %retval.0.i377.i = phi ptr [ %call7.i.i.i370.i, %if.then2.i375.i ], [ null, %if.end7.i376.i ], [ null, %dce80_clock_source_create.exit369.i.dce80_clock_source_create.exit378.i_crit_edge ]
  %clock_sources30.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %40 = ptrtoint ptr %clock_sources30.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %retval.0.i377.i, ptr %clock_sources30.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i379.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i380.i = icmp eq ptr %call7.i.i.i379.i, null
  br i1 %tobool.not.i380.i, label %dce80_clock_source_create.exit378.i.dce80_clock_source_create.exit387.i_crit_edge, label %if.end.i382.i

dce80_clock_source_create.exit378.i.dce80_clock_source_create.exit387.i_crit_edge: ; preds = %dce80_clock_source_create.exit378.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit387.i

if.end.i382.i:                                    ; preds = %dce80_clock_source_create.exit378.i
  %call1.i381.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i379.i, ptr noundef %2, ptr noundef %18, i32 noundef 3, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 2), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i381.i, label %if.then2.i384.i, label %if.end7.i385.i

if.then2.i384.i:                                  ; preds = %if.end.i382.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i383.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i379.i, i32 0, i32 3
  %42 = ptrtoint ptr %dp_clk_src4.i383.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %dp_clk_src4.i383.i, align 4
  br label %dce80_clock_source_create.exit387.i

if.end7.i385.i:                                   ; preds = %if.end.i382.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i379.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit387.i

dce80_clock_source_create.exit387.i:              ; preds = %if.end7.i385.i, %if.then2.i384.i, %dce80_clock_source_create.exit378.i.dce80_clock_source_create.exit387.i_crit_edge
  %retval.0.i386.i = phi ptr [ %call7.i.i.i379.i, %if.then2.i384.i ], [ null, %if.end7.i385.i ], [ null, %dce80_clock_source_create.exit378.i.dce80_clock_source_create.exit387.i_crit_edge ]
  %arrayidx35.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %43 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.0.i386.i, ptr %arrayidx35.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %dce80_clock_source_create.exit387.i, %dce80_clock_source_create.exit360.i
  %exitcond.not.i.1 = phi i1 [ true, %dce80_clock_source_create.exit387.i ], [ false, %dce80_clock_source_create.exit360.i ]
  %.sink.i = phi i32 [ 2, %dce80_clock_source_create.exit387.i ], [ 3, %dce80_clock_source_create.exit360.i ]
  %clk_src_count37.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 31
  %44 = ptrtoint ptr %clk_src_count37.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %clk_src_count37.i, align 4
  %dp_clock_source39.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %45 = ptrtoint ptr %dp_clock_source39.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dp_clock_source39.i, align 4
  %cmp40.i = icmp eq ptr %46, null
  br i1 %cmp40.i, label %if.then41.i, label %for.body.i

if.then41.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1005) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.body.i.1:                                     ; preds = %for.body.i
  %arrayidx48.i.1 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %47 = ptrtoint ptr %arrayidx48.i.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx48.i.1, align 4
  %cmp49.i.1 = icmp eq ptr %48, null
  br i1 %cmp49.i.1, label %for.body.i.1.if.then50.i_crit_edge, label %for.cond.i.1

for.body.i.1.if.then50.i_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50.i

for.cond.i.1:                                     ; preds = %for.body.i.1
  br i1 %exitcond.not.i.1, label %for.cond.i.1.for.end.i_crit_edge, label %for.body.i.2

for.cond.i.1.for.end.i_crit_edge:                 ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.cond.i.1
  %arrayidx48.i.2 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 2
  %49 = ptrtoint ptr %arrayidx48.i.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx48.i.2, align 8
  %cmp49.i.2 = icmp eq ptr %50, null
  br i1 %cmp49.i.2, label %for.body.i.2.if.then50.i_crit_edge, label %for.body.i.2.for.end.i_crit_edge

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.2.if.then50.i_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50.i

for.body.i:                                       ; preds = %if.end.i
  %arrayidx48.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 0
  %51 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx48.i, align 8
  %cmp49.i = icmp eq ptr %52, null
  br i1 %cmp49.i, label %for.body.i.if.then50.i_crit_edge, label %for.body.i.1

for.body.i.if.then50.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50.i

if.then50.i:                                      ; preds = %for.body.i.if.then50.i_crit_edge, %for.body.i.2.if.then50.i_crit_edge, %for.body.i.1.if.then50.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1012) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.end.i:                                        ; preds = %for.body.i.2.for.end.i_crit_edge, %for.cond.i.1.for.end.i_crit_edge
  %call55.i = tail call ptr @dce_dmcu_create(ptr noundef %2, ptr noundef nonnull @dmcu_regs, ptr noundef nonnull @dmcu_shift, ptr noundef nonnull @dmcu_mask) #7
  %dmcu.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 38
  %53 = ptrtoint ptr %dmcu.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call55.i, ptr %dmcu.i, align 8
  %cmp59.i = icmp eq ptr %call55.i, null
  br i1 %cmp59.i, label %if.then60.i, label %if.end64.i

if.then60.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1023) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end64.i:                                       ; preds = %for.end.i
  %call65.i = tail call ptr @dce_abm_create(ptr noundef %2, ptr noundef nonnull @abm_regs, ptr noundef nonnull @abm_shift, ptr noundef nonnull @abm_mask) #7
  %abm.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 37
  %54 = ptrtoint ptr %abm.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call65.i, ptr %abm.i, align 4
  %cmp69.i = icmp eq ptr %call65.i, null
  br i1 %cmp69.i, label %if.then70.i, label %if.end74.i

if.then70.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1033) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end74.i:                                       ; preds = %if.end64.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_data.i) #7
  %55 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx1.i, align 8
  %57 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %init_data.i, align 4
  %call77.i = call ptr @dal_irq_service_dce80_create(ptr noundef nonnull %init_data.i) #7
  %irqs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 36
  %58 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call77.i, ptr %irqs.i, align 8
  %tobool81.not.i = icmp eq ptr %call77.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_data.i) #7
  br i1 %tobool81.not.i, label %if.end74.i.do.body_crit_edge, label %for.cond84.preheader.i

if.end74.i.do.body_crit_edge:                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond84.preheader.i:                           ; preds = %if.end74.i
  %59 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp87448.not.i = icmp eq i32 %60, 0
  br i1 %cmp87448.not.i, label %for.cond84.preheader.i.for.cond153.preheader.i_crit_edge, label %for.cond84.preheader.i.for.body88.i_crit_edge

for.cond84.preheader.i.for.body88.i_crit_edge:    ; preds = %for.cond84.preheader.i
  br label %for.body88.i

for.cond84.preheader.i.for.cond153.preheader.i_crit_edge: ; preds = %for.cond84.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond153.preheader.i

for.cond153.preheader.i:                          ; preds = %for.inc150.i.for.cond153.preheader.i_crit_edge, %for.cond84.preheader.i.for.cond153.preheader.i_crit_edge
  %61 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %res_cap.i, align 4
  %num_ddc450.i = getelementptr inbounds %struct.resource_caps, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %num_ddc450.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_ddc450.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp156451.not.i = icmp eq i32 %64, 0
  br i1 %cmp156451.not.i, label %for.cond153.preheader.i.for.end196.i_crit_edge, label %for.cond153.preheader.i.for.body157.i_crit_edge

for.cond153.preheader.i.for.body157.i_crit_edge:  ; preds = %for.cond153.preheader.i
  br label %for.body157.i

for.cond153.preheader.i.for.end196.i_crit_edge:   ; preds = %for.cond153.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end196.i

for.body88.i:                                     ; preds = %for.inc150.i.for.body88.i_crit_edge, %for.cond84.preheader.i.for.body88.i_crit_edge
  %i.1449.i = phi i32 [ %inc151.i, %for.inc150.i.for.body88.i_crit_edge ], [ 0, %for.cond84.preheader.i.for.body88.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i388.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i389.i = icmp eq ptr %call7.i.i.i388.i, null
  br i1 %tobool.not.i389.i, label %do.body98.i, label %if.end101.i

do.body98.i:                                      ; preds = %for.body88.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx92417.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1449.i
  %66 = ptrtoint ptr %arrayidx92417.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx92417.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1049) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #7
  br label %do.body

if.end101.i:                                      ; preds = %for.body88.i
  %arrayidx89.i = getelementptr [6 x %struct.dce110_timing_generator_offsets], ptr @dce80_tg_offsets, i32 0, i32 %i.1449.i
  call void @dce80_timing_generator_construct(ptr noundef nonnull %call7.i.i.i388.i, ptr noundef %2, i32 noundef %i.1449.i, ptr noundef %arrayidx89.i) #7
  %arrayidx92.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1449.i
  %67 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i.i388.i, ptr %arrayidx92.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i391.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3520, i32 noundef 272) #10
  %tobool.not.i392.i = icmp eq ptr %call7.i.i.i391.i, null
  br i1 %tobool.not.i392.i, label %do.body110.i, label %if.end113.i

do.body110.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_mem_input_create, i32 noundef 679) #7
  call void @kgdb_breakpoint() #7
  %arrayidx104418.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1449.i
  %69 = ptrtoint ptr %arrayidx104418.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx104418.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1056) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #7
  br label %do.body

if.end113.i:                                      ; preds = %if.end101.i
  %arrayidx.i.i = getelementptr [6 x %struct.dce_mem_input_registers], ptr @mi_regs, i32 0, i32 %i.1449.i
  call void @dce_mem_input_construct(ptr noundef nonnull %call7.i.i.i391.i, ptr noundef %2, i32 noundef %i.1449.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mi_shifts, ptr noundef nonnull @mi_masks) #7
  %wa.i.i = getelementptr inbounds %struct.dce_mem_input, ptr %call7.i.i.i391.i, i32 0, i32 4
  %70 = ptrtoint ptr %wa.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %wa.i.i, align 4
  %arrayidx104.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1449.i
  %71 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i.i391.i, ptr %arrayidx104.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i394.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i395.i = icmp eq ptr %call7.i.i.i394.i, null
  br i1 %tobool.not.i395.i, label %do.body122.i, label %if.end125.i

do.body122.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_ipp_create, i32 noundef 792) #7
  call void @kgdb_breakpoint() #7
  %arrayidx116419.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1449.i
  %73 = ptrtoint ptr %arrayidx116419.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %arrayidx116419.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1063) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %do.body

if.end125.i:                                      ; preds = %if.end113.i
  %arrayidx.i397.i = getelementptr [6 x %struct.dce_ipp_registers], ptr @ipp_regs, i32 0, i32 %i.1449.i
  call void @dce_ipp_construct(ptr noundef nonnull %call7.i.i.i394.i, ptr noundef %2, i32 noundef %i.1449.i, ptr noundef %arrayidx.i397.i, ptr noundef nonnull @ipp_shift, ptr noundef nonnull @ipp_mask) #7
  %arrayidx116.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1449.i
  %74 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i.i394.i, ptr %arrayidx116.i, align 4
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19280, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i399.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i399.i, label %do.body134.i, label %if.end137.i

do.body134.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx128420.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1449.i
  %75 = ptrtoint ptr %arrayidx128420.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arrayidx128420.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1070) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %do.body

if.end137.i:                                      ; preds = %if.end125.i
  %arrayidx.i400.i = getelementptr [6 x %struct.dce_transform_registers], ptr @xfm_regs, i32 0, i32 %i.1449.i
  call void @dce_transform_construct(ptr noundef nonnull %call1.i.i.i.i.i, ptr noundef %2, i32 noundef %i.1449.i, ptr noundef %arrayidx.i400.i, ptr noundef nonnull @xfm_shift, ptr noundef nonnull @xfm_mask) #7
  %prescaler_on.i.i = getelementptr inbounds %struct.dce_transform, ptr %call1.i.i.i.i.i, i32 0, i32 11
  %76 = ptrtoint ptr %prescaler_on.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %prescaler_on.i.i, align 8
  %arrayidx128.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1449.i
  %77 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx128.i, align 4
  %call1.i.i.i.i402.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19264, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i403.i = icmp eq ptr %call1.i.i.i.i402.i, null
  br i1 %tobool.not.i403.i, label %do.body146.i, label %for.inc150.i

do.body146.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx140421.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1449.i
  %78 = ptrtoint ptr %arrayidx140421.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %arrayidx140421.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1077) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %do.body

for.inc150.i:                                     ; preds = %if.end137.i
  %arrayidx.i404.i = getelementptr [6 x %struct.dce_opp_registers], ptr @opp_regs, i32 0, i32 %i.1449.i
  call void @dce110_opp_construct(ptr noundef nonnull %call1.i.i.i.i402.i, ptr noundef %2, i32 noundef %i.1449.i, ptr noundef %arrayidx.i404.i, ptr noundef nonnull @opp_shift, ptr noundef nonnull @opp_mask) #7
  %arrayidx140.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1449.i
  %79 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call1.i.i.i.i402.i, ptr %arrayidx140.i, align 4
  %inc151.i = add nuw i32 %i.1449.i, 1
  %80 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pipe_count.i, align 4
  %cmp87.i = icmp ult i32 %inc151.i, %81
  br i1 %cmp87.i, label %for.inc150.i.for.body88.i_crit_edge, label %for.inc150.i.for.cond153.preheader.i_crit_edge

for.inc150.i.for.cond153.preheader.i_crit_edge:   ; preds = %for.inc150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond153.preheader.i

for.inc150.i.for.body88.i_crit_edge:              ; preds = %for.inc150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body88.i

for.body157.i:                                    ; preds = %for.inc194.i.for.body157.i_crit_edge, %for.cond153.preheader.i.for.body157.i_crit_edge
  %i.2452.i = phi i32 [ %inc195.i, %for.inc194.i.for.body157.i_crit_edge ], [ 0, %for.cond153.preheader.i.for.body157.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i406.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i407.i = icmp eq ptr %call7.i.i.i406.i, null
  br i1 %tobool.not.i407.i, label %do.body166.i, label %if.end169.i

do.body166.i:                                     ; preds = %for.body157.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx160422.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2452.i
  %83 = ptrtoint ptr %arrayidx160422.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %arrayidx160422.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1086) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %do.body

if.end169.i:                                      ; preds = %for.body157.i
  %arrayidx.i408.i = getelementptr [6 x %struct.dce110_aux_registers], ptr @aux_engine_regs, i32 0, i32 %i.2452.i
  %84 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %2, align 8
  %extended_aux_timeout_support.i.i = getelementptr inbounds %struct.dc, ptr %85, i32 0, i32 2, i32 23
  %86 = ptrtoint ptr %extended_aux_timeout_support.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %extended_aux_timeout_support.i.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool1.i.i = icmp ne i8 %87, 0
  %call2.i.i = call ptr @dce110_aux_engine_construct(ptr noundef nonnull %call7.i.i.i406.i, ptr noundef %2, i32 noundef %i.2452.i, i32 noundef 2400, ptr noundef %arrayidx.i408.i, ptr noundef nonnull @aux_mask, ptr noundef nonnull @aux_shift, i1 noundef zeroext %tobool1.i.i) #7
  %arrayidx160.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2452.i
  %88 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i.i406.i, ptr %arrayidx160.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i410.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not.i411.i = icmp eq ptr %call7.i.i.i410.i, null
  br i1 %tobool.not.i411.i, label %do.body178.i, label %if.end181.i

do.body178.i:                                     ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx172423.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2452.i
  %90 = ptrtoint ptr %arrayidx172423.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %arrayidx172423.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1093) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %do.body

if.end181.i:                                      ; preds = %if.end169.i
  %arrayidx.i412.i = getelementptr [6 x %struct.dce_i2c_registers], ptr @i2c_hw_regs, i32 0, i32 %i.2452.i
  call void @dce_i2c_hw_construct(ptr noundef nonnull %call7.i.i.i410.i, ptr noundef %2, i32 noundef %i.2452.i, ptr noundef %arrayidx.i412.i, ptr noundef nonnull @i2c_shifts, ptr noundef nonnull @i2c_masks) #7
  %arrayidx172.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2452.i
  %91 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i.i410.i, ptr %arrayidx172.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i414.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not.i415.i = icmp eq ptr %call7.i.i.i414.i, null
  br i1 %tobool.not.i415.i, label %do.body190.i, label %for.inc194.i

do.body190.i:                                     ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx184424.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2452.i
  %93 = ptrtoint ptr %arrayidx184424.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %arrayidx184424.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_construct, i32 noundef 1100) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %do.body

for.inc194.i:                                     ; preds = %if.end181.i
  call void @dce_i2c_sw_construct(ptr noundef nonnull %call7.i.i.i414.i, ptr noundef %2) #7
  %arrayidx184.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2452.i
  %94 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call7.i.i.i414.i, ptr %arrayidx184.i, align 4
  %inc195.i = add nuw i32 %i.2452.i, 1
  %95 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %res_cap.i, align 4
  %num_ddc.i = getelementptr inbounds %struct.resource_caps, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %num_ddc.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_ddc.i, align 4
  %cmp156.i = icmp ult i32 %inc195.i, %98
  br i1 %cmp156.i, label %for.inc194.i.for.body157.i_crit_edge, label %for.inc194.i.for.end196.i_crit_edge

for.inc194.i.for.end196.i_crit_edge:              ; preds = %for.inc194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end196.i

for.inc194.i.for.body157.i_crit_edge:             ; preds = %for.inc194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body157.i

for.end196.i:                                     ; preds = %for.inc194.i.for.end196.i_crit_edge, %for.cond153.preheader.i.for.end196.i_crit_edge
  %99 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pipe_count.i, align 4
  %max_planes.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 6
  %101 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %max_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp203453.not.i = icmp eq i32 %100, 0
  br i1 %cmp203453.not.i, label %for.end196.i.for.end209.i_crit_edge, label %for.end196.i.for.body204.i_crit_edge

for.end196.i.for.body204.i_crit_edge:             ; preds = %for.end196.i
  br label %for.body204.i

for.end196.i.for.end209.i_crit_edge:              ; preds = %for.end196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end209.i

for.body204.i:                                    ; preds = %for.body204.i.for.body204.i_crit_edge, %for.end196.i.for.body204.i_crit_edge
  %i.3454.i = phi i32 [ %inc208.i, %for.body204.i.for.body204.i_crit_edge ], [ 0, %for.end196.i.for.body204.i_crit_edge ]
  %arrayidx206.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 2, i32 30, i32 %i.3454.i
  %102 = call ptr @memcpy(ptr %arrayidx206.i, ptr @plane_cap, i32 44)
  %inc208.i = add nuw i32 %i.3454.i, 1
  %103 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_planes.i, align 4
  %cmp203.i = icmp ult i32 %inc208.i, %104
  br i1 %cmp203.i, label %for.body204.i.for.body204.i_crit_edge, label %for.body204.i.for.end209.i_crit_edge

for.body204.i.for.end209.i_crit_edge:             ; preds = %for.body204.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end209.i

for.body204.i.for.body204.i_crit_edge:            ; preds = %for.body204.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body204.i

for.end209.i:                                     ; preds = %for.body204.i.for.end209.i_crit_edge, %for.end196.i.for.end209.i_crit_edge
  %disable_dp_clk_share.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 21
  %105 = ptrtoint ptr %disable_dp_clk_share.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %disable_dp_clk_share.i, align 2
  %conv.i = zext i8 %num_virtual_links to i32
  %call212.i = call zeroext i1 @resource_construct(i32 noundef %conv.i, ptr noundef %dc, ptr noundef %call7.i.i, ptr noundef nonnull @res_create_funcs) #7
  br i1 %call212.i, label %dce80_construct.exit.thread, label %for.end209.i.do.body_crit_edge

for.end209.i.do.body_crit_edge:                   ; preds = %for.end209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

dce80_construct.exit.thread:                      ; preds = %for.end209.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dce80_hw_sequencer_construct(ptr noundef %dc) #7
  br label %cleanup

do.body:                                          ; preds = %for.end209.i.do.body_crit_edge, %do.body190.i, %do.body178.i, %do.body166.i, %do.body146.i, %do.body134.i, %do.body122.i, %do.body110.i, %do.body98.i, %if.end74.i.do.body_crit_edge, %if.then70.i, %if.then60.i, %if.then50.i, %if.then41.i
  call fastcc void @dce80_resource_destruct(ptr noundef %call7.i.i) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_create_resource_pool, i32 noundef 1141) #7
  call void @kgdb_breakpoint() #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %dce80_construct.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dce80_construct.exit.thread ]
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
define dso_local ptr @dce81_create_resource_pool(i8 noundef zeroext %num_virtual_links, ptr noundef %dc) local_unnamed_addr #0 align 64 {
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
  store ptr @res_cap_81, ptr %res_cap.i, align 4
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 40
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dce80_res_pool_funcs, ptr %funcs.i, align 8
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
  %i2c_speed_in_khz_hdcp.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 9
  %13 = ptrtoint ptr %i2c_speed_in_khz_hdcp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 40, ptr %i2c_speed_in_khz_hdcp.i, align 4
  %max_cursor_size.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 11
  %14 = ptrtoint ptr %max_cursor_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %max_cursor_size.i, align 4
  %min_horizontal_blanking_period.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 13
  %15 = ptrtoint ptr %min_horizontal_blanking_period.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 80, ptr %min_horizontal_blanking_period.i, align 4
  %is_apu.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 17
  %16 = ptrtoint ptr %is_apu.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %is_apu.i, align 2
  %17 = load ptr, ptr %dc_bios.i, align 4
  %fw_info_valid.i = getelementptr inbounds %struct.dc_bios, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %fw_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fw_info_valid.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %external_clock_source_frequency_for_dp.i = getelementptr inbounds %struct.dc_bios, ptr %17, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %external_clock_source_frequency_for_dp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %external_clock_source_frequency_for_dp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.dce80_clock_source_create.exit.i_crit_edge, label %if.end.i.i

if.then.i.dce80_clock_source_create.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %2, ptr noundef %17, i32 noundef 4, ptr noundef null, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i.i, label %if.then2.i.i, label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %dp_clk_src4.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %dp_clk_src4.i.i, align 4
  br label %dce80_clock_source_create.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit.i

dce80_clock_source_create.exit.i:                 ; preds = %if.end7.i.i, %if.then2.i.i, %if.then.i.dce80_clock_source_create.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %if.then2.i.i ], [ null, %if.end7.i.i ], [ null, %if.then.i.dce80_clock_source_create.exit.i_crit_edge ]
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %24 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i.i, ptr %dp_clock_source.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i332.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i333.i = icmp eq ptr %call7.i.i.i332.i, null
  br i1 %tobool.not.i333.i, label %dce80_clock_source_create.exit.i.dce80_clock_source_create.exit340.i_crit_edge, label %if.end.i335.i

dce80_clock_source_create.exit.i.dce80_clock_source_create.exit340.i_crit_edge: ; preds = %dce80_clock_source_create.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit340.i

if.end.i335.i:                                    ; preds = %dce80_clock_source_create.exit.i
  %call1.i334.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i332.i, ptr noundef %2, ptr noundef %17, i32 noundef 1, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i334.i, label %if.then2.i337.i, label %if.end7.i338.i

if.then2.i337.i:                                  ; preds = %if.end.i335.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i336.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i332.i, i32 0, i32 3
  %26 = ptrtoint ptr %dp_clk_src4.i336.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %dp_clk_src4.i336.i, align 4
  br label %dce80_clock_source_create.exit340.i

if.end7.i338.i:                                   ; preds = %if.end.i335.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i332.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit340.i

dce80_clock_source_create.exit340.i:              ; preds = %if.end7.i338.i, %if.then2.i337.i, %dce80_clock_source_create.exit.i.dce80_clock_source_create.exit340.i_crit_edge
  %retval.0.i339.i = phi ptr [ %call7.i.i.i332.i, %if.then2.i337.i ], [ null, %if.end7.i338.i ], [ null, %dce80_clock_source_create.exit.i.dce80_clock_source_create.exit340.i_crit_edge ]
  %clock_sources.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %27 = ptrtoint ptr %clock_sources.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i339.i, ptr %clock_sources.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i341.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i342.i = icmp eq ptr %call7.i.i.i341.i, null
  br i1 %tobool.not.i342.i, label %dce80_clock_source_create.exit340.i.dce80_clock_source_create.exit349.i_crit_edge, label %if.end.i344.i

dce80_clock_source_create.exit340.i.dce80_clock_source_create.exit349.i_crit_edge: ; preds = %dce80_clock_source_create.exit340.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit349.i

if.end.i344.i:                                    ; preds = %dce80_clock_source_create.exit340.i
  %call1.i343.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i341.i, ptr noundef %2, ptr noundef %17, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i343.i, label %if.then2.i346.i, label %if.end7.i347.i

if.then2.i346.i:                                  ; preds = %if.end.i344.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i345.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i341.i, i32 0, i32 3
  %29 = ptrtoint ptr %dp_clk_src4.i345.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %dp_clk_src4.i345.i, align 4
  br label %dce80_clock_source_create.exit349.i

if.end7.i347.i:                                   ; preds = %if.end.i344.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i341.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit349.i

dce80_clock_source_create.exit349.i:              ; preds = %if.end7.i347.i, %if.then2.i346.i, %dce80_clock_source_create.exit340.i.dce80_clock_source_create.exit349.i_crit_edge
  %retval.0.i348.i = phi ptr [ %call7.i.i.i341.i, %if.then2.i346.i ], [ null, %if.end7.i347.i ], [ null, %dce80_clock_source_create.exit340.i.dce80_clock_source_create.exit349.i_crit_edge ]
  %arrayidx18.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %30 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i348.i, ptr %arrayidx18.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i350.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i351.i = icmp eq ptr %call7.i.i.i350.i, null
  br i1 %tobool.not.i351.i, label %dce80_clock_source_create.exit349.i.dce80_clock_source_create.exit358.i_crit_edge, label %if.end.i353.i

dce80_clock_source_create.exit349.i.dce80_clock_source_create.exit358.i_crit_edge: ; preds = %dce80_clock_source_create.exit349.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit358.i

if.end.i353.i:                                    ; preds = %dce80_clock_source_create.exit349.i
  %call1.i352.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i350.i, ptr noundef %2, ptr noundef %17, i32 noundef 3, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 2), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i352.i, label %if.then2.i355.i, label %if.end7.i356.i

if.then2.i355.i:                                  ; preds = %if.end.i353.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i354.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i350.i, i32 0, i32 3
  %32 = ptrtoint ptr %dp_clk_src4.i354.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %dp_clk_src4.i354.i, align 4
  br label %dce80_clock_source_create.exit358.i

if.end7.i356.i:                                   ; preds = %if.end.i353.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i350.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit358.i

dce80_clock_source_create.exit358.i:              ; preds = %if.end7.i356.i, %if.then2.i355.i, %dce80_clock_source_create.exit349.i.dce80_clock_source_create.exit358.i_crit_edge
  %retval.0.i357.i = phi ptr [ %call7.i.i.i350.i, %if.then2.i355.i ], [ null, %if.end7.i356.i ], [ null, %dce80_clock_source_create.exit349.i.dce80_clock_source_create.exit358.i_crit_edge ]
  %arrayidx22.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 2
  %33 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i357.i, ptr %arrayidx22.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i359.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i360.i = icmp eq ptr %call7.i.i.i359.i, null
  br i1 %tobool.not.i360.i, label %if.else.i.dce80_clock_source_create.exit367.i_crit_edge, label %if.end.i362.i

if.else.i.dce80_clock_source_create.exit367.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit367.i

if.end.i362.i:                                    ; preds = %if.else.i
  %call1.i361.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i359.i, ptr noundef %2, ptr noundef %17, i32 noundef 1, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i361.i, label %if.then2.i364.i, label %if.end7.i365.i

if.then2.i364.i:                                  ; preds = %if.end.i362.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i363.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i359.i, i32 0, i32 3
  %35 = ptrtoint ptr %dp_clk_src4.i363.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %dp_clk_src4.i363.i, align 4
  br label %dce80_clock_source_create.exit367.i

if.end7.i365.i:                                   ; preds = %if.end.i362.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i359.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit367.i

dce80_clock_source_create.exit367.i:              ; preds = %if.end7.i365.i, %if.then2.i364.i, %if.else.i.dce80_clock_source_create.exit367.i_crit_edge
  %retval.0.i366.i = phi ptr [ %call7.i.i.i359.i, %if.then2.i364.i ], [ null, %if.end7.i365.i ], [ null, %if.else.i.dce80_clock_source_create.exit367.i_crit_edge ]
  %dp_clock_source26.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %36 = ptrtoint ptr %dp_clock_source26.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retval.0.i366.i, ptr %dp_clock_source26.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i368.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i369.i = icmp eq ptr %call7.i.i.i368.i, null
  br i1 %tobool.not.i369.i, label %dce80_clock_source_create.exit367.i.dce80_clock_source_create.exit376.i_crit_edge, label %if.end.i371.i

dce80_clock_source_create.exit367.i.dce80_clock_source_create.exit376.i_crit_edge: ; preds = %dce80_clock_source_create.exit367.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit376.i

if.end.i371.i:                                    ; preds = %dce80_clock_source_create.exit367.i
  %call1.i370.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i368.i, ptr noundef %2, ptr noundef %17, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i370.i, label %if.then2.i373.i, label %if.end7.i374.i

if.then2.i373.i:                                  ; preds = %if.end.i371.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i372.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i368.i, i32 0, i32 3
  %38 = ptrtoint ptr %dp_clk_src4.i372.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %dp_clk_src4.i372.i, align 4
  br label %dce80_clock_source_create.exit376.i

if.end7.i374.i:                                   ; preds = %if.end.i371.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i368.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit376.i

dce80_clock_source_create.exit376.i:              ; preds = %if.end7.i374.i, %if.then2.i373.i, %dce80_clock_source_create.exit367.i.dce80_clock_source_create.exit376.i_crit_edge
  %retval.0.i375.i = phi ptr [ %call7.i.i.i368.i, %if.then2.i373.i ], [ null, %if.end7.i374.i ], [ null, %dce80_clock_source_create.exit367.i.dce80_clock_source_create.exit376.i_crit_edge ]
  %clock_sources29.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %39 = ptrtoint ptr %clock_sources29.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i375.i, ptr %clock_sources29.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i377.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i378.i = icmp eq ptr %call7.i.i.i377.i, null
  br i1 %tobool.not.i378.i, label %dce80_clock_source_create.exit376.i.dce80_clock_source_create.exit385.i_crit_edge, label %if.end.i380.i

dce80_clock_source_create.exit376.i.dce80_clock_source_create.exit385.i_crit_edge: ; preds = %dce80_clock_source_create.exit376.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit385.i

if.end.i380.i:                                    ; preds = %dce80_clock_source_create.exit376.i
  %call1.i379.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i377.i, ptr noundef %2, ptr noundef %17, i32 noundef 3, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 2), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i379.i, label %if.then2.i382.i, label %if.end7.i383.i

if.then2.i382.i:                                  ; preds = %if.end.i380.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i381.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i377.i, i32 0, i32 3
  %41 = ptrtoint ptr %dp_clk_src4.i381.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %dp_clk_src4.i381.i, align 4
  br label %dce80_clock_source_create.exit385.i

if.end7.i383.i:                                   ; preds = %if.end.i380.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i377.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit385.i

dce80_clock_source_create.exit385.i:              ; preds = %if.end7.i383.i, %if.then2.i382.i, %dce80_clock_source_create.exit376.i.dce80_clock_source_create.exit385.i_crit_edge
  %retval.0.i384.i = phi ptr [ %call7.i.i.i377.i, %if.then2.i382.i ], [ null, %if.end7.i383.i ], [ null, %dce80_clock_source_create.exit376.i.dce80_clock_source_create.exit385.i_crit_edge ]
  %arrayidx34.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %42 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %retval.0.i384.i, ptr %arrayidx34.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %dce80_clock_source_create.exit385.i, %dce80_clock_source_create.exit358.i
  %exitcond.not.i.1 = phi i1 [ true, %dce80_clock_source_create.exit385.i ], [ false, %dce80_clock_source_create.exit358.i ]
  %.sink.i = phi i32 [ 2, %dce80_clock_source_create.exit385.i ], [ 3, %dce80_clock_source_create.exit358.i ]
  %clk_src_count36.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 31
  %43 = ptrtoint ptr %clk_src_count36.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink.i, ptr %clk_src_count36.i, align 4
  %dp_clock_source38.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %44 = ptrtoint ptr %dp_clock_source38.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dp_clock_source38.i, align 4
  %cmp39.i = icmp eq ptr %45, null
  br i1 %cmp39.i, label %if.then40.i, label %for.body.i

if.then40.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1204) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.body.i.1:                                     ; preds = %for.body.i
  %arrayidx47.i.1 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %46 = ptrtoint ptr %arrayidx47.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx47.i.1, align 4
  %cmp48.i.1 = icmp eq ptr %47, null
  br i1 %cmp48.i.1, label %for.body.i.1.if.then49.i_crit_edge, label %for.cond.i.1

for.body.i.1.if.then49.i_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49.i

for.cond.i.1:                                     ; preds = %for.body.i.1
  br i1 %exitcond.not.i.1, label %for.cond.i.1.for.end.i_crit_edge, label %for.body.i.2

for.cond.i.1.for.end.i_crit_edge:                 ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.cond.i.1
  %arrayidx47.i.2 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 2
  %48 = ptrtoint ptr %arrayidx47.i.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx47.i.2, align 8
  %cmp48.i.2 = icmp eq ptr %49, null
  br i1 %cmp48.i.2, label %for.body.i.2.if.then49.i_crit_edge, label %for.body.i.2.for.end.i_crit_edge

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.2.if.then49.i_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49.i

for.body.i:                                       ; preds = %if.end.i
  %arrayidx47.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 0
  %50 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx47.i, align 8
  %cmp48.i = icmp eq ptr %51, null
  br i1 %cmp48.i, label %for.body.i.if.then49.i_crit_edge, label %for.body.i.1

for.body.i.if.then49.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49.i

if.then49.i:                                      ; preds = %for.body.i.if.then49.i_crit_edge, %for.body.i.2.if.then49.i_crit_edge, %for.body.i.1.if.then49.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1211) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.end.i:                                        ; preds = %for.body.i.2.for.end.i_crit_edge, %for.cond.i.1.for.end.i_crit_edge
  %call54.i = tail call ptr @dce_dmcu_create(ptr noundef %2, ptr noundef nonnull @dmcu_regs, ptr noundef nonnull @dmcu_shift, ptr noundef nonnull @dmcu_mask) #7
  %dmcu.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 38
  %52 = ptrtoint ptr %dmcu.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call54.i, ptr %dmcu.i, align 8
  %cmp58.i = icmp eq ptr %call54.i, null
  br i1 %cmp58.i, label %if.then59.i, label %if.end63.i

if.then59.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1222) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end63.i:                                       ; preds = %for.end.i
  %call64.i = tail call ptr @dce_abm_create(ptr noundef %2, ptr noundef nonnull @abm_regs, ptr noundef nonnull @abm_shift, ptr noundef nonnull @abm_mask) #7
  %abm.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 37
  %53 = ptrtoint ptr %abm.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call64.i, ptr %abm.i, align 4
  %cmp68.i = icmp eq ptr %call64.i, null
  br i1 %cmp68.i, label %if.then69.i, label %if.end73.i

if.then69.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1232) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end73.i:                                       ; preds = %if.end63.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_data.i) #7
  %54 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx1.i, align 8
  %56 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %init_data.i, align 4
  %call76.i = call ptr @dal_irq_service_dce80_create(ptr noundef nonnull %init_data.i) #7
  %irqs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 36
  %57 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call76.i, ptr %irqs.i, align 8
  %tobool80.not.i = icmp eq ptr %call76.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_data.i) #7
  br i1 %tobool80.not.i, label %if.end73.i.do.body_crit_edge, label %for.cond83.preheader.i

if.end73.i.do.body_crit_edge:                     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond83.preheader.i:                           ; preds = %if.end73.i
  %58 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp86446.not.i = icmp eq i32 %59, 0
  br i1 %cmp86446.not.i, label %for.cond83.preheader.i.for.cond152.preheader.i_crit_edge, label %for.cond83.preheader.i.for.body87.i_crit_edge

for.cond83.preheader.i.for.body87.i_crit_edge:    ; preds = %for.cond83.preheader.i
  br label %for.body87.i

for.cond83.preheader.i.for.cond152.preheader.i_crit_edge: ; preds = %for.cond83.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond152.preheader.i

for.cond152.preheader.i:                          ; preds = %for.inc149.i.for.cond152.preheader.i_crit_edge, %for.cond83.preheader.i.for.cond152.preheader.i_crit_edge
  %60 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %res_cap.i, align 4
  %num_ddc448.i = getelementptr inbounds %struct.resource_caps, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %num_ddc448.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_ddc448.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp155449.not.i = icmp eq i32 %63, 0
  br i1 %cmp155449.not.i, label %for.cond152.preheader.i.for.end195.i_crit_edge, label %for.cond152.preheader.i.for.body156.i_crit_edge

for.cond152.preheader.i.for.body156.i_crit_edge:  ; preds = %for.cond152.preheader.i
  br label %for.body156.i

for.cond152.preheader.i.for.end195.i_crit_edge:   ; preds = %for.cond152.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end195.i

for.body87.i:                                     ; preds = %for.inc149.i.for.body87.i_crit_edge, %for.cond83.preheader.i.for.body87.i_crit_edge
  %i.1447.i = phi i32 [ %inc150.i, %for.inc149.i.for.body87.i_crit_edge ], [ 0, %for.cond83.preheader.i.for.body87.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i386.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i387.i = icmp eq ptr %call7.i.i.i386.i, null
  br i1 %tobool.not.i387.i, label %do.body97.i, label %if.end100.i

do.body97.i:                                      ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx91415.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1447.i
  %65 = ptrtoint ptr %arrayidx91415.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx91415.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1248) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #7
  br label %do.body

if.end100.i:                                      ; preds = %for.body87.i
  %arrayidx88.i = getelementptr [6 x %struct.dce110_timing_generator_offsets], ptr @dce80_tg_offsets, i32 0, i32 %i.1447.i
  call void @dce80_timing_generator_construct(ptr noundef nonnull %call7.i.i.i386.i, ptr noundef %2, i32 noundef %i.1447.i, ptr noundef %arrayidx88.i) #7
  %arrayidx91.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1447.i
  %66 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i.i386.i, ptr %arrayidx91.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i389.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 272) #10
  %tobool.not.i390.i = icmp eq ptr %call7.i.i.i389.i, null
  br i1 %tobool.not.i390.i, label %do.body109.i, label %if.end112.i

do.body109.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_mem_input_create, i32 noundef 679) #7
  call void @kgdb_breakpoint() #7
  %arrayidx103416.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1447.i
  %68 = ptrtoint ptr %arrayidx103416.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx103416.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1255) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #7
  br label %do.body

if.end112.i:                                      ; preds = %if.end100.i
  %arrayidx.i.i = getelementptr [6 x %struct.dce_mem_input_registers], ptr @mi_regs, i32 0, i32 %i.1447.i
  call void @dce_mem_input_construct(ptr noundef nonnull %call7.i.i.i389.i, ptr noundef %2, i32 noundef %i.1447.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mi_shifts, ptr noundef nonnull @mi_masks) #7
  %wa.i.i = getelementptr inbounds %struct.dce_mem_input, ptr %call7.i.i.i389.i, i32 0, i32 4
  %69 = ptrtoint ptr %wa.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %wa.i.i, align 4
  %arrayidx103.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1447.i
  %70 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i.i389.i, ptr %arrayidx103.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i392.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i393.i = icmp eq ptr %call7.i.i.i392.i, null
  br i1 %tobool.not.i393.i, label %do.body121.i, label %if.end124.i

do.body121.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_ipp_create, i32 noundef 792) #7
  call void @kgdb_breakpoint() #7
  %arrayidx115417.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1447.i
  %72 = ptrtoint ptr %arrayidx115417.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx115417.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1262) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %do.body

if.end124.i:                                      ; preds = %if.end112.i
  %arrayidx.i395.i = getelementptr [6 x %struct.dce_ipp_registers], ptr @ipp_regs, i32 0, i32 %i.1447.i
  call void @dce_ipp_construct(ptr noundef nonnull %call7.i.i.i392.i, ptr noundef %2, i32 noundef %i.1447.i, ptr noundef %arrayidx.i395.i, ptr noundef nonnull @ipp_shift, ptr noundef nonnull @ipp_mask) #7
  %arrayidx115.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1447.i
  %73 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i.i392.i, ptr %arrayidx115.i, align 4
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19280, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i397.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i397.i, label %do.body133.i, label %if.end136.i

do.body133.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx127418.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1447.i
  %74 = ptrtoint ptr %arrayidx127418.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx127418.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1269) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %do.body

if.end136.i:                                      ; preds = %if.end124.i
  %arrayidx.i398.i = getelementptr [6 x %struct.dce_transform_registers], ptr @xfm_regs, i32 0, i32 %i.1447.i
  call void @dce_transform_construct(ptr noundef nonnull %call1.i.i.i.i.i, ptr noundef %2, i32 noundef %i.1447.i, ptr noundef %arrayidx.i398.i, ptr noundef nonnull @xfm_shift, ptr noundef nonnull @xfm_mask) #7
  %prescaler_on.i.i = getelementptr inbounds %struct.dce_transform, ptr %call1.i.i.i.i.i, i32 0, i32 11
  %75 = ptrtoint ptr %prescaler_on.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %prescaler_on.i.i, align 8
  %arrayidx127.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1447.i
  %76 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx127.i, align 4
  %call1.i.i.i.i400.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19264, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i401.i = icmp eq ptr %call1.i.i.i.i400.i, null
  br i1 %tobool.not.i401.i, label %do.body145.i, label %for.inc149.i

do.body145.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx139419.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1447.i
  %77 = ptrtoint ptr %arrayidx139419.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx139419.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1276) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %do.body

for.inc149.i:                                     ; preds = %if.end136.i
  %arrayidx.i402.i = getelementptr [6 x %struct.dce_opp_registers], ptr @opp_regs, i32 0, i32 %i.1447.i
  call void @dce110_opp_construct(ptr noundef nonnull %call1.i.i.i.i400.i, ptr noundef %2, i32 noundef %i.1447.i, ptr noundef %arrayidx.i402.i, ptr noundef nonnull @opp_shift, ptr noundef nonnull @opp_mask) #7
  %arrayidx139.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1447.i
  %78 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call1.i.i.i.i400.i, ptr %arrayidx139.i, align 4
  %inc150.i = add nuw i32 %i.1447.i, 1
  %79 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pipe_count.i, align 4
  %cmp86.i = icmp ult i32 %inc150.i, %80
  br i1 %cmp86.i, label %for.inc149.i.for.body87.i_crit_edge, label %for.inc149.i.for.cond152.preheader.i_crit_edge

for.inc149.i.for.cond152.preheader.i_crit_edge:   ; preds = %for.inc149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond152.preheader.i

for.inc149.i.for.body87.i_crit_edge:              ; preds = %for.inc149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body87.i

for.body156.i:                                    ; preds = %for.inc193.i.for.body156.i_crit_edge, %for.cond152.preheader.i.for.body156.i_crit_edge
  %i.2450.i = phi i32 [ %inc194.i, %for.inc193.i.for.body156.i_crit_edge ], [ 0, %for.cond152.preheader.i.for.body156.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i404.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i405.i = icmp eq ptr %call7.i.i.i404.i, null
  br i1 %tobool.not.i405.i, label %do.body165.i, label %if.end168.i

do.body165.i:                                     ; preds = %for.body156.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx159420.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2450.i
  %82 = ptrtoint ptr %arrayidx159420.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %arrayidx159420.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1285) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %do.body

if.end168.i:                                      ; preds = %for.body156.i
  %arrayidx.i406.i = getelementptr [6 x %struct.dce110_aux_registers], ptr @aux_engine_regs, i32 0, i32 %i.2450.i
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %2, align 8
  %extended_aux_timeout_support.i.i = getelementptr inbounds %struct.dc, ptr %84, i32 0, i32 2, i32 23
  %85 = ptrtoint ptr %extended_aux_timeout_support.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %extended_aux_timeout_support.i.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool1.i.i = icmp ne i8 %86, 0
  %call2.i.i = call ptr @dce110_aux_engine_construct(ptr noundef nonnull %call7.i.i.i404.i, ptr noundef %2, i32 noundef %i.2450.i, i32 noundef 2400, ptr noundef %arrayidx.i406.i, ptr noundef nonnull @aux_mask, ptr noundef nonnull @aux_shift, i1 noundef zeroext %tobool1.i.i) #7
  %arrayidx159.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2450.i
  %87 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.i.i404.i, ptr %arrayidx159.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i408.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not.i409.i = icmp eq ptr %call7.i.i.i408.i, null
  br i1 %tobool.not.i409.i, label %do.body177.i, label %if.end180.i

do.body177.i:                                     ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx171421.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2450.i
  %89 = ptrtoint ptr %arrayidx171421.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx171421.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1292) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %do.body

if.end180.i:                                      ; preds = %if.end168.i
  %arrayidx.i410.i = getelementptr [6 x %struct.dce_i2c_registers], ptr @i2c_hw_regs, i32 0, i32 %i.2450.i
  call void @dce_i2c_hw_construct(ptr noundef nonnull %call7.i.i.i408.i, ptr noundef %2, i32 noundef %i.2450.i, ptr noundef %arrayidx.i410.i, ptr noundef nonnull @i2c_shifts, ptr noundef nonnull @i2c_masks) #7
  %arrayidx171.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2450.i
  %90 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i.i408.i, ptr %arrayidx171.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %91 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i412.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not.i413.i = icmp eq ptr %call7.i.i.i412.i, null
  br i1 %tobool.not.i413.i, label %do.body189.i, label %for.inc193.i

do.body189.i:                                     ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx183422.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2450.i
  %92 = ptrtoint ptr %arrayidx183422.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %arrayidx183422.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_construct, i32 noundef 1299) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %do.body

for.inc193.i:                                     ; preds = %if.end180.i
  call void @dce_i2c_sw_construct(ptr noundef nonnull %call7.i.i.i412.i, ptr noundef %2) #7
  %arrayidx183.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2450.i
  %93 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i.i412.i, ptr %arrayidx183.i, align 4
  %inc194.i = add nuw i32 %i.2450.i, 1
  %94 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %res_cap.i, align 4
  %num_ddc.i = getelementptr inbounds %struct.resource_caps, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %num_ddc.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_ddc.i, align 4
  %cmp155.i = icmp ult i32 %inc194.i, %97
  br i1 %cmp155.i, label %for.inc193.i.for.body156.i_crit_edge, label %for.inc193.i.for.end195.i_crit_edge

for.inc193.i.for.end195.i_crit_edge:              ; preds = %for.inc193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end195.i

for.inc193.i.for.body156.i_crit_edge:             ; preds = %for.inc193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body156.i

for.end195.i:                                     ; preds = %for.inc193.i.for.end195.i_crit_edge, %for.cond152.preheader.i.for.end195.i_crit_edge
  %98 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pipe_count.i, align 4
  %max_planes.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 6
  %100 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %max_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp202451.not.i = icmp eq i32 %99, 0
  br i1 %cmp202451.not.i, label %for.end195.i.for.end208.i_crit_edge, label %for.end195.i.for.body203.i_crit_edge

for.end195.i.for.body203.i_crit_edge:             ; preds = %for.end195.i
  br label %for.body203.i

for.end195.i.for.end208.i_crit_edge:              ; preds = %for.end195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end208.i

for.body203.i:                                    ; preds = %for.body203.i.for.body203.i_crit_edge, %for.end195.i.for.body203.i_crit_edge
  %i.3452.i = phi i32 [ %inc207.i, %for.body203.i.for.body203.i_crit_edge ], [ 0, %for.end195.i.for.body203.i_crit_edge ]
  %arrayidx205.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 2, i32 30, i32 %i.3452.i
  %101 = call ptr @memcpy(ptr %arrayidx205.i, ptr @plane_cap, i32 44)
  %inc207.i = add nuw i32 %i.3452.i, 1
  %102 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_planes.i, align 4
  %cmp202.i = icmp ult i32 %inc207.i, %103
  br i1 %cmp202.i, label %for.body203.i.for.body203.i_crit_edge, label %for.body203.i.for.end208.i_crit_edge

for.body203.i.for.end208.i_crit_edge:             ; preds = %for.body203.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end208.i

for.body203.i.for.body203.i_crit_edge:            ; preds = %for.body203.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body203.i

for.end208.i:                                     ; preds = %for.body203.i.for.end208.i_crit_edge, %for.end195.i.for.end208.i_crit_edge
  %disable_dp_clk_share.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 21
  %104 = ptrtoint ptr %disable_dp_clk_share.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %disable_dp_clk_share.i, align 2
  %conv.i = zext i8 %num_virtual_links to i32
  %call211.i = call zeroext i1 @resource_construct(i32 noundef %conv.i, ptr noundef %dc, ptr noundef %call7.i.i, ptr noundef nonnull @res_create_funcs) #7
  br i1 %call211.i, label %dce81_construct.exit.thread, label %for.end208.i.do.body_crit_edge

for.end208.i.do.body_crit_edge:                   ; preds = %for.end208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

dce81_construct.exit.thread:                      ; preds = %for.end208.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dce80_hw_sequencer_construct(ptr noundef %dc) #7
  br label %cleanup

do.body:                                          ; preds = %for.end208.i.do.body_crit_edge, %do.body189.i, %do.body177.i, %do.body165.i, %do.body145.i, %do.body133.i, %do.body121.i, %do.body109.i, %do.body97.i, %if.end73.i.do.body_crit_edge, %if.then69.i, %if.then59.i, %if.then49.i, %if.then40.i
  call fastcc void @dce80_resource_destruct(ptr noundef %call7.i.i) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce81_create_resource_pool, i32 noundef 1340) #7
  call void @kgdb_breakpoint() #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %dce81_construct.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dce81_construct.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dce83_create_resource_pool(i8 noundef zeroext %num_virtual_links, ptr noundef %dc) local_unnamed_addr #0 align 64 {
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
  store ptr @res_cap_83, ptr %res_cap.i, align 4
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 40
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dce80_res_pool_funcs, ptr %funcs.i, align 8
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
  %i2c_speed_in_khz_hdcp.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 9
  %13 = ptrtoint ptr %i2c_speed_in_khz_hdcp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 40, ptr %i2c_speed_in_khz_hdcp.i, align 4
  %max_cursor_size.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 11
  %14 = ptrtoint ptr %max_cursor_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %max_cursor_size.i, align 4
  %min_horizontal_blanking_period.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 13
  %15 = ptrtoint ptr %min_horizontal_blanking_period.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 80, ptr %min_horizontal_blanking_period.i, align 4
  %is_apu.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 17
  %16 = ptrtoint ptr %is_apu.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %is_apu.i, align 2
  %17 = load ptr, ptr %dc_bios.i, align 4
  %fw_info_valid.i = getelementptr inbounds %struct.dc_bios, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %fw_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fw_info_valid.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %external_clock_source_frequency_for_dp.i = getelementptr inbounds %struct.dc_bios, ptr %17, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %external_clock_source_frequency_for_dp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %external_clock_source_frequency_for_dp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.dce80_clock_source_create.exit.i_crit_edge, label %if.end.i.i

if.then.i.dce80_clock_source_create.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %2, ptr noundef %17, i32 noundef 4, ptr noundef null, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i.i, label %if.then2.i.i, label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %dp_clk_src4.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %dp_clk_src4.i.i, align 4
  br label %dce80_clock_source_create.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit.i

dce80_clock_source_create.exit.i:                 ; preds = %if.end7.i.i, %if.then2.i.i, %if.then.i.dce80_clock_source_create.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %if.then2.i.i ], [ null, %if.end7.i.i ], [ null, %if.then.i.dce80_clock_source_create.exit.i_crit_edge ]
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %24 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i.i, ptr %dp_clock_source.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i318.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i319.i = icmp eq ptr %call7.i.i.i318.i, null
  br i1 %tobool.not.i319.i, label %dce80_clock_source_create.exit.i.dce80_clock_source_create.exit326.i_crit_edge, label %if.end.i321.i

dce80_clock_source_create.exit.i.dce80_clock_source_create.exit326.i_crit_edge: ; preds = %dce80_clock_source_create.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit326.i

if.end.i321.i:                                    ; preds = %dce80_clock_source_create.exit.i
  %call1.i320.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i318.i, ptr noundef %2, ptr noundef %17, i32 noundef 2, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i320.i, label %if.then2.i323.i, label %if.end7.i324.i

if.then2.i323.i:                                  ; preds = %if.end.i321.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i322.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i318.i, i32 0, i32 3
  %26 = ptrtoint ptr %dp_clk_src4.i322.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %dp_clk_src4.i322.i, align 4
  br label %dce80_clock_source_create.exit326.i

if.end7.i324.i:                                   ; preds = %if.end.i321.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i318.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit326.i

dce80_clock_source_create.exit326.i:              ; preds = %if.end7.i324.i, %if.then2.i323.i, %dce80_clock_source_create.exit.i.dce80_clock_source_create.exit326.i_crit_edge
  %retval.0.i325.i = phi ptr [ %call7.i.i.i318.i, %if.then2.i323.i ], [ null, %if.end7.i324.i ], [ null, %dce80_clock_source_create.exit.i.dce80_clock_source_create.exit326.i_crit_edge ]
  %clock_sources.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %27 = ptrtoint ptr %clock_sources.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i325.i, ptr %clock_sources.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i327.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i328.i = icmp eq ptr %call7.i.i.i327.i, null
  br i1 %tobool.not.i328.i, label %dce80_clock_source_create.exit326.i.dce80_clock_source_create.exit335.i_crit_edge, label %if.end.i330.i

dce80_clock_source_create.exit326.i.dce80_clock_source_create.exit335.i_crit_edge: ; preds = %dce80_clock_source_create.exit326.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit335.i

if.end.i330.i:                                    ; preds = %dce80_clock_source_create.exit326.i
  %call1.i329.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i327.i, ptr noundef %2, ptr noundef %17, i32 noundef 3, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i329.i, label %if.then2.i332.i, label %if.end7.i333.i

if.then2.i332.i:                                  ; preds = %if.end.i330.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i331.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i327.i, i32 0, i32 3
  %29 = ptrtoint ptr %dp_clk_src4.i331.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %dp_clk_src4.i331.i, align 4
  br label %dce80_clock_source_create.exit335.i

if.end7.i333.i:                                   ; preds = %if.end.i330.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i327.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit335.i

dce80_clock_source_create.exit335.i:              ; preds = %if.end7.i333.i, %if.then2.i332.i, %dce80_clock_source_create.exit326.i.dce80_clock_source_create.exit335.i_crit_edge
  %retval.0.i334.i = phi ptr [ %call7.i.i.i327.i, %if.then2.i332.i ], [ null, %if.end7.i333.i ], [ null, %dce80_clock_source_create.exit326.i.dce80_clock_source_create.exit335.i_crit_edge ]
  %arrayidx18.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %30 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i334.i, ptr %arrayidx18.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i336.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i337.i = icmp eq ptr %call7.i.i.i336.i, null
  br i1 %tobool.not.i337.i, label %if.else.i.dce80_clock_source_create.exit344.i_crit_edge, label %if.end.i339.i

if.else.i.dce80_clock_source_create.exit344.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit344.i

if.end.i339.i:                                    ; preds = %if.else.i
  %call1.i338.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i336.i, ptr noundef %2, ptr noundef %17, i32 noundef 2, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i338.i, label %if.then2.i341.i, label %if.end7.i342.i

if.then2.i341.i:                                  ; preds = %if.end.i339.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i340.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i336.i, i32 0, i32 3
  %32 = ptrtoint ptr %dp_clk_src4.i340.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %dp_clk_src4.i340.i, align 4
  br label %dce80_clock_source_create.exit344.i

if.end7.i342.i:                                   ; preds = %if.end.i339.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i336.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit344.i

dce80_clock_source_create.exit344.i:              ; preds = %if.end7.i342.i, %if.then2.i341.i, %if.else.i.dce80_clock_source_create.exit344.i_crit_edge
  %retval.0.i343.i = phi ptr [ %call7.i.i.i336.i, %if.then2.i341.i ], [ null, %if.end7.i342.i ], [ null, %if.else.i.dce80_clock_source_create.exit344.i_crit_edge ]
  %dp_clock_source22.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %33 = ptrtoint ptr %dp_clock_source22.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i343.i, ptr %dp_clock_source22.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i345.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not.i346.i = icmp eq ptr %call7.i.i.i345.i, null
  br i1 %tobool.not.i346.i, label %dce80_clock_source_create.exit344.i.dce80_clock_source_create.exit353.i_crit_edge, label %if.end.i348.i

dce80_clock_source_create.exit344.i.dce80_clock_source_create.exit353.i_crit_edge: ; preds = %dce80_clock_source_create.exit344.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_clock_source_create.exit353.i

if.end.i348.i:                                    ; preds = %dce80_clock_source_create.exit344.i
  %call1.i347.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i345.i, ptr noundef %2, ptr noundef %17, i32 noundef 3, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #7
  br i1 %call1.i347.i, label %if.then2.i350.i, label %if.end7.i351.i

if.then2.i350.i:                                  ; preds = %if.end.i348.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp_clk_src4.i349.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i345.i, i32 0, i32 3
  %35 = ptrtoint ptr %dp_clk_src4.i349.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %dp_clk_src4.i349.i, align 4
  br label %dce80_clock_source_create.exit353.i

if.end7.i351.i:                                   ; preds = %if.end.i348.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i345.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_clock_source_create, i32 noundef 776) #7
  tail call void @kgdb_breakpoint() #7
  br label %dce80_clock_source_create.exit353.i

dce80_clock_source_create.exit353.i:              ; preds = %if.end7.i351.i, %if.then2.i350.i, %dce80_clock_source_create.exit344.i.dce80_clock_source_create.exit353.i_crit_edge
  %retval.0.i352.i = phi ptr [ %call7.i.i.i345.i, %if.then2.i350.i ], [ null, %if.end7.i351.i ], [ null, %dce80_clock_source_create.exit344.i.dce80_clock_source_create.exit353.i_crit_edge ]
  %clock_sources25.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %36 = ptrtoint ptr %clock_sources25.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retval.0.i352.i, ptr %clock_sources25.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %dce80_clock_source_create.exit353.i, %dce80_clock_source_create.exit335.i
  %exitcond.not.i = phi i1 [ true, %dce80_clock_source_create.exit353.i ], [ false, %dce80_clock_source_create.exit335.i ]
  %.sink.i = phi i32 [ 1, %dce80_clock_source_create.exit353.i ], [ 2, %dce80_clock_source_create.exit335.i ]
  %clk_src_count28.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 31
  %37 = ptrtoint ptr %clk_src_count28.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.i, ptr %clk_src_count28.i, align 4
  %dp_clock_source30.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %38 = ptrtoint ptr %dp_clock_source30.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dp_clock_source30.i, align 4
  %cmp31.i = icmp eq ptr %39, null
  br i1 %cmp31.i, label %if.then32.i, label %for.body.i

if.then32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1399) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.cond.i:                                       ; preds = %for.body.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i.1

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.cond.i
  %arrayidx39.i.1 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %40 = ptrtoint ptr %arrayidx39.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx39.i.1, align 4
  %cmp40.i.1 = icmp eq ptr %41, null
  br i1 %cmp40.i.1, label %for.body.i.1.if.then41.i_crit_edge, label %for.body.i.1.for.end.i_crit_edge

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.1.if.then41.i_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

for.body.i:                                       ; preds = %if.end.i
  %arrayidx39.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 0
  %42 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx39.i, align 8
  %cmp40.i = icmp eq ptr %43, null
  br i1 %cmp40.i, label %for.body.i.if.then41.i_crit_edge, label %for.cond.i

for.body.i.if.then41.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

if.then41.i:                                      ; preds = %for.body.i.if.then41.i_crit_edge, %for.body.i.1.if.then41.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1406) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

for.end.i:                                        ; preds = %for.body.i.1.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %call46.i = tail call ptr @dce_dmcu_create(ptr noundef %2, ptr noundef nonnull @dmcu_regs, ptr noundef nonnull @dmcu_shift, ptr noundef nonnull @dmcu_mask) #7
  %dmcu.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 38
  %44 = ptrtoint ptr %dmcu.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call46.i, ptr %dmcu.i, align 8
  %cmp50.i = icmp eq ptr %call46.i, null
  br i1 %cmp50.i, label %if.then51.i, label %if.end55.i

if.then51.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1417) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end55.i:                                       ; preds = %for.end.i
  %call56.i = tail call ptr @dce_abm_create(ptr noundef %2, ptr noundef nonnull @abm_regs, ptr noundef nonnull @abm_shift, ptr noundef nonnull @abm_mask) #7
  %abm.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 37
  %45 = ptrtoint ptr %abm.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call56.i, ptr %abm.i, align 4
  %cmp60.i = icmp eq ptr %call56.i, null
  br i1 %cmp60.i, label %if.then61.i, label %if.end65.i

if.then61.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1427) #7
  tail call void @kgdb_breakpoint() #7
  br label %do.body

if.end65.i:                                       ; preds = %if.end55.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_data.i) #7
  %46 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx1.i, align 8
  %48 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %init_data.i, align 4
  %call68.i = call ptr @dal_irq_service_dce80_create(ptr noundef nonnull %init_data.i) #7
  %irqs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 36
  %49 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call68.i, ptr %irqs.i, align 8
  %tobool72.not.i = icmp eq ptr %call68.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_data.i) #7
  br i1 %tobool72.not.i, label %if.end65.i.do.body_crit_edge, label %for.cond75.preheader.i

if.end65.i.do.body_crit_edge:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond75.preheader.i:                           ; preds = %if.end65.i
  %50 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp78414.not.i = icmp eq i32 %51, 0
  br i1 %cmp78414.not.i, label %for.cond75.preheader.i.for.cond144.preheader.i_crit_edge, label %for.cond75.preheader.i.for.body79.i_crit_edge

for.cond75.preheader.i.for.body79.i_crit_edge:    ; preds = %for.cond75.preheader.i
  br label %for.body79.i

for.cond75.preheader.i.for.cond144.preheader.i_crit_edge: ; preds = %for.cond75.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond144.preheader.i

for.cond144.preheader.i:                          ; preds = %for.inc141.i.for.cond144.preheader.i_crit_edge, %for.cond75.preheader.i.for.cond144.preheader.i_crit_edge
  %52 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %res_cap.i, align 4
  %num_ddc416.i = getelementptr inbounds %struct.resource_caps, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %num_ddc416.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_ddc416.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp147417.not.i = icmp eq i32 %55, 0
  br i1 %cmp147417.not.i, label %for.cond144.preheader.i.for.end187.i_crit_edge, label %for.cond144.preheader.i.for.body148.i_crit_edge

for.cond144.preheader.i.for.body148.i_crit_edge:  ; preds = %for.cond144.preheader.i
  br label %for.body148.i

for.cond144.preheader.i.for.end187.i_crit_edge:   ; preds = %for.cond144.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end187.i

for.body79.i:                                     ; preds = %for.inc141.i.for.body79.i_crit_edge, %for.cond75.preheader.i.for.body79.i_crit_edge
  %i.1415.i = phi i32 [ %inc142.i, %for.inc141.i.for.body79.i_crit_edge ], [ 0, %for.cond75.preheader.i.for.body79.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i354.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i355.i = icmp eq ptr %call7.i.i.i354.i, null
  br i1 %tobool.not.i355.i, label %do.body89.i, label %if.end92.i

do.body89.i:                                      ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx83383.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1415.i
  %57 = ptrtoint ptr %arrayidx83383.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx83383.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1443) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #7
  br label %do.body

if.end92.i:                                       ; preds = %for.body79.i
  %arrayidx80.i = getelementptr [6 x %struct.dce110_timing_generator_offsets], ptr @dce80_tg_offsets, i32 0, i32 %i.1415.i
  call void @dce80_timing_generator_construct(ptr noundef nonnull %call7.i.i.i354.i, ptr noundef %2, i32 noundef %i.1415.i, ptr noundef %arrayidx80.i) #7
  %arrayidx83.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.1415.i
  %58 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i.i354.i, ptr %arrayidx83.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i357.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 272) #10
  %tobool.not.i358.i = icmp eq ptr %call7.i.i.i357.i, null
  br i1 %tobool.not.i358.i, label %do.body101.i, label %if.end104.i

do.body101.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_mem_input_create, i32 noundef 679) #7
  call void @kgdb_breakpoint() #7
  %arrayidx95384.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1415.i
  %60 = ptrtoint ptr %arrayidx95384.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arrayidx95384.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1450) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #7
  br label %do.body

if.end104.i:                                      ; preds = %if.end92.i
  %arrayidx.i.i = getelementptr [6 x %struct.dce_mem_input_registers], ptr @mi_regs, i32 0, i32 %i.1415.i
  call void @dce_mem_input_construct(ptr noundef nonnull %call7.i.i.i357.i, ptr noundef %2, i32 noundef %i.1415.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mi_shifts, ptr noundef nonnull @mi_masks) #7
  %wa.i.i = getelementptr inbounds %struct.dce_mem_input, ptr %call7.i.i.i357.i, i32 0, i32 4
  %61 = ptrtoint ptr %wa.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %wa.i.i, align 4
  %arrayidx95.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.1415.i
  %62 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i.i357.i, ptr %arrayidx95.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i360.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i361.i = icmp eq ptr %call7.i.i.i360.i, null
  br i1 %tobool.not.i361.i, label %do.body113.i, label %if.end116.i

do.body113.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce80_ipp_create, i32 noundef 792) #7
  call void @kgdb_breakpoint() #7
  %arrayidx107385.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1415.i
  %64 = ptrtoint ptr %arrayidx107385.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx107385.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1457) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %do.body

if.end116.i:                                      ; preds = %if.end104.i
  %arrayidx.i363.i = getelementptr [6 x %struct.dce_ipp_registers], ptr @ipp_regs, i32 0, i32 %i.1415.i
  call void @dce_ipp_construct(ptr noundef nonnull %call7.i.i.i360.i, ptr noundef %2, i32 noundef %i.1415.i, ptr noundef %arrayidx.i363.i, ptr noundef nonnull @ipp_shift, ptr noundef nonnull @ipp_mask) #7
  %arrayidx107.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.1415.i
  %65 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i360.i, ptr %arrayidx107.i, align 4
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19280, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i365.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i365.i, label %do.body125.i, label %if.end128.i

do.body125.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx119386.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1415.i
  %66 = ptrtoint ptr %arrayidx119386.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx119386.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1464) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %do.body

if.end128.i:                                      ; preds = %if.end116.i
  %arrayidx.i366.i = getelementptr [6 x %struct.dce_transform_registers], ptr @xfm_regs, i32 0, i32 %i.1415.i
  call void @dce_transform_construct(ptr noundef nonnull %call1.i.i.i.i.i, ptr noundef %2, i32 noundef %i.1415.i, ptr noundef %arrayidx.i366.i, ptr noundef nonnull @xfm_shift, ptr noundef nonnull @xfm_mask) #7
  %prescaler_on.i.i = getelementptr inbounds %struct.dce_transform, ptr %call1.i.i.i.i.i, i32 0, i32 11
  %67 = ptrtoint ptr %prescaler_on.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %prescaler_on.i.i, align 8
  %arrayidx119.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.1415.i
  %68 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx119.i, align 4
  %call1.i.i.i.i368.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19264, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not.i369.i = icmp eq ptr %call1.i.i.i.i368.i, null
  br i1 %tobool.not.i369.i, label %do.body137.i, label %for.inc141.i

do.body137.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx131387.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1415.i
  %69 = ptrtoint ptr %arrayidx131387.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx131387.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1471) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %do.body

for.inc141.i:                                     ; preds = %if.end128.i
  %arrayidx.i370.i = getelementptr [6 x %struct.dce_opp_registers], ptr @opp_regs, i32 0, i32 %i.1415.i
  call void @dce110_opp_construct(ptr noundef nonnull %call1.i.i.i.i368.i, ptr noundef %2, i32 noundef %i.1415.i, ptr noundef %arrayidx.i370.i, ptr noundef nonnull @opp_shift, ptr noundef nonnull @opp_mask) #7
  %arrayidx131.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.1415.i
  %70 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call1.i.i.i.i368.i, ptr %arrayidx131.i, align 4
  %inc142.i = add nuw i32 %i.1415.i, 1
  %71 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pipe_count.i, align 4
  %cmp78.i = icmp ult i32 %inc142.i, %72
  br i1 %cmp78.i, label %for.inc141.i.for.body79.i_crit_edge, label %for.inc141.i.for.cond144.preheader.i_crit_edge

for.inc141.i.for.cond144.preheader.i_crit_edge:   ; preds = %for.inc141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond144.preheader.i

for.inc141.i.for.body79.i_crit_edge:              ; preds = %for.inc141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body79.i

for.body148.i:                                    ; preds = %for.inc185.i.for.body148.i_crit_edge, %for.cond144.preheader.i.for.body148.i_crit_edge
  %i.2418.i = phi i32 [ %inc186.i, %for.inc185.i.for.body148.i_crit_edge ], [ 0, %for.cond144.preheader.i.for.body148.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i372.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not.i373.i = icmp eq ptr %call7.i.i.i372.i, null
  br i1 %tobool.not.i373.i, label %do.body157.i, label %if.end160.i

do.body157.i:                                     ; preds = %for.body148.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx151388.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2418.i
  %74 = ptrtoint ptr %arrayidx151388.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx151388.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1480) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %do.body

if.end160.i:                                      ; preds = %for.body148.i
  %arrayidx.i374.i = getelementptr [6 x %struct.dce110_aux_registers], ptr @aux_engine_regs, i32 0, i32 %i.2418.i
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %2, align 8
  %extended_aux_timeout_support.i.i = getelementptr inbounds %struct.dc, ptr %76, i32 0, i32 2, i32 23
  %77 = ptrtoint ptr %extended_aux_timeout_support.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %extended_aux_timeout_support.i.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool1.i.i = icmp ne i8 %78, 0
  %call2.i.i = call ptr @dce110_aux_engine_construct(ptr noundef nonnull %call7.i.i.i372.i, ptr noundef %2, i32 noundef %i.2418.i, i32 noundef 2400, ptr noundef %arrayidx.i374.i, ptr noundef nonnull @aux_mask, ptr noundef nonnull @aux_shift, i1 noundef zeroext %tobool1.i.i) #7
  %arrayidx151.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.2418.i
  %79 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i.i372.i, ptr %arrayidx151.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i376.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not.i377.i = icmp eq ptr %call7.i.i.i376.i, null
  br i1 %tobool.not.i377.i, label %do.body169.i, label %if.end172.i

do.body169.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx163389.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2418.i
  %81 = ptrtoint ptr %arrayidx163389.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %arrayidx163389.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1487) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %do.body

if.end172.i:                                      ; preds = %if.end160.i
  %arrayidx.i378.i = getelementptr [6 x %struct.dce_i2c_registers], ptr @i2c_hw_regs, i32 0, i32 %i.2418.i
  call void @dce_i2c_hw_construct(ptr noundef nonnull %call7.i.i.i376.i, ptr noundef %2, i32 noundef %i.2418.i, ptr noundef %arrayidx.i378.i, ptr noundef nonnull @i2c_shifts, ptr noundef nonnull @i2c_masks) #7
  %arrayidx163.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.2418.i
  %82 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i.i376.i, ptr %arrayidx163.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i380.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not.i381.i = icmp eq ptr %call7.i.i.i380.i, null
  br i1 %tobool.not.i381.i, label %do.body181.i, label %for.inc185.i

do.body181.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx175390.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2418.i
  %84 = ptrtoint ptr %arrayidx175390.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %arrayidx175390.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_construct, i32 noundef 1494) #7
  call void @kgdb_breakpoint() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %do.body

for.inc185.i:                                     ; preds = %if.end172.i
  call void @dce_i2c_sw_construct(ptr noundef nonnull %call7.i.i.i380.i, ptr noundef %2) #7
  %arrayidx175.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.2418.i
  %85 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call7.i.i.i380.i, ptr %arrayidx175.i, align 4
  %inc186.i = add nuw i32 %i.2418.i, 1
  %86 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %res_cap.i, align 4
  %num_ddc.i = getelementptr inbounds %struct.resource_caps, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %num_ddc.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_ddc.i, align 4
  %cmp147.i = icmp ult i32 %inc186.i, %89
  br i1 %cmp147.i, label %for.inc185.i.for.body148.i_crit_edge, label %for.inc185.i.for.end187.i_crit_edge

for.inc185.i.for.end187.i_crit_edge:              ; preds = %for.inc185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end187.i

for.inc185.i.for.body148.i_crit_edge:             ; preds = %for.inc185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body148.i

for.end187.i:                                     ; preds = %for.inc185.i.for.end187.i_crit_edge, %for.cond144.preheader.i.for.end187.i_crit_edge
  %90 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pipe_count.i, align 4
  %max_planes.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 6
  %92 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %max_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp194419.not.i = icmp eq i32 %91, 0
  br i1 %cmp194419.not.i, label %for.end187.i.for.end200.i_crit_edge, label %for.end187.i.for.body195.i_crit_edge

for.end187.i.for.body195.i_crit_edge:             ; preds = %for.end187.i
  br label %for.body195.i

for.end187.i.for.end200.i_crit_edge:              ; preds = %for.end187.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end200.i

for.body195.i:                                    ; preds = %for.body195.i.for.body195.i_crit_edge, %for.end187.i.for.body195.i_crit_edge
  %i.3420.i = phi i32 [ %inc199.i, %for.body195.i.for.body195.i_crit_edge ], [ 0, %for.end187.i.for.body195.i_crit_edge ]
  %arrayidx197.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 2, i32 30, i32 %i.3420.i
  %93 = call ptr @memcpy(ptr %arrayidx197.i, ptr @plane_cap, i32 44)
  %inc199.i = add nuw i32 %i.3420.i, 1
  %94 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_planes.i, align 4
  %cmp194.i = icmp ult i32 %inc199.i, %95
  br i1 %cmp194.i, label %for.body195.i.for.body195.i_crit_edge, label %for.body195.i.for.end200.i_crit_edge

for.body195.i.for.end200.i_crit_edge:             ; preds = %for.body195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end200.i

for.body195.i.for.body195.i_crit_edge:            ; preds = %for.body195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body195.i

for.end200.i:                                     ; preds = %for.body195.i.for.end200.i_crit_edge, %for.end187.i.for.end200.i_crit_edge
  %disable_dp_clk_share.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 21
  %96 = ptrtoint ptr %disable_dp_clk_share.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %disable_dp_clk_share.i, align 2
  %conv.i = zext i8 %num_virtual_links to i32
  %call203.i = call zeroext i1 @resource_construct(i32 noundef %conv.i, ptr noundef %dc, ptr noundef %call7.i.i, ptr noundef nonnull @res_create_funcs) #7
  br i1 %call203.i, label %dce83_construct.exit.thread, label %for.end200.i.do.body_crit_edge

for.end200.i.do.body_crit_edge:                   ; preds = %for.end200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

dce83_construct.exit.thread:                      ; preds = %for.end200.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dce80_hw_sequencer_construct(ptr noundef %dc) #7
  br label %cleanup

do.body:                                          ; preds = %for.end200.i.do.body_crit_edge, %do.body181.i, %do.body169.i, %do.body157.i, %do.body137.i, %do.body125.i, %do.body113.i, %do.body101.i, %do.body89.i, %if.end65.i.do.body_crit_edge, %if.then61.i, %if.then51.i, %if.then41.i, %if.then32.i
  call fastcc void @dce80_resource_destruct(ptr noundef %call7.i.i) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce83_create_resource_pool, i32 noundef 1535) #7
  call void @kgdb_breakpoint() #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %dce83_construct.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dce83_construct.exit.thread ]
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
declare dso_local ptr @dal_irq_service_dce80_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @resource_construct(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce80_hw_sequencer_construct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce80_resource_destruct(ptr noundef %pool) unnamed_addr #0 align 64 {
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
define internal void @dce80_destroy_resource_pool(ptr nocapture noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  tail call fastcc void @dce80_resource_destruct(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pool, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce80_panel_cntl_create(ptr noundef %init_data) #0 align 64 {
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
define internal ptr @dce80_link_encoder_create(ptr noundef %enc_init_data) #0 align 64 {
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 476, i32 noundef 9, ptr noundef null) #7
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
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dce80_link_encoder_create, i32 0, i32 %2
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

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce80_validate_bandwidth(ptr nocapture noundef readonly %dc, ptr nocapture noundef %context, i1 noundef zeroext %fast_validate) #5 align 64 {
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
define internal i32 @dce80_validate_global(ptr nocapture noundef readnone %dc, ptr nocapture noundef readonly %context) #6 align 64 {
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
  br i1 %cmp25.not.i, label %entry.dce80_validate_surface_sets.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dce80_validate_surface_sets.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_validate_surface_sets.exit.thread

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
  br i1 %cmp7.i, label %if.end.i.dce80_validate_surface_sets.exit_crit_edge, label %if.end10.i

if.end.i.dce80_validate_surface_sets.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_validate_surface_sets.exit

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
  br i1 %cmp14.i, label %if.end10.i.dce80_validate_surface_sets.exit_crit_edge, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end10.i.dce80_validate_surface_sets.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_validate_surface_sets.exit

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.dce80_validate_surface_sets.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dce80_validate_surface_sets.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dce80_validate_surface_sets.exit

dce80_validate_surface_sets.exit:                 ; preds = %for.inc.i.dce80_validate_surface_sets.exit_crit_edge, %if.end10.i.dce80_validate_surface_sets.exit_crit_edge, %if.end.i.dce80_validate_surface_sets.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.dce80_validate_surface_sets.exit_crit_edge ], [ %cmp28.i, %if.end10.i.dce80_validate_surface_sets.exit_crit_edge ], [ %cmp28.i, %if.end.i.dce80_validate_surface_sets.exit_crit_edge ]
  %spec.select = select i1 %cmp.lcssa.i, i32 9, i32 1
  br label %dce80_validate_surface_sets.exit.thread

dce80_validate_surface_sets.exit.thread:          ; preds = %dce80_validate_surface_sets.exit, %entry.dce80_validate_surface_sets.exit.thread_crit_edge
  %8 = phi i32 [ 1, %entry.dce80_validate_surface_sets.exit.thread_crit_edge ], [ %spec.select, %dce80_validate_surface_sets.exit ]
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
declare dso_local void @dce110_link_encoder_construct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_clk_src_construct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce80_timing_generator_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_mem_input_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_ipp_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_transform_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
  %arrayidx = getelementptr [7 x %struct.dce_audio_registers], ptr @audio_regs, i32 0, i32 %inst
  %call = tail call ptr @dce_audio_create(ptr noundef %ctx, i32 noundef %inst, ptr noundef %arrayidx, ptr noundef nonnull @audio_shift, ptr noundef nonnull @audio_mask) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce80_stream_encoder_create(i32 noundef %eng_id, ptr noundef %ctx) #0 align 64 {
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
  %arrayidx = getelementptr [7 x %struct.dce110_stream_enc_registers], ptr @stream_enc_regs, i32 0, i32 %eng_id
  tail call void @dce110_stream_encoder_construct(ptr noundef nonnull %call7.i.i, ptr noundef %ctx, ptr noundef %2, i32 noundef %eng_id, ptr noundef %arrayidx, ptr noundef nonnull @se_shift, ptr noundef nonnull @se_mask) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @dce80_hwseq_create(ptr noundef %ctx) #0 align 64 {
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
declare dso_local ptr @dce_audio_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1141, i32 2}
!2 = !{ptr @__func__.dce80_create_resource_pool, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.dce81_create_resource_pool, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1340, i32 2}
!5 = !{ptr @__func__.dce83_create_resource_pool, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1535, i32 2}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1004, i32 3}
!9 = !{ptr @__func__.dce80_construct, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1005, i32 3}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1011, i32 4}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1022, i32 3}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1032, i32 3}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1050, i32 4}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1057, i32 4}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1064, i32 4}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1071, i32 4}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1078, i32 4}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1087, i32 4}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1094, i32 4}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1101, i32 4}
!33 = !{ptr @bios_regs, !34, !"bios_regs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 372, i32 36}
!35 = !{ptr @res_cap, !36, !"res_cap", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 377, i32 35}
!37 = !{ptr @dce80_res_pool_funcs, !38, !"dce80_res_pool_funcs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 934, i32 36}
!39 = !{ptr @panel_cntl_regs, !40, !"panel_cntl_regs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 272, i32 46}
!41 = !{ptr @panel_cntl_shift, !42, !"panel_cntl_shift", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 276, i32 42}
!43 = !{ptr @panel_cntl_mask, !44, !"panel_cntl_mask", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 280, i32 41}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 476, i32 3}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @link_enc_feature, !49, !"link_enc_feature", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 710, i32 45}
!50 = !{ptr @link_enc_regs, !51, !"link_enc_regs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 238, i32 47}
!52 = !{ptr @link_enc_aux_regs, !53, !"link_enc_aux_regs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 210, i32 51}
!54 = !{ptr @link_enc_hpd_regs, !55, !"link_enc_hpd_regs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 224, i32 51}
!56 = !{ptr @__func__.dce80_clock_source_create, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 776, i32 2}
!58 = !{ptr @cs_shift, !59, !"cs_shift", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 364, i32 42}
!60 = !{ptr @cs_mask, !61, !"cs_mask", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 368, i32 41}
!62 = !{ptr @clk_src_regs, !63, !"clk_src_regs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 358, i32 41}
!64 = !{ptr @dmcu_regs, !65, !"dmcu_regs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 423, i32 40}
!66 = !{ptr @dmcu_shift, !67, !"dmcu_shift", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 427, i32 36}
!68 = !{ptr @dmcu_mask, !69, !"dmcu_mask", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 431, i32 35}
!70 = !{ptr @abm_regs, !71, !"abm_regs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 434, i32 39}
!72 = !{ptr @abm_shift, !73, !"abm_shift", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 438, i32 35}
!74 = !{ptr @abm_mask, !75, !"abm_mask", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 442, i32 34}
!76 = !{ptr @dce80_tg_offsets, !77, !"dce80_tg_offsets", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 114, i32 53}
!78 = !{ptr @__func__.dce80_mem_input_create, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 679, i32 3}
!80 = !{ptr @mi_regs, !81, !"mi_regs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 652, i32 45}
!82 = !{ptr @mi_shifts, !83, !"mi_shifts", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 661, i32 41}
!84 = !{ptr @mi_masks, !85, !"mi_masks", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 666, i32 40}
!86 = !{ptr @__func__.dce80_ipp_create, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 792, i32 3}
!88 = !{ptr @ipp_regs, !89, !"ipp_regs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 166, i32 39}
!90 = !{ptr @ipp_shift, !91, !"ipp_shift", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 175, i32 35}
!92 = !{ptr @ipp_mask, !93, !"ipp_mask", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 179, i32 34}
!94 = !{ptr @xfm_regs, !95, !"xfm_regs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 188, i32 45}
!96 = !{ptr @xfm_shift, !97, !"xfm_shift", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 197, i32 41}
!98 = !{ptr @xfm_mask, !99, !"xfm_mask", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 201, i32 40}
!100 = !{ptr @opp_regs, !101, !"opp_regs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 289, i32 39}
!102 = !{ptr @opp_shift, !103, !"opp_shift", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 298, i32 35}
!104 = !{ptr @opp_mask, !105, !"opp_mask", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 302, i32 34}
!106 = !{ptr @aux_engine_regs, !107, !"aux_engine_regs", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 320, i32 42}
!108 = !{ptr @aux_mask, !109, !"aux_mask", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 310, i32 47}
!110 = !{ptr @aux_shift, !111, !"aux_shift", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 306, i32 48}
!112 = !{ptr @i2c_hw_regs, !113, !"i2c_hw_regs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 550, i32 39}
!114 = !{ptr @i2c_shifts, !115, !"i2c_shifts", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 559, i32 35}
!116 = !{ptr @i2c_masks, !117, !"i2c_masks", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 563, i32 34}
!118 = !{ptr @plane_cap, !119, !"plane_cap", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 401, i32 34}
!120 = !{ptr @res_create_funcs, !121, !"res_create_funcs", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 641, i32 43}
!122 = !{ptr @audio_regs, !123, !"audio_regs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 334, i32 41}
!124 = !{ptr @audio_shift, !125, !"audio_shift", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 344, i32 37}
!126 = !{ptr @audio_mask, !127, !"audio_mask", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 348, i32 36}
!128 = !{ptr @stream_enc_regs, !129, !"stream_enc_regs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 254, i32 49}
!130 = !{ptr @se_shift, !131, !"se_shift", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 264, i32 46}
!132 = !{ptr @se_mask, !133, !"se_mask", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 268, i32 45}
!134 = !{ptr @hwseq_reg, !135, !"hwseq_reg", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 615, i32 41}
!136 = !{ptr @hwseq_shift, !137, !"hwseq_shift", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 619, i32 37}
!138 = !{ptr @hwseq_mask, !139, !"hwseq_mask", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 623, i32 36}
!140 = !{ptr @__func__.dce81_construct, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1204, i32 3}
!142 = !{ptr @res_cap_81, !143, !"res_cap_81", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 385, i32 35}
!144 = !{ptr @__func__.dce83_construct, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 1399, i32 3}
!146 = !{ptr @res_cap_83, !147, !"res_cap_83", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce80/dce80_resource.c", i32 393, i32 35}
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
