; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_clock_source.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clock_source_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.calc_pll_clock_source_init_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.clock_source = type { ptr, ptr, i32, i8 }
%struct.dce110_clk_src = type { %struct.clock_source, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, %struct.calc_pll_clock_source, %struct.calc_pll_clock_source }
%struct.calc_pll_clock_source = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dc_bios = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.dc_firmware_info, i8, %struct.dc_vram_info, %struct.dc_golden_table }
%struct.dc_firmware_info = type { %struct.pll_info, %struct.firmware_feature, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32 }
%struct.firmware_feature = type { i32, i32 }
%struct.dc_vram_info = type { i32, i32 }
%struct.dc_golden_table = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_clk_src_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bp_pixel_clock_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.graphics_object_id, i32, i32, %struct.program_pixel_clock_flags }
%struct.graphics_object_id = type { i32 }
%struct.program_pixel_clock_flags = type { i8, [3 x i8] }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fixed31_32 = type { i64 }
%struct.bp_spread_spectrum_parameters = type { i32, i32, i32, %union.anon.38, %struct.spread_spectrum_flags }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32 }
%struct.spread_spectrum_flags = type { i8, [3 x i8] }
%struct.pixel_clk_params = type { i32, i32, i32, %struct.graphics_object_id, i32, i32, i32, %struct.csdp_ref_clk_ds_params, i32, %struct.pixel_clk_flags }
%struct.csdp_ref_clk_ds_params = type { i8, i32, i32, i32 }
%struct.pixel_clk_flags = type { i8, [3 x i8] }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.pll_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.spread_spectrum_data = type { i32, i32, i32, i32, %struct.spread_spectrum_flags }
%struct.dce110_clk_src_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.bp_adjust_pixel_clock_parameters = type { i32, %struct.graphics_object_id, i32, i32, i32, i32, i8 }
%struct.dce110_clk_src_regs = type { i32, i32, i32, [6 x i32], [6 x i32], [6 x i32] }
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
%union.dpcd_ieee_vendor_signature = type { %struct.anon.72 }
%struct.anon.72 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.clk_mgr = type { ptr, ptr, %struct.dc_clocks, i8, i8, i8, i32, i32, %struct.clk_state_registers_and_bypass, ptr, %struct.pp_smu_wm_range_sets }
%struct.dc_clocks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.spread_spectrum_info = type { %struct.spread_spectrum_type, i32, i32, i32, %union.anon.37 }
%struct.spread_spectrum_type = type { i8 }
%union.anon.37 = type { %struct.step_and_delay_info }
%struct.step_and_delay_info = type { i32, i32, i32 }

@dce110_clk_src_funcs = internal constant { %struct.clock_source_funcs, [44 x i8] } { %struct.clock_source_funcs { ptr @dce110_clock_source_power_down, ptr @dce110_program_pix_clk, ptr @dce110_get_pix_clk_dividers, ptr @get_pixel_clk_frequency_100hz, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c\00", [32 x i8] zeroinitializer }, align 32
@dce112_clk_src_funcs = internal constant { %struct.clock_source_funcs, [44 x i8] } { %struct.clock_source_funcs { ptr @dce110_clock_source_power_down, ptr @dce112_program_pix_clk, ptr @dce112_get_pix_clk_dividers, ptr @get_pixel_clk_frequency_100hz, ptr null }, [44 x i8] zeroinitializer }, align 32
@dcn20_clk_src_funcs = internal constant { %struct.clock_source_funcs, [44 x i8] } { %struct.clock_source_funcs { ptr @dce110_clock_source_power_down, ptr @dcn20_program_pix_clk, ptr @dce112_get_pix_clk_dividers, ptr @get_pixel_clk_frequency_100hz, ptr @dcn20_override_dp_pix_clk }, [44 x i8] zeroinitializer }, align 32
@dc_fixpt_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@dc_fixpt_sub.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Invalid parameters!!\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.dce110_get_pix_clk_dividers = private unnamed_addr constant [28 x i8] c"dce110_get_pix_clk_dividers\00", align 1
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to adjust pixel clock!!\00", [61 x i8] zeroinitializer }, align 32
@__func__.dce110_get_pix_clk_dividers_helper = private unnamed_addr constant [35 x i8] c"dce110_get_pix_clk_dividers_helper\00", align 1
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Bad requested pixel clock\00", [35 x i8] zeroinitializer }, align 32
@__func__.calculate_pixel_clock_pll_dividers = private unnamed_addr constant [35 x i8] c"calculate_pixel_clock_pll_dividers\00", align 1
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s Post divider range is invalid\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s Reference divider range is invalid\00", [58 x i8] zeroinitializer }, align 32
@__func__.get_pixel_clk_frequency_100hz = private unnamed_addr constant [30 x i8] c"get_pixel_clk_frequency_100hz\00", align 1
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid entry !!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid array pointer!!!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid ATOMBIOS SS Table!!!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid SS percentage \00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"for HDMI in ATOMBIOS info Table!!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"The dec point num or precision is incorrect!\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Incorrect fract feedback divider precision num!\00", [48 x i8] zeroinitializer }, align 32
@__func__.dce112_get_pix_clk_dividers = private unnamed_addr constant [28 x i8] c"dce112_get_pix_clk_dividers\00", align 1
@__func__.dcn20_program_pix_clk = private unnamed_addr constant [22 x i8] c"dcn20_program_pix_clk\00", align 1
@__func__.dcn20_override_dp_pix_clk = private unnamed_addr constant [26 x i8] c"dcn20_override_dp_pix_clk\00", align 1
@switch.table.dce110_program_pix_clk = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 32, i64 128, i64 512]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.19 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 6]
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"dce110_clk_src_funcs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1219, i32 40 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1472, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"dce112_clk_src_funcs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1213, i32 40 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"dcn20_clk_src_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1121, i32 40 }
@___asan_gen_.40 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 249, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 575, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 507, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 302, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 363, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 369, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1241, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1246, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1293, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1303, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1305, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1421, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1426, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [36 x i8] c"switch.table.dce110_program_pix_clk\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @dce110_clk_src_funcs, ptr @.str, ptr @dce112_clk_src_funcs, ptr @dcn20_clk_src_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @switch.table.dce110_program_pix_clk], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_clk_src_funcs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce112_clk_src_funcs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcn20_clk_src_funcs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_program_pix_clk to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce110_clk_src_construct(ptr noundef %clk_src, ptr noundef %ctx, ptr noundef %bios, i32 noundef %id, ptr noundef %regs, ptr noundef %cs_shift, ptr noundef %cs_mask) local_unnamed_addr #0 align 64 {
entry:
  %calc_pll_cs_init_data_hdmi = alloca %struct.calc_pll_clock_source_init_data, align 4
  %calc_pll_cs_init_data = alloca %struct.calc_pll_clock_source_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %calc_pll_cs_init_data_hdmi) #5
  %0 = getelementptr inbounds i8, ptr %calc_pll_cs_init_data_hdmi, i32 20
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4, !annotation !57
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %calc_pll_cs_init_data) #5
  %ctx1 = getelementptr inbounds %struct.clock_source, ptr %clk_src, i32 0, i32 1
  %2 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx, ptr %ctx1, align 4
  %bios2 = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 4
  %3 = ptrtoint ptr %bios2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bios, ptr %bios2, align 4
  %id4 = getelementptr inbounds %struct.clock_source, ptr %clk_src, i32 0, i32 2
  %4 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id, ptr %id4, align 4
  %5 = ptrtoint ptr %clk_src to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dce110_clk_src_funcs, ptr %clk_src, align 4
  %regs6 = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 1
  %6 = ptrtoint ptr %regs6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %regs, ptr %regs6, align 4
  %cs_shift7 = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 3
  %7 = ptrtoint ptr %cs_shift7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cs_shift, ptr %cs_shift7, align 4
  %cs_mask8 = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 2
  %8 = ptrtoint ptr %cs_mask8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cs_mask, ptr %cs_mask8, align 4
  %fw_info_valid = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 8
  %9 = ptrtoint ptr %fw_info_valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_info_valid, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %do.end, label %if.end32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1472, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

if.end32:                                         ; preds = %entry
  %external_clock_source_frequency_for_dp = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %external_clock_source_frequency_for_dp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %external_clock_source_frequency_for_dp, align 4
  %ext_clk_khz = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 13
  %13 = ptrtoint ptr %ext_clk_khz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ext_clk_khz, align 4
  %14 = ptrtoint ptr %calc_pll_cs_init_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bios, ptr %calc_pll_cs_init_data, align 4
  %min_pix_clk_pll_post_divider = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data, i32 0, i32 1
  %15 = ptrtoint ptr %min_pix_clk_pll_post_divider to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %min_pix_clk_pll_post_divider, align 4
  %PLL_POST_DIV_PIXCLK = getelementptr inbounds %struct.dce110_clk_src_mask, ptr %cs_mask, i32 0, i32 4
  %16 = ptrtoint ptr %PLL_POST_DIV_PIXCLK to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %PLL_POST_DIV_PIXCLK, align 4
  %max_pix_clk_pll_post_divider = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data, i32 0, i32 2
  %18 = ptrtoint ptr %max_pix_clk_pll_post_divider to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_pix_clk_pll_post_divider, align 4
  %min_pll_ref_divider = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data, i32 0, i32 3
  %19 = ptrtoint ptr %min_pll_ref_divider to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %min_pll_ref_divider, align 4
  %PLL_REF_DIV = getelementptr inbounds %struct.dce110_clk_src_mask, ptr %cs_mask, i32 0, i32 5
  %20 = ptrtoint ptr %PLL_REF_DIV to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %PLL_REF_DIV, align 4
  %max_pll_ref_divider = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data, i32 0, i32 4
  %22 = ptrtoint ptr %max_pll_ref_divider to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_pll_ref_divider, align 4
  %min_override_input_pxl_clk_pll_freq_khz = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data, i32 0, i32 5
  %23 = ptrtoint ptr %min_override_input_pxl_clk_pll_freq_khz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %min_override_input_pxl_clk_pll_freq_khz, align 4
  %max_override_input_pxl_clk_pll_freq_khz = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data, i32 0, i32 6
  %24 = ptrtoint ptr %max_override_input_pxl_clk_pll_freq_khz to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %max_override_input_pxl_clk_pll_freq_khz, align 4
  %num_fract_fb_divider_decimal_point = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data, i32 0, i32 7
  %25 = ptrtoint ptr %num_fract_fb_divider_decimal_point to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %num_fract_fb_divider_decimal_point, align 4
  %num_fract_fb_divider_decimal_point_precision = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data, i32 0, i32 8
  %26 = ptrtoint ptr %num_fract_fb_divider_decimal_point_precision to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 6, ptr %num_fract_fb_divider_decimal_point_precision, align 4
  %ctx36 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data, i32 0, i32 9
  %27 = ptrtoint ptr %ctx36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ctx, ptr %ctx36, align 4
  %28 = ptrtoint ptr %calc_pll_cs_init_data_hdmi to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %bios, ptr %calc_pll_cs_init_data_hdmi, align 4
  %min_pix_clk_pll_post_divider38 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data_hdmi, i32 0, i32 1
  %29 = ptrtoint ptr %min_pix_clk_pll_post_divider38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %min_pix_clk_pll_post_divider38, align 4
  %max_pix_clk_pll_post_divider41 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data_hdmi, i32 0, i32 2
  %30 = ptrtoint ptr %max_pix_clk_pll_post_divider41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %17, ptr %max_pix_clk_pll_post_divider41, align 4
  %min_pll_ref_divider42 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data_hdmi, i32 0, i32 3
  %31 = ptrtoint ptr %min_pll_ref_divider42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %min_pll_ref_divider42, align 4
  %max_pll_ref_divider45 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data_hdmi, i32 0, i32 4
  %32 = ptrtoint ptr %max_pll_ref_divider45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %21, ptr %max_pll_ref_divider45, align 4
  %min_override_input_pxl_clk_pll_freq_khz46 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data_hdmi, i32 0, i32 5
  %max_override_input_pxl_clk_pll_freq_khz47 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data_hdmi, i32 0, i32 6
  %num_fract_fb_divider_decimal_point48 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data_hdmi, i32 0, i32 7
  %33 = ptrtoint ptr %num_fract_fb_divider_decimal_point48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %num_fract_fb_divider_decimal_point48, align 4
  %num_fract_fb_divider_decimal_point_precision49 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data_hdmi, i32 0, i32 8
  %34 = ptrtoint ptr %num_fract_fb_divider_decimal_point_precision49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 6, ptr %num_fract_fb_divider_decimal_point_precision49, align 4
  %ctx50 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %calc_pll_cs_init_data_hdmi, i32 0, i32 9
  %35 = ptrtoint ptr %ctx50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ctx, ptr %ctx50, align 4
  %fw_info52 = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 7
  %36 = ptrtoint ptr %fw_info52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fw_info52, align 4
  %ref_freq_khz = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 14
  %38 = ptrtoint ptr %ref_freq_khz to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ref_freq_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %id)
  %cmp = icmp eq i32 %id, 4
  br i1 %cmp, label %if.end32.cleanup_crit_edge, label %if.end56

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56:                                         ; preds = %if.end32
  %dp_ss_params.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 5
  %dp_ss_params_cnt.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 6
  tail call fastcc void @get_ss_info_from_atombios(ptr noundef %clk_src, i32 noundef 4, ptr noundef %dp_ss_params.i, ptr noundef %dp_ss_params_cnt.i) #5
  %hdmi_ss_params.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 7
  %hdmi_ss_params_cnt.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 8
  tail call fastcc void @get_ss_info_from_atombios(ptr noundef %clk_src, i32 noundef 2, ptr noundef %hdmi_ss_params.i, ptr noundef %hdmi_ss_params_cnt.i) #5
  %dvi_ss_params.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 9
  %dvi_ss_params_cnt.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 10
  tail call fastcc void @get_ss_info_from_atombios(ptr noundef %clk_src, i32 noundef 1, ptr noundef %dvi_ss_params.i, ptr noundef %dvi_ss_params_cnt.i) #5
  %lvds_ss_params.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 11
  %lvds_ss_params_cnt.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 12
  tail call fastcc void @get_ss_info_from_atombios(ptr noundef %clk_src, i32 noundef 3, ptr noundef %lvds_ss_params.i, ptr noundef %lvds_ss_params_cnt.i) #5
  %calc_pll = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 15
  %call = call fastcc zeroext i1 @calc_pll_max_vco_construct(ptr noundef %calc_pll, ptr noundef nonnull %calc_pll_cs_init_data)
  br i1 %call, label %if.end90, label %do.end71

do.end71:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1527, i32 noundef 9, ptr noundef null) #5
  call void @kgdb_breakpoint() #5
  br label %cleanup

