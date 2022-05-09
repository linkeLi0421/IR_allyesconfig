; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_transform.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.out_csc_color_matrix = type { i32, [12 x i16] }
%struct.transform_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scaler_data = type { i32, i32, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.scaling_ratios, %struct.scl_inits, %struct.sharpness_adj, i32, %struct.line_buffer_params }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.scaling_ratios = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.fixed31_32 = type { i64 }
%struct.scl_inits = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.sharpness_adj = type { i32, i32 }
%struct.line_buffer_params = type { i8, i8, i8, i32, i32 }
%struct.dce_transform = type { %struct.transform, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.transform = type { ptr, ptr, i32, ptr, %struct.pwl_params }
%struct.pwl_params = type { [34 x %struct.gamma_curve], %union.anon, [259 x %struct.pwl_result_data], i32 }
%struct.gamma_curve = type { i32, i32 }
%union.anon = type { [2 x %struct.curve_points3] }
%struct.curve_points3 = type { %struct.curve_points, %struct.curve_points, %struct.curve_points }
%struct.curve_points = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32 }
%struct.pwl_result_data = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, i32, i32, i32, i32, i32, i32 }
%struct.dce_transform_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_transform_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_transform_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.default_adjustment = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.xfm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32 }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }

@global_color_matrix = internal constant { [6 x %struct.out_csc_color_matrix], [56 x i8] } { [6 x %struct.out_csc_color_matrix] [%struct.out_csc_color_matrix { i32 1, [12 x i16] [i16 8192, i16 0, i16 0, i16 0, i16 0, i16 8192, i16 0, i16 0, i16 0, i16 0, i16 8192, i16 0] }, %struct.out_csc_color_matrix { i32 3, [12 x i16] [i16 7008, i16 0, i16 0, i16 512, i16 0, i16 7008, i16 0, i16 512, i16 0, i16 0, i16 7008, i16 512] }, %struct.out_csc_color_matrix { i32 5, [12 x i16] [i16 3584, i16 -3001, i16 -583, i16 4096, i16 2095, i16 4114, i16 799, i16 512, i16 -1209, i16 -2375, i16 3584, i16 4096] }, %struct.out_csc_color_matrix { i32 6, [12 x i16] [i16 3584, i16 -3255, i16 -329, i16 4096, i16 1490, i16 5012, i16 506, i16 512, i16 -821, i16 -2763, i16 3584, i16 4096] }, %struct.out_csc_color_matrix { i32 9, [12 x i16] [i16 3584, i16 -3001, i16 -583, i16 4096, i16 2449, i16 4809, i16 934, i16 512, i16 -1209, i16 -2375, i16 3584, i16 4096] }, %struct.out_csc_color_matrix { i32 10, [12 x i16] [i16 3584, i16 -3255, i16 -329, i16 4096, i16 1742, i16 5859, i16 591, i16 512, i16 -821, i16 -2763, i16 3584, i16 4096] }], [56 x i8] zeroinitializer }, align 32
@dce_transform_funcs = internal constant { %struct.transform_funcs, [48 x i8] } { %struct.transform_funcs { ptr @dce_transform_reset, ptr @dce_transform_set_scaler, ptr @dce_transform_set_pixel_storage_depth, ptr @dce_transform_get_optimal_number_of_taps, ptr @dce_transform_set_gamut_remap, ptr @dce110_opp_set_csc_default, ptr @dce110_opp_set_csc_adjustment, ptr @dce110_opp_power_on_regamma_lut, ptr null, ptr null, ptr null, ptr null, ptr @dce110_opp_program_regamma_pwl, ptr @dce110_opp_set_regamma_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@dce60_transform_funcs = internal constant { %struct.transform_funcs, [48 x i8] } { %struct.transform_funcs { ptr @dce_transform_reset, ptr @dce60_transform_set_scaler, ptr @dce60_transform_set_pixel_storage_depth, ptr @dce_transform_get_optimal_number_of_taps, ptr @dce_transform_set_gamut_remap, ptr @dce110_opp_set_csc_default, ptr @dce110_opp_set_csc_adjustment, ptr @dce110_opp_power_on_regamma_lut, ptr null, ptr null, ptr null, ptr null, ptr @dce110_opp_program_regamma_pwl, ptr @dce110_opp_set_regamma_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@dce_transform_get_max_num_of_supported_lines.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c\00", [35 x i8] zeroinitializer }, align 32
@dce_transform_get_max_num_of_supported_lines._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014[drm] %s: Invalid LB pixel depth\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"dce_transform_get_max_num_of_supported_lines\00", [51 x i8] zeroinitializer }, align 32
@dce_transform_get_max_num_of_supported_lines._entry_ptr = internal global ptr @dce_transform_get_max_num_of_supported_lines._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@dce_transform_get_max_num_of_supported_lines.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@program_pwl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\014[drm] %s: regamma lut was not powered on in a timely manner, programming still proceeds\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"program_pwl\00", [20 x i8] zeroinitializer }, align 32
@program_pwl._entry_ptr = internal global ptr @program_pwl._entry, section ".printk_index", align 4
@__func__.dce_transform_set_scaler = private unnamed_addr constant [25 x i8] c"dce_transform_set_scaler\00", align 1
@__func__.program_overscan = private unnamed_addr constant [17 x i8] c"program_overscan\00", align 1
@dc_fixpt_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@__func__.program_scl_ratios_inits = private unnamed_addr constant [25 x i8] c"program_scl_ratios_inits\00", align 1
@__func__.get_filter_coeffs_16p = private unnamed_addr constant [22 x i8] c"get_filter_coeffs_16p\00", align 1
@__func__.program_multi_taps_filter = private unnamed_addr constant [26 x i8] c"program_multi_taps_filter\00", align 1
@__func__.dce_transform_set_pixel_storage_depth = private unnamed_addr constant [38 x i8] c"dce_transform_set_pixel_storage_depth\00", align 1
@dce_transform_set_pixel_storage_depth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.dce_transform_set_pixel_storage_depth, ptr @.str, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014[drm] %s: Capability not supported\00", [59 x i8] zeroinitializer }, align 32
@dce_transform_set_pixel_storage_depth._entry_ptr = internal global ptr @dce_transform_set_pixel_storage_depth._entry, section ".printk_index", align 4
@__func__.program_bit_depth_reduction = private unnamed_addr constant [28 x i8] c"program_bit_depth_reduction\00", align 1
@__func__.set_clamp = private unnamed_addr constant [10 x i8] c"set_clamp\00", align 1
@__func__.set_round = private unnamed_addr constant [10 x i8] c"set_round\00", align 1
@__func__.dce60_transform_set_scaler = private unnamed_addr constant [27 x i8] c"dce60_transform_set_scaler\00", align 1
@__func__.dce60_program_scl_ratios_inits = private unnamed_addr constant [31 x i8] c"dce60_program_scl_ratios_inits\00", align 1
@__func__.dce60_transform_set_pixel_storage_depth = private unnamed_addr constant [40 x i8] c"dce60_transform_set_pixel_storage_depth\00", align 1
@dce60_transform_set_pixel_storage_depth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.dce60_transform_set_pixel_storage_depth, ptr @.str, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dce60_transform_set_pixel_storage_depth._entry_ptr = internal global ptr @dce60_transform_set_pixel_storage_depth._entry, section ".printk_index", align 4
@__func__.dce60_program_bit_depth_reduction = private unnamed_addr constant [34 x i8] c"dce60_program_bit_depth_reduction\00", align 1
@switch.table.dce_transform_get_optimal_number_of_taps = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 18, i32 24, i32 18, i32 30, i32 18, i32 18, i32 18, i32 36], [32 x i8] zeroinitializer }, align 32
@switch.table.dce110_opp_set_csc_default = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @global_color_matrix, ptr @global_color_matrix, ptr getelementptr inbounds ([6 x %struct.out_csc_color_matrix], ptr @global_color_matrix, i32 0, i32 1), ptr @global_color_matrix, ptr getelementptr inbounds ([6 x %struct.out_csc_color_matrix], ptr @global_color_matrix, i32 0, i32 2), ptr getelementptr inbounds ([6 x %struct.out_csc_color_matrix], ptr @global_color_matrix, i32 0, i32 3), ptr @global_color_matrix, ptr @global_color_matrix, ptr getelementptr inbounds ([6 x %struct.out_csc_color_matrix], ptr @global_color_matrix, i32 0, i32 4), ptr getelementptr inbounds ([6 x %struct.out_csc_color_matrix], ptr @global_color_matrix, i32 0, i32 5)], [56 x i8] zeroinitializer }, align 32
@switch.table.dce110_opp_set_csc_default.9 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 0, i32 1, i32 0, i32 2, i32 3, i32 0, i32 0, i32 2, i32 3], [56 x i8] zeroinitializer }, align 32
@switch.table.dce110_opp_set_csc_default.10 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 0, i32 1, i32 0, i32 2, i32 3, i32 0, i32 0, i32 2, i32 3], [56 x i8] zeroinitializer }, align 32
@switch.table.dce_transform_set_pixel_storage_depth = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.dce_transform_set_pixel_storage_depth.11 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.dce_transform_set_pixel_storage_depth.12 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 1, i32 2, i32 0, i32 2, i32 2, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.dce_transform_set_pixel_storage_depth.13 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 0, i32 1, i32 3, i32 1, i32 1, i32 1, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.dce_transform_set_pixel_storage_depth.14 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16128, i32 16320, i32 16368, i32 16380], [16 x i8] zeroinitializer }, align 32
@switch.table.dce60_transform_set_pixel_storage_depth = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 0, i32 1, i32 3, i32 1, i32 1, i32 1, i32 5], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"global_color_matrix\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 99, i32 42 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"dce_transform_funcs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1597, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"dce60_transform_funcs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1611, i32 37 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 906, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 929, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 931, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1447, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 249, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1026, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1067, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [54 x i8] c"switch.table.dce_transform_get_optimal_number_of_taps\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [40 x i8] c"switch.table.dce110_opp_set_csc_default\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [42 x i8] c"switch.table.dce110_opp_set_csc_default.9\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [43 x i8] c"switch.table.dce110_opp_set_csc_default.10\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [51 x i8] c"switch.table.dce_transform_set_pixel_storage_depth\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [54 x i8] c"switch.table.dce_transform_set_pixel_storage_depth.11\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [54 x i8] c"switch.table.dce_transform_set_pixel_storage_depth.12\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [54 x i8] c"switch.table.dce_transform_set_pixel_storage_depth.13\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [54 x i8] c"switch.table.dce_transform_set_pixel_storage_depth.14\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [53 x i8] c"switch.table.dce60_transform_set_pixel_storage_depth\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @dce60_transform_set_pixel_storage_depth._entry, ptr @dce60_transform_set_pixel_storage_depth._entry_ptr, ptr @dce_transform_get_max_num_of_supported_lines._entry, ptr @dce_transform_get_max_num_of_supported_lines._entry_ptr, ptr @dce_transform_set_pixel_storage_depth._entry, ptr @dce_transform_set_pixel_storage_depth._entry_ptr, ptr @program_pwl._entry, ptr @program_pwl._entry_ptr, ptr @global_color_matrix, ptr @dce_transform_funcs, ptr @dce60_transform_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.dce_transform_get_optimal_number_of_taps, ptr @switch.table.dce110_opp_set_csc_default, ptr @switch.table.dce110_opp_set_csc_default.9, ptr @switch.table.dce110_opp_set_csc_default.10, ptr @switch.table.dce_transform_set_pixel_storage_depth, ptr @switch.table.dce_transform_set_pixel_storage_depth.11, ptr @switch.table.dce_transform_set_pixel_storage_depth.12, ptr @switch.table.dce_transform_set_pixel_storage_depth.13, ptr @switch.table.dce_transform_set_pixel_storage_depth.14, ptr @switch.table.dce60_transform_set_pixel_storage_depth], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_color_matrix to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_transform_funcs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_transform_funcs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_transform_get_max_num_of_supported_lines._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @program_pwl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce_transform_set_pixel_storage_depth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce60_transform_set_pixel_storage_depth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_transform_get_optimal_number_of_taps to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_opp_set_csc_default to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_opp_set_csc_default.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_opp_set_csc_default.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_transform_set_pixel_storage_depth to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_transform_set_pixel_storage_depth.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_transform_set_pixel_storage_depth.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_transform_set_pixel_storage_depth.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce_transform_set_pixel_storage_depth.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce60_transform_set_pixel_storage_depth to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce_transform_get_optimal_number_of_taps(ptr nocapture noundef readonly %xfm, ptr nocapture noundef %scl_data, ptr nocapture noundef readonly %in_taps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %prescaler_on = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 11
  %2 = ptrtoint ptr %prescaler_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prescaler_on, align 8, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %width3 = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width3, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %1, i32 %5)
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %pixel_width.0 = phi i32 [ %1, %entry.if.end_crit_edge ], [ %6, %land.lhs.true ]
  %depth = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 10, i32 4
  %7 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pixel_width.0)
  %tobool.not.i = icmp eq i32 %pixel_width.0, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.do.end42.i_crit_edge

if.end.do.end42.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42.i

land.rhs.i:                                       ; preds = %if.end
  %.b134.i = load i1, ptr @dce_transform_get_max_num_of_supported_lines.__already_done, align 1
  br i1 %.b134.i, label %land.rhs.i.if.then39.i_crit_edge, label %if.then.i, !prof !75

land.rhs.i.if.then39.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dce_transform_get_max_num_of_supported_lines.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 906, i32 noundef 9, ptr noundef null) #6
  br label %if.then39.i

if.then39.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then39.i_crit_edge
  tail call void @kgdb_breakpoint() #6
  br label %do.end42.i

do.end42.i:                                       ; preds = %if.then39.i, %if.end.do.end42.i_crit_edge
  %switch.tableidx = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 8
  br i1 %9, label %switch.hole_check, label %do.end42.i.do.body59.thread.i_crit_edge

do.end42.i.do.body59.thread.i_crit_edge:          ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body59.thread.i

do.body59.thread.i:                               ; preds = %switch.hole_check.do.body59.thread.i_crit_edge, %do.end42.i.do.body59.thread.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 931) #6
  tail call void @kgdb_breakpoint() #6
  br label %land.rhs70.i

switch.hole_check:                                ; preds = %do.end42.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body59.thread.i_crit_edge, label %switch.lookup

switch.hole_check.do.body59.thread.i_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body59.thread.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.dce_transform_get_optimal_number_of_taps, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %lb_bits_per_entry.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 10
  %12 = ptrtoint ptr %lb_bits_per_entry.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lb_bits_per_entry.i, align 4
  %div.i = sdiv i32 %13, %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %tobool61.not.i = icmp eq i32 %div.i, 0
  br i1 %tobool61.not.i, label %switch.lookup.land.rhs70.i_crit_edge, label %switch.lookup.dce_transform_get_max_num_of_supported_lines.exit_crit_edge

switch.lookup.dce_transform_get_max_num_of_supported_lines.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce_transform_get_max_num_of_supported_lines.exit

switch.lookup.land.rhs70.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs70.i

land.rhs70.i:                                     ; preds = %switch.lookup.land.rhs70.i_crit_edge, %do.body59.thread.i
  %.b132133.i = load i1, ptr @dce_transform_get_max_num_of_supported_lines.__already_done.4, align 1
  br i1 %.b132133.i, label %land.rhs70.i.if.then117.i_crit_edge, label %if.then81.i, !prof !75

land.rhs70.i.if.then117.i_crit_edge:              ; preds = %land.rhs70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then117.i

if.then81.i:                                      ; preds = %land.rhs70.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dce_transform_get_max_num_of_supported_lines.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 935, i32 noundef 9, ptr noundef null) #6
  br label %if.then117.i

if.then117.i:                                     ; preds = %if.then81.i, %land.rhs70.i.if.then117.i_crit_edge
  tail call void @kgdb_breakpoint() #6
  br label %dce_transform_get_max_num_of_supported_lines.exit

dce_transform_get_max_num_of_supported_lines.exit: ; preds = %if.then117.i, %switch.lookup.dce_transform_get_max_num_of_supported_lines.exit_crit_edge
  %pixels_per_entries.0139.i = phi i32 [ %div.i, %switch.lookup.dce_transform_get_max_num_of_supported_lines.exit_crit_edge ], [ 0, %if.then117.i ]
  %lb_memory_size.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 9
  %14 = ptrtoint ptr %lb_memory_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lb_memory_size.i, align 8
  %mul.i = mul i32 %15, %pixels_per_entries.0139.i
  %div121.i = sdiv i32 %mul.i, %pixel_width.0
  %16 = ptrtoint ptr %in_taps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_taps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div121.i)
  %cmp6.not = icmp ult i32 %17, %div121.i
  br i1 %cmp6.not, label %if.end8, label %dce_transform_get_max_num_of_supported_lines.exit.cleanup_crit_edge

dce_transform_get_max_num_of_supported_lines.exit.cleanup_crit_edge: ; preds = %dce_transform_get_max_num_of_supported_lines.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %dce_transform_get_max_num_of_supported_lines.exit
  %ratios = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 6
  %h_taps = getelementptr inbounds %struct.scaling_taps, ptr %in_taps, i32 0, i32 1
  %18 = ptrtoint ptr %h_taps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h_taps, align 4
  %20 = ptrtoint ptr %ratios to i32
  call void @__asan_load8_noabort(i32 %20)
  %.unpack = load i64, ptr %ratios, align 8
  %21 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  %call.i120 = tail call i32 @dc_fixpt_u2d19([1 x i64] %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %call.i120)
  %cmp.i = icmp eq i32 %call.i120, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.not.i = icmp eq i32 %19, 0
  %.in_taps.i = select i1 %cmp2.not.i, i32 4, i32 %19
  %retval.0.i = select i1 %cmp.i, i32 1, i32 %.in_taps.i
  %taps = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 2
  %h_taps10 = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %h_taps10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i, ptr %h_taps10, align 4
  %vert = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %in_taps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_taps, align 4
  %25 = ptrtoint ptr %vert to i32
  call void @__asan_load8_noabort(i32 %25)
  %.unpack114 = load i64, ptr %vert, align 8
  %26 = insertvalue [1 x i64] undef, i64 %.unpack114, 0
  %call.i121 = tail call i32 @dc_fixpt_u2d19([1 x i64] %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %call.i121)
  %cmp.i122 = icmp eq i32 %call.i121, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2.not.i123 = icmp eq i32 %24, 0
  %.in_taps.i124 = select i1 %cmp2.not.i123, i32 4, i32 %24
  %retval.0.i127 = select i1 %cmp.i122, i32 1, i32 %.in_taps.i124
  %27 = ptrtoint ptr %taps to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i127, ptr %taps, align 8
  %horz_c = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %h_taps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %h_taps, align 4
  %30 = ptrtoint ptr %horz_c to i32
  call void @__asan_load8_noabort(i32 %30)
  %.unpack115 = load i64, ptr %horz_c, align 8
  %31 = insertvalue [1 x i64] undef, i64 %.unpack115, 0
  %call.i129 = tail call i32 @dc_fixpt_u2d19([1 x i64] %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %call.i129)
  %cmp.i130 = icmp eq i32 %call.i129, 524288
  br i1 %cmp.i130, label %if.end8.decide_taps.exit136_crit_edge, label %if.else.i134

if.end8.decide_taps.exit136_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %decide_taps.exit136

if.else.i134:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2.not.i131 = icmp eq i32 %29, 0
  %.op = lshr i32 %29, 1
  %32 = tail call i32 @llvm.umax.i32(i32 %.op, i32 2)
  %33 = select i1 %cmp2.not.i131, i32 2, i32 %32
  br label %decide_taps.exit136

decide_taps.exit136:                              ; preds = %if.else.i134, %if.end8.decide_taps.exit136_crit_edge
  %retval.0.i135 = phi i32 [ %33, %if.else.i134 ], [ 1, %if.end8.decide_taps.exit136_crit_edge ]
  %h_taps_c = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %h_taps_c to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i135, ptr %h_taps_c, align 4
  %vert_c = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 6, i32 3
  %35 = ptrtoint ptr %in_taps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in_taps, align 4
  %37 = ptrtoint ptr %vert_c to i32
  call void @__asan_load8_noabort(i32 %37)
  %.unpack116 = load i64, ptr %vert_c, align 8
  %38 = insertvalue [1 x i64] undef, i64 %.unpack116, 0
  %call.i137 = tail call i32 @dc_fixpt_u2d19([1 x i64] %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %call.i137)
  %cmp.i138 = icmp eq i32 %call.i137, 524288
  br i1 %cmp.i138, label %decide_taps.exit136.decide_taps.exit144_crit_edge, label %if.else.i142

decide_taps.exit136.decide_taps.exit144_crit_edge: ; preds = %decide_taps.exit136
  call void @__sanitizer_cov_trace_pc() #8
  br label %decide_taps.exit144

if.else.i142:                                     ; preds = %decide_taps.exit136
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp2.not.i139 = icmp eq i32 %36, 0
  %.op145 = lshr i32 %36, 1
  %39 = tail call i32 @llvm.umax.i32(i32 %.op145, i32 2)
  %40 = select i1 %cmp2.not.i139, i32 2, i32 %39
  br label %decide_taps.exit144

decide_taps.exit144:                              ; preds = %if.else.i142, %decide_taps.exit136.decide_taps.exit144_crit_edge
  %retval.0.i143 = phi i32 [ %40, %if.else.i142 ], [ 1, %decide_taps.exit136.decide_taps.exit144_crit_edge ]
  %v_taps_c = getelementptr inbounds %struct.scaler_data, ptr %scl_data, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %v_taps_c to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i143, ptr %v_taps_c, align 8
  %42 = ptrtoint ptr %vert to i32
  call void @__asan_load8_noabort(i32 %42)
  %.unpack117 = load i64, ptr %vert, align 8
  %43 = insertvalue [1 x i64] undef, i64 %.unpack117, 0
  %call30 = tail call i32 @dc_fixpt_u2d19([1 x i64] %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 524288
  br i1 %cmp31, label %decide_taps.exit144.if.end52_crit_edge, label %if.then32

decide_taps.exit144.if.end52_crit_edge:           ; preds = %decide_taps.exit144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then32:                                        ; preds = %decide_taps.exit144
  %44 = ptrtoint ptr %in_taps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %in_taps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp34 = icmp eq i32 %45, 0
  %46 = ptrtoint ptr %taps to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %taps, align 8
  br i1 %cmp34, label %land.lhs.true35, label %if.then32.if.end46_crit_edge

if.then32.if.end46_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true35:                                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_cmp4(i32 %div121.i, i32 %47)
  %cmp38.not = icmp ule i32 %div121.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp42 = icmp ugt i32 %47, 1
  %or.cond = and i1 %cmp38.not, %cmp42
  br i1 %or.cond, label %if.then43, label %land.lhs.true35.if.end46_crit_edge

land.lhs.true35.if.end46_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then43:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %div121.i, -1
  %48 = ptrtoint ptr %taps to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub, ptr %taps, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %land.lhs.true35.if.end46_crit_edge, %if.then32.if.end46_crit_edge
  %49 = phi i32 [ %sub, %if.then43 ], [ %47, %land.lhs.true35.if.end46_crit_edge ], [ %47, %if.then32.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp49 = icmp ult i32 %49, 2
  br i1 %cmp49, label %if.end46.cleanup_crit_edge, label %if.end46.if.end52_crit_edge

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.end46.if.end52_crit_edge, %decide_taps.exit144.if.end52_crit_edge
  %50 = ptrtoint ptr %vert_c to i32
  call void @__asan_load8_noabort(i32 %50)
  %.unpack118 = load i64, ptr %vert_c, align 8
  %51 = insertvalue [1 x i64] undef, i64 %.unpack118, 0
  %call56 = tail call i32 @dc_fixpt_u2d19([1 x i64] %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %call56)
  %cmp57 = icmp eq i32 %call56, 524288
  br i1 %cmp57, label %if.end52.if.end76_crit_edge, label %if.then58

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then58:                                        ; preds = %if.end52
  %52 = ptrtoint ptr %v_taps_c to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %v_taps_c, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div121.i, i32 %53)
  %cmp61.not = icmp ule i32 %div121.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp65 = icmp ugt i32 %53, 1
  %or.cond119 = and i1 %cmp61.not, %cmp65
  br i1 %or.cond119, label %if.then66, label %if.then58.if.end70_crit_edge

if.then58.if.end70_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then66:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %sub67 = add i32 %div121.i, -1
  %54 = ptrtoint ptr %v_taps_c to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub67, ptr %v_taps_c, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.then58.if.end70_crit_edge
  %55 = phi i32 [ %sub67, %if.then66 ], [ %53, %if.then58.if.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp73 = icmp ult i32 %55, 2
  br i1 %cmp73, label %if.end70.cleanup_crit_edge, label %if.end70.if.end76_crit_edge

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end76:                                         ; preds = %if.end70.if.end76_crit_edge, %if.end52.if.end76_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.end70.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %dce_transform_get_max_num_of_supported_lines.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end76 ], [ false, %dce_transform_get_max_num_of_supported_lines.exit.cleanup_crit_edge ], [ false, %if.end46.cleanup_crit_edge ], [ false, %if.end70.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_fixpt_u2d19([1 x i64]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_set_csc_adjustment(ptr nocapture noundef readonly %xfm, ptr nocapture noundef readonly %tbl_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @program_color_matrix(ptr noundef %xfm, ptr noundef %tbl_entry)
  %ctx.i = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %OUTPUT_CSC_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %OUTPUT_CSC_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %OUTPUT_CSC_CONTROL.i, align 4
  %xfm_shift.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %6 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfm_shift.i, align 4
  %OUTPUT_CSC_GRPH_MODE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %OUTPUT_CSC_GRPH_MODE.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %OUTPUT_CSC_GRPH_MODE.i, align 1
  %xfm_mask.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %10 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfm_mask.i, align 8
  %OUTPUT_CSC_GRPH_MODE1.i = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %OUTPUT_CSC_GRPH_MODE1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %OUTPUT_CSC_GRPH_MODE1.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0) #6
  %14 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx.i, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %OUTPUT_CSC_CONTROL16.i = getelementptr inbounds %struct.dce_transform_registers, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %OUTPUT_CSC_CONTROL16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %OUTPUT_CSC_CONTROL16.i, align 4
  %20 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xfm_shift.i, align 4
  %OUTPUT_CSC_GRPH_MODE18.i = getelementptr inbounds %struct.dce_transform_shift, ptr %21, i32 0, i32 32
  %22 = ptrtoint ptr %OUTPUT_CSC_GRPH_MODE18.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %OUTPUT_CSC_GRPH_MODE18.i, align 1
  %24 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xfm_mask.i, align 8
  %OUTPUT_CSC_GRPH_MODE20.i = getelementptr inbounds %struct.dce_transform_mask, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %OUTPUT_CSC_GRPH_MODE20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %OUTPUT_CSC_GRPH_MODE20.i, align 4
  %call21.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %15, i32 noundef %19, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %23, i32 noundef %27, i32 noundef 4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_color_matrix(ptr nocapture noundef readonly %xfm_dce, ptr nocapture noundef readonly %tbl_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %OUTPUT_CSC_C11_C12 = getelementptr inbounds %struct.dce_transform_registers, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %OUTPUT_CSC_C11_C12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %OUTPUT_CSC_C11_C12, align 4
  %xfm_shift = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 2
  %6 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfm_shift, align 4
  %OUTPUT_CSC_C11 = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 30
  %8 = ptrtoint ptr %OUTPUT_CSC_C11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %OUTPUT_CSC_C11, align 1
  %xfm_mask = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 3
  %10 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfm_mask, align 8
  %OUTPUT_CSC_C111 = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 30
  %12 = ptrtoint ptr %OUTPUT_CSC_C111 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %OUTPUT_CSC_C111, align 4
  %regval = getelementptr inbounds %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1
  %14 = ptrtoint ptr %regval to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %regval, align 4
  %conv = zext i16 %15 to i32
  %OUTPUT_CSC_C12 = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 31
  %16 = ptrtoint ptr %OUTPUT_CSC_C12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %OUTPUT_CSC_C12, align 1
  %conv3 = zext i8 %17 to i32
  %OUTPUT_CSC_C125 = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 31
  %18 = ptrtoint ptr %OUTPUT_CSC_C125 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %OUTPUT_CSC_C125, align 4
  %arrayidx7 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %21 to i32
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %conv, i32 noundef %conv3, i32 noundef %19, i32 noundef %conv8) #6
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %OUTPUT_CSC_C13_C14 = getelementptr inbounds %struct.dce_transform_registers, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %OUTPUT_CSC_C13_C14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %OUTPUT_CSC_C13_C14, align 4
  %28 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xfm_shift, align 4
  %OUTPUT_CSC_C1113 = getelementptr inbounds %struct.dce_transform_shift, ptr %29, i32 0, i32 30
  %30 = ptrtoint ptr %OUTPUT_CSC_C1113 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %OUTPUT_CSC_C1113, align 1
  %32 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xfm_mask, align 8
  %OUTPUT_CSC_C1115 = getelementptr inbounds %struct.dce_transform_mask, ptr %33, i32 0, i32 30
  %34 = ptrtoint ptr %OUTPUT_CSC_C1115 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %OUTPUT_CSC_C1115, align 4
  %arrayidx17 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx17, align 4
  %conv18 = zext i16 %37 to i32
  %OUTPUT_CSC_C1220 = getelementptr inbounds %struct.dce_transform_shift, ptr %29, i32 0, i32 31
  %38 = ptrtoint ptr %OUTPUT_CSC_C1220 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %OUTPUT_CSC_C1220, align 1
  %conv21 = zext i8 %39 to i32
  %OUTPUT_CSC_C1223 = getelementptr inbounds %struct.dce_transform_mask, ptr %33, i32 0, i32 31
  %40 = ptrtoint ptr %OUTPUT_CSC_C1223 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %OUTPUT_CSC_C1223, align 4
  %arrayidx25 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx25, align 2
  %conv26 = zext i16 %43 to i32
  %call27 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %23, i32 noundef %27, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %31, i32 noundef %35, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %41, i32 noundef %conv26) #6
  %44 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx, align 4
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 8
  %OUTPUT_CSC_C21_C22 = getelementptr inbounds %struct.dce_transform_registers, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %OUTPUT_CSC_C21_C22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %OUTPUT_CSC_C21_C22, align 4
  %50 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xfm_shift, align 4
  %OUTPUT_CSC_C1132 = getelementptr inbounds %struct.dce_transform_shift, ptr %51, i32 0, i32 30
  %52 = ptrtoint ptr %OUTPUT_CSC_C1132 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %OUTPUT_CSC_C1132, align 1
  %54 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xfm_mask, align 8
  %OUTPUT_CSC_C1134 = getelementptr inbounds %struct.dce_transform_mask, ptr %55, i32 0, i32 30
  %56 = ptrtoint ptr %OUTPUT_CSC_C1134 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %OUTPUT_CSC_C1134, align 4
  %arrayidx36 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx36, align 4
  %conv37 = zext i16 %59 to i32
  %OUTPUT_CSC_C1239 = getelementptr inbounds %struct.dce_transform_shift, ptr %51, i32 0, i32 31
  %60 = ptrtoint ptr %OUTPUT_CSC_C1239 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %OUTPUT_CSC_C1239, align 1
  %conv40 = zext i8 %61 to i32
  %OUTPUT_CSC_C1242 = getelementptr inbounds %struct.dce_transform_mask, ptr %55, i32 0, i32 31
  %62 = ptrtoint ptr %OUTPUT_CSC_C1242 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %OUTPUT_CSC_C1242, align 4
  %arrayidx44 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 5
  %64 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx44, align 2
  %conv45 = zext i16 %65 to i32
  %call46 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %45, i32 noundef %49, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %53, i32 noundef %57, i32 noundef %conv37, i32 noundef %conv40, i32 noundef %63, i32 noundef %conv45) #6
  %66 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctx, align 4
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 8
  %OUTPUT_CSC_C23_C24 = getelementptr inbounds %struct.dce_transform_registers, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %OUTPUT_CSC_C23_C24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %OUTPUT_CSC_C23_C24, align 4
  %72 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xfm_shift, align 4
  %OUTPUT_CSC_C1151 = getelementptr inbounds %struct.dce_transform_shift, ptr %73, i32 0, i32 30
  %74 = ptrtoint ptr %OUTPUT_CSC_C1151 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %OUTPUT_CSC_C1151, align 1
  %76 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %xfm_mask, align 8
  %OUTPUT_CSC_C1153 = getelementptr inbounds %struct.dce_transform_mask, ptr %77, i32 0, i32 30
  %78 = ptrtoint ptr %OUTPUT_CSC_C1153 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %OUTPUT_CSC_C1153, align 4
  %arrayidx55 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 6
  %80 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx55, align 4
  %conv56 = zext i16 %81 to i32
  %OUTPUT_CSC_C1258 = getelementptr inbounds %struct.dce_transform_shift, ptr %73, i32 0, i32 31
  %82 = ptrtoint ptr %OUTPUT_CSC_C1258 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %OUTPUT_CSC_C1258, align 1
  %conv59 = zext i8 %83 to i32
  %OUTPUT_CSC_C1261 = getelementptr inbounds %struct.dce_transform_mask, ptr %77, i32 0, i32 31
  %84 = ptrtoint ptr %OUTPUT_CSC_C1261 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %OUTPUT_CSC_C1261, align 4
  %arrayidx63 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 7
  %86 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx63, align 2
  %conv64 = zext i16 %87 to i32
  %call65 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %67, i32 noundef %71, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %75, i32 noundef %79, i32 noundef %conv56, i32 noundef %conv59, i32 noundef %85, i32 noundef %conv64) #6
  %88 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctx, align 4
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 8
  %OUTPUT_CSC_C31_C32 = getelementptr inbounds %struct.dce_transform_registers, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %OUTPUT_CSC_C31_C32 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %OUTPUT_CSC_C31_C32, align 4
  %94 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %xfm_shift, align 4
  %OUTPUT_CSC_C1170 = getelementptr inbounds %struct.dce_transform_shift, ptr %95, i32 0, i32 30
  %96 = ptrtoint ptr %OUTPUT_CSC_C1170 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %OUTPUT_CSC_C1170, align 1
  %98 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %xfm_mask, align 8
  %OUTPUT_CSC_C1172 = getelementptr inbounds %struct.dce_transform_mask, ptr %99, i32 0, i32 30
  %100 = ptrtoint ptr %OUTPUT_CSC_C1172 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %OUTPUT_CSC_C1172, align 4
  %arrayidx74 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 8
  %102 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx74, align 4
  %conv75 = zext i16 %103 to i32
  %OUTPUT_CSC_C1277 = getelementptr inbounds %struct.dce_transform_shift, ptr %95, i32 0, i32 31
  %104 = ptrtoint ptr %OUTPUT_CSC_C1277 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %OUTPUT_CSC_C1277, align 1
  %conv78 = zext i8 %105 to i32
  %OUTPUT_CSC_C1280 = getelementptr inbounds %struct.dce_transform_mask, ptr %99, i32 0, i32 31
  %106 = ptrtoint ptr %OUTPUT_CSC_C1280 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %OUTPUT_CSC_C1280, align 4
  %arrayidx82 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 9
  %108 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx82, align 2
  %conv83 = zext i16 %109 to i32
  %call84 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %89, i32 noundef %93, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %97, i32 noundef %101, i32 noundef %conv75, i32 noundef %conv78, i32 noundef %107, i32 noundef %conv83) #6
  %110 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctx, align 4
  %112 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs, align 8
  %OUTPUT_CSC_C33_C34 = getelementptr inbounds %struct.dce_transform_registers, ptr %113, i32 0, i32 14
  %114 = ptrtoint ptr %OUTPUT_CSC_C33_C34 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %OUTPUT_CSC_C33_C34, align 4
  %116 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %xfm_shift, align 4
  %OUTPUT_CSC_C1189 = getelementptr inbounds %struct.dce_transform_shift, ptr %117, i32 0, i32 30
  %118 = ptrtoint ptr %OUTPUT_CSC_C1189 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %OUTPUT_CSC_C1189, align 1
  %120 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %xfm_mask, align 8
  %OUTPUT_CSC_C1191 = getelementptr inbounds %struct.dce_transform_mask, ptr %121, i32 0, i32 30
  %122 = ptrtoint ptr %OUTPUT_CSC_C1191 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %OUTPUT_CSC_C1191, align 4
  %arrayidx93 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 10
  %124 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx93, align 4
  %conv94 = zext i16 %125 to i32
  %OUTPUT_CSC_C1296 = getelementptr inbounds %struct.dce_transform_shift, ptr %117, i32 0, i32 31
  %126 = ptrtoint ptr %OUTPUT_CSC_C1296 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %OUTPUT_CSC_C1296, align 1
  %conv97 = zext i8 %127 to i32
  %OUTPUT_CSC_C1299 = getelementptr inbounds %struct.dce_transform_mask, ptr %121, i32 0, i32 31
  %128 = ptrtoint ptr %OUTPUT_CSC_C1299 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %OUTPUT_CSC_C1299, align 4
  %arrayidx101 = getelementptr %struct.out_csc_color_matrix, ptr %tbl_entry, i32 0, i32 1, i32 11
  %130 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx101, align 2
  %conv102 = zext i16 %131 to i32
  %call103 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %111, i32 noundef %115, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %119, i32 noundef %123, i32 noundef %conv94, i32 noundef %conv97, i32 noundef %129, i32 noundef %conv102) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_set_csc_default(ptr nocapture noundef readonly %xfm, ptr nocapture noundef readonly %default_adjust) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %force_hw_default = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust, i32 0, i32 6
  %0 = ptrtoint ptr %force_hw_default to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %force_hw_default, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.cond.preheader:                               ; preds = %entry
  %out_color_space = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust, i32 0, i32 1
  %2 = ptrtoint ptr %out_color_space to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_color_space, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 10
  br i1 %4, label %switch.hole_check, label %for.cond.preheader.if.end7_crit_edge

