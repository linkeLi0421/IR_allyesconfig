; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/dsi_cfg.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/dsi_cfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_cfg_handler = type { i32, i32, ptr, ptr }
%struct.msm_dsi_config = type { i32, %struct.dsi_reg_config, ptr, i32, [2 x i32], i32 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_host_cfg_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@dsi_cfg_handlers = internal constant { [16 x %struct.msm_dsi_cfg_handler], [64 x i8] } { [16 x %struct.msm_dsi_cfg_handler] [%struct.msm_dsi_cfg_handler { i32 2, i32 0, ptr @apq8064_dsi_cfg, ptr @msm_dsi_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268435456, ptr @msm8974_apq8084_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268500992, ptr @msm8974_apq8084_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268500993, ptr @msm8974_apq8084_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268566528, ptr @msm8974_apq8084_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268632064, ptr @msm8994_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268632065, ptr @msm8916_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268697601, ptr @msm8996_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268697602, ptr @msm8976_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 536936448, ptr @sdm660_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 536870912, ptr @msm8998_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 537001985, ptr @sdm845_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 537067520, ptr @sdm845_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 537133056, ptr @sdm845_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 537133057, ptr @sc7180_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 537198592, ptr @sc7280_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }], [64 x i8] zeroinitializer }, align 32
@apq8064_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 0, %struct.dsi_reg_config { i32 3, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"avdd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_v2_bus_clk_names, i32 3, [2 x i32] [i32 74448896, i32 92274688], i32 2 }, [68 x i8] zeroinitializer }, align 32
@msm_dsi_v2_host_ops = internal constant { %struct.msm_dsi_host_cfg_ops, [60 x i8] } { %struct.msm_dsi_host_cfg_ops { ptr @dsi_link_clk_set_rate_v2, ptr @dsi_link_clk_enable_v2, ptr @dsi_link_clk_disable_v2, ptr @dsi_clk_init_v2, ptr @dsi_tx_buf_alloc_v2, ptr @dsi_tx_buf_get_v2, ptr null, ptr @dsi_dma_base_get_v2, ptr @dsi_calc_clk_rate_v2 }, [60 x i8] zeroinitializer }, align 32
@msm8974_apq8084_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 3, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 150000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_6g_bus_clk_names, i32 4, [2 x i32] [i32 -40753152, i32 -40752384], i32 2 }, [68 x i8] zeroinitializer }, align 32
@msm_dsi_6g_host_ops = internal constant { %struct.msm_dsi_host_cfg_ops, [60 x i8] } { %struct.msm_dsi_host_cfg_ops { ptr @dsi_link_clk_set_rate_6g, ptr @dsi_link_clk_enable_6g, ptr @dsi_link_clk_disable_6g, ptr null, ptr @dsi_tx_buf_alloc_6g, ptr @dsi_tx_buf_get_6g, ptr @dsi_tx_buf_put_6g, ptr @dsi_dma_base_get_6g, ptr @dsi_calc_clk_rate_6g }, [60 x i8] zeroinitializer }, align 32
@msm8994_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 6, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vdd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"lab_reg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 -1, i32 -1 }, %struct.dsi_reg_entry { [32 x i8] c"ibb_reg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 -1, i32 -1 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_6g_bus_clk_names, i32 4, [2 x i32] [i32 -40271872, i32 -40239104], i32 2 }, [68 x i8] zeroinitializer }, align 32
@msm8916_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_8916_bus_clk_names, i32 3, [2 x i32] [i32 27885568, i32 0], i32 1 }, [68 x i8] zeroinitializer }, align 32
@msm8996_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18160, i32 1 }, %struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17000, i32 32 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_8996_bus_clk_names, i32 4, [2 x i32] [i32 10043392, i32 10051584], i32 2 }, [68 x i8] zeroinitializer }, align 32
@msm8976_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_8976_bus_clk_names, i32 3, [2 x i32] [i32 27869184, i32 27877376], i32 2 }, [68 x i8] zeroinitializer }, align 32
@sdm660_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12560, i32 4 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_sdm660_bus_clk_names, i32 4, [2 x i32] [i32 211369984, i32 211378176], i32 2 }, [68 x i8] zeroinitializer }, align 32
@msm_dsi_6g_v2_host_ops = internal constant { %struct.msm_dsi_host_cfg_ops, [60 x i8] } { %struct.msm_dsi_host_cfg_ops { ptr @dsi_link_clk_set_rate_6g, ptr @dsi_link_clk_enable_6g, ptr @dsi_link_clk_disable_6g, ptr @dsi_clk_init_6g_v2, ptr @dsi_tx_buf_alloc_6g, ptr @dsi_tx_buf_get_6g, ptr @dsi_tx_buf_put_6g, ptr @dsi_dma_base_get_6g, ptr @dsi_calc_clk_rate_6g }, [60 x i8] zeroinitializer }, align 32
@msm8998_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 367000, i32 16 }, %struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 62800, i32 2 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_msm8998_bus_clk_names, i32 3, [2 x i32] [i32 211369984, i32 211378176], i32 2 }, [68 x i8] zeroinitializer }, align 32
@sdm845_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21800, i32 4 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_sdm845_bus_clk_names, i32 2, [2 x i32] [i32 183058432, i32 183066624], i32 2 }, [68 x i8] zeroinitializer }, align 32
@sc7180_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21800, i32 4 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_sc7180_bus_clk_names, i32 2, [2 x i32] [i32 183058432, i32 0], i32 1 }, [68 x i8] zeroinitializer }, align 32
@sc7280_dsi_cfg = internal constant { %struct.msm_dsi_config, [68 x i8] } { %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8350, i32 0 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_sc7280_bus_clk_names, i32 2, [2 x i32] [i32 183058432, i32 0], i32 1 }, [68 x i8] zeroinitializer }, align 32
@dsi_v2_bus_clk_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"core_mmss\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@dsi_6g_bus_clk_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdp_core\00", [23 x i8] zeroinitializer }, align 32
@dsi_8916_bus_clk_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.3, ptr @.str.1, ptr @.str.2], [20 x i8] zeroinitializer }, align 32
@dsi_8996_bus_clk_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str], [16 x i8] zeroinitializer }, align 32
@dsi_8976_bus_clk_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.3, ptr @.str.1, ptr @.str.2], [20 x i8] zeroinitializer }, align 32
@dsi_sdm660_bus_clk_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@dsi_msm8998_bus_clk_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.4], [20 x i8] zeroinitializer }, align 32
@dsi_sdm845_bus_clk_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.2], [24 x i8] zeroinitializer }, align 32
@dsi_sc7180_bus_clk_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.2], [24 x i8] zeroinitializer }, align 32
@dsi_sc7280_bus_clk_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.2], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [17 x i64] [i64 15, i64 32, i64 268435456, i64 268500992, i64 268500993, i64 268566528, i64 268632064, i64 268632065, i64 268697601, i64 268697602, i64 536870912, i64 536936448, i64 537001985, i64 537067520, i64 537133056, i64 537133057, i64 537198592]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"dsi_cfg_handlers\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 252, i32 41 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"apq8064_dsi_cfg\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 12, i32 36 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"msm_dsi_v2_host_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 216, i32 42 }
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"msm8974_apq8084_dsi_cfg\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 32, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"msm_dsi_6g_host_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 228, i32 42 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"msm8994_dsi_cfg\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 86, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"msm8916_dsi_cfg\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 52, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"msm8996_dsi_cfg\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 109, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"msm8976_dsi_cfg\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 71, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"sdm660_dsi_cfg\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 148, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"msm_dsi_6g_v2_host_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 240, i32 42 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"msm8998_dsi_cfg\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 129, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"sdm845_dsi_cfg\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 170, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"sc7180_dsi_cfg\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 184, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"sc7280_dsi_cfg\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 202, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"dsi_v2_bus_clk_names\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 8, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 9, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 9, i32 15 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 9, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"dsi_6g_bus_clk_names\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 28, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 29, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"dsi_8916_bus_clk_names\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 48, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"dsi_8996_bus_clk_names\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 105, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"dsi_8976_bus_clk_names\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 67, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"dsi_sdm660_bus_clk_names\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 144, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 145, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant [26 x i8] c"dsi_msm8998_bus_clk_names\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 125, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"dsi_sdm845_bus_clk_names\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 162, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant [25 x i8] c"dsi_sc7180_bus_clk_names\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 166, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"dsi_sc7280_bus_clk_names\00", align 1
@___asan_gen_.94 = private constant [37 x i8] c"../drivers/gpu/drm/msm/dsi/dsi_cfg.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 198, i32 27 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @dsi_cfg_handlers, ptr @apq8064_dsi_cfg, ptr @msm_dsi_v2_host_ops, ptr @msm8974_apq8084_dsi_cfg, ptr @msm_dsi_6g_host_ops, ptr @msm8994_dsi_cfg, ptr @msm8916_dsi_cfg, ptr @msm8996_dsi_cfg, ptr @msm8976_dsi_cfg, ptr @sdm660_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops, ptr @msm8998_dsi_cfg, ptr @sdm845_dsi_cfg, ptr @sc7180_dsi_cfg, ptr @sc7280_dsi_cfg, ptr @dsi_v2_bus_clk_names, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dsi_6g_bus_clk_names, ptr @.str.3, ptr @dsi_8916_bus_clk_names, ptr @dsi_8996_bus_clk_names, ptr @dsi_8976_bus_clk_names, ptr @dsi_sdm660_bus_clk_names, ptr @.str.4, ptr @dsi_msm8998_bus_clk_names, ptr @dsi_sdm845_bus_clk_names, ptr @dsi_sc7180_bus_clk_names, ptr @dsi_sc7280_bus_clk_names], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_cfg_handlers to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_v2_host_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_apq8084_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_6g_host_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8994_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8976_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_6g_v2_host_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_dsi_cfg to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_v2_bus_clk_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_6g_bus_clk_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_8916_bus_clk_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_8996_bus_clk_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_8976_bus_clk_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_sdm660_bus_clk_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_msm8998_bus_clk_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_sdm845_bus_clk_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_sc7180_bus_clk_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_sc7280_bus_clk_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_cfg_get(i32 noundef %major, i32 noundef %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %major to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %major, label %entry.for.inc.15_crit_edge [
    i32 3, label %land.lhs.true
    i32 2, label %land.lhs.true.15
  ]