if.end90:                                         ; preds = %if.end56
  %39 = ptrtoint ptr %ref_freq_khz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ref_freq_khz, align 4
  %div159 = lshr i32 %40, 1
  %41 = ptrtoint ptr %min_override_input_pxl_clk_pll_freq_khz46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div159, ptr %min_override_input_pxl_clk_pll_freq_khz46, align 4
  %42 = ptrtoint ptr %max_override_input_pxl_clk_pll_freq_khz47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %max_override_input_pxl_clk_pll_freq_khz47, align 4
  %calc_pll_hdmi = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 16
  %call95 = call fastcc zeroext i1 @calc_pll_max_vco_construct(ptr noundef %calc_pll_hdmi, ptr noundef nonnull %calc_pll_cs_init_data_hdmi)
  br i1 %call95, label %if.end90.cleanup_crit_edge, label %do.end110

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end110:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1540, i32 noundef 9, ptr noundef null) #5
  call void @kgdb_breakpoint() #5
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %if.end90.cleanup_crit_edge, %do.end71, %if.end32.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ true, %if.end32.cleanup_crit_edge ], [ true, %if.end90.cleanup_crit_edge ], [ false, %do.end110 ], [ false, %do.end71 ], [ false, %do.end ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %calc_pll_cs_init_data) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %calc_pll_cs_init_data_hdmi) #5
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @calc_pll_max_vco_construct(ptr noundef %calc_pll_cs, ptr noundef readonly %init_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %calc_pll_cs, null
  %cmp1 = icmp eq ptr %init_data, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %0 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_data, align 4
  %cmp3 = icmp eq ptr %1, null
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %fw_info_valid = getelementptr inbounds %struct.dc_bios, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fw_info_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_info_valid, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %fw_info8 = getelementptr inbounds %struct.dc_bios, ptr %1, i32 0, i32 7
  %ctx = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %init_data, i32 0, i32 9
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %ctx9 = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 13
  %6 = ptrtoint ptr %ctx9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %ctx9, align 4
  %7 = ptrtoint ptr %fw_info8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_info8, align 4
  %9 = ptrtoint ptr %calc_pll_cs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %calc_pll_cs, align 4
  %min_output_pxl_clk_pll_frequency = getelementptr inbounds %struct.dc_bios, ptr %1, i32 0, i32 7, i32 0, i32 3
  %10 = ptrtoint ptr %min_output_pxl_clk_pll_frequency to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_output_pxl_clk_pll_frequency, align 4
  %min_vco_khz = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 6
  %12 = ptrtoint ptr %min_vco_khz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %min_vco_khz, align 4
  %max_output_pxl_clk_pll_frequency = getelementptr inbounds %struct.dc_bios, ptr %1, i32 0, i32 7, i32 0, i32 4
  %13 = ptrtoint ptr %max_output_pxl_clk_pll_frequency to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_output_pxl_clk_pll_frequency, align 4
  %max_vco_khz = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 5
  %15 = ptrtoint ptr %max_vco_khz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_vco_khz, align 4
  %max_override_input_pxl_clk_pll_freq_khz = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %init_data, i32 0, i32 6
  %16 = ptrtoint ptr %max_override_input_pxl_clk_pll_freq_khz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_override_input_pxl_clk_pll_freq_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp12.not = icmp eq i32 %17, 0
  br i1 %cmp12.not, label %if.else, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %max_input_pxl_clk_pll_frequency = getelementptr inbounds %struct.dc_bios, ptr %1, i32 0, i32 7, i32 0, i32 2
  %18 = ptrtoint ptr %max_input_pxl_clk_pll_frequency to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_input_pxl_clk_pll_frequency, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end6.if.end17_crit_edge
  %.sink = phi i32 [ %19, %if.else ], [ %17, %if.end6.if.end17_crit_edge ]
  %20 = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %20, align 4
  %min_override_input_pxl_clk_pll_freq_khz = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %init_data, i32 0, i32 5
  %22 = ptrtoint ptr %min_override_input_pxl_clk_pll_freq_khz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %min_override_input_pxl_clk_pll_freq_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp18.not = icmp eq i32 %23, 0
  br i1 %cmp18.not, label %if.else21, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %min_input_pxl_clk_pll_frequency = getelementptr inbounds %struct.dc_bios, ptr %1, i32 0, i32 7, i32 0, i32 1
  %24 = ptrtoint ptr %min_input_pxl_clk_pll_frequency to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_input_pxl_clk_pll_frequency, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.end17.if.end24_crit_edge
  %.sink108 = phi i32 [ %25, %if.else21 ], [ %23, %if.end17.if.end24_crit_edge ]
  %26 = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 7
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink108, ptr %26, align 4
  %min_pix_clk_pll_post_divider = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %init_data, i32 0, i32 1
  %28 = ptrtoint ptr %min_pix_clk_pll_post_divider to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_pix_clk_pll_post_divider, align 4
  %min_pix_clock_pll_post_divider = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 1
  %30 = ptrtoint ptr %min_pix_clock_pll_post_divider to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %min_pix_clock_pll_post_divider, align 4
  %max_pix_clk_pll_post_divider = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %init_data, i32 0, i32 2
  %31 = ptrtoint ptr %max_pix_clk_pll_post_divider to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_pix_clk_pll_post_divider, align 4
  %max_pix_clock_pll_post_divider = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 2
  %33 = ptrtoint ptr %max_pix_clock_pll_post_divider to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_pix_clock_pll_post_divider, align 4
  %min_pll_ref_divider = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %init_data, i32 0, i32 3
  %34 = ptrtoint ptr %min_pll_ref_divider to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %min_pll_ref_divider, align 4
  %min_pll_ref_divider25 = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 3
  %36 = ptrtoint ptr %min_pll_ref_divider25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %min_pll_ref_divider25, align 4
  %max_pll_ref_divider = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %init_data, i32 0, i32 4
  %37 = ptrtoint ptr %max_pll_ref_divider to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_pll_ref_divider, align 4
  %max_pll_ref_divider26 = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 4
  %39 = ptrtoint ptr %max_pll_ref_divider26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_pll_ref_divider26, align 4
  %num_fract_fb_divider_decimal_point = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %init_data, i32 0, i32 7
  %40 = ptrtoint ptr %num_fract_fb_divider_decimal_point to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_fract_fb_divider_decimal_point, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp27 = icmp eq i32 %41, 0
  br i1 %cmp27, label %if.end24.if.then31_crit_edge, label %lor.lhs.false28

if.end24.if.then31_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

lor.lhs.false28:                                  ; preds = %if.end24
  %num_fract_fb_divider_decimal_point_precision = getelementptr inbounds %struct.calc_pll_clock_source_init_data, ptr %init_data, i32 0, i32 8
  %42 = ptrtoint ptr %num_fract_fb_divider_decimal_point_precision to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_fract_fb_divider_decimal_point_precision, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %41)
  %cmp30 = icmp ugt i32 %43, %41
  br i1 %cmp30, label %lor.lhs.false28.if.then31_crit_edge, label %if.end32

lor.lhs.false28.if.then31_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false28.if.then31_crit_edge, %if.end24.if.then31_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #5
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp34 = icmp eq i32 %43, 0
  br i1 %cmp34, label %if.then35, label %for.body.preheader

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %cleanup

for.body.preheader:                               ; preds = %if.end32
  %fract_fb_divider_decimal_points_num = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 9
  %44 = ptrtoint ptr %fract_fb_divider_decimal_points_num to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %fract_fb_divider_decimal_points_num, align 4
  %45 = ptrtoint ptr %num_fract_fb_divider_decimal_point_precision to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_fract_fb_divider_decimal_point_precision, align 4
  %fract_fb_divider_precision = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 11
  %47 = ptrtoint ptr %fract_fb_divider_precision to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %fract_fb_divider_precision, align 4
  %fract_fb_divider_factor = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0104 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %48 = phi i32 [ %mul, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %mul = mul i32 %48, 10
  %inc = add nuw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, %41
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %49 = ptrtoint ptr %fract_fb_divider_factor to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul, ptr %fract_fb_divider_factor, align 4
  %fract_fb_divider_precision_factor = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll_cs, i32 0, i32 12
  %50 = ptrtoint ptr %fract_fb_divider_precision_factor to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %fract_fb_divider_precision_factor, align 4
  %sub = sub i32 %41, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %46)
  %cmp45105.not = icmp eq i32 %41, %46
  br i1 %cmp45105.not, label %for.end.cleanup_crit_edge, label %for.body46.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body46.lr.ph:                                 ; preds = %for.end
  %51 = ptrtoint ptr %fract_fb_divider_precision_factor to i32
  call void @__asan_load4_noabort(i32 %51)
  %fract_fb_divider_precision_factor.promoted = load i32, ptr %fract_fb_divider_precision_factor, align 4
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.body46.lr.ph
  %52 = phi i32 [ %fract_fb_divider_precision_factor.promoted, %for.body46.lr.ph ], [ %mul48, %for.body46.for.body46_crit_edge ]
  %i.1106 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc50, %for.body46.for.body46_crit_edge ]
  %mul48 = mul i32 %52, 10
  %inc50 = add nuw i32 %i.1106, 1
  %exitcond107.not = icmp eq i32 %inc50, %sub
  br i1 %exitcond107.not, label %for.cond42.cleanup.loopexit_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body46

for.cond42.cleanup.loopexit_crit_edge:            ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %fract_fb_divider_precision_factor to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul48, ptr %fract_fb_divider_precision_factor, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.cond42.cleanup.loopexit_crit_edge, %for.end.cleanup_crit_edge, %if.then35, %if.then31, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then31 ], [ false, %if.then35 ], [ false, %lor.lhs.false2.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %for.cond42.cleanup.loopexit_crit_edge ], [ true, %for.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce112_clk_src_construct(ptr nocapture noundef %clk_src, ptr noundef %ctx, ptr noundef %bios, i32 noundef %id, ptr noundef %regs, ptr noundef %cs_shift, ptr noundef %cs_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.clock_source, ptr %clk_src, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1, align 4
  %bios2 = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 4
  %1 = ptrtoint ptr %bios2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bios, ptr %bios2, align 4
  %id4 = getelementptr inbounds %struct.clock_source, ptr %clk_src, i32 0, i32 2
  %2 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %id, ptr %id4, align 4
  %3 = ptrtoint ptr %clk_src to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dce112_clk_src_funcs, ptr %clk_src, align 4
  %regs6 = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 1
  %4 = ptrtoint ptr %regs6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regs, ptr %regs6, align 4
  %cs_shift7 = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 3
  %5 = ptrtoint ptr %cs_shift7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cs_shift, ptr %cs_shift7, align 4
  %cs_mask8 = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 2
  %6 = ptrtoint ptr %cs_mask8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cs_mask, ptr %cs_mask8, align 4
  %fw_info_valid = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 8
  %7 = ptrtoint ptr %fw_info_valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_info_valid, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.end, label %if.end32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1569, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %return

if.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %external_clock_source_frequency_for_dp = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 7, i32 3
  %9 = ptrtoint ptr %external_clock_source_frequency_for_dp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %external_clock_source_frequency_for_dp, align 4
  %ext_clk_khz = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 13
  %11 = ptrtoint ptr %ext_clk_khz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ext_clk_khz, align 4
  br label %return

return:                                           ; preds = %if.end32, %do.end
  %12 = xor i1 %tobool.not, true
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dcn20_clk_src_construct(ptr nocapture noundef writeonly %clk_src, ptr noundef %ctx, ptr noundef %bios, i32 noundef %id, ptr noundef %regs, ptr noundef %cs_shift, ptr noundef %cs_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1.i = getelementptr inbounds %struct.clock_source, ptr %clk_src, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1.i, align 4
  %bios2.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 4
  %1 = ptrtoint ptr %bios2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bios, ptr %bios2.i, align 4
  %id4.i = getelementptr inbounds %struct.clock_source, ptr %clk_src, i32 0, i32 2
  %2 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %id, ptr %id4.i, align 4
  %3 = ptrtoint ptr %clk_src to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dce112_clk_src_funcs, ptr %clk_src, align 4
  %regs6.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 1
  %4 = ptrtoint ptr %regs6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regs, ptr %regs6.i, align 4
  %cs_shift7.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 3
  %5 = ptrtoint ptr %cs_shift7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cs_shift, ptr %cs_shift7.i, align 4
  %cs_mask8.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 2
  %6 = ptrtoint ptr %cs_mask8.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cs_mask, ptr %cs_mask8.i, align 4
  %fw_info_valid.i = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 8
  %7 = ptrtoint ptr %fw_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_info_valid.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end32.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1569, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %dce112_clk_src_construct.exit

if.end32.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %external_clock_source_frequency_for_dp.i = getelementptr inbounds %struct.dc_bios, ptr %bios, i32 0, i32 7, i32 3
  %9 = ptrtoint ptr %external_clock_source_frequency_for_dp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %external_clock_source_frequency_for_dp.i, align 4
  %ext_clk_khz.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 13
  %11 = ptrtoint ptr %ext_clk_khz.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ext_clk_khz.i, align 4
  br label %dce112_clk_src_construct.exit

dce112_clk_src_construct.exit:                    ; preds = %if.end32.i, %do.end.i
  %12 = xor i1 %tobool.not.i, true
  %13 = ptrtoint ptr %clk_src to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dcn20_clk_src_funcs, ptr %clk_src, align 4
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_clock_source_power_down(ptr nocapture noundef readonly %clk_src) #0 align 64 {
entry:
  %bp_pixel_clock_params = alloca %struct.bp_pixel_clock_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp_pixel_clock_params) #5
  %0 = getelementptr inbounds i8, ptr %bp_pixel_clock_params, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %dp_clk_src = getelementptr inbounds %struct.clock_source, ptr %clk_src, i32 0, i32 3
  %2 = ptrtoint ptr %dp_clk_src to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_clk_src, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %bp_pixel_clock_params to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bp_pixel_clock_params, align 4
  %id = getelementptr inbounds %struct.clock_source, ptr %clk_src, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %pll_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pixel_clock_params, i32 0, i32 1
  %7 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pll_id, align 4
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pixel_clock_params, i32 0, i32 11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %flags, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %flags, align 4
  %bios = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 4
  %9 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bios, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %set_pixel_clock = getelementptr inbounds %struct.dc_vbios_funcs, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %set_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_pixel_clock, align 4
  %call = call i32 %14(ptr noundef %10, ptr noundef nonnull %bp_pixel_clock_params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ true, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp_pixel_clock_params) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_program_pix_clk(ptr nocapture noundef readonly %clock_source, ptr nocapture noundef readonly %pix_clk_params, ptr noundef readonly %pll_settings) #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.fixed31_32, align 8
  %tmp11.i.i = alloca %struct.fixed31_32, align 8
  %agg.tmp.i.i = alloca %struct.fixed31_32, align 8
  %tmp23.i.i = alloca %struct.fixed31_32, align 8
  %tmp32.i.i = alloca %struct.fixed31_32, align 8
  %tmp37.i.i = alloca %struct.fixed31_32, align 8
  %tmp43.i.i = alloca %struct.fixed31_32, align 8
  %tmp45.i.i = alloca %struct.fixed31_32, align 8
  %tmp48.i.i = alloca %struct.fixed31_32, align 8
  %tmp51.i.i = alloca %struct.fixed31_32, align 8
  %bp_params.i = alloca %struct.bp_spread_spectrum_parameters, align 4
  %bp_ss_params.i = alloca %struct.bp_spread_spectrum_parameters, align 4
  %bp_pc_params = alloca %struct.bp_pixel_clock_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp_pc_params) #5
  %0 = call ptr @memset(ptr %bp_pc_params, i32 0, i32 48)
  %id = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp.not = icmp eq i32 %2, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %signal_type = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 4
  %3 = ptrtoint ptr %signal_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %signal_type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %land.lhs.true1 [
    i32 32, label %land.lhs.true.if.end_crit_edge
    i32 128, label %land.lhs.true.if.end_crit_edge80
    i32 64, label %land.lhs.true.if.end_crit_edge81
  ]

land.lhs.true.if.end_crit_edge81:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.if.end_crit_edge80:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %ctx = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 1
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %dce_version = getelementptr inbounds %struct.dc_context, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %dce_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dce_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp2 = icmp slt i32 %9, 8
  br i1 %cmp2, label %if.then, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bp_ss_params.i) #5
  %10 = getelementptr inbounds i8, ptr %bp_ss_params.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 24)
  %12 = ptrtoint ptr %bp_ss_params.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %bp_ss_params.i, align 4
  %bios.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 4
  %13 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bios.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %enable_spread_spectrum_on_ppll.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %enable_spread_spectrum_on_ppll.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enable_spread_spectrum_on_ppll.i, align 4
  %call.i = call i32 %18(ptr noundef %14, ptr noundef nonnull %bp_ss_params.i, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bp_ss_params.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge80, %land.lhs.true.if.end_crit_edge81, %entry.if.end_crit_edge
  %controller_id = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 5
  %19 = ptrtoint ptr %controller_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %controller_id, align 4
  %21 = ptrtoint ptr %bp_pc_params to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bp_pc_params, align 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %pll_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 1
  %24 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pll_id, align 4
  %25 = ptrtoint ptr %pll_settings to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pll_settings, align 4
  %target_pixel_clock_100hz = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 3
  %27 = ptrtoint ptr %target_pixel_clock_100hz to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %target_pixel_clock_100hz, align 4
  %encoder_object_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 8
  %encoder_object_id6 = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 3
  %28 = ptrtoint ptr %encoder_object_id6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %encoder_object_id6, align 4
  %30 = ptrtoint ptr %encoder_object_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %encoder_object_id, align 4
  %signal_type7 = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 4
  %31 = ptrtoint ptr %signal_type7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %signal_type7, align 4
  %signal_type8 = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 2
  %33 = ptrtoint ptr %signal_type8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %signal_type8, align 4
  %reference_divider = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 5
  %34 = ptrtoint ptr %reference_divider to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reference_divider, align 4
  %reference_divider9 = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 4
  %36 = ptrtoint ptr %reference_divider9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %reference_divider9, align 4
  %feedback_divider = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 6
  %37 = ptrtoint ptr %feedback_divider to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %feedback_divider, align 4
  %feedback_divider10 = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 5
  %39 = ptrtoint ptr %feedback_divider10 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %feedback_divider10, align 4
  %fract_feedback_divider = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 7
  %40 = ptrtoint ptr %fract_feedback_divider to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fract_feedback_divider, align 4
  %fractional_feedback_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 6
  %42 = ptrtoint ptr %fractional_feedback_divider to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %fractional_feedback_divider, align 4
  %pix_clk_post_divider = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 8
  %43 = ptrtoint ptr %pix_clk_post_divider to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pix_clk_post_divider, align 4
  %pixel_clock_post_divider = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 7
  %45 = ptrtoint ptr %pixel_clock_post_divider to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %pixel_clock_post_divider, align 4
  %use_external_clk = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 10
  %46 = ptrtoint ptr %use_external_clk to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %use_external_clk, align 4, !range !58
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 11
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %flags, align 4
  %bf.shl = shl nuw nsw i8 %47, 5
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %flags, align 4
  %color_depth = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 6
  %49 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %color_depth, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %50, label %if.end.sw.epilog_crit_edge [
    i32 3, label %if.end.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb12
    i32 6, label %sw.bb14
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb14, %sw.bb12, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb14 ], [ 2, %sw.bb12 ], [ 1, %if.end.sw.epilog.sink.split_crit_edge ]
  %color_depth15 = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 10
  %52 = ptrtoint ptr %color_depth15 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink, ptr %color_depth15, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %bios = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 4
  %53 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bios, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %set_pixel_clock = getelementptr inbounds %struct.dc_vbios_funcs, ptr %56, i32 0, i32 18
  %57 = ptrtoint ptr %set_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_pixel_clock, align 4
  %call17 = call i32 %58(ptr noundef %54, ptr noundef nonnull %bp_pc_params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end21, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %sw.epilog
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp23.not = icmp eq i32 %60, 4
  br i1 %cmp23.not, label %if.end21.cleanup_crit_edge, label %land.lhs.true25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true25:                                  ; preds = %if.end21
  %61 = ptrtoint ptr %signal_type7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %signal_type7, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %62, label %if.then28 [
    i32 32, label %land.lhs.true25.cleanup_crit_edge
    i32 128, label %land.lhs.true25.cleanup_crit_edge82
    i32 64, label %land.lhs.true25.cleanup_crit_edge83
  ]

land.lhs.true25.cleanup_crit_edge83:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true25.cleanup_crit_edge82:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true25
  %flags29 = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 9
  %64 = ptrtoint ptr %flags29 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load30 = load i8, ptr %flags29, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load30)
  %tobool31.not = icmp sgt i8 %bf.load30, -1
  br i1 %tobool31.not, label %if.then28.if.end37_crit_edge, label %if.then32

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then32:                                        ; preds = %if.then28
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bp_params.i) #5
  %65 = call ptr @memset(ptr %bp_params.i, i32 0, i32 28)
  %calculated_pix_clk_100hz.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 2
  %66 = ptrtoint ptr %calculated_pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %calculated_pix_clk_100hz.i, align 4
  %div.i = udiv i32 %67, 10
  %68 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %62, label %if.then32.enable_spread_spectrum.exit_crit_edge [
    i32 1, label %if.then32.sw.bb.i.i_crit_edge
    i32 2, label %if.then32.sw.bb.i.i_crit_edge84
    i32 4, label %sw.bb1.i.i
    i32 8, label %sw.bb2.i.i
    i32 32, label %if.then32.sw.bb3.i.i_crit_edge
    i32 512, label %if.then32.sw.bb3.i.i_crit_edge85
    i32 128, label %if.then32.sw.bb3.i.i_crit_edge86
  ]