for.cond.preheader.if.end7_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

switch.hole_check:                                ; preds = %for.cond.preheader
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 821, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end7_crit_edge, label %switch.lookup

switch.hole_check.if.end7_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.dce110_opp_set_csc_default, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call fastcc void @program_color_matrix(ptr noundef %xfm, ptr noundef nonnull %switch.load)
  br label %if.end7

if.end7:                                          ; preds = %switch.lookup, %switch.hole_check.if.end7_crit_edge, %for.cond.preheader.if.end7_crit_edge, %entry.if.end7_crit_edge
  %cmp2.i = phi i1 [ true, %switch.lookup ], [ false, %entry.if.end7_crit_edge ], [ false, %for.cond.preheader.if.end7_crit_edge ], [ false, %switch.hole_check.if.end7_crit_edge ]
  %csc_adjust_type = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust, i32 0, i32 5
  %7 = ptrtoint ptr %csc_adjust_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %csc_adjust_type, align 4
  %out_color_space8 = getelementptr inbounds %struct.default_adjustment, ptr %default_adjust, i32 0, i32 1
  %9 = ptrtoint ptr %out_color_space8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out_color_space8, align 4
  %ctx.i = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %OUTPUT_CSC_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %OUTPUT_CSC_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %OUTPUT_CSC_CONTROL.i, align 4
  %xfm_shift.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %17 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xfm_shift.i, align 4
  %OUTPUT_CSC_GRPH_MODE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %18, i32 0, i32 32
  %19 = ptrtoint ptr %OUTPUT_CSC_GRPH_MODE.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %OUTPUT_CSC_GRPH_MODE.i, align 1
  %xfm_mask.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %21 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xfm_mask.i, align 8
  %OUTPUT_CSC_GRPH_MODE1.i = getelementptr inbounds %struct.dce_transform_mask, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %OUTPUT_CSC_GRPH_MODE1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %OUTPUT_CSC_GRPH_MODE1.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %12, i32 noundef %16, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %20, i32 noundef %24, i32 noundef 0) #6
  %25 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end7.return.sink.split.i_crit_edge [
    i32 2, label %if.then.i
    i32 1, label %if.then54.i
  ]

if.end7.return.sink.split.i_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

if.then.i:                                        ; preds = %if.end7
  br i1 %cmp2.i, label %if.then.i.return.sink.split.i_crit_edge, label %if.else.i

if.then.i.return.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  %switch.tableidx23 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx23)
  %26 = icmp ult i32 %switch.tableidx23, 10
  br i1 %26, label %switch.hole_check24, label %if.else.i.configure_graphics_mode.exit_crit_edge

if.else.i.configure_graphics_mode.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %configure_graphics_mode.exit

if.then54.i:                                      ; preds = %if.end7
  %switch.tableidx32 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx32)
  %27 = icmp ult i32 %switch.tableidx32, 10
  br i1 %27, label %switch.hole_check33, label %if.then54.i.configure_graphics_mode.exit_crit_edge

if.then54.i.configure_graphics_mode.exit_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %configure_graphics_mode.exit

switch.hole_check24:                              ; preds = %if.else.i
  %switch.maskindex26 = trunc i32 %switch.tableidx23 to i16
  %switch.shifted27 = lshr i16 821, %switch.maskindex26
  %28 = and i16 %switch.shifted27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %switch.lobit28.not = icmp eq i16 %28, 0
  br i1 %switch.lobit28.not, label %switch.hole_check24.configure_graphics_mode.exit_crit_edge, label %switch.lookup25

switch.hole_check24.configure_graphics_mode.exit_crit_edge: ; preds = %switch.hole_check24
  call void @__sanitizer_cov_trace_pc() #8
  br label %configure_graphics_mode.exit

switch.lookup25:                                  ; preds = %switch.hole_check24
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep29 = getelementptr inbounds [10 x i32], ptr @switch.table.dce110_opp_set_csc_default.9, i32 0, i32 %switch.tableidx23
  br label %return.sink.split.i.sink.split

switch.hole_check33:                              ; preds = %if.then54.i
  %switch.maskindex35 = trunc i32 %switch.tableidx32 to i16
  %switch.shifted36 = lshr i16 821, %switch.maskindex35
  %29 = and i16 %switch.shifted36, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %switch.lobit37.not = icmp eq i16 %29, 0
  br i1 %switch.lobit37.not, label %switch.hole_check33.configure_graphics_mode.exit_crit_edge, label %switch.lookup34

switch.hole_check33.configure_graphics_mode.exit_crit_edge: ; preds = %switch.hole_check33
  call void @__sanitizer_cov_trace_pc() #8
  br label %configure_graphics_mode.exit

switch.lookup34:                                  ; preds = %switch.hole_check33
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep38 = getelementptr inbounds [10 x i32], ptr @switch.table.dce110_opp_set_csc_default.10, i32 0, i32 %switch.tableidx32
  br label %return.sink.split.i.sink.split

return.sink.split.i.sink.split:                   ; preds = %switch.lookup34, %switch.lookup25
  %switch.gep38.sink = phi ptr [ %switch.gep38, %switch.lookup34 ], [ %switch.gep29, %switch.lookup25 ]
  %30 = ptrtoint ptr %switch.gep38.sink to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load39 = load i32, ptr %switch.gep38.sink, align 4
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %return.sink.split.i.sink.split, %if.then.i.return.sink.split.i_crit_edge, %if.end7.return.sink.split.i_crit_edge
  %.sink4.i = phi i32 [ 4, %if.then.i.return.sink.split.i_crit_edge ], [ 0, %if.end7.return.sink.split.i_crit_edge ], [ %switch.load39, %return.sink.split.i.sink.split ]
  %31 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx.i, align 4
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 8
  %OUTPUT_CSC_CONTROL16.i = getelementptr inbounds %struct.dce_transform_registers, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %OUTPUT_CSC_CONTROL16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %OUTPUT_CSC_CONTROL16.i, align 4
  %37 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xfm_shift.i, align 4
  %OUTPUT_CSC_GRPH_MODE18.i = getelementptr inbounds %struct.dce_transform_shift, ptr %38, i32 0, i32 32
  %39 = ptrtoint ptr %OUTPUT_CSC_GRPH_MODE18.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %OUTPUT_CSC_GRPH_MODE18.i, align 1
  %41 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xfm_mask.i, align 8
  %OUTPUT_CSC_GRPH_MODE20.i = getelementptr inbounds %struct.dce_transform_mask, ptr %42, i32 0, i32 32
  %43 = ptrtoint ptr %OUTPUT_CSC_GRPH_MODE20.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %OUTPUT_CSC_GRPH_MODE20.i, align 4
  %call21.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %32, i32 noundef %36, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %40, i32 noundef %44, i32 noundef %.sink4.i) #6
  br label %configure_graphics_mode.exit