entry.for.inc.15_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.15

land.lhs.true:                                    ; preds = %entry
  %1 = zext i32 %minor to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %minor, label %land.lhs.true.for.inc.15_crit_edge [
    i32 537198592, label %land.lhs.true.for.end_crit_edge
    i32 537133057, label %for.end.fold.split
    i32 537133056, label %for.end.fold.split14
    i32 537067520, label %for.end.fold.split15
    i32 537001985, label %for.end.fold.split16
    i32 536870912, label %for.end.fold.split17
    i32 536936448, label %for.end.fold.split18
    i32 268697602, label %for.end.fold.split19
    i32 268697601, label %for.end.fold.split20
    i32 268632065, label %for.end.fold.split21
    i32 268632064, label %for.end.fold.split22
    i32 268566528, label %for.end.fold.split23
    i32 268500993, label %for.end.fold.split24
    i32 268500992, label %for.end.fold.split25
    i32 268435456, label %for.end.fold.split26
  ]

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

land.lhs.true.for.inc.15_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.15

land.lhs.true.15:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %minor)
  %cmp5.15 = icmp eq i32 %minor, 0
  br i1 %cmp5.15, label %land.lhs.true.15.for.end_crit_edge, label %land.lhs.true.15.for.inc.15_crit_edge

land.lhs.true.15.for.inc.15_crit_edge:            ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.15