if.then32.sw.bb3.i.i_crit_edge86:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then32.sw.bb3.i.i_crit_edge85:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then32.sw.bb3.i.i_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then32.sw.bb.i.i_crit_edge84:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.then32.sw.bb.i.i_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.then32.enable_spread_spectrum.exit_crit_edge:  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_spread_spectrum.exit

sw.bb.i.i:                                        ; preds = %if.then32.sw.bb.i.i_crit_edge, %if.then32.sw.bb.i.i_crit_edge84
  %dvi_ss_params.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 9
  %dvi_ss_params_cnt.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 10
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %hdmi_ss_params.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 7
  %hdmi_ss_params_cnt.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 8
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_ss_params.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 11
  %lvds_ss_params_cnt.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 12
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.then32.sw.bb3.i.i_crit_edge, %if.then32.sw.bb3.i.i_crit_edge85, %if.then32.sw.bb3.i.i_crit_edge86
  %dp_ss_params.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 5
  %dp_ss_params_cnt.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 6
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %entrys_num.0.in.i.i = phi ptr [ %dp_ss_params_cnt.i.i, %sw.bb3.i.i ], [ %lvds_ss_params_cnt.i.i, %sw.bb2.i.i ], [ %hdmi_ss_params_cnt.i.i, %sw.bb1.i.i ], [ %dvi_ss_params_cnt.i.i, %sw.bb.i.i ]
  %ss_parm.0.in.i.i = phi ptr [ %dp_ss_params.i.i, %sw.bb3.i.i ], [ %lvds_ss_params.i.i, %sw.bb2.i.i ], [ %hdmi_ss_params.i.i, %sw.bb1.i.i ], [ %dvi_ss_params.i.i, %sw.bb.i.i ]
  %69 = ptrtoint ptr %ss_parm.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %ss_parm.0.i.i = load ptr, ptr %ss_parm.0.in.i.i, align 4
  %70 = ptrtoint ptr %entrys_num.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %entrys_num.0.i.i = load i32, ptr %entrys_num.0.in.i.i, align 4
  %cmp.i.i = icmp ne ptr %ss_parm.0.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entrys_num.0.i.i)
  %cmp426.i.i = icmp ne i32 %entrys_num.0.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp426.i.i, i1 false
  br i1 %or.cond.i.i, label %sw.epilog.i.i.for.body.i.i_crit_edge, label %sw.epilog.i.i.enable_spread_spectrum.exit_crit_edge

sw.epilog.i.i.enable_spread_spectrum.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_spread_spectrum.exit

sw.epilog.i.i.for.body.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.epilog.i.i.for.body.i.i_crit_edge
  %ss_parm.128.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %ss_parm.0.i.i, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %i.027.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %freq_range_khz.i.i = getelementptr inbounds %struct.spread_spectrum_data, ptr %ss_parm.128.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %freq_range_khz.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %freq_range_khz.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %div.i)
  %cmp5.not.i.i = icmp ult i32 %72, %div.i
  br i1 %cmp5.not.i.i, label %for.inc.i.i, label %get_ss_data_entry.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.027.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.spread_spectrum_data, ptr %ss_parm.128.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %entrys_num.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.enable_spread_spectrum.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.enable_spread_spectrum.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_spread_spectrum.exit

get_ss_data_entry.exit.i:                         ; preds = %for.body.i.i
  %cmp.not.i = icmp eq ptr %ss_parm.128.i.i, null
  br i1 %cmp.not.i, label %get_ss_data_entry.exit.i.enable_spread_spectrum.exit_crit_edge, label %land.lhs.true.i

get_ss_data_entry.exit.i.enable_spread_spectrum.exit_crit_edge: ; preds = %get_ss_data_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_spread_spectrum.exit

land.lhs.true.i:                                  ; preds = %get_ss_data_entry.exit.i
  %ss_percentage.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 9
  %73 = ptrtoint ptr %ss_percentage.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ss_percentage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp1.not.i = icmp eq i32 %74, 0
  br i1 %cmp1.not.i, label %land.lhs.true.i.enable_spread_spectrum.exit_crit_edge, label %if.end3.i.i

land.lhs.true.i.enable_spread_spectrum.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_spread_spectrum.exit

if.end3.i.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i.i) #5
  %75 = ptrtoint ptr %ss_parm.128.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ss_parm.128.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp4.i.i = icmp eq i32 %76, 0
  %cmp7.i.i = icmp eq ptr %pll_settings, null
  %or.cond143.i.i = or i1 %cmp7.i.i, %cmp4.i.i
  br i1 %or.cond143.i.i, label %calculate_ss.exit.i, label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end3.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #5
  %77 = ptrtoint ptr %fract_feedback_divider to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fract_feedback_divider, align 4
  %conv.i.i = zext i32 %78 to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i.i, i64 noundef %conv.i.i, i64 noundef 1000000) #5
  %79 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %fb_div.sroa.0.0.copyload.i.i = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #5
  %80 = ptrtoint ptr %feedback_divider to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %feedback_divider, align 4
  %conv1.i.i.i.i = zext i32 %81 to i64
  %shl.i.i.i.i = shl nuw i64 %conv1.i.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %fb_div.sroa.0.0.copyload.i.i)
  %cmp.i.i.i.i = icmp slt i64 %fb_div.sroa.0.0.copyload.i.i, 0
  %sub.i.i.i.i = sub i64 9223372036854775807, %fb_div.sroa.0.0.copyload.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i.i.i, i64 %shl.i.i.i.i)
  %cmp4.not.i.i.i.i = icmp slt i64 %sub.i.i.i.i, %shl.i.i.i.i
  %or.cond.i.i.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %cmp4.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %lor.rhs.i.i.i.i, label %if.end9.i.i.dc_fixpt_add_int.exit.i.i_crit_edge

if.end9.i.i.dc_fixpt_add_int.exit.i.i_crit_edge:  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_fixpt_add_int.exit.i.i

lor.rhs.i.i.i.i:                                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %fb_div.sroa.0.0.copyload.i.i)
  %cmp6.i.i.i.i = icmp sgt i64 %fb_div.sroa.0.0.copyload.i.i, -1
  %sub8.i.i.i.i = sub i64 -9223372036854775808, %fb_div.sroa.0.0.copyload.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i.i.i, i64 %shl.i.i.i.i)
  %cmp10.i.i.i.i = icmp sgt i64 %sub8.i.i.i.i, %shl.i.i.i.i
  %or.cond67.i.i.i.i = select i1 %cmp6.i.i.i.i, i1 true, i1 %cmp10.i.i.i.i
  br i1 %or.cond67.i.i.i.i, label %land.rhs13.i.i.i.i, label %lor.rhs.i.i.i.i.dc_fixpt_add_int.exit.i.i_crit_edge

lor.rhs.i.i.i.i.dc_fixpt_add_int.exit.i.i_crit_edge: ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_fixpt_add_int.exit.i.i

land.rhs13.i.i.i.i:                               ; preds = %lor.rhs.i.i.i.i
  %.b65.i.i.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !59
  br i1 %.b65.i.i.i.i, label %land.rhs13.i.i.i.i.if.then50.i.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !64

land.rhs13.i.i.i.i.if.then50.i.i.i.i_crit_edge:   ; preds = %land.rhs13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !59
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 250, i32 noundef 9, ptr noundef null) #5, !noalias !59
  br label %if.then50.i.i.i.i

if.then50.i.i.i.i:                                ; preds = %if.then.i.i.i.i, %land.rhs13.i.i.i.i.if.then50.i.i.i.i_crit_edge
  call void @kgdb_breakpoint() #5, !noalias !59
  br label %dc_fixpt_add_int.exit.i.i

dc_fixpt_add_int.exit.i.i:                        ; preds = %if.then50.i.i.i.i, %lor.rhs.i.i.i.i.dc_fixpt_add_int.exit.i.i_crit_edge, %if.end9.i.i.dc_fixpt_add_int.exit.i.i_crit_edge
  %add.i.i.i.i = add i64 %shl.i.i.i.i, %fb_div.sroa.0.0.copyload.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp11.i.i) #5
  %82 = ptrtoint ptr %ss_parm.128.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ss_parm.128.i.i, align 4
  %conv13.i.i = zext i32 %83 to i64
  %percentage_divider.i.i = getelementptr inbounds %struct.spread_spectrum_data, ptr %ss_parm.128.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %percentage_divider.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %percentage_divider.i.i, align 4
  %mul.i.i = mul i32 %85, 100
  %conv14.i.i = zext i32 %mul.i.i to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp.i.i, i64 noundef %conv13.i.i, i64 noundef %conv14.i.i) #5
  %.fca.0.insert123.i.i = insertvalue [1 x i64] poison, i64 %add.i.i.i.i, 0
  %86 = ptrtoint ptr %agg.tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %.fca.0.load64.i.i = load i64, ptr %agg.tmp.i.i, align 8
  %.fca.0.insert65.i.i = insertvalue [1 x i64] poison, i64 %.fca.0.load64.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp11.i.i, [1 x i64] %.fca.0.insert123.i.i, [1 x i64] %.fca.0.insert65.i.i) #5
  %87 = ptrtoint ptr %tmp11.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %ss_amount.sroa.0.0.copyload.i.i = load i64, ptr %tmp11.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp11.i.i) #5
  %88 = call i64 @llvm.abs.i64(i64 %ss_amount.sroa.0.0.copyload.i.i, i1 false) #5
  %extract12.i.i.i = lshr i64 %88, 32
  %extract.t13.i.i.i = trunc i64 %extract12.i.i.i to i32
  %sub7.i.i.i = sub i32 0, %extract.t13.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ss_amount.sroa.0.0.copyload.i.i)
  %cmp414.i.i.i = icmp slt i64 %ss_amount.sroa.0.0.copyload.i.i, 0
  %retval.0.i.i.i = select i1 %cmp414.i.i.i, i32 %sub7.i.i.i, i32 %extract.t13.i.i.i
  %conv1.i.i.i = zext i32 %retval.0.i.i.i to i64
  %shl.i.i.i = shl nuw i64 %conv1.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i.i)
  %cmp.i.i.i = icmp slt i64 %shl.i.i.i, 0
  %add.i.i.i = xor i64 %shl.i.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %ss_amount.sroa.0.0.copyload.i.i)
  %cmp4.not.i.i.i = icmp sgt i64 %add.i.i.i, %ss_amount.sroa.0.0.copyload.i.i
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 true, i1 %cmp4.not.i.i.i
  br i1 %or.cond.i.i.i, label %lor.rhs.i.i.i, label %dc_fixpt_add_int.exit.i.i.dc_fixpt_sub.exit.i.i_crit_edge

dc_fixpt_add_int.exit.i.i.dc_fixpt_sub.exit.i.i_crit_edge: ; preds = %dc_fixpt_add_int.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_fixpt_sub.exit.i.i

lor.rhs.i.i.i:                                    ; preds = %dc_fixpt_add_int.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shl.i.i.i)
  %cmp6.i.i.i = icmp sgt i64 %shl.i.i.i, -1
  %add8.i.i.i = add i64 %shl.i.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i.i.i, i64 %ss_amount.sroa.0.0.copyload.i.i)
  %cmp10.i.i.i = icmp slt i64 %add8.i.i.i, %ss_amount.sroa.0.0.copyload.i.i
  %or.cond67.i.i.i = select i1 %cmp6.i.i.i, i1 true, i1 %cmp10.i.i.i
  br i1 %or.cond67.i.i.i, label %land.rhs13.i.i.i, label %lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge

lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge:    ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_fixpt_sub.exit.i.i

land.rhs13.i.i.i:                                 ; preds = %lor.rhs.i.i.i
  %.b65.i.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !65
  br i1 %.b65.i.i.i, label %land.rhs13.i.i.i.if.then50.i.i.i_crit_edge, label %if.then.i.i.i, !prof !64

land.rhs13.i.i.i.if.then50.i.i.i_crit_edge:       ; preds = %land.rhs13.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs13.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !65
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 275, i32 noundef 9, ptr noundef null) #5, !noalias !65
  br label %if.then50.i.i.i

if.then50.i.i.i:                                  ; preds = %if.then.i.i.i, %land.rhs13.i.i.i.if.then50.i.i.i_crit_edge
  call void @kgdb_breakpoint() #5, !noalias !65
  br label %dc_fixpt_sub.exit.i.i

dc_fixpt_sub.exit.i.i:                            ; preds = %if.then50.i.i.i, %lor.rhs.i.i.i.dc_fixpt_sub.exit.i.i_crit_edge, %dc_fixpt_add_int.exit.i.i.dc_fixpt_sub.exit.i.i_crit_edge
  %sub.i.i.i = sub i64 %ss_amount.sroa.0.0.copyload.i.i, %shl.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp23.i.i) #5
  %.fca.0.insert97.i.i = insertvalue [1 x i64] poison, i64 %sub.i.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp23.i.i, [1 x i64] %.fca.0.insert97.i.i, [1 x i64] [i64 42949672960]) #5
  %89 = ptrtoint ptr %tmp23.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %ss_nslip_amount.sroa.0.0.copyload104.i.i = load i64, ptr %tmp23.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp23.i.i) #5
  %90 = call i64 @llvm.abs.i64(i64 %ss_nslip_amount.sroa.0.0.copyload104.i.i, i1 false) #5
  %extract12.i144.i.i = lshr i64 %90, 32
  %extract.t13.i145.i.i = trunc i64 %extract12.i144.i.i to i32
  %sub7.i146.i.i = sub i32 0, %extract.t13.i145.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ss_nslip_amount.sroa.0.0.copyload104.i.i)
  %cmp414.i147.i.i = icmp slt i64 %ss_nslip_amount.sroa.0.0.copyload104.i.i, 0
  %retval.0.i148.i.i = select i1 %cmp414.i147.i.i, i32 %sub7.i146.i.i, i32 %extract.t13.i145.i.i
  %conv1.i149.i.i = zext i32 %retval.0.i148.i.i to i64
  %shl.i150.i.i = shl nuw i64 %conv1.i149.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i150.i.i)
  %cmp.i151.i.i = icmp slt i64 %shl.i150.i.i, 0
  %add.i152.i.i = xor i64 %shl.i150.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i152.i.i, i64 %ss_nslip_amount.sroa.0.0.copyload104.i.i)
  %cmp4.not.i153.i.i = icmp sgt i64 %add.i152.i.i, %ss_nslip_amount.sroa.0.0.copyload104.i.i
  %or.cond.i154.i.i = select i1 %cmp.i151.i.i, i1 true, i1 %cmp4.not.i153.i.i
  br i1 %or.cond.i154.i.i, label %lor.rhs.i159.i.i, label %dc_fixpt_sub.exit.i.i.dc_fixpt_sub.exit165.i.i_crit_edge

dc_fixpt_sub.exit.i.i.dc_fixpt_sub.exit165.i.i_crit_edge: ; preds = %dc_fixpt_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_fixpt_sub.exit165.i.i

lor.rhs.i159.i.i:                                 ; preds = %dc_fixpt_sub.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shl.i150.i.i)
  %cmp6.i155.i.i = icmp sgt i64 %shl.i150.i.i, -1
  %add8.i156.i.i = add i64 %shl.i150.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i156.i.i, i64 %ss_nslip_amount.sroa.0.0.copyload104.i.i)
  %cmp10.i157.i.i = icmp slt i64 %add8.i156.i.i, %ss_nslip_amount.sroa.0.0.copyload104.i.i
  %or.cond67.i158.i.i = select i1 %cmp6.i155.i.i, i1 true, i1 %cmp10.i157.i.i
  br i1 %or.cond67.i158.i.i, label %land.rhs13.i161.i.i, label %lor.rhs.i159.i.i.dc_fixpt_sub.exit165.i.i_crit_edge