configure_graphics_mode.exit:                     ; preds = %return.sink.split.i, %switch.hole_check33.configure_graphics_mode.exit_crit_edge, %switch.hole_check24.configure_graphics_mode.exit_crit_edge, %if.then54.i.configure_graphics_mode.exit_crit_edge, %if.else.i.configure_graphics_mode.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_program_regamma_pwl(ptr nocapture noundef readonly %xfm, ptr noundef readonly %params) #0 align 64 {
entry:
  %retval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_START_CNTL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %REGAMMA_CNTLA_START_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %REGAMMA_CNTLA_START_CNTL.i, align 4
  %xfm_shift.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %6 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION_START.i = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 37
  %8 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_START.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION_START.i, align 1
  %xfm_mask.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %10 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION_START1.i = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 37
  %12 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_START1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION_START1.i, align 4
  %custom_float_x.i = getelementptr inbounds %struct.pwl_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4
  %14 = ptrtoint ptr %custom_float_x.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %custom_float_x.i, align 8
  %REGAMMA_CNTLA_EXP_REGION_START_SEGMENT.i = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 38
  %16 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_START_SEGMENT.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION_START_SEGMENT.i, align 1
  %conv.i = zext i8 %17 to i32
  %REGAMMA_CNTLA_EXP_REGION_START_SEGMENT4.i = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 38
  %18 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_START_SEGMENT4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION_START_SEGMENT4.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %15, i32 noundef %conv.i, i32 noundef %19, i32 noundef 0) #6
  %20 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx.i, align 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_SLOPE_CNTL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %REGAMMA_CNTLA_SLOPE_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %REGAMMA_CNTLA_SLOPE_CNTL.i, align 4
  %26 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION_LINEAR_SLOPE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %27, i32 0, i32 39
  %28 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_LINEAR_SLOPE.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION_LINEAR_SLOPE.i, align 1
  %30 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION_LINEAR_SLOPE10.i = getelementptr inbounds %struct.dce_transform_mask, ptr %31, i32 0, i32 39
  %32 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_LINEAR_SLOPE10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION_LINEAR_SLOPE10.i, align 4
  %custom_float_slope.i = getelementptr inbounds %struct.pwl_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 0, i32 7
  %34 = ptrtoint ptr %custom_float_slope.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %custom_float_slope.i, align 4
  %call12.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %21, i32 noundef %25, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %29, i32 noundef %33, i32 noundef %35) #6
  %36 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx.i, align 4
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_END_CNTL1.i = getelementptr inbounds %struct.dce_transform_registers, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %REGAMMA_CNTLA_END_CNTL1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %REGAMMA_CNTLA_END_CNTL1.i, align 4
  %42 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION_END.i = getelementptr inbounds %struct.dce_transform_shift, ptr %43, i32 0, i32 40
  %44 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_END.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION_END.i, align 1
  %46 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION_END18.i = getelementptr inbounds %struct.dce_transform_mask, ptr %47, i32 0, i32 40
  %48 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_END18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION_END18.i, align 4
  %custom_float_x20.i = getelementptr %struct.pwl_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %custom_float_x20.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %custom_float_x20.i, align 8
  %call21.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %37, i32 noundef %41, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %45, i32 noundef %49, i32 noundef %51) #6
  %52 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx.i, align 4
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_END_CNTL2.i = getelementptr inbounds %struct.dce_transform_registers, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %REGAMMA_CNTLA_END_CNTL2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %REGAMMA_CNTLA_END_CNTL2.i, align 4
  %58 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION_END_BASE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %59, i32 0, i32 41
  %60 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_END_BASE.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION_END_BASE.i, align 1
  %62 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION_END_BASE27.i = getelementptr inbounds %struct.dce_transform_mask, ptr %63, i32 0, i32 41
  %64 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_END_BASE27.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION_END_BASE27.i, align 4
  %custom_float_y.i = getelementptr %struct.pwl_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 1, i32 5
  %66 = ptrtoint ptr %custom_float_y.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %custom_float_y.i, align 4
  %REGAMMA_CNTLA_EXP_REGION_END_SLOPE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %59, i32 0, i32 42
  %68 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_END_SLOPE.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION_END_SLOPE.i, align 1
  %conv30.i = zext i8 %69 to i32
  %REGAMMA_CNTLA_EXP_REGION_END_SLOPE32.i = getelementptr inbounds %struct.dce_transform_mask, ptr %63, i32 0, i32 42
  %70 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION_END_SLOPE32.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION_END_SLOPE32.i, align 4
  %custom_float_slope34.i = getelementptr %struct.pwl_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 1, i32 7
  %72 = ptrtoint ptr %custom_float_slope34.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %custom_float_slope34.i, align 4
  %call35.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %53, i32 noundef %57, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %61, i32 noundef %65, i32 noundef %67, i32 noundef %conv30.i, i32 noundef %71, i32 noundef %73) #6
  %74 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctx.i, align 4
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_REGION_0_1.i = getelementptr inbounds %struct.dce_transform_registers, ptr %77, i32 0, i32 21
  %78 = ptrtoint ptr %REGAMMA_CNTLA_REGION_0_1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %REGAMMA_CNTLA_REGION_0_1.i, align 4
  %80 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET.i = getelementptr inbounds %struct.dce_transform_shift, ptr %81, i32 0, i32 43
  %82 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET.i, align 1
  %84 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET41.i = getelementptr inbounds %struct.dce_transform_mask, ptr %85, i32 0, i32 43
  %86 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET41.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET41.i, align 4
  %88 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %params, align 4
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS.i = getelementptr inbounds %struct.dce_transform_shift, ptr %81, i32 0, i32 44
  %90 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS.i, align 1
  %conv44.i = zext i8 %91 to i32
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS46.i = getelementptr inbounds %struct.dce_transform_mask, ptr %85, i32 0, i32 44
  %92 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS46.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS46.i, align 4
  %segments_num.i = getelementptr inbounds %struct.gamma_curve, ptr %params, i32 0, i32 1
  %94 = ptrtoint ptr %segments_num.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %segments_num.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET.i = getelementptr inbounds %struct.dce_transform_shift, ptr %81, i32 0, i32 45
  %96 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET.i, align 1
  %conv49.i = zext i8 %97 to i32
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET51.i = getelementptr inbounds %struct.dce_transform_mask, ptr %85, i32 0, i32 45
  %98 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET51.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET51.i, align 4
  %arrayidx52.i = getelementptr %struct.gamma_curve, ptr %params, i32 1
  %100 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx52.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS.i = getelementptr inbounds %struct.dce_transform_shift, ptr %81, i32 0, i32 46
  %102 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS.i, align 1
  %conv55.i = zext i8 %103 to i32
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS57.i = getelementptr inbounds %struct.dce_transform_mask, ptr %85, i32 0, i32 46
  %104 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS57.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS57.i, align 4
  %segments_num59.i = getelementptr %struct.gamma_curve, ptr %params, i32 1, i32 1
  %106 = ptrtoint ptr %segments_num59.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %segments_num59.i, align 4
  %call60.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %75, i32 noundef %79, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %83, i32 noundef %87, i32 noundef %89, i32 noundef %conv44.i, i32 noundef %93, i32 noundef %95, i32 noundef %conv49.i, i32 noundef %99, i32 noundef %101, i32 noundef %conv55.i, i32 noundef %105, i32 noundef %107) #6
  %add.ptr.i = getelementptr %struct.gamma_curve, ptr %params, i32 2
  %108 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ctx.i, align 4
  %110 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_REGION_2_3.i = getelementptr inbounds %struct.dce_transform_registers, ptr %111, i32 0, i32 22
  %112 = ptrtoint ptr %REGAMMA_CNTLA_REGION_2_3.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %REGAMMA_CNTLA_REGION_2_3.i, align 4
  %114 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET65.i = getelementptr inbounds %struct.dce_transform_shift, ptr %115, i32 0, i32 43
  %116 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET65.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET65.i, align 1
  %118 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET67.i = getelementptr inbounds %struct.dce_transform_mask, ptr %119, i32 0, i32 43
  %120 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET67.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET67.i, align 4
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS71.i = getelementptr inbounds %struct.dce_transform_shift, ptr %115, i32 0, i32 44
  %124 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS71.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS71.i, align 1
  %conv72.i = zext i8 %125 to i32
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS74.i = getelementptr inbounds %struct.dce_transform_mask, ptr %119, i32 0, i32 44
  %126 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS74.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS74.i, align 4
  %segments_num76.i = getelementptr %struct.gamma_curve, ptr %params, i32 2, i32 1
  %128 = ptrtoint ptr %segments_num76.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %segments_num76.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET78.i = getelementptr inbounds %struct.dce_transform_shift, ptr %115, i32 0, i32 45
  %130 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET78.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET78.i, align 1
  %conv79.i = zext i8 %131 to i32
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET81.i = getelementptr inbounds %struct.dce_transform_mask, ptr %119, i32 0, i32 45
  %132 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET81.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET81.i, align 4
  %arrayidx82.i = getelementptr %struct.gamma_curve, ptr %params, i32 3
  %134 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx82.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS85.i = getelementptr inbounds %struct.dce_transform_shift, ptr %115, i32 0, i32 46
  %136 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS85.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS85.i, align 1
  %conv86.i = zext i8 %137 to i32
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS88.i = getelementptr inbounds %struct.dce_transform_mask, ptr %119, i32 0, i32 46
  %138 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS88.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS88.i, align 4
  %segments_num90.i = getelementptr %struct.gamma_curve, ptr %params, i32 3, i32 1
  %140 = ptrtoint ptr %segments_num90.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %segments_num90.i, align 4
  %call91.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %109, i32 noundef %113, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %117, i32 noundef %121, i32 noundef %123, i32 noundef %conv72.i, i32 noundef %127, i32 noundef %129, i32 noundef %conv79.i, i32 noundef %133, i32 noundef %135, i32 noundef %conv86.i, i32 noundef %139, i32 noundef %141) #6
  %add.ptr92.i = getelementptr %struct.gamma_curve, ptr %params, i32 4
  %142 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ctx.i, align 4
  %144 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_REGION_4_5.i = getelementptr inbounds %struct.dce_transform_registers, ptr %145, i32 0, i32 23
  %146 = ptrtoint ptr %REGAMMA_CNTLA_REGION_4_5.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %REGAMMA_CNTLA_REGION_4_5.i, align 4
  %148 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET97.i = getelementptr inbounds %struct.dce_transform_shift, ptr %149, i32 0, i32 43
  %150 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET97.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET97.i, align 1
  %152 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET99.i = getelementptr inbounds %struct.dce_transform_mask, ptr %153, i32 0, i32 43
  %154 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET99.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET99.i, align 4
  %156 = ptrtoint ptr %add.ptr92.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr92.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS103.i = getelementptr inbounds %struct.dce_transform_shift, ptr %149, i32 0, i32 44
  %158 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS103.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS103.i, align 1
  %conv104.i = zext i8 %159 to i32
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS106.i = getelementptr inbounds %struct.dce_transform_mask, ptr %153, i32 0, i32 44
  %160 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS106.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS106.i, align 4
  %segments_num108.i = getelementptr %struct.gamma_curve, ptr %params, i32 4, i32 1
  %162 = ptrtoint ptr %segments_num108.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %segments_num108.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET110.i = getelementptr inbounds %struct.dce_transform_shift, ptr %149, i32 0, i32 45
  %164 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET110.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET110.i, align 1
  %conv111.i = zext i8 %165 to i32
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET113.i = getelementptr inbounds %struct.dce_transform_mask, ptr %153, i32 0, i32 45
  %166 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET113.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET113.i, align 4
  %arrayidx114.i = getelementptr %struct.gamma_curve, ptr %params, i32 5
  %168 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx114.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS117.i = getelementptr inbounds %struct.dce_transform_shift, ptr %149, i32 0, i32 46
  %170 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS117.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS117.i, align 1
  %conv118.i = zext i8 %171 to i32
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS120.i = getelementptr inbounds %struct.dce_transform_mask, ptr %153, i32 0, i32 46
  %172 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS120.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS120.i, align 4
  %segments_num122.i = getelementptr %struct.gamma_curve, ptr %params, i32 5, i32 1
  %174 = ptrtoint ptr %segments_num122.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %segments_num122.i, align 4
  %call123.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %143, i32 noundef %147, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %151, i32 noundef %155, i32 noundef %157, i32 noundef %conv104.i, i32 noundef %161, i32 noundef %163, i32 noundef %conv111.i, i32 noundef %167, i32 noundef %169, i32 noundef %conv118.i, i32 noundef %173, i32 noundef %175) #6
  %add.ptr124.i = getelementptr %struct.gamma_curve, ptr %params, i32 6
  %176 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ctx.i, align 4
  %178 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_REGION_6_7.i = getelementptr inbounds %struct.dce_transform_registers, ptr %179, i32 0, i32 24
  %180 = ptrtoint ptr %REGAMMA_CNTLA_REGION_6_7.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %REGAMMA_CNTLA_REGION_6_7.i, align 4
  %182 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET129.i = getelementptr inbounds %struct.dce_transform_shift, ptr %183, i32 0, i32 43
  %184 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET129.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET129.i, align 1
  %186 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET131.i = getelementptr inbounds %struct.dce_transform_mask, ptr %187, i32 0, i32 43
  %188 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET131.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET131.i, align 4
  %190 = ptrtoint ptr %add.ptr124.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %add.ptr124.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS135.i = getelementptr inbounds %struct.dce_transform_shift, ptr %183, i32 0, i32 44
  %192 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS135.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS135.i, align 1
  %conv136.i = zext i8 %193 to i32
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS138.i = getelementptr inbounds %struct.dce_transform_mask, ptr %187, i32 0, i32 44
  %194 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS138.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS138.i, align 4
  %segments_num140.i = getelementptr %struct.gamma_curve, ptr %params, i32 6, i32 1
  %196 = ptrtoint ptr %segments_num140.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %segments_num140.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET142.i = getelementptr inbounds %struct.dce_transform_shift, ptr %183, i32 0, i32 45
  %198 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET142.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET142.i, align 1
  %conv143.i = zext i8 %199 to i32
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET145.i = getelementptr inbounds %struct.dce_transform_mask, ptr %187, i32 0, i32 45
  %200 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET145.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET145.i, align 4
  %arrayidx146.i = getelementptr %struct.gamma_curve, ptr %params, i32 7
  %202 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx146.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS149.i = getelementptr inbounds %struct.dce_transform_shift, ptr %183, i32 0, i32 46
  %204 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS149.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS149.i, align 1
  %conv150.i = zext i8 %205 to i32
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS152.i = getelementptr inbounds %struct.dce_transform_mask, ptr %187, i32 0, i32 46
  %206 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS152.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS152.i, align 4
  %segments_num154.i = getelementptr %struct.gamma_curve, ptr %params, i32 7, i32 1
  %208 = ptrtoint ptr %segments_num154.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %segments_num154.i, align 4
  %call155.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %177, i32 noundef %181, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %185, i32 noundef %189, i32 noundef %191, i32 noundef %conv136.i, i32 noundef %195, i32 noundef %197, i32 noundef %conv143.i, i32 noundef %201, i32 noundef %203, i32 noundef %conv150.i, i32 noundef %207, i32 noundef %209) #6
  %add.ptr156.i = getelementptr %struct.gamma_curve, ptr %params, i32 8
  %210 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ctx.i, align 4
  %212 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_REGION_8_9.i = getelementptr inbounds %struct.dce_transform_registers, ptr %213, i32 0, i32 25
  %214 = ptrtoint ptr %REGAMMA_CNTLA_REGION_8_9.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %REGAMMA_CNTLA_REGION_8_9.i, align 4
  %216 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET161.i = getelementptr inbounds %struct.dce_transform_shift, ptr %217, i32 0, i32 43
  %218 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET161.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET161.i, align 1
  %220 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET163.i = getelementptr inbounds %struct.dce_transform_mask, ptr %221, i32 0, i32 43
  %222 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET163.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET163.i, align 4
  %224 = ptrtoint ptr %add.ptr156.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %add.ptr156.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS167.i = getelementptr inbounds %struct.dce_transform_shift, ptr %217, i32 0, i32 44
  %226 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS167.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS167.i, align 1
  %conv168.i = zext i8 %227 to i32
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS170.i = getelementptr inbounds %struct.dce_transform_mask, ptr %221, i32 0, i32 44
  %228 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS170.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS170.i, align 4
  %segments_num172.i = getelementptr %struct.gamma_curve, ptr %params, i32 8, i32 1
  %230 = ptrtoint ptr %segments_num172.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %segments_num172.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET174.i = getelementptr inbounds %struct.dce_transform_shift, ptr %217, i32 0, i32 45
  %232 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET174.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET174.i, align 1
  %conv175.i = zext i8 %233 to i32
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET177.i = getelementptr inbounds %struct.dce_transform_mask, ptr %221, i32 0, i32 45
  %234 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET177.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET177.i, align 4
  %arrayidx178.i = getelementptr %struct.gamma_curve, ptr %params, i32 9
  %236 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx178.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS181.i = getelementptr inbounds %struct.dce_transform_shift, ptr %217, i32 0, i32 46
  %238 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS181.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS181.i, align 1
  %conv182.i = zext i8 %239 to i32
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS184.i = getelementptr inbounds %struct.dce_transform_mask, ptr %221, i32 0, i32 46
  %240 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS184.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS184.i, align 4
  %segments_num186.i = getelementptr %struct.gamma_curve, ptr %params, i32 9, i32 1
  %242 = ptrtoint ptr %segments_num186.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %segments_num186.i, align 4
  %call187.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %211, i32 noundef %215, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %219, i32 noundef %223, i32 noundef %225, i32 noundef %conv168.i, i32 noundef %229, i32 noundef %231, i32 noundef %conv175.i, i32 noundef %235, i32 noundef %237, i32 noundef %conv182.i, i32 noundef %241, i32 noundef %243) #6
  %add.ptr188.i = getelementptr %struct.gamma_curve, ptr %params, i32 10
  %244 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ctx.i, align 4
  %246 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_REGION_10_11.i = getelementptr inbounds %struct.dce_transform_registers, ptr %247, i32 0, i32 26
  %248 = ptrtoint ptr %REGAMMA_CNTLA_REGION_10_11.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %REGAMMA_CNTLA_REGION_10_11.i, align 4
  %250 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET193.i = getelementptr inbounds %struct.dce_transform_shift, ptr %251, i32 0, i32 43
  %252 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET193.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET193.i, align 1
  %254 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET195.i = getelementptr inbounds %struct.dce_transform_mask, ptr %255, i32 0, i32 43
  %256 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET195.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET195.i, align 4
  %258 = ptrtoint ptr %add.ptr188.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %add.ptr188.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS199.i = getelementptr inbounds %struct.dce_transform_shift, ptr %251, i32 0, i32 44
  %260 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS199.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS199.i, align 1
  %conv200.i = zext i8 %261 to i32
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS202.i = getelementptr inbounds %struct.dce_transform_mask, ptr %255, i32 0, i32 44
  %262 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS202.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS202.i, align 4
  %segments_num204.i = getelementptr %struct.gamma_curve, ptr %params, i32 10, i32 1
  %264 = ptrtoint ptr %segments_num204.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %segments_num204.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET206.i = getelementptr inbounds %struct.dce_transform_shift, ptr %251, i32 0, i32 45
  %266 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET206.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET206.i, align 1
  %conv207.i = zext i8 %267 to i32
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET209.i = getelementptr inbounds %struct.dce_transform_mask, ptr %255, i32 0, i32 45
  %268 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET209.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET209.i, align 4
  %arrayidx210.i = getelementptr %struct.gamma_curve, ptr %params, i32 11
  %270 = ptrtoint ptr %arrayidx210.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx210.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS213.i = getelementptr inbounds %struct.dce_transform_shift, ptr %251, i32 0, i32 46
  %272 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS213.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS213.i, align 1
  %conv214.i = zext i8 %273 to i32
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS216.i = getelementptr inbounds %struct.dce_transform_mask, ptr %255, i32 0, i32 46
  %274 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS216.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS216.i, align 4
  %segments_num218.i = getelementptr %struct.gamma_curve, ptr %params, i32 11, i32 1
  %276 = ptrtoint ptr %segments_num218.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %segments_num218.i, align 4
  %call219.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %245, i32 noundef %249, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %253, i32 noundef %257, i32 noundef %259, i32 noundef %conv200.i, i32 noundef %263, i32 noundef %265, i32 noundef %conv207.i, i32 noundef %269, i32 noundef %271, i32 noundef %conv214.i, i32 noundef %275, i32 noundef %277) #6
  %add.ptr220.i = getelementptr %struct.gamma_curve, ptr %params, i32 12
  %278 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ctx.i, align 4
  %280 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_REGION_12_13.i = getelementptr inbounds %struct.dce_transform_registers, ptr %281, i32 0, i32 27
  %282 = ptrtoint ptr %REGAMMA_CNTLA_REGION_12_13.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %REGAMMA_CNTLA_REGION_12_13.i, align 4
  %284 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET225.i = getelementptr inbounds %struct.dce_transform_shift, ptr %285, i32 0, i32 43
  %286 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET225.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET225.i, align 1
  %288 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET227.i = getelementptr inbounds %struct.dce_transform_mask, ptr %289, i32 0, i32 43
  %290 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET227.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET227.i, align 4
  %292 = ptrtoint ptr %add.ptr220.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %add.ptr220.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS231.i = getelementptr inbounds %struct.dce_transform_shift, ptr %285, i32 0, i32 44
  %294 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS231.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS231.i, align 1
  %conv232.i = zext i8 %295 to i32
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS234.i = getelementptr inbounds %struct.dce_transform_mask, ptr %289, i32 0, i32 44
  %296 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS234.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS234.i, align 4
  %segments_num236.i = getelementptr %struct.gamma_curve, ptr %params, i32 12, i32 1
  %298 = ptrtoint ptr %segments_num236.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %segments_num236.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET238.i = getelementptr inbounds %struct.dce_transform_shift, ptr %285, i32 0, i32 45
  %300 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET238.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET238.i, align 1
  %conv239.i = zext i8 %301 to i32
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET241.i = getelementptr inbounds %struct.dce_transform_mask, ptr %289, i32 0, i32 45
  %302 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET241.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET241.i, align 4
  %arrayidx242.i = getelementptr %struct.gamma_curve, ptr %params, i32 13
  %304 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx242.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS245.i = getelementptr inbounds %struct.dce_transform_shift, ptr %285, i32 0, i32 46
  %306 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS245.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS245.i, align 1
  %conv246.i = zext i8 %307 to i32
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS248.i = getelementptr inbounds %struct.dce_transform_mask, ptr %289, i32 0, i32 46
  %308 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS248.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS248.i, align 4
  %segments_num250.i = getelementptr %struct.gamma_curve, ptr %params, i32 13, i32 1
  %310 = ptrtoint ptr %segments_num250.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %segments_num250.i, align 4
  %call251.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %279, i32 noundef %283, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %287, i32 noundef %291, i32 noundef %293, i32 noundef %conv232.i, i32 noundef %297, i32 noundef %299, i32 noundef %conv239.i, i32 noundef %303, i32 noundef %305, i32 noundef %conv246.i, i32 noundef %309, i32 noundef %311) #6
  %add.ptr252.i = getelementptr %struct.gamma_curve, ptr %params, i32 14
  %312 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %ctx.i, align 4
  %314 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %regs.i, align 8
  %REGAMMA_CNTLA_REGION_14_15.i = getelementptr inbounds %struct.dce_transform_registers, ptr %315, i32 0, i32 28
  %316 = ptrtoint ptr %REGAMMA_CNTLA_REGION_14_15.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %REGAMMA_CNTLA_REGION_14_15.i, align 4
  %318 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET257.i = getelementptr inbounds %struct.dce_transform_shift, ptr %319, i32 0, i32 43
  %320 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET257.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET257.i, align 1
  %322 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET259.i = getelementptr inbounds %struct.dce_transform_mask, ptr %323, i32 0, i32 43
  %324 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET259.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET259.i, align 4
  %326 = ptrtoint ptr %add.ptr252.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %add.ptr252.i, align 4
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS263.i = getelementptr inbounds %struct.dce_transform_shift, ptr %319, i32 0, i32 44
  %328 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS263.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS263.i, align 1
  %conv264.i = zext i8 %329 to i32
  %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS266.i = getelementptr inbounds %struct.dce_transform_mask, ptr %323, i32 0, i32 44
  %330 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS266.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS266.i, align 4
  %segments_num268.i = getelementptr %struct.gamma_curve, ptr %params, i32 14, i32 1
  %332 = ptrtoint ptr %segments_num268.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %segments_num268.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET270.i = getelementptr inbounds %struct.dce_transform_shift, ptr %319, i32 0, i32 45
  %334 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET270.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET270.i, align 1
  %conv271.i = zext i8 %335 to i32
  %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET273.i = getelementptr inbounds %struct.dce_transform_mask, ptr %323, i32 0, i32 45
  %336 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET273.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET273.i, align 4
  %arrayidx274.i = getelementptr %struct.gamma_curve, ptr %params, i32 15
  %338 = ptrtoint ptr %arrayidx274.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx274.i, align 4
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS277.i = getelementptr inbounds %struct.dce_transform_shift, ptr %319, i32 0, i32 46
  %340 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS277.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS277.i, align 1
  %conv278.i = zext i8 %341 to i32
  %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS280.i = getelementptr inbounds %struct.dce_transform_mask, ptr %323, i32 0, i32 46
  %342 = ptrtoint ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS280.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS280.i, align 4
  %segments_num282.i = getelementptr %struct.gamma_curve, ptr %params, i32 15, i32 1
  %344 = ptrtoint ptr %segments_num282.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %segments_num282.i, align 4
  %call283.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %313, i32 noundef %317, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %321, i32 noundef %325, i32 noundef %327, i32 noundef %conv264.i, i32 noundef %331, i32 noundef %333, i32 noundef %conv271.i, i32 noundef %337, i32 noundef %339, i32 noundef %conv278.i, i32 noundef %343, i32 noundef %345) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i) #6
  %346 = ptrtoint ptr %retval.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 -1, ptr %retval.i, align 4, !annotation !76
  %rgb_resulted.i = getelementptr inbounds %struct.pwl_params, ptr %params, i32 0, i32 2
  %347 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %regs.i, align 8
  %DCFE_MEM_PWR_CTRL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %348, i32 0, i32 47
  %349 = ptrtoint ptr %DCFE_MEM_PWR_CTRL.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %DCFE_MEM_PWR_CTRL.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool.not.i = icmp eq i32 %350, 0
  %351 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %ctx.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %353 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %xfm_shift.i, align 4
  %DCP_REGAMMA_MEM_PWR_DIS.i = getelementptr inbounds %struct.dce_transform_shift, ptr %354, i32 0, i32 33
  %355 = ptrtoint ptr %DCP_REGAMMA_MEM_PWR_DIS.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %DCP_REGAMMA_MEM_PWR_DIS.i, align 1
  %357 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %xfm_mask.i, align 8
  %DCP_REGAMMA_MEM_PWR_DIS3.i = getelementptr inbounds %struct.dce_transform_mask, ptr %358, i32 0, i32 33
  %359 = ptrtoint ptr %DCP_REGAMMA_MEM_PWR_DIS3.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %DCP_REGAMMA_MEM_PWR_DIS3.i, align 4
  %call.i6 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %352, i32 noundef %350, i32 noundef 1, i8 noundef zeroext %356, i32 noundef %360, i32 noundef 1) #6
  br label %while.body.i.preheader

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %DCFE_MEM_LIGHT_SLEEP_CNTL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %348, i32 0, i32 16
  %361 = ptrtoint ptr %DCFE_MEM_LIGHT_SLEEP_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %DCFE_MEM_LIGHT_SLEEP_CNTL.i, align 4
  %363 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_LUT_LIGHT_SLEEP_DIS.i = getelementptr inbounds %struct.dce_transform_shift, ptr %364, i32 0, i32 35
  %365 = ptrtoint ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS.i, align 1
  %367 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_LUT_LIGHT_SLEEP_DIS9.i = getelementptr inbounds %struct.dce_transform_mask, ptr %368, i32 0, i32 35
  %369 = ptrtoint ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS9.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS9.i, align 4
  %call10.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %352, i32 noundef %362, i32 noundef 1, i8 noundef zeroext %366, i32 noundef %370, i32 noundef 1) #6
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.else.i, %if.then.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end42.i.while.body.i_crit_edge, %while.body.i.preheader
  %counter.0174.i = phi i8 [ %counter.1.i, %if.end42.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %371 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %regs.i, align 8
  %DCFE_MEM_PWR_STATUS.i = getelementptr inbounds %struct.dce_transform_registers, ptr %372, i32 0, i32 48
  %373 = ptrtoint ptr %DCFE_MEM_PWR_STATUS.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %DCFE_MEM_PWR_STATUS.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool14.not.i = icmp eq i32 %374, 0
  %375 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %ctx.i, align 4
  br i1 %tobool14.not.i, label %if.else28.i, label %if.then15.i

if.then15.i:                                      ; preds = %while.body.i
  %377 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %xfm_shift.i, align 4
  %DCP_REGAMMA_MEM_PWR_STATE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %378, i32 0, i32 47
  %379 = ptrtoint ptr %DCP_REGAMMA_MEM_PWR_STATE.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %DCP_REGAMMA_MEM_PWR_STATE.i, align 1
  %381 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %xfm_mask.i, align 8
  %DCP_REGAMMA_MEM_PWR_STATE22.i = getelementptr inbounds %struct.dce_transform_mask, ptr %382, i32 0, i32 47
  %383 = ptrtoint ptr %DCP_REGAMMA_MEM_PWR_STATE22.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %DCP_REGAMMA_MEM_PWR_STATE22.i, align 4
  %call23.i = call i32 @generic_reg_get(ptr noundef %376, i32 noundef %374, i8 noundef zeroext %380, i32 noundef %384, ptr noundef nonnull %retval.i) #6
  %385 = ptrtoint ptr %retval.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %retval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %cmp24.i = icmp eq i32 %386, 0
  br i1 %cmp24.i, label %if.then15.i.if.end49.i_crit_edge, label %if.then15.i.if.end42.i_crit_edge

if.then15.i.if.end42.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.then15.i.if.end49.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.else28.i:                                      ; preds = %while.body.i
  %DCFE_MEM_LIGHT_SLEEP_CNTL32.i = getelementptr inbounds %struct.dce_transform_registers, ptr %372, i32 0, i32 16
  %387 = ptrtoint ptr %DCFE_MEM_LIGHT_SLEEP_CNTL32.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %DCFE_MEM_LIGHT_SLEEP_CNTL32.i, align 4
  %389 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_LUT_MEM_PWR_STATE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %390, i32 0, i32 48
  %391 = ptrtoint ptr %REGAMMA_LUT_MEM_PWR_STATE.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %REGAMMA_LUT_MEM_PWR_STATE.i, align 1
  %393 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_LUT_MEM_PWR_STATE35.i = getelementptr inbounds %struct.dce_transform_mask, ptr %394, i32 0, i32 48
  %395 = ptrtoint ptr %REGAMMA_LUT_MEM_PWR_STATE35.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %REGAMMA_LUT_MEM_PWR_STATE35.i, align 4
  %call36.i = call i32 @generic_reg_get(ptr noundef %376, i32 noundef %388, i8 noundef zeroext %392, i32 noundef %396, ptr noundef nonnull %retval.i) #6
  %397 = ptrtoint ptr %retval.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %retval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %398)
  %cmp37.i = icmp eq i32 %398, 0
  br i1 %cmp37.i, label %if.else28.i.if.end49.i_crit_edge, label %if.else28.i.if.end42.i_crit_edge

if.else28.i.if.end42.i_crit_edge:                 ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.else28.i.if.end49.i_crit_edge:                 ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.end42.i:                                       ; preds = %if.else28.i.if.end42.i_crit_edge, %if.then15.i.if.end42.i_crit_edge
  %counter.1.i = add nuw nsw i8 %counter.0174.i, 1
  %cmp.i = icmp ult i8 %counter.0174.i, 9
  br i1 %cmp.i, label %if.end42.i.while.body.i_crit_edge, label %do.end.i

if.end42.i.while.body.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #9
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end.i, %if.else28.i.if.end49.i_crit_edge, %if.then15.i.if.end49.i_crit_edge
  %399 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %ctx.i, align 4
  %401 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %regs.i, align 8
  %REGAMMA_LUT_WRITE_EN_MASK.i = getelementptr inbounds %struct.dce_transform_registers, ptr %402, i32 0, i32 29
  %403 = ptrtoint ptr %REGAMMA_LUT_WRITE_EN_MASK.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %REGAMMA_LUT_WRITE_EN_MASK.i, align 4
  %405 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_LUT_WRITE_EN_MASK54.i = getelementptr inbounds %struct.dce_transform_shift, ptr %406, i32 0, i32 49
  %407 = ptrtoint ptr %REGAMMA_LUT_WRITE_EN_MASK54.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %REGAMMA_LUT_WRITE_EN_MASK54.i, align 1
  %409 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_LUT_WRITE_EN_MASK56.i = getelementptr inbounds %struct.dce_transform_mask, ptr %410, i32 0, i32 49
  %411 = ptrtoint ptr %REGAMMA_LUT_WRITE_EN_MASK56.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %REGAMMA_LUT_WRITE_EN_MASK56.i, align 4
  %call57.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %400, i32 noundef %404, i32 noundef 1, i8 noundef zeroext %408, i32 noundef %412, i32 noundef 7) #6
  %413 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %ctx.i, align 4
  %415 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %regs.i, align 8
  %REGAMMA_LUT_INDEX.i = getelementptr inbounds %struct.dce_transform_registers, ptr %416, i32 0, i32 30
  %417 = ptrtoint ptr %REGAMMA_LUT_INDEX.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %REGAMMA_LUT_INDEX.i, align 4
  call void @dm_write_reg_func(ptr noundef %414, i32 noundef %418, i32 noundef 0, ptr noundef nonnull @.str.6) #6
  %hw_points_num.i = getelementptr inbounds %struct.pwl_params, ptr %params, i32 0, i32 3
  %419 = ptrtoint ptr %hw_points_num.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %hw_points_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %420)
  %cmp62.not175.i = icmp eq i32 %420, 0
  br i1 %cmp62.not175.i, label %if.end49.i.while.end89.i_crit_edge, label %if.end49.i.while.body64.i_crit_edge

if.end49.i.while.body64.i_crit_edge:              ; preds = %if.end49.i
  br label %while.body64.i

if.end49.i.while.end89.i_crit_edge:               ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end89.i

while.body64.i:                                   ; preds = %while.body64.i.while.body64.i_crit_edge, %if.end49.i.while.body64.i_crit_edge
  %rgb.0177.i = phi ptr [ %incdec.ptr.i, %while.body64.i.while.body64.i_crit_edge ], [ %rgb_resulted.i, %if.end49.i.while.body64.i_crit_edge ]
  %i.0176.i = phi i32 [ %inc88.i, %while.body64.i.while.body64.i_crit_edge ], [ 0, %if.end49.i.while.body64.i_crit_edge ]
  %421 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %ctx.i, align 4
  %423 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %regs.i, align 8
  %REGAMMA_LUT_DATA.i = getelementptr inbounds %struct.dce_transform_registers, ptr %424, i32 0, i32 31
  %425 = ptrtoint ptr %REGAMMA_LUT_DATA.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %REGAMMA_LUT_DATA.i, align 4
  %red_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0177.i, i32 0, i32 6
  %427 = ptrtoint ptr %red_reg.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %red_reg.i, align 8
  call void @dm_write_reg_func(ptr noundef %422, i32 noundef %426, i32 noundef %428, ptr noundef nonnull @.str.6) #6
  %429 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %ctx.i, align 4
  %431 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %regs.i, align 8
  %REGAMMA_LUT_DATA71.i = getelementptr inbounds %struct.dce_transform_registers, ptr %432, i32 0, i32 31
  %433 = ptrtoint ptr %REGAMMA_LUT_DATA71.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %REGAMMA_LUT_DATA71.i, align 4
  %green_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0177.i, i32 0, i32 7
  %435 = ptrtoint ptr %green_reg.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %green_reg.i, align 4
  call void @dm_write_reg_func(ptr noundef %430, i32 noundef %434, i32 noundef %436, ptr noundef nonnull @.str.6) #6
  %437 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %ctx.i, align 4
  %439 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %regs.i, align 8
  %REGAMMA_LUT_DATA75.i = getelementptr inbounds %struct.dce_transform_registers, ptr %440, i32 0, i32 31
  %441 = ptrtoint ptr %REGAMMA_LUT_DATA75.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %REGAMMA_LUT_DATA75.i, align 4
  %blue_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0177.i, i32 0, i32 8
  %443 = ptrtoint ptr %blue_reg.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %blue_reg.i, align 8
  call void @dm_write_reg_func(ptr noundef %438, i32 noundef %442, i32 noundef %444, ptr noundef nonnull @.str.6) #6
  %445 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %ctx.i, align 4
  %447 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %regs.i, align 8
  %REGAMMA_LUT_DATA79.i = getelementptr inbounds %struct.dce_transform_registers, ptr %448, i32 0, i32 31
  %449 = ptrtoint ptr %REGAMMA_LUT_DATA79.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %REGAMMA_LUT_DATA79.i, align 4
  %delta_red_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0177.i, i32 0, i32 9
  %451 = ptrtoint ptr %delta_red_reg.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %delta_red_reg.i, align 4
  call void @dm_write_reg_func(ptr noundef %446, i32 noundef %450, i32 noundef %452, ptr noundef nonnull @.str.6) #6
  %453 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %ctx.i, align 4
  %455 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %regs.i, align 8
  %REGAMMA_LUT_DATA83.i = getelementptr inbounds %struct.dce_transform_registers, ptr %456, i32 0, i32 31
  %457 = ptrtoint ptr %REGAMMA_LUT_DATA83.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %REGAMMA_LUT_DATA83.i, align 4
  %delta_green_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0177.i, i32 0, i32 10
  %459 = ptrtoint ptr %delta_green_reg.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %delta_green_reg.i, align 8
  call void @dm_write_reg_func(ptr noundef %454, i32 noundef %458, i32 noundef %460, ptr noundef nonnull @.str.6) #6
  %461 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %ctx.i, align 4
  %463 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %regs.i, align 8
  %REGAMMA_LUT_DATA87.i = getelementptr inbounds %struct.dce_transform_registers, ptr %464, i32 0, i32 31
  %465 = ptrtoint ptr %REGAMMA_LUT_DATA87.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %REGAMMA_LUT_DATA87.i, align 4
  %delta_blue_reg.i = getelementptr inbounds %struct.pwl_result_data, ptr %rgb.0177.i, i32 0, i32 11
  %467 = ptrtoint ptr %delta_blue_reg.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %delta_blue_reg.i, align 4
  call void @dm_write_reg_func(ptr noundef %462, i32 noundef %466, i32 noundef %468, ptr noundef nonnull @.str.6) #6
  %incdec.ptr.i = getelementptr %struct.pwl_result_data, ptr %rgb.0177.i, i32 1
  %inc88.i = add i32 %i.0176.i, 1
  %469 = ptrtoint ptr %hw_points_num.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %hw_points_num.i, align 8
  %cmp62.not.i = icmp eq i32 %inc88.i, %470
  br i1 %cmp62.not.i, label %while.body64.i.while.end89.i_crit_edge, label %while.body64.i.while.body64.i_crit_edge

while.body64.i.while.body64.i_crit_edge:          ; preds = %while.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body64.i

while.body64.i.while.end89.i_crit_edge:           ; preds = %while.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end89.i

while.end89.i:                                    ; preds = %while.body64.i.while.end89.i_crit_edge, %if.end49.i.while.end89.i_crit_edge
  %471 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %regs.i, align 8
  %DCFE_MEM_PWR_CTRL91.i = getelementptr inbounds %struct.dce_transform_registers, ptr %472, i32 0, i32 47
  %473 = ptrtoint ptr %DCFE_MEM_PWR_CTRL91.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %DCFE_MEM_PWR_CTRL91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %474)
  %tobool92.not.i = icmp eq i32 %474, 0
  %475 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %ctx.i, align 4
  br i1 %tobool92.not.i, label %if.else103.i, label %if.then93.i

if.then93.i:                                      ; preds = %while.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  %477 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %xfm_shift.i, align 4
  %DCP_REGAMMA_MEM_PWR_DIS99.i = getelementptr inbounds %struct.dce_transform_shift, ptr %478, i32 0, i32 33
  %479 = ptrtoint ptr %DCP_REGAMMA_MEM_PWR_DIS99.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %DCP_REGAMMA_MEM_PWR_DIS99.i, align 1
  %481 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %xfm_mask.i, align 8
  %DCP_REGAMMA_MEM_PWR_DIS101.i = getelementptr inbounds %struct.dce_transform_mask, ptr %482, i32 0, i32 33
  %483 = ptrtoint ptr %DCP_REGAMMA_MEM_PWR_DIS101.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %DCP_REGAMMA_MEM_PWR_DIS101.i, align 4
  %call102.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %476, i32 noundef %474, i32 noundef 1, i8 noundef zeroext %480, i32 noundef %484, i32 noundef 0) #6
  br label %program_pwl.exit

if.else103.i:                                     ; preds = %while.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  %DCFE_MEM_LIGHT_SLEEP_CNTL107.i = getelementptr inbounds %struct.dce_transform_registers, ptr %472, i32 0, i32 16
  %485 = ptrtoint ptr %DCFE_MEM_LIGHT_SLEEP_CNTL107.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %DCFE_MEM_LIGHT_SLEEP_CNTL107.i, align 4
  %487 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %xfm_shift.i, align 4
  %REGAMMA_LUT_LIGHT_SLEEP_DIS109.i = getelementptr inbounds %struct.dce_transform_shift, ptr %488, i32 0, i32 35
  %489 = ptrtoint ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS109.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS109.i, align 1
  %491 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %xfm_mask.i, align 8
  %REGAMMA_LUT_LIGHT_SLEEP_DIS111.i = getelementptr inbounds %struct.dce_transform_mask, ptr %492, i32 0, i32 35
  %493 = ptrtoint ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS111.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS111.i, align 4
  %call112.i = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %476, i32 noundef %486, i32 noundef 1, i8 noundef zeroext %490, i32 noundef %494, i32 noundef 0) #6
  br label %program_pwl.exit