land.lhs.true.15.for.end_crit_edge:               ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.inc.15:                                       ; preds = %land.lhs.true.15.for.inc.15_crit_edge, %land.lhs.true.for.inc.15_crit_edge, %entry.for.inc.15_crit_edge
  br label %for.end

for.end.fold.split:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split14:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split15:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split16:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split17:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split18:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split19:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split20:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split21:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split22:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split23:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split24:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split25:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end.fold.split26:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split26, %for.end.fold.split25, %for.end.fold.split24, %for.end.fold.split23, %for.end.fold.split22, %for.end.fold.split21, %for.end.fold.split20, %for.end.fold.split19, %for.end.fold.split18, %for.end.fold.split17, %for.end.fold.split16, %for.end.fold.split15, %for.end.fold.split14, %for.end.fold.split, %for.inc.15, %land.lhs.true.15.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %cfg_hnd.0 = phi ptr [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 15), %land.lhs.true.for.end_crit_edge ], [ @dsi_cfg_handlers, %land.lhs.true.15.for.end_crit_edge ], [ null, %for.inc.15 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 14), %for.end.fold.split ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 13), %for.end.fold.split14 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 12), %for.end.fold.split15 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 11), %for.end.fold.split16 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 10), %for.end.fold.split17 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 9), %for.end.fold.split18 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 8), %for.end.fold.split19 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 7), %for.end.fold.split20 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 6), %for.end.fold.split21 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 5), %for.end.fold.split22 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 4), %for.end.fold.split23 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 3), %for.end.fold.split24 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 2), %for.end.fold.split25 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 1), %for.end.fold.split26 ]
  ret ptr %cfg_hnd.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_link_clk_set_rate_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_link_clk_enable_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsi_link_clk_disable_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_clk_init_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_tx_buf_alloc_v2(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsi_tx_buf_get_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_dma_base_get_v2(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_calc_clk_rate_v2(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_link_clk_set_rate_6g(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_link_clk_enable_6g(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsi_link_clk_disable_6g(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_tx_buf_alloc_6g(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsi_tx_buf_get_6g(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsi_tx_buf_put_6g(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_dma_base_get_6g(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_calc_clk_rate_6g(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_clk_init_6g_v2(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @dsi_cfg_handlers, !1, !"dsi_cfg_handlers", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 252, i32 41}
!2 = !{ptr @apq8064_dsi_cfg, !3, !"apq8064_dsi_cfg", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 12, i32 36}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 9, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 9, i32 15}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 9, i32 24}
!10 = !{ptr @dsi_v2_bus_clk_names, !11, !"dsi_v2_bus_clk_names", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 8, i32 27}
!12 = !{ptr @msm_dsi_v2_host_ops, !13, !"msm_dsi_v2_host_ops", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 216, i32 42}
!14 = !{ptr @msm8974_apq8084_dsi_cfg, !15, !"msm8974_apq8084_dsi_cfg", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 32, i32 36}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 29, i32 2}
!18 = !{ptr @dsi_6g_bus_clk_names, !19, !"dsi_6g_bus_clk_names", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 28, i32 27}
!20 = !{ptr @msm_dsi_6g_host_ops, !21, !"msm_dsi_6g_host_ops", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 228, i32 42}
!22 = !{ptr @msm8994_dsi_cfg, !23, !"msm8994_dsi_cfg", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 86, i32 36}
!24 = !{ptr @msm8916_dsi_cfg, !25, !"msm8916_dsi_cfg", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 52, i32 36}
!26 = !{ptr @dsi_8916_bus_clk_names, !27, !"dsi_8916_bus_clk_names", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 48, i32 27}
!28 = !{ptr @msm8996_dsi_cfg, !29, !"msm8996_dsi_cfg", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 109, i32 36}
!30 = !{ptr @dsi_8996_bus_clk_names, !31, !"dsi_8996_bus_clk_names", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 105, i32 27}
!32 = !{ptr @msm8976_dsi_cfg, !33, !"msm8976_dsi_cfg", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 71, i32 36}
!34 = !{ptr @dsi_8976_bus_clk_names, !35, !"dsi_8976_bus_clk_names", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 67, i32 27}
!36 = !{ptr @sdm660_dsi_cfg, !37, !"sdm660_dsi_cfg", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 148, i32 36}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 145, i32 18}
!40 = !{ptr @dsi_sdm660_bus_clk_names, !41, !"dsi_sdm660_bus_clk_names", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 144, i32 27}
!42 = !{ptr @msm_dsi_6g_v2_host_ops, !43, !"msm_dsi_6g_v2_host_ops", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 240, i32 42}
!44 = !{ptr @msm8998_dsi_cfg, !45, !"msm8998_dsi_cfg", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 129, i32 36}
!46 = !{ptr @dsi_msm8998_bus_clk_names, !47, !"dsi_msm8998_bus_clk_names", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 125, i32 27}
!48 = !{ptr @sdm845_dsi_cfg, !49, !"sdm845_dsi_cfg", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 170, i32 36}
!50 = !{ptr @dsi_sdm845_bus_clk_names, !51, !"dsi_sdm845_bus_clk_names", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 162, i32 27}
!52 = !{ptr @sc7180_dsi_cfg, !53, !"sc7180_dsi_cfg", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 184, i32 36}
!54 = !{ptr @dsi_sc7180_bus_clk_names, !55, !"dsi_sc7180_bus_clk_names", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 166, i32 27}
!56 = !{ptr @sc7280_dsi_cfg, !57, !"sc7280_dsi_cfg", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 202, i32 36}
!58 = !{ptr @dsi_sc7280_bus_clk_names, !59, !"dsi_sc7280_bus_clk_names", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/dsi/dsi_cfg.c", i32 198, i32 27}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