lor.rhs.i159.i.i.dc_fixpt_sub.exit165.i.i_crit_edge: ; preds = %lor.rhs.i159.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_fixpt_sub.exit165.i.i

land.rhs13.i161.i.i:                              ; preds = %lor.rhs.i159.i.i
  %.b65.i160.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !68
  br i1 %.b65.i160.i.i, label %land.rhs13.i161.i.i.if.then50.i163.i.i_crit_edge, label %if.then.i162.i.i, !prof !64

land.rhs13.i161.i.i.if.then50.i163.i.i_crit_edge: ; preds = %land.rhs13.i161.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50.i163.i.i

if.then.i162.i.i:                                 ; preds = %land.rhs13.i161.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !68
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 275, i32 noundef 9, ptr noundef null) #5, !noalias !68
  br label %if.then50.i163.i.i

if.then50.i163.i.i:                               ; preds = %if.then.i162.i.i, %land.rhs13.i161.i.i.if.then50.i163.i.i_crit_edge
  call void @kgdb_breakpoint() #5, !noalias !68
  br label %dc_fixpt_sub.exit165.i.i

dc_fixpt_sub.exit165.i.i:                         ; preds = %if.then50.i163.i.i, %lor.rhs.i159.i.i.dc_fixpt_sub.exit165.i.i_crit_edge, %dc_fixpt_sub.exit.i.i.dc_fixpt_sub.exit165.i.i_crit_edge
  %sub.i164.i.i = sub i64 %ss_nslip_amount.sroa.0.0.copyload104.i.i, %shl.i150.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp32.i.i) #5
  %.fca.0.insert89.i.i = insertvalue [1 x i64] poison, i64 %sub.i164.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp32.i.i, [1 x i64] %.fca.0.insert89.i.i, [1 x i64] [i64 281474976710656]) #5
  %91 = ptrtoint ptr %tmp32.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %ss_ds_frac_amount.sroa.0.0.copyload93.i.i = load i64, ptr %tmp32.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp32.i.i) #5
  %92 = call i64 @llvm.abs.i64(i64 %ss_ds_frac_amount.sroa.0.0.copyload93.i.i, i1 false) #5
  %extract12.i166.i.i = lshr i64 %92, 32
  %extract.t13.i167.i.i = trunc i64 %extract12.i166.i.i to i32
  %sub7.i168.i.i = sub i32 0, %extract.t13.i167.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ss_ds_frac_amount.sroa.0.0.copyload93.i.i)
  %cmp414.i169.i.i = icmp slt i64 %ss_ds_frac_amount.sroa.0.0.copyload93.i.i, 0
  %retval.0.i170.i.i = select i1 %cmp414.i169.i.i, i32 %sub7.i168.i.i, i32 %extract.t13.i167.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp37.i.i) #5
  %reference_freq.i.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 4
  %93 = ptrtoint ptr %reference_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reference_freq.i.i, align 4
  %mul38.i.i = mul i32 %94, 1000
  %conv39.i.i = zext i32 %mul38.i.i to i64
  %95 = ptrtoint ptr %reference_divider to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reference_divider, align 4
  %modulation_freq_hz.i.i = getelementptr inbounds %struct.spread_spectrum_data, ptr %ss_parm.128.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %modulation_freq_hz.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %modulation_freq_hz.i.i, align 4
  %mul40.i.i = mul i32 %98, %96
  %conv41.i.i = zext i32 %mul40.i.i to i64
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp37.i.i, i64 noundef %conv39.i.i, i64 noundef %conv41.i.i) #5
  %99 = ptrtoint ptr %tmp37.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %modulation_time.sroa.0.0.copyload.i.i = load i64, ptr %tmp37.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp37.i.i) #5
  %flags.i.i = getelementptr inbounds %struct.spread_spectrum_data, ptr %ss_parm.128.i.i, i32 0, i32 4
  %100 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i.i = load i8, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then42.i.i

if.then42.i.i:                                    ; preds = %dc_fixpt_sub.exit165.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp43.i.i) #5
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp43.i.i, i64 noundef %modulation_time.sroa.0.0.copyload.i.i, i64 noundef 17179869184) #5
  %101 = ptrtoint ptr %tmp43.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %modulation_time.sroa.0.0.copyload75.i.i = load i64, ptr %tmp43.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp43.i.i) #5
  br label %if.then3.i

if.else.i.i:                                      ; preds = %dc_fixpt_sub.exit165.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp45.i.i) #5
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp45.i.i, i64 noundef %modulation_time.sroa.0.0.copyload.i.i, i64 noundef 8589934592) #5
  %102 = ptrtoint ptr %tmp45.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %modulation_time.sroa.0.0.copyload77.i.i = load i64, ptr %tmp45.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp45.i.i) #5
  br label %if.then3.i

calculate_ss.exit.i:                              ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i.i) #5
  br label %enable_spread_spectrum.exit.thread

if.then3.i:                                       ; preds = %if.else.i.i, %if.then42.i.i
  %modulation_time.sroa.0.0.i.i = phi i64 [ %modulation_time.sroa.0.0.copyload75.i.i, %if.then42.i.i ], [ %modulation_time.sroa.0.0.copyload77.i.i, %if.else.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp48.i.i) #5
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp48.i.i, i64 noundef %ss_amount.sroa.0.0.copyload.i.i, i64 noundef %modulation_time.sroa.0.0.i.i) #5
  %103 = ptrtoint ptr %tmp48.i.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %ss_step_size.sroa.0.0.copyload.i.i = load i64, ptr %tmp48.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp48.i.i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp51.i.i) #5
  %.fca.0.insert81.i.i = insertvalue [1 x i64] poison, i64 %ss_step_size.sroa.0.0.copyload.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp51.i.i, [1 x i64] %.fca.0.insert81.i.i, [1 x i64] [i64 2814749767106560]) #5
  %104 = ptrtoint ptr %tmp51.i.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %ss_step_size.sroa.0.0.copyload85.i.i = load i64, ptr %tmp51.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp51.i.i) #5
  %105 = call i64 @llvm.abs.i64(i64 %ss_step_size.sroa.0.0.copyload85.i.i, i1 false) #5
  %extract12.i171.i.i = lshr i64 %105, 32
  %extract.t13.i172.i.i = trunc i64 %extract12.i171.i.i to i32
  %sub7.i173.i.i = sub i32 0, %extract.t13.i172.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ss_step_size.sroa.0.0.copyload85.i.i)
  %cmp414.i174.i.i = icmp slt i64 %ss_step_size.sroa.0.0.copyload85.i.i, 0
  %retval.0.i175.i.i = select i1 %cmp414.i174.i.i, i32 %sub7.i173.i.i, i32 %extract.t13.i172.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i.i) #5
  %106 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params.i, i32 0, i32 3
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %retval.0.i.i.i, ptr %106, align 4
  %nfrac_amount5.i = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params.i, i32 0, i32 3, i32 0, i32 1
  %108 = ptrtoint ptr %nfrac_amount5.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %retval.0.i148.i.i, ptr %nfrac_amount5.i, align 4
  %ds_frac_size6.i = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params.i, i32 0, i32 3, i32 0, i32 2
  %109 = ptrtoint ptr %ds_frac_size6.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %retval.0.i175.i.i, ptr %ds_frac_size6.i, align 4
  %ds_frac_amount7.i = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params.i, i32 0, i32 2
  %110 = ptrtoint ptr %ds_frac_amount7.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %retval.0.i170.i.i, ptr %ds_frac_amount7.i, align 4
  %flags.i = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params.i, i32 0, i32 4
  %111 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load.i = load i8, ptr %flags.i, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %flags.i, align 4
  %112 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %id, align 4
  %114 = ptrtoint ptr %bp_params.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %bp_params.i, align 4
  %115 = ptrtoint ptr %ss_parm.128.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ss_parm.128.i.i, align 4
  %percentage8.i = getelementptr inbounds %struct.bp_spread_spectrum_parameters, ptr %bp_params.i, i32 0, i32 1
  %117 = ptrtoint ptr %percentage8.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %percentage8.i, align 4
  %118 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load10.i = load i8, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10.i)
  %tobool.not.i = icmp sgt i8 %bf.load10.i, -1
  br i1 %tobool.not.i, label %if.then3.i.if.end.i_crit_edge, label %if.then11.i

if.then3.i.if.end.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then11.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set15.i = or i8 %bf.load.i, -96
  %119 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %bf.set15.i, ptr %flags.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then11.i, %if.then3.i.if.end.i_crit_edge
  %120 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load17.i = load i8, ptr %flags.i.i, align 4
  %121 = and i8 %bf.load17.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool21.not.i = icmp eq i8 %121, 0
  br i1 %tobool21.not.i, label %if.end.i.if.end27.i_crit_edge, label %if.then22.i

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load24.i = load i8, ptr %flags.i, align 4
  %bf.set26.i = or i8 %bf.load24.i, 64
  store i8 %bf.set26.i, ptr %flags.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i, %if.end.i.if.end27.i_crit_edge
  %123 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bios, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %enable_spread_spectrum_on_ppll.i69 = getelementptr inbounds %struct.dc_vbios_funcs, ptr %126, i32 0, i32 20
  %127 = ptrtoint ptr %enable_spread_spectrum_on_ppll.i69 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %enable_spread_spectrum_on_ppll.i69, align 4
  %call29.i = call i32 %128(ptr noundef %124, ptr noundef nonnull %bp_params.i, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.not.i = icmp eq i32 %call29.i, 0
  br i1 %cmp30.not.i, label %if.end27.i.enable_spread_spectrum.exit_crit_edge, label %if.end27.i.enable_spread_spectrum.exit.thread_crit_edge

if.end27.i.enable_spread_spectrum.exit.thread_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_spread_spectrum.exit.thread

if.end27.i.enable_spread_spectrum.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_spread_spectrum.exit

enable_spread_spectrum.exit.thread:               ; preds = %if.end27.i.enable_spread_spectrum.exit.thread_crit_edge, %calculate_ss.exit.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bp_params.i) #5
  br label %cleanup

enable_spread_spectrum.exit:                      ; preds = %if.end27.i.enable_spread_spectrum.exit_crit_edge, %land.lhs.true.i.enable_spread_spectrum.exit_crit_edge, %get_ss_data_entry.exit.i.enable_spread_spectrum.exit_crit_edge, %for.inc.i.i.enable_spread_spectrum.exit_crit_edge, %sw.epilog.i.i.enable_spread_spectrum.exit_crit_edge, %if.then32.enable_spread_spectrum.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bp_params.i) #5
  %129 = ptrtoint ptr %signal_type7 to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pr = load i32, ptr %signal_type7, align 4
  br label %if.end37

if.end37:                                         ; preds = %enable_spread_spectrum.exit, %if.then28.if.end37_crit_edge
  %130 = phi i32 [ %.pr, %enable_spread_spectrum.exit ], [ %62, %if.then28.if.end37_crit_edge ]
  %131 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %color_depth, align 4
  %ctx.i = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 1
  %133 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 1
  %135 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %cs_shift.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 3
  %139 = ptrtoint ptr %cs_shift.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cs_shift.i, align 4
  %DCCG_DEEP_COLOR_CNTL1.i = getelementptr inbounds %struct.dce110_clk_src_shift, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %DCCG_DEEP_COLOR_CNTL1.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %DCCG_DEEP_COLOR_CNTL1.i, align 1
  %cs_mask.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 2
  %143 = ptrtoint ptr %cs_mask.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cs_mask.i, align 4
  %DCCG_DEEP_COLOR_CNTL11.i = getelementptr inbounds %struct.dce110_clk_src_mask, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %DCCG_DEEP_COLOR_CNTL11.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %DCCG_DEEP_COLOR_CNTL11.i, align 4
  %call.i70 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %134, i32 noundef %138, i32 noundef 1, i8 noundef zeroext %142, i32 noundef %146, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %130)
  %cmp.not.i71 = icmp eq i32 %130, 4
  br i1 %cmp.not.i71, label %if.end.i72, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i72:                                       ; preds = %if.end37
  %switch.tableidx = add i32 %132, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %147 = icmp ult i32 %switch.tableidx, 5
  br i1 %147, label %switch.hole_check, label %if.end.i72.cleanup_crit_edge

if.end.i72.cleanup_crit_edge:                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check:                                ; preds = %if.end.i72
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %148 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %switch.lobit.not = icmp eq i8 %148, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.dce110_program_pix_clk, i32 0, i32 %switch.tableidx
  %149 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %149)
  %switch.load = load i32, ptr %switch.gep, align 4
  %150 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ctx.i, align 4
  %152 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  %156 = ptrtoint ptr %cs_shift.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cs_shift.i, align 4
  %DCCG_DEEP_COLOR_CNTL137.i = getelementptr inbounds %struct.dce110_clk_src_shift, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %DCCG_DEEP_COLOR_CNTL137.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %DCCG_DEEP_COLOR_CNTL137.i, align 1
  %160 = ptrtoint ptr %cs_mask.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cs_mask.i, align 4
  %DCCG_DEEP_COLOR_CNTL139.i = getelementptr inbounds %struct.dce110_clk_src_mask, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %DCCG_DEEP_COLOR_CNTL139.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %DCCG_DEEP_COLOR_CNTL139.i, align 4
  %call40.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %151, i32 noundef %155, i32 noundef 1, i8 noundef zeroext %159, i32 noundef %163, i32 noundef %switch.load) #5
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.i72.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %enable_spread_spectrum.exit.thread, %land.lhs.true25.cleanup_crit_edge, %land.lhs.true25.cleanup_crit_edge82, %land.lhs.true25.cleanup_crit_edge83, %if.end21.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.epilog.cleanup_crit_edge ], [ true, %if.end21.cleanup_crit_edge ], [ false, %enable_spread_spectrum.exit.thread ], [ true, %if.end37.cleanup_crit_edge ], [ true, %if.end.i72.cleanup_crit_edge ], [ true, %switch.lookup ], [ true, %land.lhs.true25.cleanup_crit_edge ], [ true, %land.lhs.true25.cleanup_crit_edge82 ], [ true, %land.lhs.true25.cleanup_crit_edge83 ], [ true, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp_pc_params) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce110_get_pix_clk_dividers(ptr nocapture noundef readonly %cs, ptr noundef readonly %pix_clk_params, ptr noundef %pll_settings) #0 align 64 {
entry:
  %bp_adjust_pixel_clock_params.i.i = alloca %struct.bp_adjust_pixel_clock_parameters, align 4
  %field.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pix_clk_params, null
  %cmp1 = icmp eq ptr %pll_settings, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false2

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false2:                                   ; preds = %entry
  %0 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pix_clk_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %lor.lhs.false2.if.then_crit_edge, label %if.end

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dce110_get_pix_clk_dividers) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %2 = call ptr @memset(ptr %pll_settings, i32 0, i32 44)
  %id = getelementptr inbounds %struct.clock_source, ptr %cs, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %4, label %if.end12 [
    i32 8, label %if.end.if.then8_crit_edge
    i32 4, label %if.end.if.then8_crit_edge82
  ]

if.end.if.then8_crit_edge82:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge82
  %ext_clk_khz = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 13
  %6 = ptrtoint ptr %ext_clk_khz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ext_clk_khz, align 4
  %mul = mul i32 %7, 10
  %adjusted_pix_clk_100hz = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 1
  %8 = ptrtoint ptr %adjusted_pix_clk_100hz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %adjusted_pix_clk_100hz, align 4
  %9 = load i32, ptr %ext_clk_khz, align 4
  %mul10 = mul i32 %9, 10
  %calculated_pix_clk_100hz = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 2
  %10 = ptrtoint ptr %calculated_pix_clk_100hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul10, ptr %calculated_pix_clk_100hz, align 4
  %11 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pix_clk_params, align 4
  %13 = ptrtoint ptr %pll_settings to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pll_settings, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %field.i) #5
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %field.i, align 4
  %ctx.i = getelementptr inbounds %struct.clock_source, ptr %cs, i32 0, i32 1
  %15 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 1
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %PLL_CNTL.i = getelementptr inbounds %struct.dce110_clk_src_regs, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %PLL_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %PLL_CNTL.i, align 4
  %cs_shift.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 3
  %21 = ptrtoint ptr %cs_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cs_shift.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %cs_mask.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 2
  %25 = ptrtoint ptr %cs_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cs_mask.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %call.i = call i32 @generic_reg_get(ptr noundef %16, i32 noundef %20, i8 noundef zeroext %24, i32 noundef %28, ptr noundef nonnull %field.i) #5
  %29 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %field.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i = icmp ugt i32 %30, 1
  %use_external_clk.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 10
  %frombool.i = zext i1 %cmp.i to i8
  %31 = ptrtoint ptr %use_external_clk.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool.i, ptr %use_external_clk.i, align 4
  %flags.i = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 9
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end12.if.then.i_crit_edge

if.end12.if.then.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end12
  %signal_type.i = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 4
  %33 = ptrtoint ptr %signal_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %signal_type.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %34, label %lor.lhs.false.i.if.end7.i_crit_edge [
    i32 32, label %lor.lhs.false.i.if.then.i_crit_edge
    i32 128, label %lor.lhs.false.i.if.then.i_crit_edge83
    i32 64, label %lor.lhs.false.i.if.then.i_crit_edge84
  ]