program_pwl.exit:                                 ; preds = %if.else103.i, %if.then93.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_power_on_regamma_lut(ptr nocapture noundef readonly %xfm, i1 noundef zeroext %power_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %DCFE_MEM_PWR_CTRL = getelementptr inbounds %struct.dce_transform_registers, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %DCFE_MEM_PWR_CTRL to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %DCFE_MEM_PWR_CTRL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %ctx12 = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %4 = ptrtoint ptr %ctx12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx12, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %xfm_shift = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %6 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfm_shift, align 4
  %DCP_REGAMMA_MEM_PWR_DIS = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %DCP_REGAMMA_MEM_PWR_DIS to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DCP_REGAMMA_MEM_PWR_DIS, align 1
  %xfm_mask = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %10 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfm_mask, align 8
  %DCP_REGAMMA_MEM_PWR_DIS3 = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %DCP_REGAMMA_MEM_PWR_DIS3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DCP_REGAMMA_MEM_PWR_DIS3, align 4
  %conv = zext i1 %power_on to i32
  %DCP_LUT_MEM_PWR_DIS = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 34
  %14 = ptrtoint ptr %DCP_LUT_MEM_PWR_DIS to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %DCP_LUT_MEM_PWR_DIS, align 1
  %conv6 = zext i8 %15 to i32
  %DCP_LUT_MEM_PWR_DIS8 = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 34
  %16 = ptrtoint ptr %DCP_LUT_MEM_PWR_DIS8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DCP_LUT_MEM_PWR_DIS8, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %3, i32 noundef 2, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %conv, i32 noundef %conv6, i32 noundef %17, i32 noundef %conv) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %DCFE_MEM_LIGHT_SLEEP_CNTL = getelementptr inbounds %struct.dce_transform_registers, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %DCFE_MEM_LIGHT_SLEEP_CNTL to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DCFE_MEM_LIGHT_SLEEP_CNTL, align 4
  %xfm_shift14 = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %20 = ptrtoint ptr %xfm_shift14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xfm_shift14, align 4
  %REGAMMA_LUT_LIGHT_SLEEP_DIS = getelementptr inbounds %struct.dce_transform_shift, ptr %21, i32 0, i32 35
  %22 = ptrtoint ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS, align 1
  %xfm_mask15 = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %24 = ptrtoint ptr %xfm_mask15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xfm_mask15, align 8
  %REGAMMA_LUT_LIGHT_SLEEP_DIS16 = getelementptr inbounds %struct.dce_transform_mask, ptr %25, i32 0, i32 35
  %26 = ptrtoint ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %REGAMMA_LUT_LIGHT_SLEEP_DIS16, align 4
  %conv18 = zext i1 %power_on to i32
  %DCP_LUT_LIGHT_SLEEP_DIS = getelementptr inbounds %struct.dce_transform_shift, ptr %21, i32 0, i32 36
  %28 = ptrtoint ptr %DCP_LUT_LIGHT_SLEEP_DIS to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %DCP_LUT_LIGHT_SLEEP_DIS, align 1
  %conv20 = zext i8 %29 to i32
  %DCP_LUT_LIGHT_SLEEP_DIS22 = getelementptr inbounds %struct.dce_transform_mask, ptr %25, i32 0, i32 36
  %30 = ptrtoint ptr %DCP_LUT_LIGHT_SLEEP_DIS22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %DCP_LUT_LIGHT_SLEEP_DIS22, align 4
  %call25 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %19, i32 noundef 2, i8 noundef zeroext %23, i32 noundef %27, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %31, i32 noundef %conv18) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_opp_set_regamma_mode(ptr nocapture noundef readonly %xfm, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %REGAMMA_CONTROL = getelementptr inbounds %struct.dce_transform_registers, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %REGAMMA_CONTROL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %REGAMMA_CONTROL, align 4
  %xfm_shift = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %6 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfm_shift, align 4
  %GRPH_REGAMMA_MODE = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 50
  %8 = ptrtoint ptr %GRPH_REGAMMA_MODE to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %GRPH_REGAMMA_MODE, align 1
  %xfm_mask = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %10 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfm_mask, align 8
  %GRPH_REGAMMA_MODE1 = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 50
  %12 = ptrtoint ptr %GRPH_REGAMMA_MODE1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %GRPH_REGAMMA_MODE1, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %mode) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce_transform_construct(ptr nocapture noundef writeonly %xfm_dce, ptr noundef %ctx, i32 noundef %inst, ptr noundef %regs, ptr noundef %xfm_shift, ptr noundef %xfm_mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1, align 4
  %inst3 = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 2
  %1 = ptrtoint ptr %inst3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inst, ptr %inst3, align 8
  %2 = ptrtoint ptr %xfm_dce to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce_transform_funcs, ptr %xfm_dce, align 8
  %regs5 = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 1
  %3 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regs, ptr %regs5, align 8
  %xfm_shift6 = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 2
  %4 = ptrtoint ptr %xfm_shift6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %xfm_shift, ptr %xfm_shift6, align 4
  %xfm_mask7 = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 3
  %5 = ptrtoint ptr %xfm_mask7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xfm_mask, ptr %xfm_mask7, align 8
  %prescaler_on = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 11
  %6 = ptrtoint ptr %prescaler_on to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %prescaler_on, align 8
  %lb_pixel_depth_supported = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 8
  %7 = ptrtoint ptr %lb_pixel_depth_supported to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15, ptr %lb_pixel_depth_supported, align 4
  %lb_bits_per_entry = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 10
  %8 = ptrtoint ptr %lb_bits_per_entry to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 144, ptr %lb_bits_per_entry, align 4
  %lb_memory_size = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 9
  %9 = ptrtoint ptr %lb_memory_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1712, ptr %lb_memory_size, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce60_transform_construct(ptr nocapture noundef writeonly %xfm_dce, ptr noundef %ctx, i32 noundef %inst, ptr noundef %regs, ptr noundef %xfm_shift, ptr noundef %xfm_mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1, align 4
  %inst3 = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 2
  %1 = ptrtoint ptr %inst3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inst, ptr %inst3, align 8
  %2 = ptrtoint ptr %xfm_dce to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dce60_transform_funcs, ptr %xfm_dce, align 8
  %regs5 = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 1
  %3 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regs, ptr %regs5, align 8
  %xfm_shift6 = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 2
  %4 = ptrtoint ptr %xfm_shift6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %xfm_shift, ptr %xfm_shift6, align 4
  %xfm_mask7 = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 3
  %5 = ptrtoint ptr %xfm_mask7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xfm_mask, ptr %xfm_mask7, align 8
  %prescaler_on = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 11
  %6 = ptrtoint ptr %prescaler_on to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %prescaler_on, align 8
  %lb_pixel_depth_supported = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 8
  %7 = ptrtoint ptr %lb_pixel_depth_supported to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15, ptr %lb_pixel_depth_supported, align 4
  %lb_bits_per_entry = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 10
  %8 = ptrtoint ptr %lb_bits_per_entry to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 144, ptr %lb_bits_per_entry, align 4
  %lb_memory_size = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 9
  %9 = ptrtoint ptr %lb_memory_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1712, ptr %lb_memory_size, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dce_transform_reset(ptr nocapture noundef writeonly %xfm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_h = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 5
  %0 = ptrtoint ptr %filter_h to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %filter_h, align 8
  %filter_v = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 4
  %1 = ptrtoint ptr %filter_v to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %filter_v, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_transform_set_scaler(ptr noundef %xfm, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %tmp.i = alloca %struct.fixed31_32, align 8
  %tmp18.i = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %LB_MEMORY_CTRL = getelementptr inbounds %struct.dce_transform_registers, ptr %3, i32 0, i32 62
  %4 = ptrtoint ptr %LB_MEMORY_CTRL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %LB_MEMORY_CTRL, align 4
  %xfm_shift = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %6 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfm_shift, align 4
  %LB_MEMORY_CONFIG = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 86
  %8 = ptrtoint ptr %LB_MEMORY_CONFIG to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %LB_MEMORY_CONFIG, align 1
  %xfm_mask = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %10 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfm_mask, align 8
  %LB_MEMORY_CONFIG1 = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 86
  %12 = ptrtoint ptr %LB_MEMORY_CONFIG1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %LB_MEMORY_CONFIG1, align 4
  %LB_MEMORY_SIZE = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 87
  %14 = ptrtoint ptr %LB_MEMORY_SIZE to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %LB_MEMORY_SIZE, align 1
  %conv = zext i8 %15 to i32
  %LB_MEMORY_SIZE4 = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 87
  %16 = ptrtoint ptr %LB_MEMORY_SIZE4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %LB_MEMORY_SIZE4, align 4
  %lb_memory_size = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 9
  %18 = ptrtoint ptr %lb_memory_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lb_memory_size, align 8
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0, i32 noundef %conv, i32 noundef %17, i32 noundef %19) #6
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %SCL_F_SHARP_CONTROL = getelementptr inbounds %struct.dce_transform_registers, ptr %23, i32 0, i32 64
  %24 = ptrtoint ptr %SCL_F_SHARP_CONTROL to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %SCL_F_SHARP_CONTROL, align 4
  tail call void @dm_write_reg_func(ptr noundef %21, i32 noundef %25, i32 noundef 0, ptr noundef nonnull @__func__.dce_transform_set_scaler) #6
  tail call fastcc void @program_overscan(ptr noundef %xfm, ptr noundef %data)
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %SCL_BYPASS_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %29, i32 0, i32 42
  %30 = ptrtoint ptr %SCL_BYPASS_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %SCL_BYPASS_CONTROL.i, align 4
  %32 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xfm_shift, align 4
  %SCL_BYPASS_MODE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %33, i32 0, i32 52
  %34 = ptrtoint ptr %SCL_BYPASS_MODE.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %SCL_BYPASS_MODE.i, align 1
  %36 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xfm_mask, align 8
  %SCL_BYPASS_MODE1.i = getelementptr inbounds %struct.dce_transform_mask, ptr %37, i32 0, i32 52
  %38 = ptrtoint ptr %SCL_BYPASS_MODE1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %SCL_BYPASS_MODE1.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %27, i32 noundef %31, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %35, i32 noundef %39, i32 noundef 0) #6
  %taps.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 2
  %h_taps.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %h_taps.i, align 4
  %42 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %taps.i, align 8
  %add.i = add i32 %43, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 3
  br i1 %cmp.i, label %if.then.i, label %if.end27.i

if.then.i:                                        ; preds = %entry
  %44 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xfm_mask, align 8
  %SCL_PSCL_EN.i = getelementptr inbounds %struct.dce_transform_mask, ptr %45, i32 0, i32 53
  %46 = ptrtoint ptr %SCL_PSCL_EN.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %SCL_PSCL_EN.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp4.not.i = icmp eq i32 %47, 0
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx, align 4
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 8
  %SCL_MODE21.i = getelementptr inbounds %struct.dce_transform_registers, ptr %51, i32 0, i32 39
  %52 = ptrtoint ptr %SCL_MODE21.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %SCL_MODE21.i, align 4
  %54 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xfm_shift, align 4
  %SCL_MODE23.i = getelementptr inbounds %struct.dce_transform_shift, ptr %55, i32 0, i32 51
  %56 = ptrtoint ptr %SCL_MODE23.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %SCL_MODE23.i, align 1
  %SCL_MODE25.i = getelementptr inbounds %struct.dce_transform_mask, ptr %45, i32 0, i32 51
  %58 = ptrtoint ptr %SCL_MODE25.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %SCL_MODE25.i, align 4
  br i1 %cmp4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %SCL_PSCL_EN14.i = getelementptr inbounds %struct.dce_transform_shift, ptr %55, i32 0, i32 53
  %60 = ptrtoint ptr %SCL_PSCL_EN14.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %SCL_PSCL_EN14.i, align 1
  %conv.i = zext i8 %61 to i32
  %call17.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %49, i32 noundef %53, i32 noundef 2, i8 noundef zeroext %57, i32 noundef %59, i32 noundef 0, i32 noundef %conv.i, i32 noundef %47, i32 noundef 0) #6
  br label %if.end62.critedge

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %49, i32 noundef %53, i32 noundef 1, i8 noundef zeroext %57, i32 noundef %59, i32 noundef 0) #6
  br label %if.end62.critedge

if.end27.i:                                       ; preds = %entry
  %62 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx, align 4
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 8
  %SCL_TAP_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %65, i32 0, i32 40
  %66 = ptrtoint ptr %SCL_TAP_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %SCL_TAP_CONTROL.i, align 4
  %68 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xfm_shift, align 4
  %SCL_H_NUM_OF_TAPS.i = getelementptr inbounds %struct.dce_transform_shift, ptr %69, i32 0, i32 54
  %70 = ptrtoint ptr %SCL_H_NUM_OF_TAPS.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %SCL_H_NUM_OF_TAPS.i, align 1
  %72 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xfm_mask, align 8
  %SCL_H_NUM_OF_TAPS33.i = getelementptr inbounds %struct.dce_transform_mask, ptr %73, i32 0, i32 54
  %74 = ptrtoint ptr %SCL_H_NUM_OF_TAPS33.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %SCL_H_NUM_OF_TAPS33.i, align 4
  %sub.i = add i32 %41, -1
  %SCL_V_NUM_OF_TAPS.i = getelementptr inbounds %struct.dce_transform_shift, ptr %69, i32 0, i32 55
  %76 = ptrtoint ptr %SCL_V_NUM_OF_TAPS.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %SCL_V_NUM_OF_TAPS.i, align 1
  %conv37.i = zext i8 %77 to i32
  %SCL_V_NUM_OF_TAPS39.i = getelementptr inbounds %struct.dce_transform_mask, ptr %73, i32 0, i32 55
  %78 = ptrtoint ptr %SCL_V_NUM_OF_TAPS39.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %SCL_V_NUM_OF_TAPS39.i, align 4
  %sub42.i = add i32 %43, -1
  %call43.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %63, i32 noundef %67, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %71, i32 noundef %75, i32 noundef %sub.i, i32 noundef %conv37.i, i32 noundef %79, i32 noundef %sub42.i) #6
  %format.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 9
  %80 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %format.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %81)
  %cmp44.i = icmp ult i32 %81, 7
  %82 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ctx, align 4
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 8
  %SCL_MODE50.i = getelementptr inbounds %struct.dce_transform_registers, ptr %85, i32 0, i32 39
  %86 = ptrtoint ptr %SCL_MODE50.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %SCL_MODE50.i, align 4
  %88 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %xfm_shift, align 4
  %SCL_MODE52.i = getelementptr inbounds %struct.dce_transform_shift, ptr %89, i32 0, i32 51
  %90 = ptrtoint ptr %SCL_MODE52.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %SCL_MODE52.i, align 1
  %92 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xfm_mask, align 8
  %SCL_MODE54.i = getelementptr inbounds %struct.dce_transform_mask, ptr %93, i32 0, i32 51
  %94 = ptrtoint ptr %SCL_MODE54.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %SCL_MODE54.i, align 4
  %..i = select i1 %cmp44.i, i32 1, i32 2
  %call65.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %83, i32 noundef %87, i32 noundef 1, i8 noundef zeroext %91, i32 noundef %95, i32 noundef %..i) #6
  %96 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %xfm_mask, align 8
  %SCL_PSCL_EN68.i = getelementptr inbounds %struct.dce_transform_mask, ptr %97, i32 0, i32 53
  %98 = ptrtoint ptr %SCL_PSCL_EN68.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %SCL_PSCL_EN68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp69.not.i = icmp eq i32 %99, 0
  br i1 %cmp69.not.i, label %if.end27.i.if.then_crit_edge, label %if.then71.i

if.end27.i.if.then_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then71.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctx, align 4
  %102 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs, align 8
  %SCL_MODE75.i = getelementptr inbounds %struct.dce_transform_registers, ptr %103, i32 0, i32 39
  %104 = ptrtoint ptr %SCL_MODE75.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %SCL_MODE75.i, align 4
  %106 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %xfm_shift, align 4
  %SCL_PSCL_EN77.i = getelementptr inbounds %struct.dce_transform_shift, ptr %107, i32 0, i32 53
  %108 = ptrtoint ptr %SCL_PSCL_EN77.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %SCL_PSCL_EN77.i, align 1
  %call80.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %101, i32 noundef %105, i32 noundef 1, i8 noundef zeroext %109, i32 noundef %99, i32 noundef 1) #6
  br label %if.then

if.then:                                          ; preds = %if.then71.i, %if.end27.i.if.then_crit_edge
  %110 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctx, align 4
  %112 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs, align 8
  %SCL_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %113, i32 0, i32 41
  %114 = ptrtoint ptr %SCL_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %SCL_CONTROL.i, align 4
  %116 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %xfm_shift, align 4
  %SCL_BOUNDARY_MODE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %117, i32 0, i32 56
  %118 = ptrtoint ptr %SCL_BOUNDARY_MODE.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %SCL_BOUNDARY_MODE.i, align 1
  %120 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %xfm_mask, align 8
  %SCL_BOUNDARY_MODE87.i = getelementptr inbounds %struct.dce_transform_mask, ptr %121, i32 0, i32 56
  %122 = ptrtoint ptr %SCL_BOUNDARY_MODE87.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %SCL_BOUNDARY_MODE87.i, align 4
  %call88.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %111, i32 noundef %115, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %119, i32 noundef %123, i32 noundef 1) #6
  %ratios.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 6
  %124 = ptrtoint ptr %ratios.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %.unpack.i = load i64, ptr %ratios.i, align 8
  %125 = insertvalue [1 x i64] undef, i64 %.unpack.i, 0
  %call.i131 = tail call i32 @dc_fixpt_u2d19([1 x i64] %125) #6
  %shl.i = shl i32 %call.i131, 5
  %vert.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 6, i32 1
  %126 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %.unpack1.i = load i64, ptr %vert.i, align 8
  %127 = insertvalue [1 x i64] undef, i64 %.unpack1.i, 0
  %call3.i = tail call i32 @dc_fixpt_u2d19([1 x i64] %127) #6
  %shl4.i = shl i32 %call3.i, 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %128 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %h_taps.i, align 4
  %add.i134 = add i32 %129, 1
  %conv1.i.i = zext i32 %add.i134 to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  %130 = ptrtoint ptr %ratios.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %.unpack2.i = load i64, ptr %ratios.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack2.i)
  %cmp.i.i = icmp slt i64 %.unpack2.i, 0
  %sub.i.i = sub i64 9223372036854775807, %.unpack2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %shl.i.i)
  %cmp4.not.i.i = icmp slt i64 %sub.i.i, %shl.i.i
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp4.not.i.i
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.then.dc_fixpt_add.exit.i_crit_edge

if.then.dc_fixpt_add.exit.i_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dc_fixpt_add.exit.i

lor.rhs.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack2.i)
  %cmp6.i.i = icmp sgt i64 %.unpack2.i, -1
  %sub8.i.i = sub i64 -9223372036854775808, %.unpack2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i, i64 %shl.i.i)
  %cmp10.i.i = icmp sgt i64 %sub8.i.i, %shl.i.i
  %or.cond67.i.i = select i1 %cmp6.i.i, i1 true, i1 %cmp10.i.i
  br i1 %or.cond67.i.i, label %land.rhs13.i.i, label %lor.rhs.i.i.dc_fixpt_add.exit.i_crit_edge

lor.rhs.i.i.dc_fixpt_add.exit.i_crit_edge:        ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dc_fixpt_add.exit.i

land.rhs13.i.i:                                   ; preds = %lor.rhs.i.i
  %.b65.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !77
  br i1 %.b65.i.i, label %land.rhs13.i.i.if.then50.i.i_crit_edge, label %if.then.i.i, !prof !75

land.rhs13.i.i.if.then50.i.i_crit_edge:           ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i.i

if.then.i.i:                                      ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !77
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 250, i32 noundef 9, ptr noundef null) #6, !noalias !77
  br label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.then.i.i, %land.rhs13.i.i.if.then50.i.i_crit_edge
  tail call void @kgdb_breakpoint() #6, !noalias !77
  br label %dc_fixpt_add.exit.i

dc_fixpt_add.exit.i:                              ; preds = %if.then50.i.i, %lor.rhs.i.i.dc_fixpt_add.exit.i_crit_edge, %if.then.dc_fixpt_add.exit.i_crit_edge
  %add.i.i = add i64 %shl.i.i, %.unpack2.i
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i, i64 noundef %add.i.i, i64 noundef 8589934592) #6
  %131 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %h_init.sroa.0.0.copyload.i = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  %.fca.0.insert55.i = insertvalue [1 x i64] poison, i64 %h_init.sroa.0.0.copyload.i, 0
  %132 = call i64 @llvm.abs.i64(i64 %h_init.sroa.0.0.copyload.i, i1 false) #6
  %extract12.i.i = lshr i64 %132, 32
  %extract.t13.i.i = trunc i64 %extract12.i.i to i32
  %sub7.i.i = sub i32 0, %extract.t13.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %h_init.sroa.0.0.copyload.i)
  %cmp414.i.i = icmp slt i64 %h_init.sroa.0.0.copyload.i, 0
  %retval.0.i.i = select i1 %cmp414.i.i, i32 %sub7.i.i, i32 %extract.t13.i.i
  %call15.i = call i32 @dc_fixpt_u0d19([1 x i64] %.fca.0.insert55.i) #6
  %shl16.i = shl i32 %call15.i, 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp18.i) #6
  %133 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %taps.i, align 8
  %add24.i = add i32 %134, 1
  %conv1.i4.i = zext i32 %add24.i to i64
  %shl.i5.i = shl nuw i64 %conv1.i4.i, 32
  %135 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %.unpack3.i = load i64, ptr %vert.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack3.i)
  %cmp.i6.i = icmp slt i64 %.unpack3.i, 0
  %sub.i7.i = sub i64 9223372036854775807, %.unpack3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i7.i, i64 %shl.i5.i)
  %cmp4.not.i8.i = icmp slt i64 %sub.i7.i, %shl.i5.i
  %or.cond.i9.i = select i1 %cmp.i6.i, i1 true, i1 %cmp4.not.i8.i
  br i1 %or.cond.i9.i, label %lor.rhs.i14.i, label %dc_fixpt_add.exit.i.calculate_inits.exit_crit_edge

dc_fixpt_add.exit.i.calculate_inits.exit_crit_edge: ; preds = %dc_fixpt_add.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calculate_inits.exit

lor.rhs.i14.i:                                    ; preds = %dc_fixpt_add.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack3.i)
  %cmp6.i10.i = icmp sgt i64 %.unpack3.i, -1
  %sub8.i11.i = sub i64 -9223372036854775808, %.unpack3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i11.i, i64 %shl.i5.i)
  %cmp10.i12.i = icmp sgt i64 %sub8.i11.i, %shl.i5.i
  %or.cond67.i13.i = select i1 %cmp6.i10.i, i1 true, i1 %cmp10.i12.i
  br i1 %or.cond67.i13.i, label %land.rhs13.i16.i, label %lor.rhs.i14.i.calculate_inits.exit_crit_edge

lor.rhs.i14.i.calculate_inits.exit_crit_edge:     ; preds = %lor.rhs.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calculate_inits.exit

land.rhs13.i16.i:                                 ; preds = %lor.rhs.i14.i
  %.b65.i15.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !80
  br i1 %.b65.i15.i, label %land.rhs13.i16.i.if.then50.i18.i_crit_edge, label %if.then.i17.i, !prof !75

land.rhs13.i16.i.if.then50.i18.i_crit_edge:       ; preds = %land.rhs13.i16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i18.i

if.then.i17.i:                                    ; preds = %land.rhs13.i16.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !80
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 250, i32 noundef 9, ptr noundef null) #6, !noalias !80
  br label %if.then50.i18.i

if.then50.i18.i:                                  ; preds = %if.then.i17.i, %land.rhs13.i16.i.if.then50.i18.i_crit_edge
  call void @kgdb_breakpoint() #6, !noalias !80
  br label %calculate_inits.exit

calculate_inits.exit:                             ; preds = %if.then50.i18.i, %lor.rhs.i14.i.calculate_inits.exit_crit_edge, %dc_fixpt_add.exit.i.calculate_inits.exit_crit_edge
  %add.i19.i = add i64 %shl.i5.i, %.unpack3.i
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp18.i, i64 noundef %add.i19.i, i64 noundef 8589934592) #6
  %136 = ptrtoint ptr %tmp18.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %v_init.sroa.0.0.copyload.i = load i64, ptr %tmp18.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp18.i) #6
  %.fca.0.insert48.i = insertvalue [1 x i64] poison, i64 %v_init.sroa.0.0.copyload.i, 0
  %137 = call i64 @llvm.abs.i64(i64 %v_init.sroa.0.0.copyload.i, i1 false) #6
  %extract12.i21.i = lshr i64 %137, 32
  %extract.t13.i22.i = trunc i64 %extract12.i21.i to i32
  %sub7.i23.i = sub i32 0, %extract.t13.i22.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %v_init.sroa.0.0.copyload.i)
  %cmp414.i24.i = icmp slt i64 %v_init.sroa.0.0.copyload.i, 0
  %retval.0.i25.i = select i1 %cmp414.i24.i, i32 %sub7.i23.i, i32 %extract.t13.i22.i
  %call33.i = call i32 @dc_fixpt_u0d19([1 x i64] %.fca.0.insert48.i) #6
  %shl34.i = shl i32 %call33.i, 5
  %138 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ctx, align 4
  %140 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs, align 8
  %SCL_HORZ_FILTER_SCALE_RATIO.i = getelementptr inbounds %struct.dce_transform_registers, ptr %141, i32 0, i32 53
  %142 = ptrtoint ptr %SCL_HORZ_FILTER_SCALE_RATIO.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %SCL_HORZ_FILTER_SCALE_RATIO.i, align 4
  %144 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %xfm_shift, align 4
  %SCL_H_SCALE_RATIO.i = getelementptr inbounds %struct.dce_transform_shift, ptr %145, i32 0, i32 74
  %146 = ptrtoint ptr %SCL_H_SCALE_RATIO.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %SCL_H_SCALE_RATIO.i, align 1
  %148 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %xfm_mask, align 8
  %SCL_H_SCALE_RATIO1.i = getelementptr inbounds %struct.dce_transform_mask, ptr %149, i32 0, i32 74
  %150 = ptrtoint ptr %SCL_H_SCALE_RATIO1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %SCL_H_SCALE_RATIO1.i, align 4
  %call.i139 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %139, i32 noundef %143, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %147, i32 noundef %151, i32 noundef %shl.i) #6
  %152 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ctx, align 4
  %154 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs, align 8
  %SCL_VERT_FILTER_SCALE_RATIO.i = getelementptr inbounds %struct.dce_transform_registers, ptr %155, i32 0, i32 54
  %156 = ptrtoint ptr %SCL_VERT_FILTER_SCALE_RATIO.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %SCL_VERT_FILTER_SCALE_RATIO.i, align 4
  %158 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %xfm_shift, align 4
  %SCL_V_SCALE_RATIO.i = getelementptr inbounds %struct.dce_transform_shift, ptr %159, i32 0, i32 75
  %160 = ptrtoint ptr %SCL_V_SCALE_RATIO.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %SCL_V_SCALE_RATIO.i, align 1
  %162 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %xfm_mask, align 8
  %SCL_V_SCALE_RATIO7.i = getelementptr inbounds %struct.dce_transform_mask, ptr %163, i32 0, i32 75
  %164 = ptrtoint ptr %SCL_V_SCALE_RATIO7.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %SCL_V_SCALE_RATIO7.i, align 4
  %call8.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %153, i32 noundef %157, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %161, i32 noundef %165, i32 noundef %shl4.i) #6
  %166 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ctx, align 4
  %168 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs, align 8
  %SCL_HORZ_FILTER_INIT.i = getelementptr inbounds %struct.dce_transform_registers, ptr %169, i32 0, i32 55
  %170 = ptrtoint ptr %SCL_HORZ_FILTER_INIT.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %SCL_HORZ_FILTER_INIT.i, align 4
  %172 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %xfm_shift, align 4
  %SCL_H_INIT_INT.i = getelementptr inbounds %struct.dce_transform_shift, ptr %173, i32 0, i32 76
  %174 = ptrtoint ptr %SCL_H_INIT_INT.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %SCL_H_INIT_INT.i, align 1
  %176 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %xfm_mask, align 8
  %SCL_H_INIT_INT14.i = getelementptr inbounds %struct.dce_transform_mask, ptr %177, i32 0, i32 76
  %178 = ptrtoint ptr %SCL_H_INIT_INT14.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %SCL_H_INIT_INT14.i, align 4
  %SCL_H_INIT_FRAC.i = getelementptr inbounds %struct.dce_transform_shift, ptr %173, i32 0, i32 77
  %180 = ptrtoint ptr %SCL_H_INIT_FRAC.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %SCL_H_INIT_FRAC.i, align 1
  %conv.i141 = zext i8 %181 to i32
  %SCL_H_INIT_FRAC17.i = getelementptr inbounds %struct.dce_transform_mask, ptr %177, i32 0, i32 77
  %182 = ptrtoint ptr %SCL_H_INIT_FRAC17.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %SCL_H_INIT_FRAC17.i, align 4
  %call19.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %167, i32 noundef %171, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %175, i32 noundef %179, i32 noundef %retval.0.i.i, i32 noundef %conv.i141, i32 noundef %183, i32 noundef %shl16.i) #6
  %184 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ctx, align 4
  %186 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs, align 8
  %SCL_VERT_FILTER_INIT.i = getelementptr inbounds %struct.dce_transform_registers, ptr %187, i32 0, i32 58
  %188 = ptrtoint ptr %SCL_VERT_FILTER_INIT.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %SCL_VERT_FILTER_INIT.i, align 4
  %190 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %xfm_shift, align 4
  %SCL_V_INIT_INT.i = getelementptr inbounds %struct.dce_transform_shift, ptr %191, i32 0, i32 82
  %192 = ptrtoint ptr %SCL_V_INIT_INT.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %SCL_V_INIT_INT.i, align 1
  %194 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %xfm_mask, align 8
  %SCL_V_INIT_INT25.i = getelementptr inbounds %struct.dce_transform_mask, ptr %195, i32 0, i32 82
  %196 = ptrtoint ptr %SCL_V_INIT_INT25.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %SCL_V_INIT_INT25.i, align 4
  %SCL_V_INIT_FRAC.i = getelementptr inbounds %struct.dce_transform_shift, ptr %191, i32 0, i32 83
  %198 = ptrtoint ptr %SCL_V_INIT_FRAC.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %SCL_V_INIT_FRAC.i, align 1
  %conv28.i = zext i8 %199 to i32
  %SCL_V_INIT_FRAC30.i = getelementptr inbounds %struct.dce_transform_mask, ptr %195, i32 0, i32 83
  %200 = ptrtoint ptr %SCL_V_INIT_FRAC30.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %SCL_V_INIT_FRAC30.i, align 4
  %call33.i143 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %185, i32 noundef %189, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %193, i32 noundef %197, i32 noundef %retval.0.i25.i, i32 noundef %conv28.i, i32 noundef %201, i32 noundef %shl34.i) #6
  %202 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ctx, align 4
  %204 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs, align 8
  %SCL_AUTOMATIC_MODE_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %205, i32 0, i32 59
  %206 = ptrtoint ptr %SCL_AUTOMATIC_MODE_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %SCL_AUTOMATIC_MODE_CONTROL.i, align 4
  call void @dm_write_reg_func(ptr noundef %203, i32 noundef %207, i32 noundef 0, ptr noundef nonnull @__func__.program_scl_ratios_inits) #6
  %208 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %taps.i, align 8
  %210 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %.unpack = load i64, ptr %vert.i, align 8
  %211 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  %212 = zext i32 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %209, label %do.body.i [
    i32 4, label %if.then.i145
    i32 3, label %if.then3.i
    i32 2, label %if.then8.i
    i32 1, label %calculate_inits.exit.get_filter_coeffs_16p.exit_crit_edge
  ]

calculate_inits.exit.get_filter_coeffs_16p.exit_crit_edge: ; preds = %calculate_inits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_filter_coeffs_16p.exit

if.then.i145:                                     ; preds = %calculate_inits.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i144 = call ptr @get_filter_4tap_16p([1 x i64] %211) #6
  br label %get_filter_coeffs_16p.exit

if.then3.i:                                       ; preds = %calculate_inits.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call ptr @get_filter_3tap_16p([1 x i64] %211) #6
  br label %get_filter_coeffs_16p.exit

if.then8.i:                                       ; preds = %calculate_inits.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call ptr @get_filter_2tap_16p() #6
  br label %get_filter_coeffs_16p.exit

do.body.i:                                        ; preds = %calculate_inits.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_filter_coeffs_16p, i32 noundef 403) #6
  call void @kgdb_breakpoint() #6
  br label %get_filter_coeffs_16p.exit

get_filter_coeffs_16p.exit:                       ; preds = %do.body.i, %if.then8.i, %if.then3.i, %if.then.i145, %calculate_inits.exit.get_filter_coeffs_16p.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i144, %if.then.i145 ], [ %call5.i, %if.then3.i ], [ %call9.i, %if.then8.i ], [ null, %do.body.i ], [ null, %calculate_inits.exit.get_filter_coeffs_16p.exit_crit_edge ]
  %213 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %h_taps.i, align 4
  %215 = ptrtoint ptr %ratios.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %.unpack129 = load i64, ptr %ratios.i, align 8
  %216 = insertvalue [1 x i64] undef, i64 %.unpack129, 0
  %217 = zext i32 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %214, label %do.body.i152 [
    i32 4, label %if.then.i147
    i32 3, label %if.then3.i149
    i32 2, label %if.then8.i151
    i32 1, label %get_filter_coeffs_16p.exit.get_filter_coeffs_16p.exit154_crit_edge
  ]

get_filter_coeffs_16p.exit.get_filter_coeffs_16p.exit154_crit_edge: ; preds = %get_filter_coeffs_16p.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_filter_coeffs_16p.exit154

if.then.i147:                                     ; preds = %get_filter_coeffs_16p.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i146 = call ptr @get_filter_4tap_16p([1 x i64] %216) #6
  br label %get_filter_coeffs_16p.exit154

if.then3.i149:                                    ; preds = %get_filter_coeffs_16p.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i148 = call ptr @get_filter_3tap_16p([1 x i64] %216) #6
  br label %get_filter_coeffs_16p.exit154

if.then8.i151:                                    ; preds = %get_filter_coeffs_16p.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i150 = call ptr @get_filter_2tap_16p() #6
  br label %get_filter_coeffs_16p.exit154

do.body.i152:                                     ; preds = %get_filter_coeffs_16p.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_filter_coeffs_16p, i32 noundef 403) #6
  call void @kgdb_breakpoint() #6
  br label %get_filter_coeffs_16p.exit154

get_filter_coeffs_16p.exit154:                    ; preds = %do.body.i152, %if.then8.i151, %if.then3.i149, %if.then.i147, %get_filter_coeffs_16p.exit.get_filter_coeffs_16p.exit154_crit_edge
  %retval.0.i153 = phi ptr [ %call.i146, %if.then.i147 ], [ %call5.i148, %if.then3.i149 ], [ %call9.i150, %if.then8.i151 ], [ null, %do.body.i152 ], [ null, %get_filter_coeffs_16p.exit.get_filter_coeffs_16p.exit154_crit_edge ]
  %filter_v = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 4
  %218 = ptrtoint ptr %filter_v to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %filter_v, align 4
  %cmp.not = icmp eq ptr %retval.0.i, %219
  br i1 %cmp.not, label %lor.lhs.false, label %get_filter_coeffs_16p.exit154.if.then17_crit_edge

get_filter_coeffs_16p.exit154.if.then17_crit_edge: ; preds = %get_filter_coeffs_16p.exit154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

lor.lhs.false:                                    ; preds = %get_filter_coeffs_16p.exit154
  %filter_h = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 5
  %220 = ptrtoint ptr %filter_h to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %filter_h, align 8
  %cmp15.not = icmp eq ptr %retval.0.i153, %221
  br i1 %cmp15.not, label %if.end51, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %get_filter_coeffs_16p.exit154.if.then17_crit_edge
  %cmp19 = icmp eq ptr %219, null
  br i1 %cmp19, label %if.then21, label %if.then17.if.end_crit_edge

if.then17.if.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %222 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ctx, align 4
  %224 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs, align 8
  %SCL_VERT_FILTER_CONTROL = getelementptr inbounds %struct.dce_transform_registers, ptr %225, i32 0, i32 45
  %226 = ptrtoint ptr %SCL_VERT_FILTER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %SCL_VERT_FILTER_CONTROL, align 4
  %228 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %xfm_shift, align 4
  %SCL_V_2TAP_HARDCODE_COEF_EN = getelementptr inbounds %struct.dce_transform_shift, ptr %229, i32 0, i32 88
  %230 = ptrtoint ptr %SCL_V_2TAP_HARDCODE_COEF_EN to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %SCL_V_2TAP_HARDCODE_COEF_EN, align 1
  %232 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %xfm_mask, align 8
  %SCL_V_2TAP_HARDCODE_COEF_EN27 = getelementptr inbounds %struct.dce_transform_mask, ptr %233, i32 0, i32 88
  %234 = ptrtoint ptr %SCL_V_2TAP_HARDCODE_COEF_EN27 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %SCL_V_2TAP_HARDCODE_COEF_EN27, align 4
  %call28 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %223, i32 noundef %227, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %231, i32 noundef %235, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then17.if.end_crit_edge
  %236 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %taps.i, align 8
  call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %237, ptr noundef %retval.0.i, i32 noundef 0)
  %238 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %taps.i, align 8
  call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %239, ptr noundef %retval.0.i, i32 noundef 4)
  %filter_h33 = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 5
  %240 = ptrtoint ptr %filter_h33 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %filter_h33, align 8
  %cmp34 = icmp eq ptr %241, null
  br i1 %cmp34, label %if.then36, label %if.end.if.end44_crit_edge

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %242 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ctx, align 4
  %244 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs, align 8
  %SCL_HORZ_FILTER_CONTROL = getelementptr inbounds %struct.dce_transform_registers, ptr %245, i32 0, i32 46
  %246 = ptrtoint ptr %SCL_HORZ_FILTER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %SCL_HORZ_FILTER_CONTROL, align 4
  %248 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %xfm_shift, align 4
  %SCL_H_2TAP_HARDCODE_COEF_EN = getelementptr inbounds %struct.dce_transform_shift, ptr %249, i32 0, i32 89
  %250 = ptrtoint ptr %SCL_H_2TAP_HARDCODE_COEF_EN to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %SCL_H_2TAP_HARDCODE_COEF_EN, align 1
  %252 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %xfm_mask, align 8
  %SCL_H_2TAP_HARDCODE_COEF_EN42 = getelementptr inbounds %struct.dce_transform_mask, ptr %253, i32 0, i32 89
  %254 = ptrtoint ptr %SCL_H_2TAP_HARDCODE_COEF_EN42 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %SCL_H_2TAP_HARDCODE_COEF_EN42, align 4
  %call43 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %243, i32 noundef %247, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %251, i32 noundef %255, i32 noundef 0) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.end.if.end44_crit_edge
  %256 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %h_taps.i, align 4
  call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %257, ptr noundef %retval.0.i153, i32 noundef 2)
  %258 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %h_taps.i, align 4
  call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %259, ptr noundef %retval.0.i153, i32 noundef 5)
  %260 = ptrtoint ptr %filter_v to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %retval.0.i, ptr %filter_v, align 4
  %261 = ptrtoint ptr %filter_h33 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %retval.0.i153, ptr %filter_h33, align 8
  %viewport.c130 = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3
  %262 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ctx, align 4
  %264 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %regs, align 8
  %VIEWPORT_START.i = getelementptr inbounds %struct.dce_transform_registers, ptr %265, i32 0, i32 51
  %266 = ptrtoint ptr %VIEWPORT_START.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %VIEWPORT_START.i, align 4
  %268 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %xfm_shift, align 4
  %VIEWPORT_X_START.i = getelementptr inbounds %struct.dce_transform_shift, ptr %269, i32 0, i32 70
  %270 = ptrtoint ptr %VIEWPORT_X_START.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %VIEWPORT_X_START.i, align 1
  %272 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %xfm_mask, align 8
  %VIEWPORT_X_START1.i = getelementptr inbounds %struct.dce_transform_mask, ptr %273, i32 0, i32 70
  %274 = ptrtoint ptr %VIEWPORT_X_START1.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %VIEWPORT_X_START1.i, align 4
  %276 = ptrtoint ptr %viewport.c130 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %viewport.c130, align 4
  %VIEWPORT_Y_START.i = getelementptr inbounds %struct.dce_transform_shift, ptr %269, i32 0, i32 71
  %278 = ptrtoint ptr %VIEWPORT_Y_START.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %VIEWPORT_Y_START.i, align 1
  %conv.i159 = zext i8 %279 to i32
  %VIEWPORT_Y_START4.i = getelementptr inbounds %struct.dce_transform_mask, ptr %273, i32 0, i32 71
  %280 = ptrtoint ptr %VIEWPORT_Y_START4.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %VIEWPORT_Y_START4.i, align 4
  %y.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 1
  %282 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %y.i, align 4
  %call.i160 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %263, i32 noundef %267, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %271, i32 noundef %275, i32 noundef %277, i32 noundef %conv.i159, i32 noundef %281, i32 noundef %283) #6
  %284 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %ctx, align 4
  %286 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %regs, align 8
  %VIEWPORT_SIZE.i = getelementptr inbounds %struct.dce_transform_registers, ptr %287, i32 0, i32 52
  %288 = ptrtoint ptr %VIEWPORT_SIZE.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %VIEWPORT_SIZE.i, align 4
  %290 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %xfm_shift, align 4
  %VIEWPORT_HEIGHT.i = getelementptr inbounds %struct.dce_transform_shift, ptr %291, i32 0, i32 72
  %292 = ptrtoint ptr %VIEWPORT_HEIGHT.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %VIEWPORT_HEIGHT.i, align 1
  %294 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %xfm_mask, align 8
  %VIEWPORT_HEIGHT10.i = getelementptr inbounds %struct.dce_transform_mask, ptr %295, i32 0, i32 72
  %296 = ptrtoint ptr %VIEWPORT_HEIGHT10.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %VIEWPORT_HEIGHT10.i, align 4
  %height.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 3
  %298 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %height.i, align 4
  %VIEWPORT_WIDTH.i = getelementptr inbounds %struct.dce_transform_shift, ptr %291, i32 0, i32 73
  %300 = ptrtoint ptr %VIEWPORT_WIDTH.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %VIEWPORT_WIDTH.i, align 1
  %conv12.i = zext i8 %301 to i32
  %VIEWPORT_WIDTH14.i = getelementptr inbounds %struct.dce_transform_mask, ptr %295, i32 0, i32 73
  %302 = ptrtoint ptr %VIEWPORT_WIDTH14.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %VIEWPORT_WIDTH14.i, align 4
  %width.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 2
  %304 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %width.i, align 4
  %call15.i161 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %285, i32 noundef %289, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %293, i32 noundef %297, i32 noundef %299, i32 noundef %conv12.i, i32 noundef %303, i32 noundef %305) #6
  %306 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %ctx, align 4
  %308 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %regs, align 8
  %SCL_UPDATE = getelementptr inbounds %struct.dce_transform_registers, ptr %309, i32 0, i32 63
  %310 = ptrtoint ptr %SCL_UPDATE to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %SCL_UPDATE, align 4
  %312 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %xfm_shift, align 4
  %SCL_COEF_UPDATE_COMPLETE = getelementptr inbounds %struct.dce_transform_shift, ptr %313, i32 0, i32 92
  %314 = ptrtoint ptr %SCL_COEF_UPDATE_COMPLETE to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %SCL_COEF_UPDATE_COMPLETE, align 1
  %316 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %xfm_mask, align 8
  %SCL_COEF_UPDATE_COMPLETE60 = getelementptr inbounds %struct.dce_transform_mask, ptr %317, i32 0, i32 92
  %318 = ptrtoint ptr %SCL_COEF_UPDATE_COMPLETE60 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %SCL_COEF_UPDATE_COMPLETE60, align 4
  %call61 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %307, i32 noundef %311, i32 noundef 1, i8 noundef zeroext %315, i32 noundef %319, i32 noundef 1) #6
  br label %if.end62

if.end51:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %viewport = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3
  %320 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ctx, align 4
  %322 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %regs, align 8
  %VIEWPORT_START.i164 = getelementptr inbounds %struct.dce_transform_registers, ptr %323, i32 0, i32 51
  %324 = ptrtoint ptr %VIEWPORT_START.i164 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %VIEWPORT_START.i164, align 4
  %326 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %xfm_shift, align 4
  %VIEWPORT_X_START.i166 = getelementptr inbounds %struct.dce_transform_shift, ptr %327, i32 0, i32 70
  %328 = ptrtoint ptr %VIEWPORT_X_START.i166 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %VIEWPORT_X_START.i166, align 1
  %330 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %xfm_mask, align 8
  %VIEWPORT_X_START1.i168 = getelementptr inbounds %struct.dce_transform_mask, ptr %331, i32 0, i32 70
  %332 = ptrtoint ptr %VIEWPORT_X_START1.i168 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %VIEWPORT_X_START1.i168, align 4
  %334 = ptrtoint ptr %viewport to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %viewport, align 4
  %VIEWPORT_Y_START.i169 = getelementptr inbounds %struct.dce_transform_shift, ptr %327, i32 0, i32 71
  %336 = ptrtoint ptr %VIEWPORT_Y_START.i169 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %VIEWPORT_Y_START.i169, align 1
  %conv.i170 = zext i8 %337 to i32
  %VIEWPORT_Y_START4.i171 = getelementptr inbounds %struct.dce_transform_mask, ptr %331, i32 0, i32 71
  %338 = ptrtoint ptr %VIEWPORT_Y_START4.i171 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %VIEWPORT_Y_START4.i171, align 4
  %y.i172 = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 1
  %340 = ptrtoint ptr %y.i172 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %y.i172, align 4
  %call.i173 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %321, i32 noundef %325, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %329, i32 noundef %333, i32 noundef %335, i32 noundef %conv.i170, i32 noundef %339, i32 noundef %341) #6
  %342 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %ctx, align 4
  %344 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %regs, align 8
  %VIEWPORT_SIZE.i174 = getelementptr inbounds %struct.dce_transform_registers, ptr %345, i32 0, i32 52
  %346 = ptrtoint ptr %VIEWPORT_SIZE.i174 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %VIEWPORT_SIZE.i174, align 4
  %348 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %xfm_shift, align 4
  %VIEWPORT_HEIGHT.i175 = getelementptr inbounds %struct.dce_transform_shift, ptr %349, i32 0, i32 72
  %350 = ptrtoint ptr %VIEWPORT_HEIGHT.i175 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %VIEWPORT_HEIGHT.i175, align 1
  %352 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %xfm_mask, align 8
  %VIEWPORT_HEIGHT10.i176 = getelementptr inbounds %struct.dce_transform_mask, ptr %353, i32 0, i32 72
  %354 = ptrtoint ptr %VIEWPORT_HEIGHT10.i176 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %VIEWPORT_HEIGHT10.i176, align 4
  %height.i177 = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 3
  %356 = ptrtoint ptr %height.i177 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %height.i177, align 4
  %VIEWPORT_WIDTH.i178 = getelementptr inbounds %struct.dce_transform_shift, ptr %349, i32 0, i32 73
  %358 = ptrtoint ptr %VIEWPORT_WIDTH.i178 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %VIEWPORT_WIDTH.i178, align 1
  %conv12.i179 = zext i8 %359 to i32
  %VIEWPORT_WIDTH14.i180 = getelementptr inbounds %struct.dce_transform_mask, ptr %353, i32 0, i32 73
  %360 = ptrtoint ptr %VIEWPORT_WIDTH14.i180 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %VIEWPORT_WIDTH14.i180, align 4
  %width.i181 = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 2
  %362 = ptrtoint ptr %width.i181 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %width.i181, align 4
  %call15.i182 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %343, i32 noundef %347, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %351, i32 noundef %355, i32 noundef %357, i32 noundef %conv12.i179, i32 noundef %361, i32 noundef %363) #6
  br label %if.end62

if.end62.critedge:                                ; preds = %if.else.i, %if.then5.i
  %viewport.c = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3
  %364 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %ctx, align 4
  %366 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %regs, align 8
  %VIEWPORT_START.i185 = getelementptr inbounds %struct.dce_transform_registers, ptr %367, i32 0, i32 51
  %368 = ptrtoint ptr %VIEWPORT_START.i185 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %VIEWPORT_START.i185, align 4
  %370 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %xfm_shift, align 4
  %VIEWPORT_X_START.i187 = getelementptr inbounds %struct.dce_transform_shift, ptr %371, i32 0, i32 70
  %372 = ptrtoint ptr %VIEWPORT_X_START.i187 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %VIEWPORT_X_START.i187, align 1
  %374 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %xfm_mask, align 8
  %VIEWPORT_X_START1.i189 = getelementptr inbounds %struct.dce_transform_mask, ptr %375, i32 0, i32 70
  %376 = ptrtoint ptr %VIEWPORT_X_START1.i189 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %VIEWPORT_X_START1.i189, align 4
  %378 = ptrtoint ptr %viewport.c to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %viewport.c, align 4
  %VIEWPORT_Y_START.i190 = getelementptr inbounds %struct.dce_transform_shift, ptr %371, i32 0, i32 71
  %380 = ptrtoint ptr %VIEWPORT_Y_START.i190 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %VIEWPORT_Y_START.i190, align 1
  %conv.i191 = zext i8 %381 to i32
  %VIEWPORT_Y_START4.i192 = getelementptr inbounds %struct.dce_transform_mask, ptr %375, i32 0, i32 71
  %382 = ptrtoint ptr %VIEWPORT_Y_START4.i192 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %VIEWPORT_Y_START4.i192, align 4
  %y.i193 = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 1
  %384 = ptrtoint ptr %y.i193 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %y.i193, align 4
  %call.i194 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %365, i32 noundef %369, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %373, i32 noundef %377, i32 noundef %379, i32 noundef %conv.i191, i32 noundef %383, i32 noundef %385) #6
  %386 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %ctx, align 4
  %388 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %regs, align 8
  %VIEWPORT_SIZE.i195 = getelementptr inbounds %struct.dce_transform_registers, ptr %389, i32 0, i32 52
  %390 = ptrtoint ptr %VIEWPORT_SIZE.i195 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %VIEWPORT_SIZE.i195, align 4
  %392 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %xfm_shift, align 4
  %VIEWPORT_HEIGHT.i196 = getelementptr inbounds %struct.dce_transform_shift, ptr %393, i32 0, i32 72
  %394 = ptrtoint ptr %VIEWPORT_HEIGHT.i196 to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %VIEWPORT_HEIGHT.i196, align 1
  %396 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %xfm_mask, align 8
  %VIEWPORT_HEIGHT10.i197 = getelementptr inbounds %struct.dce_transform_mask, ptr %397, i32 0, i32 72
  %398 = ptrtoint ptr %VIEWPORT_HEIGHT10.i197 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %VIEWPORT_HEIGHT10.i197, align 4
  %height.i198 = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 3
  %400 = ptrtoint ptr %height.i198 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %height.i198, align 4
  %VIEWPORT_WIDTH.i199 = getelementptr inbounds %struct.dce_transform_shift, ptr %393, i32 0, i32 73
  %402 = ptrtoint ptr %VIEWPORT_WIDTH.i199 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %VIEWPORT_WIDTH.i199, align 1
  %conv12.i200 = zext i8 %403 to i32
  %VIEWPORT_WIDTH14.i201 = getelementptr inbounds %struct.dce_transform_mask, ptr %397, i32 0, i32 73
  %404 = ptrtoint ptr %VIEWPORT_WIDTH14.i201 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %VIEWPORT_WIDTH14.i201, align 4
  %width.i202 = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 2
  %406 = ptrtoint ptr %width.i202 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %width.i202, align 4
  %call15.i203 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %387, i32 noundef %391, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %395, i32 noundef %399, i32 noundef %401, i32 noundef %conv12.i200, i32 noundef %405, i32 noundef %407) #6
  br label %if.end62

if.end62:                                         ; preds = %if.end62.critedge, %if.end51, %if.end44
  %408 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ctx, align 4
  %410 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %regs, align 8
  %LB_DATA_FORMAT = getelementptr inbounds %struct.dce_transform_registers, ptr %411, i32 0, i32 1
  %412 = ptrtoint ptr %LB_DATA_FORMAT to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %LB_DATA_FORMAT, align 4
  %414 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %xfm_shift, align 4
  %ALPHA_EN = getelementptr inbounds %struct.dce_transform_shift, ptr %415, i32 0, i32 93
  %416 = ptrtoint ptr %ALPHA_EN to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %ALPHA_EN, align 1
  %418 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %xfm_mask, align 8
  %ALPHA_EN68 = getelementptr inbounds %struct.dce_transform_mask, ptr %419, i32 0, i32 93
  %420 = ptrtoint ptr %ALPHA_EN68 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %ALPHA_EN68, align 4
  %lb_params = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 10
  %422 = ptrtoint ptr %lb_params to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %lb_params, align 4, !range !74
  %424 = zext i8 %423 to i32
  %call71 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %409, i32 noundef %413, i32 noundef 1, i8 noundef zeroext %417, i32 noundef %421, i32 noundef %424) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_transform_set_pixel_storage_depth(ptr nocapture noundef readonly %xfm, i32 noundef %depth, ptr nocapture noundef readonly %bit_depth_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %depth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.hole_check, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %entry.sw.default_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce_transform_set_pixel_storage_depth, i32 noundef 1012) #6
  tail call void @kgdb_breakpoint() #6
  br label %set_denormalization.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.dce_transform_set_pixel_storage_depth, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep43 = getelementptr inbounds [8 x i32], ptr @switch.table.dce_transform_set_pixel_storage_depth.11, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep43 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load44 = load i32, ptr %switch.gep43, align 4
  %switch.gep45 = getelementptr inbounds [8 x i32], ptr @switch.table.dce_transform_set_pixel_storage_depth.12, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep45 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load46 = load i32, ptr %switch.gep45, align 4
  %switch.gep47 = getelementptr inbounds [8 x i32], ptr @switch.table.dce_transform_set_pixel_storage_depth.13, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep47 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load48 = load i32, ptr %switch.gep47, align 4
  %phi.bo = add i32 %switch.load, -1
  br label %set_denormalization.exit

set_denormalization.exit:                         ; preds = %switch.lookup, %sw.default
  %color_depth.031 = phi i32 [ 2, %sw.default ], [ %phi.bo, %switch.lookup ]
  %expan_mode.029 = phi i32 [ 1, %sw.default ], [ %switch.load44, %switch.lookup ]
  %pixel_depth.027 = phi i32 [ 0, %sw.default ], [ %switch.load46, %switch.lookup ]
  %denorm_mode.0.i = phi i32 [ 3, %sw.default ], [ %switch.load48, %switch.lookup ]
  %ctx.i = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %DENORM_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %DENORM_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DENORM_CONTROL.i, align 4
  %xfm_shift.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %12 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xfm_shift.i, align 4
  %DENORM_MODE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %DENORM_MODE.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %DENORM_MODE.i, align 1
  %xfm_mask.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %16 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xfm_mask.i, align 8
  %DENORM_MODE5.i = getelementptr inbounds %struct.dce_transform_mask, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %DENORM_MODE5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DENORM_MODE5.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %7, i32 noundef %11, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %15, i32 noundef %19, i32 noundef %denorm_mode.0.i) #6
  %20 = ptrtoint ptr %bit_depth_params to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i = load i32, ptr %bit_depth_params, align 4
  %21 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool47.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool47.not.i, label %set_denormalization.exit.if.end77.i_crit_edge, label %if.then48.i

set_denormalization.exit.if.end77.i_crit_edge:    ; preds = %set_denormalization.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

if.then48.i:                                      ; preds = %set_denormalization.exit
  %23 = lshr i32 %bf.load.i, 28
  %.lobit.i = and i32 %23, 1
  %bf.lshr56.i = lshr i32 %bf.load.i, 29
  %bf.clear57.i = and i32 %bf.lshr56.i, 3
  %24 = zext i32 %bf.clear57.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %bf.clear57.i, label %if.else71.i [
    i32 0, label %if.then48.i.if.end77.i_crit_edge
    i32 1, label %if.then48.i.if.end77.i_crit_edge53
    i32 2, label %if.then70.i
  ]

if.then48.i.if.end77.i_crit_edge53:               ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

if.then48.i.if.end77.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

if.then70.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

if.else71.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.program_bit_depth_reduction, i32 noundef 822) #6
  tail call void @kgdb_breakpoint() #6
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.else71.i, %if.then70.i, %if.then48.i.if.end77.i_crit_edge, %if.then48.i.if.end77.i_crit_edge53, %set_denormalization.exit.if.end77.i_crit_edge
  %spatial_dither_enable.0.off0.i = phi i1 [ false, %if.then70.i ], [ false, %if.else71.i ], [ %22, %set_denormalization.exit.if.end77.i_crit_edge ], [ false, %if.then48.i.if.end77.i_crit_edge ], [ false, %if.then48.i.if.end77.i_crit_edge53 ]
  %trunc_mode.0.i = phi i32 [ %.lobit.i, %if.then70.i ], [ %.lobit.i, %if.else71.i ], [ 0, %set_denormalization.exit.if.end77.i_crit_edge ], [ %.lobit.i, %if.then48.i.if.end77.i_crit_edge ], [ %.lobit.i, %if.then48.i.if.end77.i_crit_edge53 ]
  %trunc_round_depth.0.i = phi i32 [ 4, %if.then70.i ], [ 2, %if.else71.i ], [ 2, %set_denormalization.exit.if.end77.i_crit_edge ], [ 6, %if.then48.i.if.end77.i_crit_edge ], [ 6, %if.then48.i.if.end77.i_crit_edge53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %color_depth.031)
  %25 = icmp ult i32 %color_depth.031, 4
  br i1 %25, label %switch.lookup49, label %sw.default.i.i

sw.default.i.i:                                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.set_clamp, i32 noundef 611) #6
  tail call void @kgdb_breakpoint() #6
  br label %program_bit_depth_reduction.exit

switch.lookup49:                                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep51 = getelementptr inbounds [4 x i32], ptr @switch.table.dce_transform_set_pixel_storage_depth.14, i32 0, i32 %color_depth.031
  %26 = ptrtoint ptr %switch.gep51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load52 = load i32, ptr %switch.gep51, align 4
  br label %program_bit_depth_reduction.exit