lor.lhs.false.i.if.then.i_crit_edge84:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i.if.then.i_crit_edge83:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i.if.end7.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge83, %lor.lhs.false.i.if.then.i_crit_edge84, %if.end12.if.then.i_crit_edge
  %signal_type3.i = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 4
  %36 = ptrtoint ptr %signal_type3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %signal_type3.i, align 4
  %adjusted_pix_clk_100hz.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 1
  %38 = ptrtoint ptr %adjusted_pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %adjusted_pix_clk_100hz.i, align 4
  %div.i = udiv i32 %39, 10
  %40 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %37, label %if.then.i.if.end7.i_crit_edge [
    i32 1, label %if.then.i.sw.bb.i.i_crit_edge
    i32 2, label %if.then.i.sw.bb.i.i_crit_edge85
    i32 4, label %sw.bb1.i.i
    i32 8, label %sw.bb2.i.i
    i32 32, label %if.then.i.sw.bb3.i.i_crit_edge
    i32 64, label %if.then.i.sw.bb3.i.i_crit_edge86
    i32 128, label %if.then.i.sw.bb3.i.i_crit_edge87
    i32 512, label %if.then.i.sw.bb3.i.i_crit_edge88
  ]

if.then.i.sw.bb3.i.i_crit_edge88:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then.i.sw.bb3.i.i_crit_edge87:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then.i.sw.bb3.i.i_crit_edge86:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then.i.sw.bb3.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then.i.sw.bb.i.i_crit_edge85:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.then.i.sw.bb.i.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

sw.bb.i.i:                                        ; preds = %if.then.i.sw.bb.i.i_crit_edge, %if.then.i.sw.bb.i.i_crit_edge85
  %dvi_ss_params.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 9
  %dvi_ss_params_cnt.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 10
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %hdmi_ss_params.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 7
  %hdmi_ss_params_cnt.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 8
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %lvds_ss_params.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 11
  %lvds_ss_params_cnt.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 12
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.then.i.sw.bb3.i.i_crit_edge, %if.then.i.sw.bb3.i.i_crit_edge86, %if.then.i.sw.bb3.i.i_crit_edge87, %if.then.i.sw.bb3.i.i_crit_edge88
  %dp_ss_params.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 5
  %dp_ss_params_cnt.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 6
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %entrys_num.0.in.i.i = phi ptr [ %dp_ss_params_cnt.i.i, %sw.bb3.i.i ], [ %lvds_ss_params_cnt.i.i, %sw.bb2.i.i ], [ %hdmi_ss_params_cnt.i.i, %sw.bb1.i.i ], [ %dvi_ss_params_cnt.i.i, %sw.bb.i.i ]
  %ss_parm.0.in.i.i = phi ptr [ %dp_ss_params.i.i, %sw.bb3.i.i ], [ %lvds_ss_params.i.i, %sw.bb2.i.i ], [ %hdmi_ss_params.i.i, %sw.bb1.i.i ], [ %dvi_ss_params.i.i, %sw.bb.i.i ]
  %41 = ptrtoint ptr %ss_parm.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %ss_parm.0.i.i = load ptr, ptr %ss_parm.0.in.i.i, align 4
  %42 = ptrtoint ptr %entrys_num.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %entrys_num.0.i.i = load i32, ptr %entrys_num.0.in.i.i, align 4
  %cmp.i.i = icmp ne ptr %ss_parm.0.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entrys_num.0.i.i)
  %cmp426.i.i = icmp ne i32 %entrys_num.0.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp426.i.i, i1 false
  br i1 %or.cond.i.i, label %sw.epilog.i.i.for.body.i.i_crit_edge, label %sw.epilog.i.i.if.end7.i_crit_edge

sw.epilog.i.i.if.end7.i_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

sw.epilog.i.i.for.body.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.epilog.i.i.for.body.i.i_crit_edge
  %ss_parm.128.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %ss_parm.0.i.i, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %i.027.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %freq_range_khz.i.i = getelementptr inbounds %struct.spread_spectrum_data, ptr %ss_parm.128.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %freq_range_khz.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %freq_range_khz.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %div.i)
  %cmp5.not.i.i = icmp ult i32 %44, %div.i
  br i1 %cmp5.not.i.i, label %for.inc.i.i, label %get_ss_data_entry.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.027.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.spread_spectrum_data, ptr %ss_parm.128.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %entrys_num.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end7.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.if.end7.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

get_ss_data_entry.exit.i:                         ; preds = %for.body.i.i
  %cmp5.not.i = icmp eq ptr %ss_parm.128.i.i, null
  br i1 %cmp5.not.i, label %get_ss_data_entry.exit.i.if.end7.i_crit_edge, label %if.then6.i

get_ss_data_entry.exit.i.if.end7.i_crit_edge:     ; preds = %get_ss_data_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then6.i:                                       ; preds = %get_ss_data_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %ss_parm.128.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ss_parm.128.i.i, align 4
  %ss_percentage.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 9
  %47 = ptrtoint ptr %ss_percentage.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %ss_percentage.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %get_ss_data_entry.exit.i.if.end7.i_crit_edge, %for.inc.i.i.if.end7.i_crit_edge, %sw.epilog.i.i.if.end7.i_crit_edge, %if.then.i.if.end7.i_crit_edge, %lor.lhs.false.i.if.end7.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bp_adjust_pixel_clock_params.i.i) #5
  %48 = getelementptr inbounds i8, ptr %bp_adjust_pixel_clock_params.i.i, i32 12
  %49 = call ptr @memset(ptr %48, i32 0, i32 16)
  %signal_type.i.i = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 4
  %50 = ptrtoint ptr %signal_type.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %signal_type.i.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %51, label %sw.default10.i.i [
    i32 4, label %sw.bb.i47.i
    i32 32, label %if.end7.i.sw.bb7.i.i_crit_edge
    i32 64, label %if.end7.i.sw.bb7.i.i_crit_edge89
    i32 128, label %if.end7.i.sw.bb7.i.i_crit_edge90
  ]

if.end7.i.sw.bb7.i.i_crit_edge90:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i.i

if.end7.i.sw.bb7.i.i_crit_edge89:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i.i

if.end7.i.sw.bb7.i.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i.i

sw.bb.i47.i:                                      ; preds = %if.end7.i
  %53 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pix_clk_params, align 4
  %pixel_encoding.i.i = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 8
  %55 = ptrtoint ptr %pixel_encoding.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pixel_encoding.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.not.i.i = icmp eq i32 %56, 2
  br i1 %cmp.not.i.i, label %sw.bb.i47.i.sw.epilog13.i.i_crit_edge, label %if.then.i.i

sw.bb.i47.i.sw.epilog13.i.i_crit_edge:            ; preds = %sw.bb.i47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog13.i.i

if.then.i.i:                                      ; preds = %sw.bb.i47.i
  %color_depth.i.i = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 6
  %57 = ptrtoint ptr %color_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %color_depth.i.i, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %58, label %if.then.i.i.sw.epilog13.i.i_crit_edge [
    i32 3, label %sw.bb1.i48.i
    i32 4, label %sw.bb2.i49.i
    i32 6, label %sw.bb5.i.i
  ]

if.then.i.i.sw.epilog13.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog13.i.i

sw.bb1.i48.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i.i = mul i32 %54, 5
  %shr.i.i = lshr i32 %mul.i.i, 2
  br label %sw.epilog13.i.i

sw.bb2.i49.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul3.i.i = mul i32 %54, 6
  %shr4.i.i = lshr i32 %mul3.i.i, 2
  br label %sw.epilog13.i.i

sw.bb5.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul6.i.i = shl i32 %54, 1
  br label %sw.epilog13.i.i

sw.bb7.i.i:                                       ; preds = %if.end7.i.sw.bb7.i.i_crit_edge, %if.end7.i.sw.bb7.i.i_crit_edge89, %if.end7.i.sw.bb7.i.i_crit_edge90
  %requested_sym_clk.i.i = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 1
  %60 = ptrtoint ptr %requested_sym_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %requested_sym_clk.i.i, align 4
  %mul8.i.i = mul i32 %61, 10
  %62 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pix_clk_params, align 4
  br label %sw.epilog13.i.i

sw.default10.i.i:                                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pix_clk_params, align 4
  br label %sw.epilog13.i.i

sw.epilog13.i.i:                                  ; preds = %sw.default10.i.i, %sw.bb7.i.i, %sw.bb5.i.i, %sw.bb2.i49.i, %sw.bb1.i48.i, %if.then.i.i.sw.epilog13.i.i_crit_edge, %sw.bb.i47.i.sw.epilog13.i.i_crit_edge
  %actual_pix_clk_100hz.0.i.i = phi i32 [ %65, %sw.default10.i.i ], [ %63, %sw.bb7.i.i ], [ %54, %if.then.i.i.sw.epilog13.i.i_crit_edge ], [ %mul6.i.i, %sw.bb5.i.i ], [ %shr4.i.i, %sw.bb2.i49.i ], [ %shr.i.i, %sw.bb1.i48.i ], [ %54, %sw.bb.i47.i.sw.epilog13.i.i_crit_edge ]
  %requested_clk_100hz.1.i.i = phi i32 [ %65, %sw.default10.i.i ], [ %mul8.i.i, %sw.bb7.i.i ], [ %54, %if.then.i.i.sw.epilog13.i.i_crit_edge ], [ %mul6.i.i, %sw.bb5.i.i ], [ %shr4.i.i, %sw.bb2.i49.i ], [ %shr.i.i, %sw.bb1.i48.i ], [ %54, %sw.bb.i47.i.sw.epilog13.i.i_crit_edge ]
  %div.i.i = udiv i32 %requested_clk_100hz.1.i.i, 10
  %pixel_clock.i.i = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_adjust_pixel_clock_params.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %pixel_clock.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div.i.i, ptr %pixel_clock.i.i, align 4
  %encoder_object_id.i.i = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_adjust_pixel_clock_params.i.i, i32 0, i32 1
  %encoder_object_id14.i.i = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 3
  %67 = ptrtoint ptr %encoder_object_id14.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %encoder_object_id14.i.i, align 4
  %69 = ptrtoint ptr %encoder_object_id.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %encoder_object_id.i.i, align 4
  %70 = ptrtoint ptr %bp_adjust_pixel_clock_params.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %51, ptr %bp_adjust_pixel_clock_params.i.i, align 4
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i.i = load i8, ptr %flags.i, align 4
  %ss_enable.i.i = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_adjust_pixel_clock_params.i.i, i32 0, i32 6
  %bf.load.lobit.i.i = lshr i8 %bf.load.i.i, 7
  %72 = ptrtoint ptr %ss_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %bf.load.lobit.i.i, ptr %ss_enable.i.i, align 4
  %bios.i.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 4
  %73 = ptrtoint ptr %bios.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bios.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %adjust_pixel_clock.i.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %76, i32 0, i32 17
  %77 = ptrtoint ptr %adjust_pixel_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adjust_pixel_clock.i.i, align 4
  %call.i.i = call i32 %78(ptr noundef %74, ptr noundef nonnull %bp_adjust_pixel_clock_params.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp18.i.i, label %pll_adjust_pix_clk.exit.thread.i, label %if.then9.i

pll_adjust_pix_clk.exit.thread.i:                 ; preds = %sw.epilog13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %pll_settings to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %actual_pix_clk_100hz.0.i.i, ptr %pll_settings, align 4
  %80 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %48, align 4
  %mul21.i.i = mul i32 %81, 10
  %adjusted_pix_clk_100hz.i.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 1
  %82 = ptrtoint ptr %adjusted_pix_clk_100hz.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul21.i.i, ptr %adjusted_pix_clk_100hz.i.i, align 4
  %reference_divider.i.i = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_adjust_pixel_clock_params.i.i, i32 0, i32 4
  %83 = ptrtoint ptr %reference_divider.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reference_divider.i.i, align 4
  %reference_divider22.i.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 5
  %85 = ptrtoint ptr %reference_divider22.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %reference_divider22.i.i, align 4
  %pixel_clock_post_divider.i.i = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, ptr %bp_adjust_pixel_clock_params.i.i, i32 0, i32 5
  %86 = ptrtoint ptr %pixel_clock_post_divider.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pixel_clock_post_divider.i.i, align 4
  %pix_clk_post_divider.i.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 8
  %88 = ptrtoint ptr %pix_clk_post_divider.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %pix_clk_post_divider.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bp_adjust_pixel_clock_params.i.i) #5
  br label %if.end17thread-pre-split.i

if.then9.i:                                       ; preds = %sw.epilog13.i.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bp_adjust_pixel_clock_params.i.i) #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce110_get_pix_clk_dividers_helper) #5
  %89 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pix_clk_params, align 4
  %91 = ptrtoint ptr %pll_settings to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %pll_settings, align 4
  %92 = load i32, ptr %pix_clk_params, align 4
  %adjusted_pix_clk_100hz11.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 1
  %93 = ptrtoint ptr %adjusted_pix_clk_100hz11.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %adjusted_pix_clk_100hz11.i, align 4
  %94 = ptrtoint ptr %signal_type.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %signal_type.i.i, align 4
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %95, label %if.then9.i.dce110_get_pix_clk_dividers_helper.exit_crit_edge [
    i32 32, label %if.then9.i.if.then14.i_crit_edge
    i32 128, label %if.then9.i.if.then14.i_crit_edge91
    i32 64, label %if.then9.i.if.then14.i_crit_edge92
  ]

if.then9.i.if.then14.i_crit_edge92:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.then9.i.if.then14.i_crit_edge91:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.then9.i.if.then14.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.then9.i.dce110_get_pix_clk_dividers_helper.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_get_pix_clk_dividers_helper.exit

if.then14.i:                                      ; preds = %if.then9.i.if.then14.i_crit_edge, %if.then9.i.if.then14.i_crit_edge91, %if.then9.i.if.then14.i_crit_edge92
  %97 = ptrtoint ptr %adjusted_pix_clk_100hz11.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1000000, ptr %adjusted_pix_clk_100hz11.i, align 4
  br label %if.end17thread-pre-split.i

if.end17thread-pre-split.i:                       ; preds = %if.then14.i, %pll_adjust_pix_clk.exit.thread.i
  %98 = ptrtoint ptr %signal_type.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr.i = load i32, ptr %signal_type.i.i, align 4
  br label %dce110_get_pix_clk_dividers_helper.exit

dce110_get_pix_clk_dividers_helper.exit:          ; preds = %if.end17thread-pre-split.i, %if.then9.i.dce110_get_pix_clk_dividers_helper.exit_crit_edge
  %99 = phi i32 [ %.pr.i, %if.end17thread-pre-split.i ], [ %95, %if.then9.i.dce110_get_pix_clk_dividers_helper.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %99)
  %cmp19.i = icmp eq i32 %99, 4
  %calc_pll.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 15
  %calc_pll_hdmi.i = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 16
  %calc_pll.sink.i = select i1 %cmp19.i, ptr %calc_pll_hdmi.i, ptr %calc_pll.i
  %adjusted_pix_clk_100hz.i27 = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 1
  %100 = ptrtoint ptr %adjusted_pix_clk_100hz.i27 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %adjusted_pix_clk_100hz.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i28 = icmp eq i32 %101, 0
  br i1 %cmp.i28, label %if.then.i29, label %if.end.i

if.then.i29:                                      ; preds = %dce110_get_pix_clk_dividers_helper.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.calculate_pixel_clock_pll_dividers) #5
  br label %calculate_pixel_clock_pll_dividers.exit

if.end.i:                                         ; preds = %dce110_get_pix_clk_dividers_helper.exit
  %pix_clk_post_divider.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 8
  %102 = ptrtoint ptr %pix_clk_post_divider.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pix_clk_post_divider.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i30 = icmp eq i32 %103, 0
  br i1 %tobool.not.i30, label %if.else.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end.i
  %min_pix_clock_pll_post_divider.i = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll.sink.i, i32 0, i32 1
  %104 = ptrtoint ptr %min_pix_clock_pll_post_divider.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %min_pix_clock_pll_post_divider.i, align 4
  %mul.i = mul i32 %105, %101
  %min_vco_khz.i = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll.sink.i, i32 0, i32 6
  %106 = ptrtoint ptr %min_vco_khz.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %min_vco_khz.i, align 4
  %mul5.i = mul i32 %107, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul5.i)
  %cmp6.i = icmp ult i32 %mul.i, %mul5.i
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i.if.end18.i_crit_edge

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %div.i31 = udiv i32 %mul5.i, %101
  %mul12.i = mul i32 %div.i31, %101
  call void @__sanitizer_cov_trace_cmp4(i32 %mul12.i, i32 %mul5.i)
  %cmp15.i = icmp ult i32 %mul12.i, %mul5.i
  %inc.i = zext i1 %cmp15.i to i32
  %spec.select.i = add i32 %div.i31, %inc.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then7.i, %if.else.i.if.end18.i_crit_edge
  %min_post_divider.0.i = phi i32 [ %105, %if.else.i.if.end18.i_crit_edge ], [ %spec.select.i, %if.then7.i ]
  %max_pix_clock_pll_post_divider.i = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll.sink.i, i32 0, i32 2
  %108 = ptrtoint ptr %max_pix_clock_pll_post_divider.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_pix_clock_pll_post_divider.i, align 4
  %mul20.i = mul i32 %109, %101
  %max_vco_khz.i = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll.sink.i, i32 0, i32 5
  %110 = ptrtoint ptr %max_vco_khz.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_vco_khz.i, align 4
  %mul21.i = mul i32 %111, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul20.i, i32 %mul21.i)
  %cmp22.i = icmp ugt i32 %mul20.i, %mul21.i
  br i1 %cmp22.i, label %if.then23.i, label %if.end18.i.if.end29.i_crit_edge