program_bit_depth_reduction.exit:                 ; preds = %switch.lookup49, %sw.default.i.i
  %clamp_max.0.i.i = phi i32 [ 16320, %sw.default.i.i ], [ %switch.load52, %switch.lookup49 ]
  %27 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx.i, align 4
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 8
  %OUT_CLAMP_CONTROL_B_CB.i.i = getelementptr inbounds %struct.dce_transform_registers, ptr %30, i32 0, i32 38
  %31 = ptrtoint ptr %OUT_CLAMP_CONTROL_B_CB.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %OUT_CLAMP_CONTROL_B_CB.i.i, align 4
  %33 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xfm_shift.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %37 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xfm_mask.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %OUT_CLAMP_MAX_B_CB.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %34, i32 0, i32 1
  %41 = ptrtoint ptr %OUT_CLAMP_MAX_B_CB.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %OUT_CLAMP_MAX_B_CB.i.i, align 1
  %conv.i.i = zext i8 %42 to i32
  %OUT_CLAMP_MAX_B_CB7.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %OUT_CLAMP_MAX_B_CB7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %OUT_CLAMP_MAX_B_CB7.i.i, align 4
  %call.i.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %28, i32 noundef %32, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %36, i32 noundef %40, i32 noundef 0, i32 noundef %conv.i.i, i32 noundef %44, i32 noundef %clamp_max.0.i.i) #6
  %45 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx.i, align 4
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 8
  %OUT_CLAMP_CONTROL_G_Y.i.i = getelementptr inbounds %struct.dce_transform_registers, ptr %48, i32 0, i32 37
  %49 = ptrtoint ptr %OUT_CLAMP_CONTROL_G_Y.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %OUT_CLAMP_CONTROL_G_Y.i.i, align 4
  %51 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xfm_shift.i, align 4
  %OUT_CLAMP_MIN_G_Y.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %OUT_CLAMP_MIN_G_Y.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %OUT_CLAMP_MIN_G_Y.i.i, align 1
  %55 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xfm_mask.i, align 8
  %OUT_CLAMP_MIN_G_Y13.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %OUT_CLAMP_MIN_G_Y13.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %OUT_CLAMP_MIN_G_Y13.i.i, align 4
  %OUT_CLAMP_MAX_G_Y.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %52, i32 0, i32 3
  %59 = ptrtoint ptr %OUT_CLAMP_MAX_G_Y.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %OUT_CLAMP_MAX_G_Y.i.i, align 1
  %conv15.i.i = zext i8 %60 to i32
  %OUT_CLAMP_MAX_G_Y17.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %56, i32 0, i32 3
  %61 = ptrtoint ptr %OUT_CLAMP_MAX_G_Y17.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %OUT_CLAMP_MAX_G_Y17.i.i, align 4
  %call18.i.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %46, i32 noundef %50, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %54, i32 noundef %58, i32 noundef 0, i32 noundef %conv15.i.i, i32 noundef %62, i32 noundef %clamp_max.0.i.i) #6
  %63 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx.i, align 4
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 8
  %OUT_CLAMP_CONTROL_R_CR.i.i = getelementptr inbounds %struct.dce_transform_registers, ptr %66, i32 0, i32 36
  %67 = ptrtoint ptr %OUT_CLAMP_CONTROL_R_CR.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %OUT_CLAMP_CONTROL_R_CR.i.i, align 4
  %69 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xfm_shift.i, align 4
  %OUT_CLAMP_MIN_R_CR.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %OUT_CLAMP_MIN_R_CR.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %OUT_CLAMP_MIN_R_CR.i.i, align 1
  %73 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %xfm_mask.i, align 8
  %OUT_CLAMP_MIN_R_CR24.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %OUT_CLAMP_MIN_R_CR24.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %OUT_CLAMP_MIN_R_CR24.i.i, align 4
  %OUT_CLAMP_MAX_R_CR.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %70, i32 0, i32 5
  %77 = ptrtoint ptr %OUT_CLAMP_MAX_R_CR.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %OUT_CLAMP_MAX_R_CR.i.i, align 1
  %conv26.i.i = zext i8 %78 to i32
  %OUT_CLAMP_MAX_R_CR28.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %74, i32 0, i32 5
  %79 = ptrtoint ptr %OUT_CLAMP_MAX_R_CR28.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %OUT_CLAMP_MAX_R_CR28.i.i, align 4
  %call29.i.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %64, i32 noundef %68, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %72, i32 noundef %76, i32 noundef 0, i32 noundef %conv26.i.i, i32 noundef %80, i32 noundef %clamp_max.0.i.i) #6
  tail call fastcc void @set_round(ptr noundef %xfm, i32 noundef %trunc_mode.0.i, i32 noundef %trunc_round_depth.0.i) #6
  %81 = ptrtoint ptr %bit_depth_params to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load80.i = load i32, ptr %bit_depth_params, align 4
  %82 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ctx.i, align 4
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 8
  %DCP_SPATIAL_DITHER_CNTL.i.i = getelementptr inbounds %struct.dce_transform_registers, ptr %85, i32 0, i32 34
  %86 = ptrtoint ptr %DCP_SPATIAL_DITHER_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %DCP_SPATIAL_DITHER_CNTL.i.i, align 4
  %88 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %xfm_shift.i, align 4
  %DCP_SPATIAL_DITHER_EN.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %DCP_SPATIAL_DITHER_EN.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %DCP_SPATIAL_DITHER_EN.i.i, align 1
  %92 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xfm_mask.i, align 8
  %DCP_SPATIAL_DITHER_EN14.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %DCP_SPATIAL_DITHER_EN14.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %DCP_SPATIAL_DITHER_EN14.i.i, align 4
  %conv.i111.i = zext i1 %spatial_dither_enable.0.off0.i to i32
  %DCP_SPATIAL_DITHER_MODE.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %89, i32 0, i32 8
  %96 = ptrtoint ptr %DCP_SPATIAL_DITHER_MODE.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %DCP_SPATIAL_DITHER_MODE.i.i, align 1
  %conv16.i.i = zext i8 %97 to i32
  %DCP_SPATIAL_DITHER_MODE18.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %93, i32 0, i32 8
  %98 = ptrtoint ptr %DCP_SPATIAL_DITHER_MODE18.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %DCP_SPATIAL_DITHER_MODE18.i.i, align 4
  %DCP_SPATIAL_DITHER_DEPTH.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %89, i32 0, i32 9
  %100 = ptrtoint ptr %DCP_SPATIAL_DITHER_DEPTH.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %DCP_SPATIAL_DITHER_DEPTH.i.i, align 1
  %conv20.i.i = zext i8 %101 to i32
  %DCP_SPATIAL_DITHER_DEPTH22.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %93, i32 0, i32 9
  %102 = ptrtoint ptr %DCP_SPATIAL_DITHER_DEPTH22.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %DCP_SPATIAL_DITHER_DEPTH22.i.i, align 4
  %DCP_FRAME_RANDOM_ENABLE.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %89, i32 0, i32 10
  %104 = ptrtoint ptr %DCP_FRAME_RANDOM_ENABLE.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %DCP_FRAME_RANDOM_ENABLE.i.i, align 1
  %conv24.i.i = zext i8 %105 to i32
  %DCP_FRAME_RANDOM_ENABLE26.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %93, i32 0, i32 10
  %106 = ptrtoint ptr %DCP_FRAME_RANDOM_ENABLE26.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %DCP_FRAME_RANDOM_ENABLE26.i.i, align 4
  %108 = lshr i32 %bf.load80.i, 21
  %.lobit113.i = and i32 %108, 1
  %DCP_RGB_RANDOM_ENABLE.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %89, i32 0, i32 11
  %109 = ptrtoint ptr %DCP_RGB_RANDOM_ENABLE.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %DCP_RGB_RANDOM_ENABLE.i.i, align 1
  %conv30.i.i = zext i8 %110 to i32
  %DCP_RGB_RANDOM_ENABLE32.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %93, i32 0, i32 11
  %111 = ptrtoint ptr %DCP_RGB_RANDOM_ENABLE32.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %DCP_RGB_RANDOM_ENABLE32.i.i, align 4
  %113 = lshr i32 %bf.load80.i, 22
  %.lobit114.i = and i32 %113, 1
  %DCP_HIGHPASS_RANDOM_ENABLE.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %89, i32 0, i32 12
  %114 = ptrtoint ptr %DCP_HIGHPASS_RANDOM_ENABLE.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %DCP_HIGHPASS_RANDOM_ENABLE.i.i, align 1
  %conv36.i.i = zext i8 %115 to i32
  %DCP_HIGHPASS_RANDOM_ENABLE38.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %93, i32 0, i32 12
  %116 = ptrtoint ptr %DCP_HIGHPASS_RANDOM_ENABLE38.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %DCP_HIGHPASS_RANDOM_ENABLE38.i.i, align 4
  %118 = lshr i32 %bf.load80.i, 20
  %.lobit115.i = and i32 %118, 1
  %call.i112.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %83, i32 noundef %87, i32 noundef 0, i32 noundef 6, i8 noundef zeroext %91, i32 noundef %95, i32 noundef %conv.i111.i, i32 noundef %conv16.i.i, i32 noundef %99, i32 noundef 1, i32 noundef %conv20.i.i, i32 noundef %103, i32 noundef 0, i32 noundef %conv24.i.i, i32 noundef %107, i32 noundef %.lobit113.i, i32 noundef %conv30.i.i, i32 noundef %112, i32 noundef %.lobit114.i, i32 noundef %conv36.i.i, i32 noundef %117, i32 noundef %.lobit115.i) #6
  %119 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ctx.i, align 4
  %121 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i, align 8
  %LB_DATA_FORMAT = getelementptr inbounds %struct.dce_transform_registers, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %LB_DATA_FORMAT to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %LB_DATA_FORMAT, align 4
  %125 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %xfm_shift.i, align 4
  %PIXEL_DEPTH = getelementptr inbounds %struct.dce_transform_shift, ptr %126, i32 0, i32 15
  %127 = ptrtoint ptr %PIXEL_DEPTH to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %PIXEL_DEPTH, align 1
  %129 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %xfm_mask.i, align 8
  %PIXEL_DEPTH4 = getelementptr inbounds %struct.dce_transform_mask, ptr %130, i32 0, i32 15
  %131 = ptrtoint ptr %PIXEL_DEPTH4 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %PIXEL_DEPTH4, align 4
  %PIXEL_EXPAN_MODE = getelementptr inbounds %struct.dce_transform_shift, ptr %126, i32 0, i32 16
  %133 = ptrtoint ptr %PIXEL_EXPAN_MODE to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %PIXEL_EXPAN_MODE, align 1
  %conv = zext i8 %134 to i32
  %PIXEL_EXPAN_MODE7 = getelementptr inbounds %struct.dce_transform_mask, ptr %130, i32 0, i32 16
  %135 = ptrtoint ptr %PIXEL_EXPAN_MODE7 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %PIXEL_EXPAN_MODE7, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %120, i32 noundef %124, i32 noundef 2, i8 noundef zeroext %128, i32 noundef %132, i32 noundef %pixel_depth.027, i32 noundef %conv, i32 noundef %136, i32 noundef %expan_mode.029) #6
  %lb_pixel_depth_supported = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 8
  %137 = ptrtoint ptr %lb_pixel_depth_supported to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %lb_pixel_depth_supported, align 4
  %and = and i32 %138, %depth
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end10, label %program_bit_depth_reduction.exit.if.end_crit_edge

program_bit_depth_reduction.exit.if.end_crit_edge: ; preds = %program_bit_depth_reduction.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end10:                                         ; preds = %program_bit_depth_reduction.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dce_transform_set_pixel_storage_depth) #9
  br label %if.end

if.end:                                           ; preds = %do.end10, %program_bit_depth_reduction.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce_transform_set_gamut_remap(ptr nocapture noundef readonly %xfm, ptr nocapture noundef readonly %adjust) #0 align 64 {
entry:
  %arr_matrix = alloca [12 x %struct.fixed31_32], align 8
  %arr_reg_val = alloca [12 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gamut_adjust_type = getelementptr inbounds %struct.xfm_grph_csc_adjustment, ptr %adjust, i32 0, i32 1
  %0 = ptrtoint ptr %gamut_adjust_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gamut_adjust_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx91.i = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %2 = ptrtoint ptr %ctx91.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx91.i, align 4
  %regs92.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %4 = ptrtoint ptr %regs92.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs92.i, align 8
  %GAMUT_REMAP_CONTROL93.i = getelementptr inbounds %struct.dce_transform_registers, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %GAMUT_REMAP_CONTROL93.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %GAMUT_REMAP_CONTROL93.i, align 4
  %xfm_shift94.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %8 = ptrtoint ptr %xfm_shift94.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xfm_shift94.i, align 4
  %GRPH_GAMUT_REMAP_MODE95.i = getelementptr inbounds %struct.dce_transform_shift, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %GRPH_GAMUT_REMAP_MODE95.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %GRPH_GAMUT_REMAP_MODE95.i, align 1
  %xfm_mask96.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %12 = ptrtoint ptr %xfm_mask96.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xfm_mask96.i, align 8
  %GRPH_GAMUT_REMAP_MODE97.i = getelementptr inbounds %struct.dce_transform_mask, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %GRPH_GAMUT_REMAP_MODE97.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %GRPH_GAMUT_REMAP_MODE97.i, align 4
  %call98.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %3, i32 noundef %7, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %11, i32 noundef %15, i32 noundef 0) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %arr_matrix) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr_reg_val) #6
  %16 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 1
  %17 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 2
  %18 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 3
  %19 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 4
  %20 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 5
  %21 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 6
  %22 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 7
  %23 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 8
  %24 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 9
  %25 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 10
  %26 = getelementptr inbounds [12 x i16], ptr %arr_reg_val, i32 0, i32 11
  %27 = call ptr @memset(ptr %arr_reg_val, i32 255, i32 24)
  %28 = call ptr @memcpy(ptr %arr_matrix, ptr %adjust, i32 96)
  call void @convert_float_matrix(ptr noundef nonnull %arr_reg_val, ptr noundef nonnull %arr_matrix, i32 noundef 12) #6
  %ctx91.i10 = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %29 = ptrtoint ptr %ctx91.i10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx91.i10, align 4
  %regs92.i11 = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %31 = ptrtoint ptr %regs92.i11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs92.i11, align 8
  %GAMUT_REMAP_C11_C12.i = getelementptr inbounds %struct.dce_transform_registers, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %GAMUT_REMAP_C11_C12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %GAMUT_REMAP_C11_C12.i, align 4
  %xfm_shift.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %35 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xfm_shift.i, align 4
  %GAMUT_REMAP_C11.i = getelementptr inbounds %struct.dce_transform_shift, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %GAMUT_REMAP_C11.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %GAMUT_REMAP_C11.i, align 1
  %xfm_mask.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %39 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xfm_mask.i, align 8
  %GAMUT_REMAP_C111.i = getelementptr inbounds %struct.dce_transform_mask, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %GAMUT_REMAP_C111.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %GAMUT_REMAP_C111.i, align 4
  %43 = ptrtoint ptr %arr_reg_val to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arr_reg_val, align 2
  %conv.i = zext i16 %44 to i32
  %GAMUT_REMAP_C12.i = getelementptr inbounds %struct.dce_transform_shift, ptr %36, i32 0, i32 18
  %45 = ptrtoint ptr %GAMUT_REMAP_C12.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %GAMUT_REMAP_C12.i, align 1
  %conv3.i = zext i8 %46 to i32
  %GAMUT_REMAP_C125.i = getelementptr inbounds %struct.dce_transform_mask, ptr %40, i32 0, i32 18
  %47 = ptrtoint ptr %GAMUT_REMAP_C125.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %GAMUT_REMAP_C125.i, align 4
  %49 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %16, align 2
  %conv7.i = zext i16 %50 to i32
  %call.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %30, i32 noundef %34, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %38, i32 noundef %42, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %48, i32 noundef %conv7.i) #6
  %51 = ptrtoint ptr %ctx91.i10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx91.i10, align 4
  %53 = ptrtoint ptr %regs92.i11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs92.i11, align 8
  %GAMUT_REMAP_C13_C14.i = getelementptr inbounds %struct.dce_transform_registers, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %GAMUT_REMAP_C13_C14.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %GAMUT_REMAP_C13_C14.i, align 4
  %57 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %xfm_shift.i, align 4
  %GAMUT_REMAP_C13.i = getelementptr inbounds %struct.dce_transform_shift, ptr %58, i32 0, i32 19
  %59 = ptrtoint ptr %GAMUT_REMAP_C13.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %GAMUT_REMAP_C13.i, align 1
  %61 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %xfm_mask.i, align 8
  %GAMUT_REMAP_C1313.i = getelementptr inbounds %struct.dce_transform_mask, ptr %62, i32 0, i32 19
  %63 = ptrtoint ptr %GAMUT_REMAP_C1313.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %GAMUT_REMAP_C1313.i, align 4
  %65 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %17, align 2
  %conv15.i = zext i16 %66 to i32
  %GAMUT_REMAP_C14.i = getelementptr inbounds %struct.dce_transform_shift, ptr %58, i32 0, i32 20
  %67 = ptrtoint ptr %GAMUT_REMAP_C14.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %GAMUT_REMAP_C14.i, align 1
  %conv17.i = zext i8 %68 to i32
  %GAMUT_REMAP_C1419.i = getelementptr inbounds %struct.dce_transform_mask, ptr %62, i32 0, i32 20
  %69 = ptrtoint ptr %GAMUT_REMAP_C1419.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %GAMUT_REMAP_C1419.i, align 4
  %71 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %18, align 2
  %conv21.i = zext i16 %72 to i32
  %call22.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %52, i32 noundef %56, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %60, i32 noundef %64, i32 noundef %conv15.i, i32 noundef %conv17.i, i32 noundef %70, i32 noundef %conv21.i) #6
  %73 = ptrtoint ptr %ctx91.i10 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctx91.i10, align 4
  %75 = ptrtoint ptr %regs92.i11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs92.i11, align 8
  %GAMUT_REMAP_C21_C22.i = getelementptr inbounds %struct.dce_transform_registers, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %GAMUT_REMAP_C21_C22.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %GAMUT_REMAP_C21_C22.i, align 4
  %79 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xfm_shift.i, align 4
  %GAMUT_REMAP_C21.i = getelementptr inbounds %struct.dce_transform_shift, ptr %80, i32 0, i32 21
  %81 = ptrtoint ptr %GAMUT_REMAP_C21.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %GAMUT_REMAP_C21.i, align 1
  %83 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xfm_mask.i, align 8
  %GAMUT_REMAP_C2128.i = getelementptr inbounds %struct.dce_transform_mask, ptr %84, i32 0, i32 21
  %85 = ptrtoint ptr %GAMUT_REMAP_C2128.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %GAMUT_REMAP_C2128.i, align 4
  %87 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %19, align 2
  %conv30.i = zext i16 %88 to i32
  %GAMUT_REMAP_C22.i = getelementptr inbounds %struct.dce_transform_shift, ptr %80, i32 0, i32 22
  %89 = ptrtoint ptr %GAMUT_REMAP_C22.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %GAMUT_REMAP_C22.i, align 1
  %conv32.i = zext i8 %90 to i32
  %GAMUT_REMAP_C2234.i = getelementptr inbounds %struct.dce_transform_mask, ptr %84, i32 0, i32 22
  %91 = ptrtoint ptr %GAMUT_REMAP_C2234.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %GAMUT_REMAP_C2234.i, align 4
  %93 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %20, align 2
  %conv36.i = zext i16 %94 to i32
  %call37.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %74, i32 noundef %78, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %82, i32 noundef %86, i32 noundef %conv30.i, i32 noundef %conv32.i, i32 noundef %92, i32 noundef %conv36.i) #6
  %95 = ptrtoint ptr %ctx91.i10 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ctx91.i10, align 4
  %97 = ptrtoint ptr %regs92.i11 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs92.i11, align 8
  %GAMUT_REMAP_C23_C24.i = getelementptr inbounds %struct.dce_transform_registers, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %GAMUT_REMAP_C23_C24.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %GAMUT_REMAP_C23_C24.i, align 4
  %101 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %xfm_shift.i, align 4
  %GAMUT_REMAP_C23.i = getelementptr inbounds %struct.dce_transform_shift, ptr %102, i32 0, i32 23
  %103 = ptrtoint ptr %GAMUT_REMAP_C23.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %GAMUT_REMAP_C23.i, align 1
  %105 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xfm_mask.i, align 8
  %GAMUT_REMAP_C2343.i = getelementptr inbounds %struct.dce_transform_mask, ptr %106, i32 0, i32 23
  %107 = ptrtoint ptr %GAMUT_REMAP_C2343.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %GAMUT_REMAP_C2343.i, align 4
  %109 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %21, align 2
  %conv45.i = zext i16 %110 to i32
  %GAMUT_REMAP_C24.i = getelementptr inbounds %struct.dce_transform_shift, ptr %102, i32 0, i32 24
  %111 = ptrtoint ptr %GAMUT_REMAP_C24.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %GAMUT_REMAP_C24.i, align 1
  %conv47.i = zext i8 %112 to i32
  %GAMUT_REMAP_C2449.i = getelementptr inbounds %struct.dce_transform_mask, ptr %106, i32 0, i32 24
  %113 = ptrtoint ptr %GAMUT_REMAP_C2449.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %GAMUT_REMAP_C2449.i, align 4
  %115 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %22, align 2
  %conv51.i = zext i16 %116 to i32
  %call52.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %96, i32 noundef %100, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %104, i32 noundef %108, i32 noundef %conv45.i, i32 noundef %conv47.i, i32 noundef %114, i32 noundef %conv51.i) #6
  %117 = ptrtoint ptr %ctx91.i10 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ctx91.i10, align 4
  %119 = ptrtoint ptr %regs92.i11 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs92.i11, align 8
  %GAMUT_REMAP_C31_C32.i = getelementptr inbounds %struct.dce_transform_registers, ptr %120, i32 0, i32 7
  %121 = ptrtoint ptr %GAMUT_REMAP_C31_C32.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %GAMUT_REMAP_C31_C32.i, align 4
  %123 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %xfm_shift.i, align 4
  %GAMUT_REMAP_C31.i = getelementptr inbounds %struct.dce_transform_shift, ptr %124, i32 0, i32 25
  %125 = ptrtoint ptr %GAMUT_REMAP_C31.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %GAMUT_REMAP_C31.i, align 1
  %127 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %xfm_mask.i, align 8
  %GAMUT_REMAP_C3158.i = getelementptr inbounds %struct.dce_transform_mask, ptr %128, i32 0, i32 25
  %129 = ptrtoint ptr %GAMUT_REMAP_C3158.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %GAMUT_REMAP_C3158.i, align 4
  %131 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %23, align 2
  %conv60.i = zext i16 %132 to i32
  %GAMUT_REMAP_C32.i = getelementptr inbounds %struct.dce_transform_shift, ptr %124, i32 0, i32 26
  %133 = ptrtoint ptr %GAMUT_REMAP_C32.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %GAMUT_REMAP_C32.i, align 1
  %conv62.i = zext i8 %134 to i32
  %GAMUT_REMAP_C3264.i = getelementptr inbounds %struct.dce_transform_mask, ptr %128, i32 0, i32 26
  %135 = ptrtoint ptr %GAMUT_REMAP_C3264.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %GAMUT_REMAP_C3264.i, align 4
  %137 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %24, align 2
  %conv66.i = zext i16 %138 to i32
  %call67.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %118, i32 noundef %122, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %126, i32 noundef %130, i32 noundef %conv60.i, i32 noundef %conv62.i, i32 noundef %136, i32 noundef %conv66.i) #6
  %139 = ptrtoint ptr %ctx91.i10 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ctx91.i10, align 4
  %141 = ptrtoint ptr %regs92.i11 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs92.i11, align 8
  %GAMUT_REMAP_C33_C34.i = getelementptr inbounds %struct.dce_transform_registers, ptr %142, i32 0, i32 8
  %143 = ptrtoint ptr %GAMUT_REMAP_C33_C34.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %GAMUT_REMAP_C33_C34.i, align 4
  %145 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %xfm_shift.i, align 4
  %GAMUT_REMAP_C33.i = getelementptr inbounds %struct.dce_transform_shift, ptr %146, i32 0, i32 27
  %147 = ptrtoint ptr %GAMUT_REMAP_C33.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %GAMUT_REMAP_C33.i, align 1
  %149 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %xfm_mask.i, align 8
  %GAMUT_REMAP_C3373.i = getelementptr inbounds %struct.dce_transform_mask, ptr %150, i32 0, i32 27
  %151 = ptrtoint ptr %GAMUT_REMAP_C3373.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %GAMUT_REMAP_C3373.i, align 4
  %153 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %25, align 2
  %conv75.i = zext i16 %154 to i32
  %GAMUT_REMAP_C34.i = getelementptr inbounds %struct.dce_transform_shift, ptr %146, i32 0, i32 28
  %155 = ptrtoint ptr %GAMUT_REMAP_C34.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %GAMUT_REMAP_C34.i, align 1
  %conv77.i = zext i8 %156 to i32
  %GAMUT_REMAP_C3479.i = getelementptr inbounds %struct.dce_transform_mask, ptr %150, i32 0, i32 28
  %157 = ptrtoint ptr %GAMUT_REMAP_C3479.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %GAMUT_REMAP_C3479.i, align 4
  %159 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %26, align 2
  %conv81.i = zext i16 %160 to i32
  %call82.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %140, i32 noundef %144, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %148, i32 noundef %152, i32 noundef %conv75.i, i32 noundef %conv77.i, i32 noundef %158, i32 noundef %conv81.i) #6
  %161 = ptrtoint ptr %ctx91.i10 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ctx91.i10, align 4
  %163 = ptrtoint ptr %regs92.i11 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs92.i11, align 8
  %GAMUT_REMAP_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %GAMUT_REMAP_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %GAMUT_REMAP_CONTROL.i, align 4
  %167 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %xfm_shift.i, align 4
  %GRPH_GAMUT_REMAP_MODE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %168, i32 0, i32 29
  %169 = ptrtoint ptr %GRPH_GAMUT_REMAP_MODE.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %GRPH_GAMUT_REMAP_MODE.i, align 1
  %171 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %xfm_mask.i, align 8
  %GRPH_GAMUT_REMAP_MODE88.i = getelementptr inbounds %struct.dce_transform_mask, ptr %172, i32 0, i32 29
  %173 = ptrtoint ptr %GRPH_GAMUT_REMAP_MODE88.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %GRPH_GAMUT_REMAP_MODE88.i, align 4
  %call89.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %162, i32 noundef %166, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %170, i32 noundef %174, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr_reg_val) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %arr_matrix) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_overscan(ptr nocapture noundef readonly %xfm_dce, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %recout = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %recout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %recout, align 4
  %width = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = add i32 %3, %5
  %sub2 = sub i32 %1, %6
  %v_active = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %v_active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v_active, align 4
  %y = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %y, align 4
  %height = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %13 = add i32 %10, %12
  %sub6 = sub i32 %8, %13
  %ctx = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 1
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %visual_confirm = getelementptr inbounds %struct.dc_debug_options, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %visual_confirm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %visual_confirm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  %add = add i32 %sub6, 2
  %add7 = add i32 %sub2, 2
  %overscan_right.0 = select i1 %cmp.not, i32 %sub2, i32 %add7
  %overscan_bottom.0 = select i1 %cmp.not, i32 %sub6, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overscan_right.0)
  %cmp8 = icmp slt i32 %overscan_right.0, 0
  br i1 %cmp8, label %do.body, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.program_overscan, i32 noundef 191) #6
  tail call void @kgdb_breakpoint() #6
  br label %if.end10

if.end10:                                         ; preds = %do.body, %entry.if.end10_crit_edge
  %overscan_right.1 = phi i32 [ 0, %do.body ], [ %overscan_right.0, %entry.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overscan_bottom.0)
  %cmp11 = icmp slt i32 %overscan_bottom.0, 0
  br i1 %cmp11, label %do.body13, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.body13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.program_overscan, i32 noundef 195) #6
  tail call void @kgdb_breakpoint() #6
  br label %if.end16

if.end16:                                         ; preds = %do.body13, %if.end10.if.end16_crit_edge
  %overscan_bottom.1 = phi i32 [ 0, %do.body13 ], [ %overscan_bottom.0, %if.end10.if.end16_crit_edge ]
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 1
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %EXT_OVERSCAN_LEFT_RIGHT = getelementptr inbounds %struct.dce_transform_registers, ptr %23, i32 0, i32 43
  %24 = ptrtoint ptr %EXT_OVERSCAN_LEFT_RIGHT to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %EXT_OVERSCAN_LEFT_RIGHT, align 4
  %xfm_shift = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 2
  %26 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xfm_shift, align 4
  %EXT_OVERSCAN_LEFT = getelementptr inbounds %struct.dce_transform_shift, ptr %27, i32 0, i32 57
  %28 = ptrtoint ptr %EXT_OVERSCAN_LEFT to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %EXT_OVERSCAN_LEFT, align 1
  %xfm_mask = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 3
  %30 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xfm_mask, align 8
  %EXT_OVERSCAN_LEFT19 = getelementptr inbounds %struct.dce_transform_mask, ptr %31, i32 0, i32 57
  %32 = ptrtoint ptr %EXT_OVERSCAN_LEFT19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %EXT_OVERSCAN_LEFT19, align 4
  %34 = ptrtoint ptr %recout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %recout, align 4
  %EXT_OVERSCAN_RIGHT = getelementptr inbounds %struct.dce_transform_shift, ptr %27, i32 0, i32 58
  %36 = ptrtoint ptr %EXT_OVERSCAN_RIGHT to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %EXT_OVERSCAN_RIGHT, align 1
  %conv = zext i8 %37 to i32
  %EXT_OVERSCAN_RIGHT24 = getelementptr inbounds %struct.dce_transform_mask, ptr %31, i32 0, i32 58
  %38 = ptrtoint ptr %EXT_OVERSCAN_RIGHT24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %EXT_OVERSCAN_RIGHT24, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %21, i32 noundef %25, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %29, i32 noundef %33, i32 noundef %35, i32 noundef %conv, i32 noundef %39, i32 noundef %overscan_right.1) #6
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 8
  %EXT_OVERSCAN_TOP_BOTTOM = getelementptr inbounds %struct.dce_transform_registers, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %EXT_OVERSCAN_TOP_BOTTOM to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %EXT_OVERSCAN_TOP_BOTTOM, align 4
  %46 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xfm_shift, align 4
  %EXT_OVERSCAN_TOP = getelementptr inbounds %struct.dce_transform_shift, ptr %47, i32 0, i32 59
  %48 = ptrtoint ptr %EXT_OVERSCAN_TOP to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %EXT_OVERSCAN_TOP, align 1
  %50 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xfm_mask, align 8
  %EXT_OVERSCAN_TOP30 = getelementptr inbounds %struct.dce_transform_mask, ptr %51, i32 0, i32 59
  %52 = ptrtoint ptr %EXT_OVERSCAN_TOP30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %EXT_OVERSCAN_TOP30, align 4
  %54 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %y, align 4
  %EXT_OVERSCAN_BOTTOM = getelementptr inbounds %struct.dce_transform_shift, ptr %47, i32 0, i32 60
  %56 = ptrtoint ptr %EXT_OVERSCAN_BOTTOM to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %EXT_OVERSCAN_BOTTOM, align 1
  %conv34 = zext i8 %57 to i32
  %EXT_OVERSCAN_BOTTOM36 = getelementptr inbounds %struct.dce_transform_mask, ptr %51, i32 0, i32 60
  %58 = ptrtoint ptr %EXT_OVERSCAN_BOTTOM36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %EXT_OVERSCAN_BOTTOM36, align 4
  %call37 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %41, i32 noundef %45, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %49, i32 noundef %53, i32 noundef %55, i32 noundef %conv34, i32 noundef %59, i32 noundef %overscan_bottom.1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @program_multi_taps_filter(ptr nocapture noundef readonly %xfm_dce, i32 noundef %taps, ptr noundef readonly %coeffs, i32 noundef %filter_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %taps, 1
  %div = sdiv i32 %add, 2
  %tobool.not = icmp eq ptr %coeffs, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %DCFE_MEM_PWR_CTRL = getelementptr inbounds %struct.dce_transform_registers, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %DCFE_MEM_PWR_CTRL to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %DCFE_MEM_PWR_CTRL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end17_crit_edge, label %if.then2

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %3, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %DCFE_MEM_PWR_CTRL8 = getelementptr inbounds %struct.dce_transform_registers, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %DCFE_MEM_PWR_CTRL8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DCFE_MEM_PWR_CTRL8, align 4
  %xfm_shift = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 2
  %12 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xfm_shift, align 4
  %SCL_COEFF_MEM_PWR_DIS = getelementptr inbounds %struct.dce_transform_shift, ptr %13, i32 0, i32 61
  %14 = ptrtoint ptr %SCL_COEFF_MEM_PWR_DIS to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %SCL_COEFF_MEM_PWR_DIS, align 1
  %xfm_mask = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 3
  %16 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xfm_mask, align 8
  %SCL_COEFF_MEM_PWR_DIS9 = getelementptr inbounds %struct.dce_transform_mask, ptr %17, i32 0, i32 61
  %18 = ptrtoint ptr %SCL_COEFF_MEM_PWR_DIS9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %SCL_COEFF_MEM_PWR_DIS9, align 4
  %call10 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %7, i32 noundef %11, i32 noundef %call, i32 noundef 1, i8 noundef zeroext %15, i32 noundef %19, i32 noundef 1) #6
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %DCFE_MEM_PWR_STATUS = getelementptr inbounds %struct.dce_transform_registers, ptr %23, i32 0, i32 48
  %24 = ptrtoint ptr %DCFE_MEM_PWR_STATUS to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DCFE_MEM_PWR_STATUS, align 4
  %26 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xfm_shift, align 4
  %SCL_COEFF_MEM_PWR_STATE = getelementptr inbounds %struct.dce_transform_shift, ptr %27, i32 0, i32 62
  %28 = ptrtoint ptr %SCL_COEFF_MEM_PWR_STATE to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %SCL_COEFF_MEM_PWR_STATE, align 1
  %conv = zext i8 %29 to i32
  %30 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xfm_mask, align 8
  %SCL_COEFF_MEM_PWR_STATE16 = getelementptr inbounds %struct.dce_transform_mask, ptr %31, i32 0, i32 62
  %32 = ptrtoint ptr %SCL_COEFF_MEM_PWR_STATE16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %SCL_COEFF_MEM_PWR_STATE16, align 4
  tail call void @generic_reg_wait(ptr noundef %21, i32 noundef %25, i32 noundef %conv, i32 noundef %33, i32 noundef 0, i32 noundef 1, i32 noundef 10, ptr noundef nonnull @__func__.program_multi_taps_filter, i32 noundef 228) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then2, %if.end.if.end17_crit_edge
  %power_ctl.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.end.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp20130 = icmp sgt i32 %add, 1
  %ctx24 = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 1
  %xfm_shift26 = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 2
  %xfm_mask27 = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 3
  %34 = and i32 %taps, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool38.not = icmp ne i32 %34, 0
  %sub = add nsw i32 %div, -1
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.inc68.for.cond19.preheader_crit_edge, %if.end17
  %array_idx.0135 = phi i32 [ 0, %if.end17 ], [ %array_idx.1.lcssa, %for.inc68.for.cond19.preheader_crit_edge ]
  %phase.0133 = phi i32 [ 0, %if.end17 ], [ %inc69, %for.inc68.for.cond19.preheader_crit_edge ]
  br i1 %cmp20130, label %for.cond19.preheader.for.body22_crit_edge, label %for.cond19.preheader.for.inc68_crit_edge

for.cond19.preheader.for.inc68_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc68

for.cond19.preheader.for.body22_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body22

for.body22:                                       ; preds = %if.end45.for.body22_crit_edge, %for.cond19.preheader.for.body22_crit_edge
  %array_idx.1132 = phi i32 [ %array_idx.2, %if.end45.for.body22_crit_edge ], [ %array_idx.0135, %for.cond19.preheader.for.body22_crit_edge ]
  %pair.0131 = phi i32 [ %inc67, %if.end45.for.body22_crit_edge ], [ 0, %for.cond19.preheader.for.body22_crit_edge ]
  %arrayidx = getelementptr i16, ptr %coeffs, i32 %array_idx.1132
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx, align 2
  %37 = ptrtoint ptr %ctx24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctx24, align 4
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 8
  %SCL_COEF_RAM_SELECT = getelementptr inbounds %struct.dce_transform_registers, ptr %40, i32 0, i32 49
  %41 = ptrtoint ptr %SCL_COEF_RAM_SELECT to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %SCL_COEF_RAM_SELECT, align 4
  %43 = ptrtoint ptr %xfm_shift26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xfm_shift26, align 4
  %SCL_C_RAM_FILTER_TYPE = getelementptr inbounds %struct.dce_transform_shift, ptr %44, i32 0, i32 63
  %45 = ptrtoint ptr %SCL_C_RAM_FILTER_TYPE to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %SCL_C_RAM_FILTER_TYPE, align 1
  %47 = ptrtoint ptr %xfm_mask27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xfm_mask27, align 8
  %SCL_C_RAM_FILTER_TYPE28 = getelementptr inbounds %struct.dce_transform_mask, ptr %48, i32 0, i32 63
  %49 = ptrtoint ptr %SCL_C_RAM_FILTER_TYPE28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %SCL_C_RAM_FILTER_TYPE28, align 4
  %SCL_C_RAM_PHASE = getelementptr inbounds %struct.dce_transform_shift, ptr %44, i32 0, i32 64
  %51 = ptrtoint ptr %SCL_C_RAM_PHASE to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %SCL_C_RAM_PHASE, align 1
  %conv30 = zext i8 %52 to i32
  %SCL_C_RAM_PHASE32 = getelementptr inbounds %struct.dce_transform_mask, ptr %48, i32 0, i32 64
  %53 = ptrtoint ptr %SCL_C_RAM_PHASE32 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %SCL_C_RAM_PHASE32, align 4
  %SCL_C_RAM_TAP_PAIR_IDX = getelementptr inbounds %struct.dce_transform_shift, ptr %44, i32 0, i32 65
  %55 = ptrtoint ptr %SCL_C_RAM_TAP_PAIR_IDX to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %SCL_C_RAM_TAP_PAIR_IDX, align 1
  %conv34 = zext i8 %56 to i32
  %SCL_C_RAM_TAP_PAIR_IDX36 = getelementptr inbounds %struct.dce_transform_mask, ptr %48, i32 0, i32 65
  %57 = ptrtoint ptr %SCL_C_RAM_TAP_PAIR_IDX36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %SCL_C_RAM_TAP_PAIR_IDX36, align 4
  %call37 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %38, i32 noundef %42, i32 noundef 0, i32 noundef 3, i8 noundef zeroext %46, i32 noundef %50, i32 noundef %filter_type, i32 noundef %conv30, i32 noundef %54, i32 noundef %phase.0133, i32 noundef %conv34, i32 noundef %58, i32 noundef %pair.0131) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %pair.0131, i32 %sub)
  %cmp39 = icmp eq i32 %pair.0131, %sub
  %or.cond = select i1 %tobool38.not, i1 %cmp39, i1 false
  %inc = add i32 %array_idx.1132, 1
  br i1 %or.cond, label %for.body22.if.end45_crit_edge, label %if.else

for.body22.if.end45_crit_edge:                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.else:                                          ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx43 = getelementptr i16, ptr %coeffs, i32 %inc
  %59 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx43, align 2
  %add44 = add i32 %array_idx.1132, 2
  br label %if.end45

if.end45:                                         ; preds = %if.else, %for.body22.if.end45_crit_edge
  %array_idx.2 = phi i32 [ %add44, %if.else ], [ %inc, %for.body22.if.end45_crit_edge ]
  %odd_coeff.0 = phi i16 [ %60, %if.else ], [ 0, %for.body22.if.end45_crit_edge ]
  %61 = ptrtoint ptr %ctx24 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx24, align 4
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 8
  %SCL_COEF_RAM_TAP_DATA = getelementptr inbounds %struct.dce_transform_registers, ptr %64, i32 0, i32 50
  %65 = ptrtoint ptr %SCL_COEF_RAM_TAP_DATA to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %SCL_COEF_RAM_TAP_DATA, align 4
  %67 = ptrtoint ptr %xfm_shift26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xfm_shift26, align 4
  %SCL_C_RAM_EVEN_TAP_COEF_EN = getelementptr inbounds %struct.dce_transform_shift, ptr %68, i32 0, i32 66
  %69 = ptrtoint ptr %SCL_C_RAM_EVEN_TAP_COEF_EN to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %SCL_C_RAM_EVEN_TAP_COEF_EN, align 1
  %71 = ptrtoint ptr %xfm_mask27 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xfm_mask27, align 8
  %SCL_C_RAM_EVEN_TAP_COEF_EN51 = getelementptr inbounds %struct.dce_transform_mask, ptr %72, i32 0, i32 66
  %73 = ptrtoint ptr %SCL_C_RAM_EVEN_TAP_COEF_EN51 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %SCL_C_RAM_EVEN_TAP_COEF_EN51, align 4
  %SCL_C_RAM_EVEN_TAP_COEF = getelementptr inbounds %struct.dce_transform_shift, ptr %68, i32 0, i32 67
  %75 = ptrtoint ptr %SCL_C_RAM_EVEN_TAP_COEF to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %SCL_C_RAM_EVEN_TAP_COEF, align 1
  %conv53 = zext i8 %76 to i32
  %SCL_C_RAM_EVEN_TAP_COEF55 = getelementptr inbounds %struct.dce_transform_mask, ptr %72, i32 0, i32 67
  %77 = ptrtoint ptr %SCL_C_RAM_EVEN_TAP_COEF55 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %SCL_C_RAM_EVEN_TAP_COEF55, align 4
  %conv56 = zext i16 %36 to i32
  %SCL_C_RAM_ODD_TAP_COEF_EN = getelementptr inbounds %struct.dce_transform_shift, ptr %68, i32 0, i32 68
  %79 = ptrtoint ptr %SCL_C_RAM_ODD_TAP_COEF_EN to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %SCL_C_RAM_ODD_TAP_COEF_EN, align 1
  %conv58 = zext i8 %80 to i32
  %SCL_C_RAM_ODD_TAP_COEF_EN60 = getelementptr inbounds %struct.dce_transform_mask, ptr %72, i32 0, i32 68
  %81 = ptrtoint ptr %SCL_C_RAM_ODD_TAP_COEF_EN60 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %SCL_C_RAM_ODD_TAP_COEF_EN60, align 4
  %SCL_C_RAM_ODD_TAP_COEF = getelementptr inbounds %struct.dce_transform_shift, ptr %68, i32 0, i32 69
  %83 = ptrtoint ptr %SCL_C_RAM_ODD_TAP_COEF to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %SCL_C_RAM_ODD_TAP_COEF, align 1
  %conv62 = zext i8 %84 to i32
  %SCL_C_RAM_ODD_TAP_COEF64 = getelementptr inbounds %struct.dce_transform_mask, ptr %72, i32 0, i32 69
  %85 = ptrtoint ptr %SCL_C_RAM_ODD_TAP_COEF64 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %SCL_C_RAM_ODD_TAP_COEF64, align 4
  %conv65 = zext i16 %odd_coeff.0 to i32
  %call66 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %62, i32 noundef %66, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %70, i32 noundef %74, i32 noundef 1, i32 noundef %conv53, i32 noundef %78, i32 noundef %conv56, i32 noundef %conv58, i32 noundef %82, i32 noundef 1, i32 noundef %conv62, i32 noundef %86, i32 noundef %conv65) #6
  %inc67 = add nuw nsw i32 %pair.0131, 1
  %exitcond.not = icmp eq i32 %inc67, %div
  br i1 %exitcond.not, label %if.end45.for.inc68_crit_edge, label %if.end45.for.body22_crit_edge

if.end45.for.body22_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22

if.end45.for.inc68_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc68

for.inc68:                                        ; preds = %if.end45.for.inc68_crit_edge, %for.cond19.preheader.for.inc68_crit_edge
  %array_idx.1.lcssa = phi i32 [ %array_idx.0135, %for.cond19.preheader.for.inc68_crit_edge ], [ %array_idx.2, %if.end45.for.inc68_crit_edge ]
  %inc69 = add nuw nsw i32 %phase.0133, 1
  %exitcond136.not = icmp eq i32 %inc69, 9
  br i1 %exitcond136.not, label %for.end70, label %for.inc68.for.cond19.preheader_crit_edge

for.inc68.for.cond19.preheader_crit_edge:         ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond19.preheader

for.end70:                                        ; preds = %for.inc68
  %87 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs, align 8
  %DCFE_MEM_PWR_CTRL72 = getelementptr inbounds %struct.dce_transform_registers, ptr %88, i32 0, i32 47
  %89 = ptrtoint ptr %DCFE_MEM_PWR_CTRL72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %DCFE_MEM_PWR_CTRL72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool73.not = icmp eq i32 %90, 0
  br i1 %tobool73.not, label %for.end70.cleanup_crit_edge, label %if.then74

for.end70.cleanup_crit_edge:                      ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then74:                                        ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %ctx24 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ctx24, align 4
  tail call void @dm_write_reg_func(ptr noundef %92, i32 noundef %90, i32 noundef %power_ctl.0, ptr noundef nonnull @__func__.program_multi_taps_filter) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %for.end70.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_fixpt_u0d19([1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_filter_4tap_16p([1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_filter_3tap_16p([1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_filter_2tap_16p() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_round(ptr nocapture noundef readonly %xfm_dce, i32 noundef %mode, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %depth, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %entry.sw.epilog_crit_edge, label %sw.default

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.set_round, i32 noundef 691) #6
  tail call void @kgdb_breakpoint() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge
  %depth_bits.0 = phi i32 [ 4, %sw.default ], [ %switch.tableidx, %entry.sw.epilog_crit_edge ]
  %1 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %mode, label %do.body10 [
    i32 0, label %sw.epilog.sw.epilog13_crit_edge
    i32 1, label %sw.bb8
  ]

sw.epilog.sw.epilog13_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

do.body10:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.set_round, i32 noundef 703) #6
  tail call void @kgdb_breakpoint() #6
  br label %sw.epilog13

sw.epilog13:                                      ; preds = %do.body10, %sw.bb8, %sw.epilog.sw.epilog13_crit_edge
  %mode_bit.0 = phi i32 [ 0, %do.body10 ], [ 8, %sw.bb8 ], [ %mode, %sw.epilog.sw.epilog13_crit_edge ]
  %or = or i32 %mode_bit.0, %depth_bits.0
  %ctx = getelementptr inbounds %struct.transform, ptr %xfm_dce, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %OUT_ROUND_CONTROL = getelementptr inbounds %struct.dce_transform_registers, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %OUT_ROUND_CONTROL to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %OUT_ROUND_CONTROL, align 4
  %xfm_shift = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 2
  %8 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xfm_shift, align 4
  %OUT_ROUND_TRUNC_MODE = getelementptr inbounds %struct.dce_transform_shift, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %OUT_ROUND_TRUNC_MODE to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %OUT_ROUND_TRUNC_MODE, align 1
  %xfm_mask = getelementptr inbounds %struct.dce_transform, ptr %xfm_dce, i32 0, i32 3
  %12 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xfm_mask, align 8
  %OUT_ROUND_TRUNC_MODE14 = getelementptr inbounds %struct.dce_transform_mask, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %OUT_ROUND_TRUNC_MODE14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %OUT_ROUND_TRUNC_MODE14, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %3, i32 noundef %7, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %11, i32 noundef %15, i32 noundef %or) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @convert_float_matrix(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_transform_set_scaler(ptr noundef %xfm, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %tmp.i = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %DC_LB_MEMORY_SPLIT = getelementptr inbounds %struct.dce_transform_registers, ptr %3, i32 0, i32 60
  %4 = ptrtoint ptr %DC_LB_MEMORY_SPLIT to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DC_LB_MEMORY_SPLIT, align 4
  %xfm_shift = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %6 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfm_shift, align 4
  %DC_LB_MEMORY_CONFIG = getelementptr inbounds %struct.dce_transform_shift, ptr %7, i32 0, i32 84
  %8 = ptrtoint ptr %DC_LB_MEMORY_CONFIG to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DC_LB_MEMORY_CONFIG, align 1
  %xfm_mask = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %10 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfm_mask, align 8
  %DC_LB_MEMORY_CONFIG1 = getelementptr inbounds %struct.dce_transform_mask, ptr %11, i32 0, i32 84
  %12 = ptrtoint ptr %DC_LB_MEMORY_CONFIG1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DC_LB_MEMORY_CONFIG1, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0) #6
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %DC_LB_MEM_SIZE = getelementptr inbounds %struct.dce_transform_registers, ptr %17, i32 0, i32 61
  %18 = ptrtoint ptr %DC_LB_MEM_SIZE to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DC_LB_MEM_SIZE, align 4
  %20 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xfm_shift, align 4
  %DC_LB_MEM_SIZE6 = getelementptr inbounds %struct.dce_transform_shift, ptr %21, i32 0, i32 85
  %22 = ptrtoint ptr %DC_LB_MEM_SIZE6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %DC_LB_MEM_SIZE6, align 1
  %24 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xfm_mask, align 8
  %DC_LB_MEM_SIZE8 = getelementptr inbounds %struct.dce_transform_mask, ptr %25, i32 0, i32 85
  %26 = ptrtoint ptr %DC_LB_MEM_SIZE8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DC_LB_MEM_SIZE8, align 4
  %lb_memory_size = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 9
  %28 = ptrtoint ptr %lb_memory_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lb_memory_size, align 8
  %call9 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %15, i32 noundef %19, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %23, i32 noundef %27, i32 noundef %29) #6
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %SCL_F_SHARP_CONTROL = getelementptr inbounds %struct.dce_transform_registers, ptr %33, i32 0, i32 64
  %34 = ptrtoint ptr %SCL_F_SHARP_CONTROL to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %SCL_F_SHARP_CONTROL, align 4
  tail call void @dm_write_reg_func(ptr noundef %31, i32 noundef %35, i32 noundef 0, ptr noundef nonnull @__func__.dce60_transform_set_scaler) #6
  tail call fastcc void @program_overscan(ptr noundef %xfm, ptr noundef %data)
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 8
  %SCL_BYPASS_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %39, i32 0, i32 42
  %40 = ptrtoint ptr %SCL_BYPASS_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %SCL_BYPASS_CONTROL.i, align 4
  %42 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xfm_shift, align 4
  %SCL_BYPASS_MODE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %43, i32 0, i32 52
  %44 = ptrtoint ptr %SCL_BYPASS_MODE.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %SCL_BYPASS_MODE.i, align 1
  %46 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xfm_mask, align 8
  %SCL_BYPASS_MODE1.i = getelementptr inbounds %struct.dce_transform_mask, ptr %47, i32 0, i32 52
  %48 = ptrtoint ptr %SCL_BYPASS_MODE1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %SCL_BYPASS_MODE1.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %37, i32 noundef %41, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %45, i32 noundef %49, i32 noundef 0) #6
  %taps.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 2
  %h_taps.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %h_taps.i, align 4
  %52 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %taps.i, align 8
  %add.i = add i32 %53, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 3
  br i1 %cmp.i, label %entry.if.end53_crit_edge, label %if.then

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then:                                          ; preds = %entry
  %54 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx, align 4
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 8
  %SCL_TAP_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %57, i32 0, i32 40
  %58 = ptrtoint ptr %SCL_TAP_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %SCL_TAP_CONTROL.i, align 4
  %60 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xfm_shift, align 4
  %SCL_H_NUM_OF_TAPS.i = getelementptr inbounds %struct.dce_transform_shift, ptr %61, i32 0, i32 54
  %62 = ptrtoint ptr %SCL_H_NUM_OF_TAPS.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %SCL_H_NUM_OF_TAPS.i, align 1
  %64 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %xfm_mask, align 8
  %SCL_H_NUM_OF_TAPS8.i = getelementptr inbounds %struct.dce_transform_mask, ptr %65, i32 0, i32 54
  %66 = ptrtoint ptr %SCL_H_NUM_OF_TAPS8.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %SCL_H_NUM_OF_TAPS8.i, align 4
  %sub.i = add i32 %51, -1
  %SCL_V_NUM_OF_TAPS.i = getelementptr inbounds %struct.dce_transform_shift, ptr %61, i32 0, i32 55
  %68 = ptrtoint ptr %SCL_V_NUM_OF_TAPS.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %SCL_V_NUM_OF_TAPS.i, align 1
  %conv.i = zext i8 %69 to i32
  %SCL_V_NUM_OF_TAPS13.i = getelementptr inbounds %struct.dce_transform_mask, ptr %65, i32 0, i32 55
  %70 = ptrtoint ptr %SCL_V_NUM_OF_TAPS13.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %SCL_V_NUM_OF_TAPS13.i, align 4
  %sub16.i = add i32 %53, -1
  %call17.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %55, i32 noundef %59, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %63, i32 noundef %67, i32 noundef %sub.i, i32 noundef %conv.i, i32 noundef %71, i32 noundef %sub16.i) #6
  %ratios.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 6
  %72 = ptrtoint ptr %ratios.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %.unpack.i = load i64, ptr %ratios.i, align 8
  %73 = insertvalue [1 x i64] undef, i64 %.unpack.i, 0
  %call.i105 = tail call i32 @dc_fixpt_u2d19([1 x i64] %73) #6
  %shl.i = shl i32 %call.i105, 5
  %vert.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 6, i32 1
  %74 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %.unpack1.i = load i64, ptr %vert.i, align 8
  %75 = insertvalue [1 x i64] undef, i64 %.unpack1.i, 0
  %call3.i = tail call i32 @dc_fixpt_u2d19([1 x i64] %75) #6
  %shl4.i = shl i32 %call3.i, 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %76 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %taps.i, align 8
  %add.i107 = add i32 %77, 1
  %conv1.i.i = zext i32 %add.i107 to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  %78 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %.unpack2.i = load i64, ptr %vert.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack2.i)
  %cmp.i.i = icmp slt i64 %.unpack2.i, 0
  %sub.i.i = sub i64 9223372036854775807, %.unpack2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %shl.i.i)
  %cmp4.not.i.i = icmp slt i64 %sub.i.i, %shl.i.i
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp4.not.i.i
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.then.dce60_calculate_inits.exit_crit_edge

if.then.dce60_calculate_inits.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce60_calculate_inits.exit

lor.rhs.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.unpack2.i)
  %cmp6.i.i = icmp sgt i64 %.unpack2.i, -1
  %sub8.i.i = sub i64 -9223372036854775808, %.unpack2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8.i.i, i64 %shl.i.i)
  %cmp10.i.i = icmp sgt i64 %sub8.i.i, %shl.i.i
  %or.cond67.i.i = select i1 %cmp6.i.i, i1 true, i1 %cmp10.i.i
  br i1 %or.cond67.i.i, label %land.rhs13.i.i, label %lor.rhs.i.i.dce60_calculate_inits.exit_crit_edge

lor.rhs.i.i.dce60_calculate_inits.exit_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce60_calculate_inits.exit

land.rhs13.i.i:                                   ; preds = %lor.rhs.i.i
  %.b65.i.i = load i1, ptr @dc_fixpt_add.__already_done, align 1, !noalias !83
  br i1 %.b65.i.i, label %land.rhs13.i.i.if.then50.i.i_crit_edge, label %if.then.i.i, !prof !75

land.rhs13.i.i.if.then50.i.i_crit_edge:           ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i.i

if.then.i.i:                                      ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dc_fixpt_add.__already_done, align 1, !noalias !83
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 250, i32 noundef 9, ptr noundef null) #6, !noalias !83
  br label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.then.i.i, %land.rhs13.i.i.if.then50.i.i_crit_edge
  tail call void @kgdb_breakpoint() #6, !noalias !83
  br label %dce60_calculate_inits.exit