if.end18.i.if.end29.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %div27.i = udiv i32 %mul21.i, %101
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %if.end18.i.if.end29.i_crit_edge, %if.end.i.if.end29.i_crit_edge
  %min_post_divider.1.i = phi i32 [ %min_post_divider.0.i, %if.then23.i ], [ %min_post_divider.0.i, %if.end18.i.if.end29.i_crit_edge ], [ %103, %if.end.i.if.end29.i_crit_edge ]
  %max_post_divider.0.i = phi i32 [ %div27.i, %if.then23.i ], [ %109, %if.end18.i.if.end29.i_crit_edge ], [ %103, %if.end.i.if.end29.i_crit_edge ]
  %reference_divider.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 5
  %112 = ptrtoint ptr %reference_divider.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reference_divider.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool30.not.i = icmp eq i32 %113, 0
  br i1 %tobool30.not.i, label %if.else34.i, label %if.end29.i.if.end52.i_crit_edge

if.end29.i.if.end52.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

if.else34.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %calc_pll.sink.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %calc_pll.sink.i, align 4
  %max_pll_input_freq_khz.i = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll.sink.i, i32 0, i32 8
  %116 = ptrtoint ptr %max_pll_input_freq_khz.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %max_pll_input_freq_khz.i, align 4
  %div35.i = udiv i32 %115, %117
  %min_pll_ref_divider.i = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll.sink.i, i32 0, i32 3
  %118 = ptrtoint ptr %min_pll_ref_divider.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %min_pll_ref_divider.i, align 4
  %120 = call i32 @llvm.umax.i32(i32 %div35.i, i32 %119) #5
  %min_pll_input_freq_khz.i = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll.sink.i, i32 0, i32 7
  %121 = ptrtoint ptr %min_pll_input_freq_khz.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %min_pll_input_freq_khz.i, align 4
  %div42.i = udiv i32 %115, %122
  %max_pll_ref_divider.i = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll.sink.i, i32 0, i32 4
  %123 = ptrtoint ptr %max_pll_ref_divider.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_pll_ref_divider.i, align 4
  %125 = call i32 @llvm.umin.i32(i32 %div42.i, i32 %124) #5
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else34.i, %if.end29.i.if.end52.i_crit_edge
  %min_ref_divider.0.i = phi i32 [ %120, %if.else34.i ], [ %113, %if.end29.i.if.end52.i_crit_edge ]
  %max_ref_divider.0.i = phi i32 [ %125, %if.else34.i ], [ %113, %if.end29.i.if.end52.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %min_post_divider.1.i, i32 %max_post_divider.0.i)
  %cmp53.i = icmp ugt i32 %min_post_divider.1.i, %max_post_divider.0.i
  br i1 %cmp53.i, label %if.then54.i, label %if.end55.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.calculate_pixel_clock_pll_dividers) #5
  br label %calculate_pixel_clock_pll_dividers.exit

if.end55.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_cmp4(i32 %min_ref_divider.0.i, i32 %max_ref_divider.0.i)
  %cmp56.i = icmp ugt i32 %min_ref_divider.0.i, %max_ref_divider.0.i
  br i1 %cmp56.i, label %if.then57.i, label %for.cond2.preheader.lr.ph.i.preheader.i

for.cond2.preheader.lr.ph.i.preheader.i:          ; preds = %if.end55.i
  %conv.i.i.i.i = zext i32 %101 to i64
  %fract_fb_divider_factor.i.i.i.i = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll.sink.i, i32 0, i32 10
  %mul.i.i.i.i = mul nuw nsw i64 %conv.i.i.i.i, 10
  %fract_fb_divider_precision_factor.i.i.i.i = getelementptr inbounds %struct.calc_pll_clock_source, ptr %calc_pll.sink.i, i32 0, i32 12
  %126 = ptrtoint ptr %fract_fb_divider_factor.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fract_fb_divider_factor.i.i.i.i, align 4
  %conv5.i.i.i.i = zext i32 %127 to i64
  %128 = ptrtoint ptr %calc_pll.sink.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %calc_pll.sink.i, align 4
  %mul8.i.i.i.i = mul i32 %129, 10
  %conv29.i.i.i.i.i.i = zext i32 %mul8.i.i.i.i to i64
  %mul3.i.i.i.i = mul i64 %mul.i.i.i.i, %conv5.i.i.i.i
  br label %for.cond2.preheader.lr.ph.i.i

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.calculate_pixel_clock_pll_dividers) #5
  br label %calculate_pixel_clock_pll_dividers.exit

for.cond2.preheader.lr.ph.i.i:                    ; preds = %while.body.i, %for.cond2.preheader.lr.ph.i.preheader.i
  %err_tolerance.0.i = phi i32 [ %add.i, %while.body.i ], [ -1, %for.cond2.preheader.lr.ph.i.preheader.i ]
  %mul.i.i32 = mul i32 %err_tolerance.0.i, %101
  %div.i.i33 = udiv i32 %mul.i.i32, 100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %mul.i.i32)
  %130 = icmp ult i32 %mul.i.i32, 100000
  %spec.store.select.i.i = select i1 %130, i32 1, i32 %div.i.i33
  br label %for.body4.lr.ph.i.i

for.body4.lr.ph.i.i:                              ; preds = %for.inc7.i.i.for.body4.lr.ph.i.i_crit_edge, %for.cond2.preheader.lr.ph.i.i
  %post_divider.025.i.i = phi i32 [ %max_post_divider.0.i, %for.cond2.preheader.lr.ph.i.i ], [ %dec.i.i, %for.inc7.i.i.for.body4.lr.ph.i.i_crit_edge ]
  %conv2.i.i.i.i = zext i32 %post_divider.025.i.i to i64
  %mul6.i.i.i = mul i32 %post_divider.025.i.i, %127
  %mul4.i.i.i.i = mul i64 %mul3.i.i.i.i, %conv2.i.i.i.i
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.inc.i.i35.for.body4.i.i_crit_edge, %for.body4.lr.ph.i.i
  %ref_divider.023.i.i = phi i32 [ %min_ref_divider.0.i, %for.body4.lr.ph.i.i ], [ %inc.i.i34, %for.inc.i.i35.for.body4.i.i_crit_edge ]
  %conv1.i.i.i.i = zext i32 %ref_divider.023.i.i to i64
  %mul6.i.i.i.i = mul i64 %mul4.i.i.i.i, %conv1.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul6.i.i.i.i)
  %cmp164.i.i.i.i.i.i = icmp ult i64 %mul6.i.i.i.i, 4294967296
  br i1 %cmp164.i.i.i.i.i.i, label %if.then168.i.i.i.i.i.i, label %if.else174.i.i.i.i.i.i, !prof !64

if.then168.i.i.i.i.i.i:                           ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i.i.i.i.i = trunc i64 %mul6.i.i.i.i to i32
  %div172.i.i.i.i.i.i = udiv i32 %conv169.i.i.i.i.i.i, %mul8.i.i.i.i
  %conv173.i.i.i.i.i.i = zext i32 %div172.i.i.i.i.i.i to i64
  br label %div_u64.exit.i.i.i.i

if.else174.i.i.i.i.i.i:                           ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %131 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul8.i.i.i.i, i64 %mul6.i.i.i.i) #8, !srcloc !71
  %asmresult1.i.i.i.i.i.i.i = extractvalue { i64, i64 } %131, 1
  br label %div_u64.exit.i.i.i.i

div_u64.exit.i.i.i.i:                             ; preds = %if.else174.i.i.i.i.i.i, %if.then168.i.i.i.i.i.i
  %dividend.addr.0.i.i.i.i.i.i = phi i64 [ %conv173.i.i.i.i.i.i, %if.then168.i.i.i.i.i.i ], [ %asmresult1.i.i.i.i.i.i.i, %if.else174.i.i.i.i.i.i ]
  %132 = ptrtoint ptr %fract_fb_divider_precision_factor.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fract_fb_divider_precision_factor.i.i.i.i, align 4
  %conv10.i.i.i.i = zext i32 %133 to i64
  %mul11.i.i.i.i = mul nuw nsw i64 %conv10.i.i.i.i, 5
  %add.i.i.i.i = add i64 %mul11.i.i.i.i, %dividend.addr.0.i.i.i.i.i.i
  %mul13.i.i.i.i = mul i32 %133, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i.i.i)
  %cmp164.i.i105.i.i.i.i = icmp ult i64 %add.i.i.i.i, 4294967296
  br i1 %cmp164.i.i105.i.i.i.i, label %if.then168.i.i110.i.i.i.i, label %if.else174.i.i112.i.i.i.i, !prof !64

if.then168.i.i110.i.i.i.i:                        ; preds = %div_u64.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i107.i.i.i.i = trunc i64 %add.i.i.i.i to i32
  %div172.i.i108.i.i.i.i = udiv i32 %conv169.i.i107.i.i.i.i, %mul13.i.i.i.i
  %conv173.i.i109.i.i.i.i = zext i32 %div172.i.i108.i.i.i.i to i64
  br label %div_u64.exit114.i.i.i.i

if.else174.i.i112.i.i.i.i:                        ; preds = %div_u64.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %134 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul13.i.i.i.i, i64 %add.i.i.i.i) #8, !srcloc !71
  %asmresult1.i.i.i111.i.i.i.i = extractvalue { i64, i64 } %134, 1
  br label %div_u64.exit114.i.i.i.i

div_u64.exit114.i.i.i.i:                          ; preds = %if.else174.i.i112.i.i.i.i, %if.then168.i.i110.i.i.i.i
  %dividend.addr.0.i.i113.i.i.i.i = phi i64 [ %conv173.i.i109.i.i.i.i, %if.then168.i.i110.i.i.i.i ], [ %asmresult1.i.i.i111.i.i.i.i, %if.else174.i.i112.i.i.i.i ]
  %mul17.i.i.i.i = mul i64 %dividend.addr.0.i.i113.i.i.i.i, %conv10.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul17.i.i.i.i)
  %cmp164.i.i.i.i.i = icmp ult i64 %mul17.i.i.i.i, 4294967296
  br i1 %cmp164.i.i.i.i.i, label %if.then168.i.i.i.i.i, label %if.else174.i.i.i.i.i, !prof !64

if.then168.i.i.i.i.i:                             ; preds = %div_u64.exit114.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i.i.i.i = trunc i64 %mul17.i.i.i.i to i32
  %conv169.i.i.i.i.i.frozen = freeze i32 %conv169.i.i.i.i.i
  %.frozen = freeze i32 %127
  %div172.i.i.i.i.i = udiv i32 %conv169.i.i.i.i.i.frozen, %.frozen
  %135 = mul i32 %div172.i.i.i.i.i, %.frozen
  %rem170.i.i.i.i.i.decomposed = sub i32 %conv169.i.i.i.i.i.frozen, %135
  br label %calculate_fb_and_fractional_fb_divider.exit.i.i.i

if.else174.i.i.i.i.i:                             ; preds = %div_u64.exit114.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %136 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %127, i64 %mul17.i.i.i.i) #8, !srcloc !71
  %asmresult.i261.i.i.i.i.i = extractvalue { i64, i64 } %136, 0
  %asmresult1.i.i.i.i.i.i = extractvalue { i64, i64 } %136, 1
  %shr.i.i115.i.i.i.i = lshr i64 %asmresult.i261.i.i.i.i.i, 32
  %conv.i.i.i.i.i.i = trunc i64 %shr.i.i115.i.i.i.i to i32
  %extract.t117.i.i.i.i = trunc i64 %asmresult1.i.i.i.i.i.i to i32
  br label %calculate_fb_and_fractional_fb_divider.exit.i.i.i

calculate_fb_and_fractional_fb_divider.exit.i.i.i: ; preds = %if.else174.i.i.i.i.i, %if.then168.i.i.i.i.i
  %dividend.addr.0.i.off0.i.i.i.i = phi i32 [ %div172.i.i.i.i.i, %if.then168.i.i.i.i.i ], [ %extract.t117.i.i.i.i, %if.else174.i.i.i.i.i ]
  %__rem.0.i.i.i.i.i = phi i32 [ %rem170.i.i.i.i.i.decomposed, %if.then168.i.i.i.i.i ], [ %conv.i.i.i.i.i.i, %if.else174.i.i.i.i.i ]
  %conv.i.i.i = zext i32 %dividend.addr.0.i.off0.i.i.i.i to i64
  %mul.i.i.i = mul nuw i64 %conv.i.i.i, %conv5.i.i.i.i
  %conv2.i.i.i = zext i32 %__rem.0.i.i.i.i.i to i64
  %add.i.i.i = add nuw i64 %mul.i.i.i, %conv2.i.i.i
  %mul5.i.i.i = mul i64 %add.i.i.i, %conv29.i.i.i.i.i.i
  %mul8.i.i.i = mul i32 %mul6.i.i.i, %ref_divider.023.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul5.i.i.i)
  %cmp164.i.i158.i.i.i = icmp ult i64 %mul5.i.i.i, 4294967296
  br i1 %cmp164.i.i158.i.i.i, label %if.then168.i.i162.i.i.i, label %if.else174.i.i164.i.i.i, !prof !64

if.then168.i.i162.i.i.i:                          ; preds = %calculate_fb_and_fractional_fb_divider.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i160.i.i.i = trunc i64 %mul5.i.i.i to i32
  %div172.i.i161.i.i.i = udiv i32 %conv169.i.i160.i.i.i, %mul8.i.i.i
  %conv173.i.i.i.i.i = zext i32 %div172.i.i161.i.i.i to i64
  br label %div_u64.exit.i.i.i

if.else174.i.i164.i.i.i:                          ; preds = %calculate_fb_and_fractional_fb_divider.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %137 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul8.i.i.i, i64 %mul5.i.i.i) #8, !srcloc !71
  %asmresult1.i.i.i163.i.i.i = extractvalue { i64, i64 } %137, 1
  br label %div_u64.exit.i.i.i

div_u64.exit.i.i.i:                               ; preds = %if.else174.i.i164.i.i.i, %if.then168.i.i162.i.i.i
  %dividend.addr.0.i.i.i.i.i = phi i64 [ %conv173.i.i.i.i.i, %if.then168.i.i162.i.i.i ], [ %asmresult1.i.i.i163.i.i.i, %if.else174.i.i164.i.i.i ]
  %conv10.i.i.i = trunc i64 %dividend.addr.0.i.i.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %conv10.i.i.i)
  %cmp.i.i.i = icmp ult i32 %101, %conv10.i.i.i
  %sub.i.i.i = sub i32 %conv10.i.i.i, %101
  %sub15.i.i.i = sub i32 %101, %conv10.i.i.i
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 %sub.i.i.i, i32 %sub15.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %spec.store.select.i.i)
  %cmp16.not.i.i.i = icmp ugt i32 %cond.i.i.i, %spec.store.select.i.i
  br i1 %cmp16.not.i.i.i, label %for.inc.i.i35, label %calc_pll_dividers_in_range.exit.thread.i

calc_pll_dividers_in_range.exit.thread.i:         ; preds = %div_u64.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv10.i.i.i.le = trunc i64 %dividend.addr.0.i.i.i.i.i to i32
  %reference_freq.i.i.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 4
  %138 = ptrtoint ptr %reference_freq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %129, ptr %reference_freq.i.i.i, align 4
  %139 = ptrtoint ptr %reference_divider.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %ref_divider.023.i.i, ptr %reference_divider.i, align 4
  %feedback_divider19.i.i.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 6
  %140 = ptrtoint ptr %feedback_divider19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %dividend.addr.0.i.off0.i.i.i.i, ptr %feedback_divider19.i.i.i, align 4
  %fract_feedback_divider20.i.i.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 7
  %141 = ptrtoint ptr %fract_feedback_divider20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %__rem.0.i.i.i.i.i, ptr %fract_feedback_divider20.i.i.i, align 4
  %142 = ptrtoint ptr %pix_clk_post_divider.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %post_divider.025.i.i, ptr %pix_clk_post_divider.i, align 4
  %calculated_pix_clk_100hz.i.i.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 2
  %143 = ptrtoint ptr %calculated_pix_clk_100hz.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv10.i.i.i.le, ptr %calculated_pix_clk_100hz.i.i.i, align 4
  %conv21.i.i.i = and i64 %dividend.addr.0.i.i.i.i.i, 4294967295
  %mul23.i.i.i = mul nuw i64 %conv21.i.i.i, %conv2.i.i.i.i
  %div79.i.i167199.i.i.i = lshr i64 %mul23.i.i.i, 1
  %144 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i167199.i.i.i, i64 3689348814741910323) #8, !srcloc !72
  %145 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i167199.i.i.i, i64 %144) #8, !srcloc !73
  %conv25.i.i.i = trunc i64 %145 to i32
  %vco_freq.i.i.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 3
  %146 = ptrtoint ptr %vco_freq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv25.i.i.i, ptr %vco_freq.i.i.i, align 4
  br label %calculate_pixel_clock_pll_dividers.exit