dce60_calculate_inits.exit:                       ; preds = %if.then50.i.i, %lor.rhs.i.i.dce60_calculate_inits.exit_crit_edge, %if.then.dce60_calculate_inits.exit_crit_edge
  %add.i.i = add i64 %shl.i.i, %.unpack2.i
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %tmp.i, i64 noundef %add.i.i, i64 noundef 8589934592) #6
  %79 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %v_init.sroa.0.0.copyload.i = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  %.fca.0.insert25.i = insertvalue [1 x i64] poison, i64 %v_init.sroa.0.0.copyload.i, 0
  %80 = call i64 @llvm.abs.i64(i64 %v_init.sroa.0.0.copyload.i, i1 false) #6
  %extract12.i.i = lshr i64 %80, 32
  %extract.t13.i.i = trunc i64 %extract12.i.i to i32
  %sub7.i.i = sub i32 0, %extract.t13.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %v_init.sroa.0.0.copyload.i)
  %cmp414.i.i = icmp slt i64 %v_init.sroa.0.0.copyload.i, 0
  %retval.0.i.i = select i1 %cmp414.i.i, i32 %sub7.i.i, i32 %extract.t13.i.i
  %call17.i108 = call i32 @dc_fixpt_u0d19([1 x i64] %.fca.0.insert25.i) #6
  %shl18.i = shl i32 %call17.i108, 5
  %81 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ctx, align 4
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 8
  %SCL_HORZ_FILTER_SCALE_RATIO.i = getelementptr inbounds %struct.dce_transform_registers, ptr %84, i32 0, i32 53
  %85 = ptrtoint ptr %SCL_HORZ_FILTER_SCALE_RATIO.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %SCL_HORZ_FILTER_SCALE_RATIO.i, align 4
  %87 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %xfm_shift, align 4
  %SCL_H_SCALE_RATIO.i = getelementptr inbounds %struct.dce_transform_shift, ptr %88, i32 0, i32 74
  %89 = ptrtoint ptr %SCL_H_SCALE_RATIO.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %SCL_H_SCALE_RATIO.i, align 1
  %91 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %xfm_mask, align 8
  %SCL_H_SCALE_RATIO1.i = getelementptr inbounds %struct.dce_transform_mask, ptr %92, i32 0, i32 74
  %93 = ptrtoint ptr %SCL_H_SCALE_RATIO1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %SCL_H_SCALE_RATIO1.i, align 4
  %call.i113 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %82, i32 noundef %86, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %90, i32 noundef %94, i32 noundef %shl.i) #6
  %95 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ctx, align 4
  %97 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs, align 8
  %SCL_VERT_FILTER_SCALE_RATIO.i = getelementptr inbounds %struct.dce_transform_registers, ptr %98, i32 0, i32 54
  %99 = ptrtoint ptr %SCL_VERT_FILTER_SCALE_RATIO.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %SCL_VERT_FILTER_SCALE_RATIO.i, align 4
  %101 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %xfm_shift, align 4
  %SCL_V_SCALE_RATIO.i = getelementptr inbounds %struct.dce_transform_shift, ptr %102, i32 0, i32 75
  %103 = ptrtoint ptr %SCL_V_SCALE_RATIO.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %SCL_V_SCALE_RATIO.i, align 1
  %105 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xfm_mask, align 8
  %SCL_V_SCALE_RATIO7.i = getelementptr inbounds %struct.dce_transform_mask, ptr %106, i32 0, i32 75
  %107 = ptrtoint ptr %SCL_V_SCALE_RATIO7.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %SCL_V_SCALE_RATIO7.i, align 4
  %call8.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %96, i32 noundef %100, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %104, i32 noundef %108, i32 noundef %shl4.i) #6
  %109 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ctx, align 4
  %111 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs, align 8
  %SCL_HORZ_FILTER_INIT_RGB_LUMA.i = getelementptr inbounds %struct.dce_transform_registers, ptr %112, i32 0, i32 56
  %113 = ptrtoint ptr %SCL_HORZ_FILTER_INIT_RGB_LUMA.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %SCL_HORZ_FILTER_INIT_RGB_LUMA.i, align 4
  %115 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %xfm_shift, align 4
  %SCL_H_INIT_INT_RGB_Y.i = getelementptr inbounds %struct.dce_transform_shift, ptr %116, i32 0, i32 78
  %117 = ptrtoint ptr %SCL_H_INIT_INT_RGB_Y.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %SCL_H_INIT_INT_RGB_Y.i, align 1
  %119 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %xfm_mask, align 8
  %SCL_H_INIT_INT_RGB_Y14.i = getelementptr inbounds %struct.dce_transform_mask, ptr %120, i32 0, i32 78
  %121 = ptrtoint ptr %SCL_H_INIT_INT_RGB_Y14.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %SCL_H_INIT_INT_RGB_Y14.i, align 4
  %SCL_H_INIT_FRAC_RGB_Y.i = getelementptr inbounds %struct.dce_transform_shift, ptr %116, i32 0, i32 79
  %123 = ptrtoint ptr %SCL_H_INIT_FRAC_RGB_Y.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %SCL_H_INIT_FRAC_RGB_Y.i, align 1
  %conv.i116 = zext i8 %124 to i32
  %SCL_H_INIT_FRAC_RGB_Y17.i = getelementptr inbounds %struct.dce_transform_mask, ptr %120, i32 0, i32 79
  %125 = ptrtoint ptr %SCL_H_INIT_FRAC_RGB_Y17.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %SCL_H_INIT_FRAC_RGB_Y17.i, align 4
  %call19.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %110, i32 noundef %114, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %118, i32 noundef %122, i32 noundef 1, i32 noundef %conv.i116, i32 noundef %126, i32 noundef 0) #6
  %127 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ctx, align 4
  %129 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs, align 8
  %SCL_HORZ_FILTER_INIT_CHROMA.i = getelementptr inbounds %struct.dce_transform_registers, ptr %130, i32 0, i32 57
  %131 = ptrtoint ptr %SCL_HORZ_FILTER_INIT_CHROMA.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %SCL_HORZ_FILTER_INIT_CHROMA.i, align 4
  %133 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %xfm_shift, align 4
  %SCL_H_INIT_INT_CBCR.i = getelementptr inbounds %struct.dce_transform_shift, ptr %134, i32 0, i32 80
  %135 = ptrtoint ptr %SCL_H_INIT_INT_CBCR.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %SCL_H_INIT_INT_CBCR.i, align 1
  %137 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %xfm_mask, align 8
  %SCL_H_INIT_INT_CBCR25.i = getelementptr inbounds %struct.dce_transform_mask, ptr %138, i32 0, i32 80
  %139 = ptrtoint ptr %SCL_H_INIT_INT_CBCR25.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %SCL_H_INIT_INT_CBCR25.i, align 4
  %SCL_H_INIT_FRAC_CBCR.i = getelementptr inbounds %struct.dce_transform_shift, ptr %134, i32 0, i32 81
  %141 = ptrtoint ptr %SCL_H_INIT_FRAC_CBCR.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %SCL_H_INIT_FRAC_CBCR.i, align 1
  %conv28.i = zext i8 %142 to i32
  %SCL_H_INIT_FRAC_CBCR30.i = getelementptr inbounds %struct.dce_transform_mask, ptr %138, i32 0, i32 81
  %143 = ptrtoint ptr %SCL_H_INIT_FRAC_CBCR30.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %SCL_H_INIT_FRAC_CBCR30.i, align 4
  %call33.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %128, i32 noundef %132, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %136, i32 noundef %140, i32 noundef 1, i32 noundef %conv28.i, i32 noundef %144, i32 noundef 0) #6
  %145 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctx, align 4
  %147 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs, align 8
  %SCL_VERT_FILTER_INIT.i = getelementptr inbounds %struct.dce_transform_registers, ptr %148, i32 0, i32 58
  %149 = ptrtoint ptr %SCL_VERT_FILTER_INIT.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %SCL_VERT_FILTER_INIT.i, align 4
  %151 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %xfm_shift, align 4
  %SCL_V_INIT_INT.i = getelementptr inbounds %struct.dce_transform_shift, ptr %152, i32 0, i32 82
  %153 = ptrtoint ptr %SCL_V_INIT_INT.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %SCL_V_INIT_INT.i, align 1
  %155 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %xfm_mask, align 8
  %SCL_V_INIT_INT39.i = getelementptr inbounds %struct.dce_transform_mask, ptr %156, i32 0, i32 82
  %157 = ptrtoint ptr %SCL_V_INIT_INT39.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %SCL_V_INIT_INT39.i, align 4
  %SCL_V_INIT_FRAC.i = getelementptr inbounds %struct.dce_transform_shift, ptr %152, i32 0, i32 83
  %159 = ptrtoint ptr %SCL_V_INIT_FRAC.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %SCL_V_INIT_FRAC.i, align 1
  %conv42.i = zext i8 %160 to i32
  %SCL_V_INIT_FRAC44.i = getelementptr inbounds %struct.dce_transform_mask, ptr %156, i32 0, i32 83
  %161 = ptrtoint ptr %SCL_V_INIT_FRAC44.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %SCL_V_INIT_FRAC44.i, align 4
  %call47.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %146, i32 noundef %150, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %154, i32 noundef %158, i32 noundef %retval.0.i.i, i32 noundef %conv42.i, i32 noundef %162, i32 noundef %shl18.i) #6
  %163 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ctx, align 4
  %165 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs, align 8
  %SCL_AUTOMATIC_MODE_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %166, i32 0, i32 59
  %167 = ptrtoint ptr %SCL_AUTOMATIC_MODE_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %SCL_AUTOMATIC_MODE_CONTROL.i, align 4
  call void @dm_write_reg_func(ptr noundef %164, i32 noundef %168, i32 noundef 0, ptr noundef nonnull @__func__.dce60_program_scl_ratios_inits) #6
  %169 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %taps.i, align 8
  %171 = ptrtoint ptr %vert.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %.unpack = load i64, ptr %vert.i, align 8
  %172 = insertvalue [1 x i64] undef, i64 %.unpack, 0
  %173 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %170, label %do.body.i [
    i32 4, label %if.then.i
    i32 3, label %if.then3.i
    i32 2, label %if.then8.i
    i32 1, label %dce60_calculate_inits.exit.get_filter_coeffs_16p.exit_crit_edge
  ]

dce60_calculate_inits.exit.get_filter_coeffs_16p.exit_crit_edge: ; preds = %dce60_calculate_inits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_filter_coeffs_16p.exit

if.then.i:                                        ; preds = %dce60_calculate_inits.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i119 = call ptr @get_filter_4tap_16p([1 x i64] %172) #6
  br label %get_filter_coeffs_16p.exit

if.then3.i:                                       ; preds = %dce60_calculate_inits.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call ptr @get_filter_3tap_16p([1 x i64] %172) #6
  br label %get_filter_coeffs_16p.exit

if.then8.i:                                       ; preds = %dce60_calculate_inits.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call ptr @get_filter_2tap_16p() #6
  br label %get_filter_coeffs_16p.exit

do.body.i:                                        ; preds = %dce60_calculate_inits.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_filter_coeffs_16p, i32 noundef 403) #6
  call void @kgdb_breakpoint() #6
  br label %get_filter_coeffs_16p.exit

get_filter_coeffs_16p.exit:                       ; preds = %do.body.i, %if.then8.i, %if.then3.i, %if.then.i, %dce60_calculate_inits.exit.get_filter_coeffs_16p.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i119, %if.then.i ], [ %call5.i, %if.then3.i ], [ %call9.i, %if.then8.i ], [ null, %do.body.i ], [ null, %dce60_calculate_inits.exit.get_filter_coeffs_16p.exit_crit_edge ]
  %174 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %h_taps.i, align 4
  %176 = ptrtoint ptr %ratios.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %.unpack104 = load i64, ptr %ratios.i, align 8
  %177 = insertvalue [1 x i64] undef, i64 %.unpack104, 0
  %178 = zext i32 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %175, label %do.body.i126 [
    i32 4, label %if.then.i121
    i32 3, label %if.then3.i123
    i32 2, label %if.then8.i125
    i32 1, label %get_filter_coeffs_16p.exit.get_filter_coeffs_16p.exit128_crit_edge
  ]

get_filter_coeffs_16p.exit.get_filter_coeffs_16p.exit128_crit_edge: ; preds = %get_filter_coeffs_16p.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_filter_coeffs_16p.exit128

if.then.i121:                                     ; preds = %get_filter_coeffs_16p.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i120 = call ptr @get_filter_4tap_16p([1 x i64] %177) #6
  br label %get_filter_coeffs_16p.exit128

if.then3.i123:                                    ; preds = %get_filter_coeffs_16p.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i122 = call ptr @get_filter_3tap_16p([1 x i64] %177) #6
  br label %get_filter_coeffs_16p.exit128

if.then8.i125:                                    ; preds = %get_filter_coeffs_16p.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i124 = call ptr @get_filter_2tap_16p() #6
  br label %get_filter_coeffs_16p.exit128

do.body.i126:                                     ; preds = %get_filter_coeffs_16p.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_filter_coeffs_16p, i32 noundef 403) #6
  call void @kgdb_breakpoint() #6
  br label %get_filter_coeffs_16p.exit128

get_filter_coeffs_16p.exit128:                    ; preds = %do.body.i126, %if.then8.i125, %if.then3.i123, %if.then.i121, %get_filter_coeffs_16p.exit.get_filter_coeffs_16p.exit128_crit_edge
  %retval.0.i127 = phi ptr [ %call.i120, %if.then.i121 ], [ %call5.i122, %if.then3.i123 ], [ %call9.i124, %if.then8.i125 ], [ null, %do.body.i126 ], [ null, %get_filter_coeffs_16p.exit.get_filter_coeffs_16p.exit128_crit_edge ]
  %filter_v = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 4
  %179 = ptrtoint ptr %filter_v to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %filter_v, align 4
  %cmp.not = icmp eq ptr %retval.0.i, %180
  br i1 %cmp.not, label %lor.lhs.false, label %get_filter_coeffs_16p.exit128.if.then20_crit_edge

get_filter_coeffs_16p.exit128.if.then20_crit_edge: ; preds = %get_filter_coeffs_16p.exit128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %get_filter_coeffs_16p.exit128
  %filter_h = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 5
  %181 = ptrtoint ptr %filter_h to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %filter_h, align 8
  %cmp19.not = icmp eq ptr %retval.0.i127, %182
  br i1 %cmp19.not, label %lor.lhs.false.if.end53_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %get_filter_coeffs_16p.exit128.if.then20_crit_edge
  %cmp22 = icmp eq ptr %180, null
  br i1 %cmp22, label %if.then23, label %if.then20.if.end_crit_edge

if.then20.if.end_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %183 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ctx, align 4
  %185 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs, align 8
  %SCL_VERT_FILTER_CONTROL = getelementptr inbounds %struct.dce_transform_registers, ptr %186, i32 0, i32 45
  %187 = ptrtoint ptr %SCL_VERT_FILTER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %SCL_VERT_FILTER_CONTROL, align 4
  %189 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %xfm_shift, align 4
  %SCL_V_2TAP_HARDCODE_COEF_EN = getelementptr inbounds %struct.dce_transform_shift, ptr %190, i32 0, i32 88
  %191 = ptrtoint ptr %SCL_V_2TAP_HARDCODE_COEF_EN to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %SCL_V_2TAP_HARDCODE_COEF_EN, align 1
  %193 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %xfm_mask, align 8
  %SCL_V_2TAP_HARDCODE_COEF_EN29 = getelementptr inbounds %struct.dce_transform_mask, ptr %194, i32 0, i32 88
  %195 = ptrtoint ptr %SCL_V_2TAP_HARDCODE_COEF_EN29 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %SCL_V_2TAP_HARDCODE_COEF_EN29, align 4
  %call30 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %184, i32 noundef %188, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %192, i32 noundef %196, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then20.if.end_crit_edge
  %197 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %taps.i, align 8
  call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %198, ptr noundef %retval.0.i, i32 noundef 0)
  %199 = ptrtoint ptr %taps.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %taps.i, align 8
  call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %200, ptr noundef %retval.0.i, i32 noundef 4)
  %filter_h35 = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 5
  %201 = ptrtoint ptr %filter_h35 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %filter_h35, align 8
  %cmp36 = icmp eq ptr %202, null
  br i1 %cmp36, label %if.then37, label %if.end.if.end45_crit_edge

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %203 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ctx, align 4
  %205 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs, align 8
  %SCL_HORZ_FILTER_CONTROL = getelementptr inbounds %struct.dce_transform_registers, ptr %206, i32 0, i32 46
  %207 = ptrtoint ptr %SCL_HORZ_FILTER_CONTROL to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %SCL_HORZ_FILTER_CONTROL, align 4
  %209 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %xfm_shift, align 4
  %SCL_H_2TAP_HARDCODE_COEF_EN = getelementptr inbounds %struct.dce_transform_shift, ptr %210, i32 0, i32 89
  %211 = ptrtoint ptr %SCL_H_2TAP_HARDCODE_COEF_EN to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %SCL_H_2TAP_HARDCODE_COEF_EN, align 1
  %213 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %xfm_mask, align 8
  %SCL_H_2TAP_HARDCODE_COEF_EN43 = getelementptr inbounds %struct.dce_transform_mask, ptr %214, i32 0, i32 89
  %215 = ptrtoint ptr %SCL_H_2TAP_HARDCODE_COEF_EN43 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %SCL_H_2TAP_HARDCODE_COEF_EN43, align 4
  %call44 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %204, i32 noundef %208, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %212, i32 noundef %216, i32 noundef 0) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %if.end.if.end45_crit_edge
  %217 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %h_taps.i, align 4
  call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %218, ptr noundef %retval.0.i127, i32 noundef 2)
  %219 = ptrtoint ptr %h_taps.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %h_taps.i, align 4
  call fastcc void @program_multi_taps_filter(ptr noundef %xfm, i32 noundef %220, ptr noundef %retval.0.i127, i32 noundef 5)
  %221 = ptrtoint ptr %filter_v to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %retval.0.i, ptr %filter_v, align 4
  %222 = ptrtoint ptr %filter_h35 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %retval.0.i127, ptr %filter_h35, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.end45, %lor.lhs.false.if.end53_crit_edge, %entry.if.end53_crit_edge
  %viewport = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3
  %223 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ctx, align 4
  %225 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs, align 8
  %VIEWPORT_START.i = getelementptr inbounds %struct.dce_transform_registers, ptr %226, i32 0, i32 51
  %227 = ptrtoint ptr %VIEWPORT_START.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %VIEWPORT_START.i, align 4
  %229 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %xfm_shift, align 4
  %VIEWPORT_X_START.i = getelementptr inbounds %struct.dce_transform_shift, ptr %230, i32 0, i32 70
  %231 = ptrtoint ptr %VIEWPORT_X_START.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %VIEWPORT_X_START.i, align 1
  %233 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %xfm_mask, align 8
  %VIEWPORT_X_START1.i = getelementptr inbounds %struct.dce_transform_mask, ptr %234, i32 0, i32 70
  %235 = ptrtoint ptr %VIEWPORT_X_START1.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %VIEWPORT_X_START1.i, align 4
  %237 = ptrtoint ptr %viewport to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %viewport, align 4
  %VIEWPORT_Y_START.i = getelementptr inbounds %struct.dce_transform_shift, ptr %230, i32 0, i32 71
  %239 = ptrtoint ptr %VIEWPORT_Y_START.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %VIEWPORT_Y_START.i, align 1
  %conv.i133 = zext i8 %240 to i32
  %VIEWPORT_Y_START4.i = getelementptr inbounds %struct.dce_transform_mask, ptr %234, i32 0, i32 71
  %241 = ptrtoint ptr %VIEWPORT_Y_START4.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %VIEWPORT_Y_START4.i, align 4
  %y.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 1
  %243 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %y.i, align 4
  %call.i134 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %224, i32 noundef %228, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %232, i32 noundef %236, i32 noundef %238, i32 noundef %conv.i133, i32 noundef %242, i32 noundef %244) #6
  %245 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ctx, align 4
  %247 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %regs, align 8
  %VIEWPORT_SIZE.i = getelementptr inbounds %struct.dce_transform_registers, ptr %248, i32 0, i32 52
  %249 = ptrtoint ptr %VIEWPORT_SIZE.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %VIEWPORT_SIZE.i, align 4
  %251 = ptrtoint ptr %xfm_shift to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %xfm_shift, align 4
  %VIEWPORT_HEIGHT.i = getelementptr inbounds %struct.dce_transform_shift, ptr %252, i32 0, i32 72
  %253 = ptrtoint ptr %VIEWPORT_HEIGHT.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %VIEWPORT_HEIGHT.i, align 1
  %255 = ptrtoint ptr %xfm_mask to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %xfm_mask, align 8
  %VIEWPORT_HEIGHT10.i = getelementptr inbounds %struct.dce_transform_mask, ptr %256, i32 0, i32 72
  %257 = ptrtoint ptr %VIEWPORT_HEIGHT10.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %VIEWPORT_HEIGHT10.i, align 4
  %height.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 3
  %259 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %height.i, align 4
  %VIEWPORT_WIDTH.i = getelementptr inbounds %struct.dce_transform_shift, ptr %252, i32 0, i32 73
  %261 = ptrtoint ptr %VIEWPORT_WIDTH.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %VIEWPORT_WIDTH.i, align 1
  %conv12.i = zext i8 %262 to i32
  %VIEWPORT_WIDTH14.i = getelementptr inbounds %struct.dce_transform_mask, ptr %256, i32 0, i32 73
  %263 = ptrtoint ptr %VIEWPORT_WIDTH14.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %VIEWPORT_WIDTH14.i, align 4
  %width.i = getelementptr inbounds %struct.scaler_data, ptr %data, i32 0, i32 3, i32 2
  %265 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %width.i, align 4
  %call15.i = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %246, i32 noundef %250, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %254, i32 noundef %258, i32 noundef %260, i32 noundef %conv12.i, i32 noundef %264, i32 noundef %266) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce60_transform_set_pixel_storage_depth(ptr nocapture noundef readonly %xfm, i32 noundef %depth, ptr nocapture noundef readonly %bit_depth_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %depth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.hole_check, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %entry.sw.default_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce60_transform_set_pixel_storage_depth, i32 noundef 1055) #6
  tail call void @kgdb_breakpoint() #6
  br label %set_denormalization.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.dce60_transform_set_pixel_storage_depth, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %set_denormalization.exit

set_denormalization.exit:                         ; preds = %switch.lookup, %sw.default
  %denorm_mode.0.i = phi i32 [ 3, %sw.default ], [ %switch.load, %switch.lookup ]
  %ctx.i = getelementptr inbounds %struct.transform, ptr %xfm, i32 0, i32 1
  %3 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %DENORM_CONTROL.i = getelementptr inbounds %struct.dce_transform_registers, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %DENORM_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DENORM_CONTROL.i, align 4
  %xfm_shift.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 2
  %9 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfm_shift.i, align 4
  %DENORM_MODE.i = getelementptr inbounds %struct.dce_transform_shift, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %DENORM_MODE.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %DENORM_MODE.i, align 1
  %xfm_mask.i = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 3
  %13 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xfm_mask.i, align 8
  %DENORM_MODE5.i = getelementptr inbounds %struct.dce_transform_mask, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %DENORM_MODE5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %DENORM_MODE5.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %4, i32 noundef %8, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %12, i32 noundef %16, i32 noundef %denorm_mode.0.i) #6
  %17 = ptrtoint ptr %bit_depth_params to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %bit_depth_params, align 4
  %18 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool47.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool47.not.i, label %set_denormalization.exit.dce60_program_bit_depth_reduction.exit_crit_edge, label %if.then48.i

set_denormalization.exit.dce60_program_bit_depth_reduction.exit_crit_edge: ; preds = %set_denormalization.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce60_program_bit_depth_reduction.exit

if.then48.i:                                      ; preds = %set_denormalization.exit
  %20 = lshr i32 %bf.load.i, 28
  %.lobit.i = and i32 %20, 1
  %bf.lshr56.i = lshr i32 %bf.load.i, 29
  %bf.clear57.i = and i32 %bf.lshr56.i, 3
  %21 = zext i32 %bf.clear57.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %bf.clear57.i, label %if.else71.i [
    i32 0, label %if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge
    i32 1, label %if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge17
    i32 2, label %if.then70.i
  ]

if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge17: ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce60_program_bit_depth_reduction.exit

if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge: ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce60_program_bit_depth_reduction.exit

if.then70.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dce60_program_bit_depth_reduction.exit

if.else71.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dce60_program_bit_depth_reduction, i32 noundef 882) #6
  tail call void @kgdb_breakpoint() #6
  br label %dce60_program_bit_depth_reduction.exit

dce60_program_bit_depth_reduction.exit:           ; preds = %if.else71.i, %if.then70.i, %if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge, %if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge17, %set_denormalization.exit.dce60_program_bit_depth_reduction.exit_crit_edge
  %spatial_dither_enable.0.off0.i = phi i1 [ false, %if.then70.i ], [ false, %if.else71.i ], [ %19, %set_denormalization.exit.dce60_program_bit_depth_reduction.exit_crit_edge ], [ false, %if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge ], [ false, %if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge17 ]
  %trunc_mode.0.i = phi i32 [ %.lobit.i, %if.then70.i ], [ %.lobit.i, %if.else71.i ], [ 0, %set_denormalization.exit.dce60_program_bit_depth_reduction.exit_crit_edge ], [ %.lobit.i, %if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge ], [ %.lobit.i, %if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge17 ]
  %trunc_round_depth.0.i = phi i32 [ 4, %if.then70.i ], [ 2, %if.else71.i ], [ 2, %set_denormalization.exit.dce60_program_bit_depth_reduction.exit_crit_edge ], [ 6, %if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge ], [ 6, %if.then48.i.dce60_program_bit_depth_reduction.exit_crit_edge17 ]
  tail call fastcc void @set_round(ptr noundef %xfm, i32 noundef %trunc_mode.0.i, i32 noundef %trunc_round_depth.0.i) #6
  %22 = ptrtoint ptr %bit_depth_params to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load80.i = load i32, ptr %bit_depth_params, align 4
  %23 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx.i, align 4
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  %DCP_SPATIAL_DITHER_CNTL.i.i = getelementptr inbounds %struct.dce_transform_registers, ptr %26, i32 0, i32 34
  %27 = ptrtoint ptr %DCP_SPATIAL_DITHER_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %DCP_SPATIAL_DITHER_CNTL.i.i, align 4
  %29 = ptrtoint ptr %xfm_shift.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xfm_shift.i, align 4
  %DCP_SPATIAL_DITHER_EN.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %DCP_SPATIAL_DITHER_EN.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %DCP_SPATIAL_DITHER_EN.i.i, align 1
  %33 = ptrtoint ptr %xfm_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xfm_mask.i, align 8
  %DCP_SPATIAL_DITHER_EN14.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %DCP_SPATIAL_DITHER_EN14.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %DCP_SPATIAL_DITHER_EN14.i.i, align 4
  %conv.i.i = zext i1 %spatial_dither_enable.0.off0.i to i32
  %DCP_SPATIAL_DITHER_MODE.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %30, i32 0, i32 8
  %37 = ptrtoint ptr %DCP_SPATIAL_DITHER_MODE.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %DCP_SPATIAL_DITHER_MODE.i.i, align 1
  %conv16.i.i = zext i8 %38 to i32
  %DCP_SPATIAL_DITHER_MODE18.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %34, i32 0, i32 8
  %39 = ptrtoint ptr %DCP_SPATIAL_DITHER_MODE18.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %DCP_SPATIAL_DITHER_MODE18.i.i, align 4
  %DCP_SPATIAL_DITHER_DEPTH.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %30, i32 0, i32 9
  %41 = ptrtoint ptr %DCP_SPATIAL_DITHER_DEPTH.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %DCP_SPATIAL_DITHER_DEPTH.i.i, align 1
  %conv20.i.i = zext i8 %42 to i32
  %DCP_SPATIAL_DITHER_DEPTH22.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %34, i32 0, i32 9
  %43 = ptrtoint ptr %DCP_SPATIAL_DITHER_DEPTH22.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %DCP_SPATIAL_DITHER_DEPTH22.i.i, align 4
  %DCP_FRAME_RANDOM_ENABLE.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %30, i32 0, i32 10
  %45 = ptrtoint ptr %DCP_FRAME_RANDOM_ENABLE.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %DCP_FRAME_RANDOM_ENABLE.i.i, align 1
  %conv24.i.i = zext i8 %46 to i32
  %DCP_FRAME_RANDOM_ENABLE26.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %34, i32 0, i32 10
  %47 = ptrtoint ptr %DCP_FRAME_RANDOM_ENABLE26.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %DCP_FRAME_RANDOM_ENABLE26.i.i, align 4
  %49 = lshr i32 %bf.load80.i, 21
  %.lobit1.i = and i32 %49, 1
  %DCP_RGB_RANDOM_ENABLE.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %30, i32 0, i32 11
  %50 = ptrtoint ptr %DCP_RGB_RANDOM_ENABLE.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %DCP_RGB_RANDOM_ENABLE.i.i, align 1
  %conv30.i.i = zext i8 %51 to i32
  %DCP_RGB_RANDOM_ENABLE32.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %34, i32 0, i32 11
  %52 = ptrtoint ptr %DCP_RGB_RANDOM_ENABLE32.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %DCP_RGB_RANDOM_ENABLE32.i.i, align 4
  %54 = lshr i32 %bf.load80.i, 22
  %.lobit2.i = and i32 %54, 1
  %DCP_HIGHPASS_RANDOM_ENABLE.i.i = getelementptr inbounds %struct.dce_transform_shift, ptr %30, i32 0, i32 12
  %55 = ptrtoint ptr %DCP_HIGHPASS_RANDOM_ENABLE.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %DCP_HIGHPASS_RANDOM_ENABLE.i.i, align 1
  %conv36.i.i = zext i8 %56 to i32
  %DCP_HIGHPASS_RANDOM_ENABLE38.i.i = getelementptr inbounds %struct.dce_transform_mask, ptr %34, i32 0, i32 12
  %57 = ptrtoint ptr %DCP_HIGHPASS_RANDOM_ENABLE38.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %DCP_HIGHPASS_RANDOM_ENABLE38.i.i, align 4
  %59 = lshr i32 %bf.load80.i, 20
  %.lobit3.i = and i32 %59, 1
  %call.i.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %24, i32 noundef %28, i32 noundef 0, i32 noundef 6, i8 noundef zeroext %32, i32 noundef %36, i32 noundef %conv.i.i, i32 noundef %conv16.i.i, i32 noundef %40, i32 noundef 1, i32 noundef %conv20.i.i, i32 noundef %44, i32 noundef 0, i32 noundef %conv24.i.i, i32 noundef %48, i32 noundef %.lobit1.i, i32 noundef %conv30.i.i, i32 noundef %53, i32 noundef %.lobit2.i, i32 noundef %conv36.i.i, i32 noundef %58, i32 noundef %.lobit3.i) #6
  %lb_pixel_depth_supported = getelementptr inbounds %struct.dce_transform, ptr %xfm, i32 0, i32 8
  %60 = ptrtoint ptr %lb_pixel_depth_supported to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lb_pixel_depth_supported, align 4
  %and = and i32 %61, %depth
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end6, label %dce60_program_bit_depth_reduction.exit.if.end_crit_edge

dce60_program_bit_depth_reduction.exit.if.end_crit_edge: ; preds = %dce60_program_bit_depth_reduction.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end6:                                          ; preds = %dce60_program_bit_depth_reduction.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dce60_transform_set_pixel_storage_depth) #9
  br label %if.end

if.end:                                           ; preds = %do.end6, %dce60_program_bit_depth_reduction.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 906, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 929, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dce_transform_get_max_num_of_supported_lines._entry, !4, !"_entry", i1 false, i1 false}
!7 = !{ptr @dce_transform_get_max_num_of_supported_lines._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 931, i32 3}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 935, i32 2}
!12 = !{ptr @global_color_matrix, !13, !"global_color_matrix", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 99, i32 42}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 1447, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @program_pwl._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @program_pwl._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @dce_transform_funcs, !20, !"dce_transform_funcs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 1597, i32 37}
!21 = !{ptr @__func__.dce_transform_set_scaler, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 423, i32 2}
!23 = !{ptr @__func__.program_overscan, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 191, i32 3}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 249, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__func__.program_scl_ratios_inits, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 358, i32 2}
!30 = !{ptr @__func__.get_filter_coeffs_16p, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 403, i32 3}
!32 = !{ptr @__func__.program_multi_taps_filter, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 225, i32 15}
!34 = !{ptr @__func__.dce_transform_set_pixel_storage_depth, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 1012, i32 3}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 1026, i32 3}
!38 = !{ptr @dce_transform_set_pixel_storage_depth._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dce_transform_set_pixel_storage_depth._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 797, i32 2}
!42 = !{ptr @__func__.program_bit_depth_reduction, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 822, i32 4}
!44 = !{ptr @__func__.set_clamp, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 611, i32 3}
!46 = !{ptr @__func__.set_round, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 691, i32 3}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 753, i32 3}
!50 = !{ptr @dce60_transform_funcs, !51, !"dce60_transform_funcs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 1611, i32 37}
!52 = !{ptr @__func__.dce60_transform_set_scaler, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 506, i32 2}
!54 = !{ptr @__func__.dce60_program_scl_ratios_inits, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 387, i32 2}
!56 = !{ptr @__func__.dce60_transform_set_pixel_storage_depth, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 1055, i32 3}
!58 = !{ptr @dce60_transform_set_pixel_storage_depth._entry, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 1067, i32 3}
!60 = !{ptr @dce60_transform_set_pixel_storage_depth._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 857, i32 2}
!63 = !{ptr @__func__.dce60_program_bit_depth_reduction, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_transform.c", i32 882, i32 4}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!"auto-init"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"dc_fixpt_add: %agg.result"}
!79 = distinct !{!79, !"dc_fixpt_add"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"dc_fixpt_add: %agg.result"}
!82 = distinct !{!82, !"dc_fixpt_add"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"dc_fixpt_add: %agg.result"}
!85 = distinct !{!85, !"dc_fixpt_add"}