for.inc.i.i35:                                    ; preds = %div_u64.exit.i.i.i
  %inc.i.i34 = add i32 %ref_divider.023.i.i, 1
  %cmp3.not.i.i = icmp ugt i32 %inc.i.i34, %max_ref_divider.0.i
  br i1 %cmp3.not.i.i, label %for.inc7.i.i, label %for.inc.i.i35.for.body4.i.i_crit_edge

for.inc.i.i35.for.body4.i.i_crit_edge:            ; preds = %for.inc.i.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4.i.i

for.inc7.i.i:                                     ; preds = %for.inc.i.i35
  %dec.i.i = add i32 %post_divider.025.i.i, -1
  %cmp1.not.i.i = icmp ult i32 %dec.i.i, %min_post_divider.1.i
  br i1 %cmp1.not.i.i, label %while.body.i, label %for.inc7.i.i.for.body4.lr.ph.i.i_crit_edge

for.inc7.i.i.for.body4.lr.ph.i.i_crit_edge:       ; preds = %for.inc7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4.lr.ph.i.i

while.body.i:                                     ; preds = %for.inc7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %err_tolerance.0.i)
  %cmp59.i = icmp ugt i32 %err_tolerance.0.i, 10
  %div61.i = udiv i32 %err_tolerance.0.i, 10
  %spec.select116.i = select i1 %cmp59.i, i32 %div61.i, i32 1
  %add.i = add i32 %spec.select116.i, %err_tolerance.0.i
  br label %for.cond2.preheader.lr.ph.i.i

calculate_pixel_clock_pll_dividers.exit:          ; preds = %calc_pll_dividers_in_range.exit.thread.i, %if.then57.i, %if.then54.i, %if.then.i29
  %retval.0.i = phi i32 [ -1, %if.then.i29 ], [ -1, %if.then54.i ], [ -1, %if.then57.i ], [ %err_tolerance.0.i, %calc_pll_dividers_in_range.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %field.i) #5
  br label %cleanup

cleanup:                                          ; preds = %calculate_pixel_clock_pll_dividers.exit, %if.then8, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then8 ], [ %retval.0.i, %calculate_pixel_clock_pll_dividers.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @get_pixel_clk_frequency_100hz(ptr nocapture noundef readonly %clock_source, i32 noundef %inst, ptr nocapture noundef writeonly %pixel_clk_khz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.dce110_clk_src_regs, ptr %5, i32 0, i32 3, i32 %inst
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %7, ptr noundef nonnull @__func__.get_pixel_clk_frequency_100hz) #5
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %enable_vblanks_synchronization = getelementptr inbounds %struct.dc, ptr %11, i32 0, i32 17, i32 30
  %12 = ptrtoint ptr %enable_vblanks_synchronization to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_vblanks_synchronization, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %vblank_alignment_max_frame_time_diff = getelementptr inbounds %struct.dc, ptr %11, i32 0, i32 4, i32 17
  %14 = ptrtoint ptr %vblank_alignment_max_frame_time_diff to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vblank_alignment_max_frame_time_diff, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp4.not = icmp eq i8 %15, 0
  br i1 %cmp4.not, label %land.lhs.true.if.else_crit_edge, label %if.then6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %arrayidx10 = getelementptr %struct.dce110_clk_src_regs, ptr %17, i32 0, i32 4, i32 %inst
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %call11 = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef %19, ptr noundef nonnull @__func__.get_pixel_clk_frequency_100hz) #5
  %conv12 = zext i32 %call to i64
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_mgr, align 4
  %dprefclk_khz = getelementptr inbounds %struct.clk_mgr, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %dprefclk_khz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dprefclk_khz, align 4
  %conv15 = sext i32 %27 to i64
  %mul = mul nuw nsw i64 %conv12, 10
  %mul16 = mul i64 %mul, %conv15
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul16)
  %cmp164.i.i = icmp ult i64 %mul16, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !64

if.then168.i.i:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i = trunc i64 %mul16 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %call11
  br label %if.end

if.else174.i.i:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call11, i64 %mul16) #8, !srcloc !71
  %asmresult1.i.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t33 = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %div = udiv i32 %call, 100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else174.i.i, %if.then168.i.i
  %storemerge = phi i32 [ %div, %if.else ], [ %div172.i.i, %if.then168.i.i ], [ %extract.t33, %if.else174.i.i ]
  %29 = ptrtoint ptr %pixel_clk_khz to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge, ptr %pixel_clk_khz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_mul(ptr sret(%struct.fixed31_32) align 8, [1 x i64], [1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_ss_info_from_atombios(ptr nocapture noundef readonly %clk_src, i32 noundef %as_signal, ptr noundef writeonly %spread_spectrum_data, ptr noundef %ss_entries_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ss_entries_num, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %spread_spectrum_data, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %spread_spectrum_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %spread_spectrum_data, align 4
  %1 = ptrtoint ptr %ss_entries_num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ss_entries_num, align 4
  %bios = getelementptr inbounds %struct.dce110_clk_src, ptr %clk_src, i32 0, i32 4
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %get_ss_entry_number = getelementptr inbounds %struct.dc_vbios_funcs, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %get_ss_entry_number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_ss_entry_number, align 4
  %call = tail call i32 %7(ptr noundef %3, i32 noundef %as_signal) #5
  %8 = ptrtoint ptr %ss_entries_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %ss_entries_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 28) #5
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end7.cleanup_crit_edge, label %if.end7.i.i, !prof !74

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end7
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #9
  %cmp9 = icmp eq ptr %call8.i.i, null
  br i1 %cmp9, label %if.end7.i.i.cleanup_crit_edge, label %if.end11

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7.i.i
  %12 = ptrtoint ptr %ss_entries_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ss_entries_num, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 20) #5
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %if.end11.out_free_info_crit_edge, label %if.end7.i.i150, !prof !74

if.end11.out_free_info_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_info

if.end7.i.i150:                                   ; preds = %if.end11
  %16 = extractvalue { i32, i1 } %14, 0
  %call8.i.i149 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #9
  %cmp13 = icmp eq ptr %call8.i.i149, null
  br i1 %cmp13, label %if.end7.i.i150.out_free_info_crit_edge, label %for.cond.preheader

if.end7.i.i150.out_free_info_crit_edge:           ; preds = %if.end7.i.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_info

for.cond.preheader:                               ; preds = %if.end7.i.i150
  %17 = ptrtoint ptr %ss_entries_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ss_entries_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp16164.not = icmp eq i32 %18, 0
  br i1 %cmp16164.not, label %for.cond.preheader.for.end68_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end68_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end68

for.cond24.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp25167.not = icmp eq i32 %26, 0
  br i1 %cmp25167.not, label %for.cond24.preheader.for.end68_crit_edge, label %for.body26.lr.ph

for.cond24.preheader.for.end68_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end68

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %as_signal)
  %cmp31 = icmp eq i32 %as_signal, 2
  br label %for.body26

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0166 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ss_info_cur.0165 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call8.i.i, %for.cond.preheader.for.body_crit_edge ]
  %19 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bios, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %get_spread_spectrum_info = getelementptr inbounds %struct.dc_vbios_funcs, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %get_spread_spectrum_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_spread_spectrum_info, align 4
  %call20 = tail call i32 %24(ptr noundef %20, i32 noundef %as_signal, i32 noundef %i.0166, ptr noundef %ss_info_cur.0165) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %for.inc, label %for.body.out_free_data_crit_edge

for.body.out_free_data_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_data

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0166, 1
  %incdec.ptr = getelementptr %struct.spread_spectrum_info, ptr %ss_info_cur.0165, i32 1
  %25 = ptrtoint ptr %ss_entries_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ss_entries_num, align 4
  %cmp16 = icmp ult i32 %inc, %26
  br i1 %cmp16, label %for.inc.for.body_crit_edge, label %for.cond24.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body26:                                       ; preds = %for.inc64.for.body26_crit_edge, %for.body26.lr.ph
  %i.1172 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc65, %for.inc64.for.body26_crit_edge ]
  %ss_data_cur.0170 = phi ptr [ %call8.i.i149, %for.body26.lr.ph ], [ %incdec.ptr67, %for.inc64.for.body26_crit_edge ]
  %ss_info_cur.1168 = phi ptr [ %call8.i.i, %for.body26.lr.ph ], [ %incdec.ptr66, %for.inc64.for.body26_crit_edge ]
  %27 = ptrtoint ptr %ss_info_cur.1168 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %ss_info_cur.1168, align 4
  %28 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %bf.cast.not = icmp eq i8 %28, 0
  br i1 %bf.cast.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.9) #5
  br label %out_free_data

if.end30:                                         ; preds = %for.body26
  br i1 %cmp31, label %land.lhs.true, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end30
  %spread_spectrum_percentage = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info_cur.1168, i32 0, i32 1
  %29 = ptrtoint ptr %spread_spectrum_percentage to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %spread_spectrum_percentage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp33 = icmp ugt i32 %30, 6
  br i1 %cmp33, label %if.then35, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11) #5
  br label %for.inc64

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end30.if.end36_crit_edge
  %spread_percentage_divider = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info_cur.1168, i32 0, i32 2
  %31 = ptrtoint ptr %spread_percentage_divider to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %spread_percentage_divider, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %32)
  %cmp37 = icmp eq i32 %32, 1000
  br i1 %cmp37, label %if.then39, label %if.end36.if.end42_crit_edge

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %spread_spectrum_percentage40 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info_cur.1168, i32 0, i32 1
  %33 = ptrtoint ptr %spread_spectrum_percentage40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %spread_spectrum_percentage40, align 4
  %div = udiv i32 %34, 10
  store i32 %div, ptr %spread_spectrum_percentage40, align 4
  %35 = ptrtoint ptr %spread_percentage_divider to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 100, ptr %spread_percentage_divider, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %36 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info_cur.1168, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %freq_range_khz = getelementptr inbounds %struct.spread_spectrum_data, ptr %ss_data_cur.0170, i32 0, i32 2
  %39 = ptrtoint ptr %freq_range_khz to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %freq_range_khz, align 4
  %spread_spectrum_percentage43 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info_cur.1168, i32 0, i32 1
  %40 = ptrtoint ptr %spread_spectrum_percentage43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %spread_spectrum_percentage43, align 4
  %42 = ptrtoint ptr %ss_data_cur.0170 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ss_data_cur.0170, align 4
  %43 = ptrtoint ptr %spread_percentage_divider to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %spread_percentage_divider, align 4
  %percentage_divider = getelementptr inbounds %struct.spread_spectrum_data, ptr %ss_data_cur.0170, i32 0, i32 1
  %45 = ptrtoint ptr %percentage_divider to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %percentage_divider, align 4
  %spread_spectrum_range = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info_cur.1168, i32 0, i32 3
  %46 = ptrtoint ptr %spread_spectrum_range to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %spread_spectrum_range, align 4
  %modulation_freq_hz = getelementptr inbounds %struct.spread_spectrum_data, ptr %ss_data_cur.0170, i32 0, i32 3
  %48 = ptrtoint ptr %modulation_freq_hz to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %modulation_freq_hz, align 4
  %49 = ptrtoint ptr %ss_info_cur.1168 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load46 = load i8, ptr %ss_info_cur.1168, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load46)
  %bf.cast48.not = icmp sgt i8 %bf.load46, -1
  br i1 %bf.cast48.not, label %if.end42.if.end52_crit_edge, label %if.then49

if.end42.if.end52_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.spread_spectrum_data, ptr %ss_data_cur.0170, i32 0, i32 4
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load50 = load i8, ptr %flags, align 4
  %bf.set = or i8 %bf.load50, -128
  store i8 %bf.set, ptr %flags, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end42.if.end52_crit_edge
  %51 = ptrtoint ptr %ss_info_cur.1168 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load54 = load i8, ptr %ss_info_cur.1168, align 4
  %52 = and i8 %bf.load54, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %bf.cast57.not = icmp eq i8 %52, 0
  br i1 %bf.cast57.not, label %if.end52.for.inc64_crit_edge, label %if.then58

if.end52.for.inc64_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc64

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %flags59 = getelementptr inbounds %struct.spread_spectrum_data, ptr %ss_data_cur.0170, i32 0, i32 4
  %53 = ptrtoint ptr %flags59 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load60 = load i8, ptr %flags59, align 4
  %bf.set62 = or i8 %bf.load60, 64
  store i8 %bf.set62, ptr %flags59, align 4
  br label %for.inc64

for.inc64:                                        ; preds = %if.then58, %if.end52.for.inc64_crit_edge, %if.then35
  %inc65 = add nuw i32 %i.1172, 1
  %incdec.ptr66 = getelementptr %struct.spread_spectrum_info, ptr %ss_info_cur.1168, i32 1
  %incdec.ptr67 = getelementptr %struct.spread_spectrum_data, ptr %ss_data_cur.0170, i32 1
  %54 = ptrtoint ptr %ss_entries_num to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ss_entries_num, align 4
  %cmp25 = icmp ult i32 %inc65, %55
  br i1 %cmp25, label %for.inc64.for.body26_crit_edge, label %for.inc64.for.end68_crit_edge

for.inc64.for.end68_crit_edge:                    ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end68

for.inc64.for.body26_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26

for.end68:                                        ; preds = %for.inc64.for.end68_crit_edge, %for.cond24.preheader.for.end68_crit_edge, %for.cond.preheader.for.end68_crit_edge
  %56 = ptrtoint ptr %spread_spectrum_data to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call8.i.i149, ptr %spread_spectrum_data, align 4
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #5
  br label %cleanup

out_free_data:                                    ; preds = %if.then29, %for.body.out_free_data_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i149) #5
  %57 = ptrtoint ptr %ss_entries_num to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %ss_entries_num, align 4
  br label %out_free_info

out_free_info:                                    ; preds = %out_free_data, %if.end7.i.i150.out_free_info_crit_edge, %if.end11.out_free_info_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free_info, %for.end68, %if.end7.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce112_program_pix_clk(ptr nocapture noundef readonly %clock_source, ptr nocapture noundef readonly %pix_clk_params, ptr nocapture noundef readonly %pll_settings) #0 align 64 {
entry:
  %bp_ss_params.i = alloca %struct.bp_spread_spectrum_parameters, align 4
  %bp_pc_params = alloca %struct.bp_pixel_clock_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp_pc_params) #5
  %0 = getelementptr inbounds i8, ptr %bp_pc_params, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %id = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %signal_type = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 4
  %4 = ptrtoint ptr %signal_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %signal_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %5, label %land.lhs.true1 [
    i32 32, label %land.lhs.true.if.endthread-pre-split_crit_edge
    i32 128, label %land.lhs.true.if.endthread-pre-split_crit_edge68
    i32 64, label %land.lhs.true.if.endthread-pre-split_crit_edge69
  ]

land.lhs.true.if.endthread-pre-split_crit_edge69: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.endthread-pre-split

land.lhs.true.if.endthread-pre-split_crit_edge68: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.endthread-pre-split

land.lhs.true.if.endthread-pre-split_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.endthread-pre-split

land.lhs.true1:                                   ; preds = %land.lhs.true
  %ctx = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 1
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %dce_version = getelementptr inbounds %struct.dc_context, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %dce_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dce_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp2 = icmp slt i32 %10, 8
  br i1 %cmp2, label %if.then, label %land.lhs.true1.if.endthread-pre-split_crit_edge

land.lhs.true1.if.endthread-pre-split_crit_edge:  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.endthread-pre-split

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bp_ss_params.i) #5
  %11 = getelementptr inbounds i8, ptr %bp_ss_params.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 24)
  %13 = ptrtoint ptr %bp_ss_params.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %bp_ss_params.i, align 4
  %bios.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 4
  %14 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bios.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %enable_spread_spectrum_on_ppll.i = getelementptr inbounds %struct.dc_vbios_funcs, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %enable_spread_spectrum_on_ppll.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enable_spread_spectrum_on_ppll.i, align 4
  %call.i = call i32 %19(ptr noundef %15, ptr noundef nonnull %bp_ss_params.i, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bp_ss_params.i) #5
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %if.then, %land.lhs.true1.if.endthread-pre-split_crit_edge, %land.lhs.true.if.endthread-pre-split_crit_edge, %land.lhs.true.if.endthread-pre-split_crit_edge68, %land.lhs.true.if.endthread-pre-split_crit_edge69
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %id, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %21 = phi i32 [ %.pr, %if.endthread-pre-split ], [ 4, %entry.if.end_crit_edge ]
  %controller_id = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 5
  %22 = ptrtoint ptr %controller_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %controller_id, align 4
  %24 = ptrtoint ptr %bp_pc_params to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bp_pc_params, align 4
  %pll_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 1
  %25 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %pll_id, align 4
  %26 = ptrtoint ptr %pll_settings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pll_settings, align 4
  %target_pixel_clock_100hz = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 3
  %28 = ptrtoint ptr %target_pixel_clock_100hz to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %target_pixel_clock_100hz, align 4
  %encoder_object_id = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 8
  %encoder_object_id6 = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 3
  %29 = ptrtoint ptr %encoder_object_id6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %encoder_object_id6, align 4
  %31 = ptrtoint ptr %encoder_object_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %encoder_object_id, align 4
  %signal_type7 = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 4
  %32 = ptrtoint ptr %signal_type7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %signal_type7, align 4
  %signal_type8 = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 2
  %34 = ptrtoint ptr %signal_type8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %signal_type8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp10.not = icmp eq i32 %21, 8
  br i1 %cmp10.not, label %if.end.if.end30_crit_edge, label %if.then11

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then11:                                        ; preds = %if.end
  %use_external_clk = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 10
  %35 = ptrtoint ptr %use_external_clk to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %use_external_clk, align 4, !range !58
  %flags = getelementptr inbounds %struct.bp_pixel_clock_parameters, ptr %bp_pc_params, i32 0, i32 11
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %flags, align 4
  %bf.clear = and i8 %bf.load, -4
  %bf.set = or i8 %36, %bf.clear
  %bf.value16 = shl nuw nsw i8 %36, 1
  %38 = or i8 %bf.set, %bf.value16
  %bf.set18 = xor i8 %38, 2
  store i8 %bf.set18, ptr %flags, align 4
  %flags20 = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 9
  %39 = ptrtoint ptr %flags20 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load21 = load i8, ptr %flags20, align 4
  %40 = and i8 %bf.load21, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool23.not = icmp eq i8 %40, 0
  br i1 %tobool23.not, label %if.then11.if.end30_crit_edge, label %if.then24

if.then11.if.end30_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then24:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set28 = or i8 %bf.set18, 4
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %bf.set28, ptr %flags, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.then11.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %bios = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 4
  %42 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bios, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %set_pixel_clock = getelementptr inbounds %struct.dc_vbios_funcs, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %set_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_pixel_clock, align 4
  %call32 = call i32 %47(ptr noundef %43, ptr noundef nonnull %bp_pc_params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %49)
  %cmp38.not = icmp eq i32 %49, 8
  br i1 %cmp38.not, label %if.end36.cleanup_crit_edge, label %if.then40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40:                                        ; preds = %if.end36
  %50 = ptrtoint ptr %signal_type7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %signal_type7, align 4
  %flags42 = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 9
  %52 = ptrtoint ptr %flags42 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load43 = load i8, ptr %flags42, align 4
  %53 = and i8 %bf.load43, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool47 = icmp ne i8 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp.i = icmp eq i32 %51, 4
  br i1 %cmp.i, label %if.then.i, label %if.then40.if.end.i_crit_edge

if.then40.if.end.i_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then40
  %color_depth = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 6
  %54 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %color_depth, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %55, label %if.then.i.if.end.i_crit_edge [
    i32 6, label %sw.bb3.i
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb2.i
  ]

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

sw.bb3.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then.i.if.end.i_crit_edge, %if.then40.if.end.i_crit_edge
  %deep_color_cntl.0.i = phi i32 [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.then40.if.end.i_crit_edge ], [ 0, %if.then.i.if.end.i_crit_edge ]
  %double_rate_enable.0.shrunk.i = phi i1 [ %tobool47, %sw.bb3.i ], [ %tobool47, %sw.bb2.i ], [ %tobool47, %sw.bb1.i ], [ false, %if.then40.if.end.i_crit_edge ], [ %tobool47, %if.then.i.if.end.i_crit_edge ]
  %cs_mask.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 2
  %57 = ptrtoint ptr %cs_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cs_mask.i, align 4
  %PHYPLLA_PIXCLK_DOUBLE_RATE_ENABLE.i = getelementptr inbounds %struct.dce110_clk_src_mask, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %PHYPLLA_PIXCLK_DOUBLE_RATE_ENABLE.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %PHYPLLA_PIXCLK_DOUBLE_RATE_ENABLE.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool4.not.i = icmp eq i32 %60, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %double_rate_enable.0.i = zext i1 %double_rate_enable.0.shrunk.i to i32
  %ctx.i = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 1
  %61 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 1
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %PIXCLK_RESYNC_CNTL.i = getelementptr inbounds %struct.dce110_clk_src_regs, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %PIXCLK_RESYNC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %PIXCLK_RESYNC_CNTL.i, align 4
  %cs_shift.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 3
  %67 = ptrtoint ptr %cs_shift.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cs_shift.i, align 4
  %PHYPLLA_DCCG_DEEP_COLOR_CNTL.i = getelementptr inbounds %struct.dce110_clk_src_shift, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %PHYPLLA_DCCG_DEEP_COLOR_CNTL.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %PHYPLLA_DCCG_DEEP_COLOR_CNTL.i, align 1
  %PHYPLLA_DCCG_DEEP_COLOR_CNTL7.i = getelementptr inbounds %struct.dce110_clk_src_mask, ptr %58, i32 0, i32 2
  %71 = ptrtoint ptr %PHYPLLA_DCCG_DEEP_COLOR_CNTL7.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %PHYPLLA_DCCG_DEEP_COLOR_CNTL7.i, align 4
  %PHYPLLA_PIXCLK_DOUBLE_RATE_ENABLE9.i = getelementptr inbounds %struct.dce110_clk_src_shift, ptr %68, i32 0, i32 3
  %73 = ptrtoint ptr %PHYPLLA_PIXCLK_DOUBLE_RATE_ENABLE9.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %PHYPLLA_PIXCLK_DOUBLE_RATE_ENABLE9.i, align 1
  %conv.i = zext i8 %74 to i32
  %call.i67 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %62, i32 noundef %66, i32 noundef 2, i8 noundef zeroext %70, i32 noundef %72, i32 noundef %deep_color_cntl.0.i, i32 noundef %conv.i, i32 noundef %60, i32 noundef %double_rate_enable.0.i) #5
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %ctx13.i = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 1
  %75 = ptrtoint ptr %ctx13.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctx13.i, align 4
  %regs14.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 1
  %77 = ptrtoint ptr %regs14.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs14.i, align 4
  %PIXCLK_RESYNC_CNTL15.i = getelementptr inbounds %struct.dce110_clk_src_regs, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %PIXCLK_RESYNC_CNTL15.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %PIXCLK_RESYNC_CNTL15.i, align 4
  %cs_shift16.i = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 3
  %81 = ptrtoint ptr %cs_shift16.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cs_shift16.i, align 4
  %PHYPLLA_DCCG_DEEP_COLOR_CNTL17.i = getelementptr inbounds %struct.dce110_clk_src_shift, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %PHYPLLA_DCCG_DEEP_COLOR_CNTL17.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %PHYPLLA_DCCG_DEEP_COLOR_CNTL17.i, align 1
  %PHYPLLA_DCCG_DEEP_COLOR_CNTL19.i = getelementptr inbounds %struct.dce110_clk_src_mask, ptr %58, i32 0, i32 2
  %85 = ptrtoint ptr %PHYPLLA_DCCG_DEEP_COLOR_CNTL19.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %PHYPLLA_DCCG_DEEP_COLOR_CNTL19.i, align 4
  %call20.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %76, i32 noundef %80, i32 noundef 1, i8 noundef zeroext %84, i32 noundef %86, i32 noundef %deep_color_cntl.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then5.i, %if.end36.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp_pc_params) #5
  ret i1 %cmp33.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce112_get_pix_clk_dividers(ptr nocapture noundef readonly %cs, ptr noundef readonly %pix_clk_params, ptr noundef writeonly %pll_settings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pix_clk_params, null
  %cmp1 = icmp eq ptr %pll_settings, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false2

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false2:                                   ; preds = %entry
  %0 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pix_clk_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %lor.lhs.false2.if.then_crit_edge, label %if.end

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dce112_get_pix_clk_dividers) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %2 = call ptr @memset(ptr %pll_settings, i32 0, i32 44)
  %id = getelementptr inbounds %struct.clock_source, ptr %cs, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %4, label %if.end12 [
    i32 8, label %if.end.if.then8_crit_edge
    i32 4, label %if.end.if.then8_crit_edge25
  ]

if.end.if.then8_crit_edge25:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge25
  %ext_clk_khz = getelementptr inbounds %struct.dce110_clk_src, ptr %cs, i32 0, i32 13
  %6 = ptrtoint ptr %ext_clk_khz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ext_clk_khz, align 4
  %mul = mul i32 %7, 10
  %adjusted_pix_clk_100hz = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 1
  %8 = ptrtoint ptr %adjusted_pix_clk_100hz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %adjusted_pix_clk_100hz, align 4
  %9 = load i32, ptr %ext_clk_khz, align 4
  %mul10 = mul i32 %9, 10
  %calculated_pix_clk_100hz = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 2
  %10 = ptrtoint ptr %calculated_pix_clk_100hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul10, ptr %calculated_pix_clk_100hz, align 4
  %11 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pix_clk_params, align 4
  %13 = ptrtoint ptr %pll_settings to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pll_settings, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %14 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pix_clk_params, align 4
  %signal_type.i = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 4
  %16 = ptrtoint ptr %signal_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %signal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp.i = icmp eq i32 %17, 4
  br i1 %cmp.i, label %if.then.i, label %if.end12.dce112_get_pix_clk_dividers_helper.exit_crit_edge

if.end12.dce112_get_pix_clk_dividers_helper.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce112_get_pix_clk_dividers_helper.exit

if.then.i:                                        ; preds = %if.end12
  %color_depth.i = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 6
  %18 = ptrtoint ptr %color_depth.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %color_depth.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %19, label %if.then.i.dce112_get_pix_clk_dividers_helper.exit_crit_edge [
    i32 3, label %sw.bb.i
    i32 4, label %sw.bb1.i
    i32 6, label %sw.bb4.i
  ]

if.then.i.dce112_get_pix_clk_dividers_helper.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce112_get_pix_clk_dividers_helper.exit

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = mul i32 %15, 5
  %shr.i = lshr i32 %mul.i, 2
  br label %dce112_get_pix_clk_dividers_helper.exit

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul2.i = mul i32 %15, 6
  %shr3.i = lshr i32 %mul2.i, 2
  br label %dce112_get_pix_clk_dividers_helper.exit

sw.bb4.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul5.i = shl i32 %15, 1
  br label %dce112_get_pix_clk_dividers_helper.exit

dce112_get_pix_clk_dividers_helper.exit:          ; preds = %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %if.then.i.dce112_get_pix_clk_dividers_helper.exit_crit_edge, %if.end12.dce112_get_pix_clk_dividers_helper.exit_crit_edge
  %actual_pixel_clock_100hz.0.i = phi i32 [ %15, %if.then.i.dce112_get_pix_clk_dividers_helper.exit_crit_edge ], [ %mul5.i, %sw.bb4.i ], [ %shr3.i, %sw.bb1.i ], [ %shr.i, %sw.bb.i ], [ %15, %if.end12.dce112_get_pix_clk_dividers_helper.exit_crit_edge ]
  %21 = ptrtoint ptr %pll_settings to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %actual_pixel_clock_100hz.0.i, ptr %pll_settings, align 4
  %adjusted_pix_clk_100hz.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 1
  %22 = ptrtoint ptr %adjusted_pix_clk_100hz.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %actual_pixel_clock_100hz.0.i, ptr %adjusted_pix_clk_100hz.i, align 4
  %23 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pix_clk_params, align 4
  %calculated_pix_clk_100hz.i = getelementptr inbounds %struct.pll_settings, ptr %pll_settings, i32 0, i32 2
  %25 = ptrtoint ptr %calculated_pix_clk_100hz.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %calculated_pix_clk_100hz.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dce112_get_pix_clk_dividers_helper.exit, %if.then8, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then8 ], [ 0, %dce112_get_pix_clk_dividers_helper.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dcn20_program_pix_clk(ptr nocapture noundef readonly %clock_source, ptr nocapture noundef readonly %pix_clk_params, ptr nocapture noundef readonly %pll_settings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_id = getelementptr inbounds %struct.pixel_clk_params, ptr %pix_clk_params, i32 0, i32 5
  %0 = ptrtoint ptr %controller_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %controller_id, align 4
  %sub = add i32 %1, -1
  %call = tail call zeroext i1 @dce112_program_pix_clk(ptr noundef %clock_source, ptr noundef %pix_clk_params, ptr noundef %pll_settings)
  %ctx = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %enable_vblanks_synchronization = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 30
  %6 = ptrtoint ptr %enable_vblanks_synchronization to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_vblanks_synchronization, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vblank_alignment_max_frame_time_diff = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 4, i32 17
  %8 = ptrtoint ptr %vblank_alignment_max_frame_time_diff to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vblank_alignment_max_frame_time_diff, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.dce110_clk_src_regs, ptr %11, i32 0, i32 4, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %clk_mgr = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 13
  %14 = ptrtoint ptr %clk_mgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_mgr, align 4
  %dprefclk_khz = getelementptr inbounds %struct.clk_mgr, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %dprefclk_khz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dprefclk_khz, align 4
  %mul = mul i32 %17, 1000
  tail call void @dm_write_reg_func(ptr noundef %3, i32 noundef %13, i32 noundef %mul, ptr noundef nonnull @__func__.dcn20_program_pix_clk) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dcn20_override_dp_pix_clk(ptr nocapture noundef readonly %clock_source, i32 noundef %inst, i32 noundef %pixel_clk, i32 noundef %ref_clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.clock_source, ptr %clock_source, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.dce110_clk_src_regs, ptr %3, i32 0, i32 5, i32 %inst
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %cs_shift = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 3
  %6 = ptrtoint ptr %cs_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cs_shift, align 4
  %DP_DTO0_ENABLE = getelementptr inbounds %struct.dce110_clk_src_shift, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %DP_DTO0_ENABLE to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DP_DTO0_ENABLE, align 1
  %cs_mask = getelementptr inbounds %struct.dce110_clk_src, ptr %clock_source, i32 0, i32 2
  %10 = ptrtoint ptr %cs_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs_mask, align 4
  %DP_DTO0_ENABLE1 = getelementptr inbounds %struct.dce110_clk_src_mask, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %DP_DTO0_ENABLE1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DP_DTO0_ENABLE1, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0) #5
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %arrayidx5 = getelementptr %struct.dce110_clk_src_regs, ptr %17, i32 0, i32 3, i32 %inst
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5, align 4
  tail call void @dm_write_reg_func(ptr noundef %15, i32 noundef %19, i32 noundef %pixel_clk, ptr noundef nonnull @__func__.dcn20_override_dp_pix_clk) #5
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %arrayidx9 = getelementptr %struct.dce110_clk_src_regs, ptr %23, i32 0, i32 4, i32 %inst
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx9, align 4
  tail call void @dm_write_reg_func(ptr noundef %21, i32 noundef %25, i32 noundef %ref_clk, ptr noundef nonnull @__func__.dcn20_override_dp_pix_clk) #5
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %arrayidx14 = getelementptr %struct.dce110_clk_src_regs, ptr %29, i32 0, i32 5, i32 %inst
  %30 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14, align 4
  %32 = ptrtoint ptr %cs_shift to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cs_shift, align 4
  %DP_DTO0_ENABLE16 = getelementptr inbounds %struct.dce110_clk_src_shift, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %DP_DTO0_ENABLE16 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %DP_DTO0_ENABLE16, align 1
  %36 = ptrtoint ptr %cs_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cs_mask, align 4
  %DP_DTO0_ENABLE18 = getelementptr inbounds %struct.dce110_clk_src_mask, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %DP_DTO0_ENABLE18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %DP_DTO0_ENABLE18, align 4
  %call19 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %27, i32 noundef %31, i32 noundef 1, i8 noundef zeroext %35, i32 noundef %39, i32 noundef 1) #5
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1472, i32 3}
!2 = !{ptr @dce110_clk_src_funcs, !3, !"dce110_clk_src_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1219, i32 40}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 249, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 274, i32 2}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 575, i32 3}
!11 = !{ptr @__func__.dce110_get_pix_clk_dividers, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 507, i32 3}
!14 = !{ptr @__func__.dce110_get_pix_clk_dividers_helper, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 302, i32 3}
!17 = !{ptr @__func__.calculate_pixel_clock_pll_dividers, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 363, i32 3}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 369, i32 3}
!22 = !{ptr @__func__.get_pixel_clk_frequency_100hz, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1008, i32 14}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1241, i32 3}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1246, i32 3}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1293, i32 4}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1303, i32 4}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1305, i32 4}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1421, i32 3}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1426, i32 3}
!38 = !{ptr @dce112_clk_src_funcs, !39, !"dce112_clk_src_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1213, i32 40}
!40 = !{ptr @__func__.dce112_get_pix_clk_dividers, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 607, i32 3}
!42 = !{ptr @dcn20_clk_src_funcs, !43, !"dcn20_clk_src_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1121, i32 40}
!44 = !{ptr @__func__.dcn20_program_pix_clk, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1100, i32 3}
!46 = !{ptr @__func__.dcn20_override_dp_pix_clk, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_clock_source.c", i32 1115, i32 2}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i8 0, i8 2}
!59 = !{!60, !62}
!60 = distinct !{!60, !61, !"dc_fixpt_add: %agg.result"}
!61 = distinct !{!61, !"dc_fixpt_add"}
!62 = distinct !{!62, !63, !"dc_fixpt_add_int: %agg.result"}
!63 = distinct !{!63, !"dc_fixpt_add_int"}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{!66}
!66 = distinct !{!66, !67, !"dc_fixpt_sub: %agg.result"}
!67 = distinct !{!67, !"dc_fixpt_sub"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"dc_fixpt_sub: %agg.result"}
!70 = distinct !{!70, !"dc_fixpt_sub"}
!71 = !{i64 2148479340, i64 2148479620, i64 2148479954, i64 2148480288}
!72 = !{i64 993679, i64 993706}
!73 = !{i64 994019, i64 994046, i64 994080, i64 994101}
!74 = !{!"branch_weights", i32 1, i32 2000}
