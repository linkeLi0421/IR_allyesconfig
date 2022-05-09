; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/gpucc-sdm660.c_pt.bc'
source_filename = "../drivers/clk/qcom/gpucc-sdm660.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.clk_alpha_pll = type { i32, ptr, ptr, i32, i8, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.qcom_reset_map = type { i32, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg2_gfx3d = type { i8, %struct.clk_rcg2, ptr }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.gdsc = type { %struct.generic_pm_domain, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i8, i16, ptr, ptr, i32, ptr, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.pll_vco = type { i32, i32, i32 }
%struct.alpha_pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_gpucc_sdm660__170_345_gpucc_sdm660_driver_init6 = internal global ptr @gpucc_sdm660_driver_init, section ".initcall6.init", align 4
@gpucc_sdm660_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpucc_sdm660_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpucc_sdm660_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpucc_sdm660_driver_exit = internal global ptr @gpucc_sdm660_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [61 x i8] c"gpucc_sdm660.description=Qualcomm SDM630/SDM660 GPUCC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [48 x i8] c"gpucc_sdm660.file=drivers/clk/qcom/gpucc-sdm660\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [28 x i8] c"gpucc_sdm660.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpucc-sdm660\00", [19 x i8] zeroinitializer }, align 32
@gpucc_sdm660_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,gpucc-sdm660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,gpucc-sdm630\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@gpucc_sdm660_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @gpucc_660_regmap_config, ptr @gpucc_sdm660_clocks, i32 9, ptr @gpucc_sdm660_resets, i32 4, ptr @gpucc_sdm660_gdscs, i32 2, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gpu_pll0_pll_out_main = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 0, ptr @clk_alpha_pll_regs, ptr @gpu_vco, i32 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@gpu_pll1_pll_out_main = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 64, ptr @clk_alpha_pll_regs, ptr @gpu_vco, i32 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@gpucc_660_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 36916, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@gpucc_sdm660_clocks = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr getelementptr (i8, ptr @gpucc_cxo_clk, i64 12), ptr getelementptr (i8, ptr @gpu_pll0_pll_out_main, i64 20), ptr getelementptr (i8, ptr @gpu_pll1_pll_out_main, i64 20), ptr getelementptr (i8, ptr @gfx3d_clk_src, i64 20), ptr getelementptr (i8, ptr @rbcpr_clk_src, i64 16), ptr getelementptr (i8, ptr @rbbmtimer_clk_src, i64 16), ptr getelementptr (i8, ptr @gpucc_rbcpr_clk, i64 12), ptr getelementptr (i8, ptr @gpucc_gfx3d_clk, i64 12), ptr getelementptr (i8, ptr @gpucc_rbbmtimer_clk, i64 12)], [60 x i8] zeroinitializer }, align 32
@gpucc_sdm660_resets = internal constant { [4 x %struct.qcom_reset_map], [32 x i8] } { [4 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 4096, i8 0 }, %struct.qcom_reset_map { i32 4240, i8 0 }, %struct.qcom_reset_map { i32 4176, i8 0 }, %struct.qcom_reset_map { i32 4320, i8 0 }], [32 x i8] zeroinitializer }, align 32
@gpucc_sdm660_gdscs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpu_cx_gdsc, ptr @gpu_gx_gdsc], [24 x i8] zeroinitializer }, align 32
@gpucc_cxo_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4128, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.3 }, ptr null, i32 4128, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gfx3d_clk_src = internal global { %struct.clk_rcg2_gfx3d, [40 x i8] } { %struct.clk_rcg2_gfx3d { i8 2, %struct.clk_rcg2 { i32 4208, i8 0, i8 5, i8 0, ptr @gpucc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, ptr @.compoundliteral.6 }, [40 x i8] zeroinitializer }, align 32
@rbcpr_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4144, i8 0, i8 5, i8 0, ptr @gpucc_parent_map_0, ptr @ftbl_rbcpr_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@rbbmtimer_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4272, i8 0, i8 5, i8 0, ptr @gpucc_parent_map_0, ptr @ftbl_rbbmtimer_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@gpucc_rbcpr_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4180, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 }, ptr null, i32 4180, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpucc_gfx3d_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 4248, i32 4248, i8 1, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 }, ptr null, i32 4248, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpucc_rbbmtimer_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4304, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 }, ptr null, i32 4304, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpucc_cxo_clk\00", [18 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral, ptr null, i8 1, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@gpucc_parent_map_1 = internal constant { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 4, i8 1 }, %struct.parent_map { i8 5, i8 3 }, %struct.parent_map { i8 2, i8 5 }], [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfx3d_clk_src\00", [18 x i8] zeroinitializer }, align 32
@clk_gfx3d_ops = external dso_local constant %struct.clk_ops, align 4
@gpucc_parent_data_1 = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr getelementptr (i8, ptr @gpucc_cxo_clk, i64 12), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @gpu_pll0_pll_out_main, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @gpu_pll1_pll_out_main, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.4, ptr @clk_gfx3d_ops, ptr null, ptr @gpucc_parent_data_1, ptr null, i8 4, i32 4100 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @gpucc_cxo_clk, i64 12), ptr getelementptr (i8, ptr @gpu_pll0_pll_out_main, i64 20), ptr getelementptr (i8, ptr @gpu_pll1_pll_out_main, i64 20)], [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gcc_gpu_gpll0_clk\00", [46 x i8] zeroinitializer }, align 32
@gpucc_parent_map_0 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 2, i8 5 }, %struct.parent_map { i8 3, i8 6 }], [26 x i8] zeroinitializer }, align 32
@ftbl_rbcpr_clk_src = internal constant { [3 x %struct.freq_tbl], [60 x i8] } { [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 50000000, i8 3, i8 11, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rbcpr_clk_src\00", [18 x i8] zeroinitializer }, align 32
@clk_rcg2_ops = external dso_local constant %struct.clk_ops, align 4
@gpucc_parent_data_0 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr getelementptr (i8, ptr @gpucc_cxo_clk, i64 12), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.10, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.8, ptr @clk_rcg2_ops, ptr null, ptr @gpucc_parent_data_0, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gcc_gpu_gpll0_div_clk\00", [42 x i8] zeroinitializer }, align 32
@ftbl_rbbmtimer_clk_src = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rbbmtimer_clk_src\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.11, ptr @clk_rcg2_ops, ptr null, ptr @gpucc_parent_data_0, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpucc_rbcpr_clk\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.8], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.13, ptr @clk_branch2_ops, ptr @.compoundliteral.14, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpucc_gfx3d_clk\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @gfx3d_clk_src, i64 20), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.17, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpucc_rbbmtimer_clk\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.11], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.19, ptr @clk_branch2_ops, ptr @.compoundliteral.20, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@gpu_cx_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.22, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 4100, i32 4104, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 1, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@gpu_gx_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.23, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @gpu_cx_gdsc, ptr null, i32 4244, i32 0, i32 304, ptr @.compoundliteral.24, i32 1, i32 0, i32 0, i32 0, i8 7, i16 282, ptr null, ptr @.compoundliteral.25, i32 1, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpu_cx\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpu_gx\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4248], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@gpu_vco = internal global { [3 x %struct.pll_vco], [60 x i8] } { [3 x %struct.pll_vco] [%struct.pll_vco { i32 1000000000, i32 2000000000, i32 0 }, %struct.pll_vco { i32 500000000, i32 1000000000, i32 2 }, %struct.pll_vco { i32 250000000, i32 500000000, i32 3 }], [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpu_pll0_pll_out_main\00", [42 x i8] zeroinitializer }, align 32
@clk_alpha_pll_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.27 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @gpucc_cxo_clk, i64 12), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @clk_alpha_pll_ops, ptr null, ptr @.compoundliteral.27, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpu_pll1_pll_out_main\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @gpucc_cxo_clk, i64 12), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.29, ptr @clk_alpha_pll_ops, ptr null, ptr @.compoundliteral.30, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"gpucc_sdm660_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 338, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 341, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"gpucc_sdm660_match_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 302, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"gpucc_sdm660_desc\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 292, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"gpu_pll0_pll_out_main\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 62, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"gpu_pll1_pll_out_main\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 77, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant [24 x i8] c"gpucc_660_regmap_config\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 284, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"gpucc_sdm660_clocks\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 272, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"gpucc_sdm660_resets\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 265, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"gpucc_sdm660_gdscs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 260, i32 21 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"gpucc_cxo_clk\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 39, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"gfx3d_clk_src\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 106, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"rbcpr_clk_src\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 185, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"rbbmtimer_clk_src\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 165, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"gpucc_rbcpr_clk\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 217, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"gpucc_gfx3d_clk\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 128, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"gpucc_rbbmtimer_clk\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 199, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 45, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 47, i32 16 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"gpucc_parent_map_1\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 92, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 114, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"gpucc_parent_data_1\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 99, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 103, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"gpucc_parent_map_0\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 148, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"ftbl_rbcpr_clk_src\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 179, i32 30 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 192, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"gpucc_parent_data_0\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 154, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 157, i32 15 }
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"ftbl_rbbmtimer_clk_src\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 160, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 172, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 224, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 137, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 206, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"gpu_cx_gdsc\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 235, i32 20 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"gpu_gx_gdsc\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 245, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 239, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 253, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [8 x i8] c"gpu_vco\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 56, i32 23 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 68, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [35 x i8] c"../drivers/clk/qcom/gpucc-sdm660.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 83, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_gpucc_sdm660_driver_exit, ptr @__initcall__kmod_gpucc_sdm660__170_345_gpucc_sdm660_driver_init6, ptr @gpucc_sdm660_driver_exit, ptr @gpucc_sdm660_driver, ptr @.str, ptr @gpucc_sdm660_match_table, ptr @gpucc_sdm660_desc, ptr @gpu_pll0_pll_out_main, ptr @gpu_pll1_pll_out_main, ptr @gpucc_660_regmap_config, ptr @gpucc_sdm660_clocks, ptr @gpucc_sdm660_resets, ptr @gpucc_sdm660_gdscs, ptr @gpucc_cxo_clk, ptr @gfx3d_clk_src, ptr @rbcpr_clk_src, ptr @rbbmtimer_clk_src, ptr @gpucc_rbcpr_clk, ptr @gpucc_gfx3d_clk, ptr @gpucc_rbbmtimer_clk, ptr @.str.1, ptr @.str.2, ptr @.compoundliteral, ptr @.compoundliteral.3, ptr @gpucc_parent_map_1, ptr @.str.4, ptr @gpucc_parent_data_1, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @gpucc_parent_map_0, ptr @ftbl_rbcpr_clk_src, ptr @.str.8, ptr @gpucc_parent_data_0, ptr @.compoundliteral.9, ptr @.str.10, ptr @ftbl_rbbmtimer_clk_src, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @gpu_cx_gdsc, ptr @gpu_gx_gdsc, ptr @.str.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @gpu_vco, ptr @.str.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_sdm660_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_sdm660_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_sdm660_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_pll0_pll_out_main to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_pll1_pll_out_main to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_660_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_sdm660_clocks to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_sdm660_resets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_sdm660_gdscs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_cxo_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx3d_clk_src to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbcpr_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbbmtimer_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_rbcpr_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_gfx3d_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_rbbmtimer_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_parent_map_1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_parent_data_1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_parent_map_0 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_rbcpr_clk_src to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_parent_data_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_rbbmtimer_clk_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cx_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_gx_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_vco to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpucc_sdm660_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpucc_sdm660_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpucc_sdm660_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpucc_sdm660_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpucc_sdm660_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %gpu_pll_config = alloca %struct.alpha_pll_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %gpu_pll_config) #4
  %0 = getelementptr inbounds i8, ptr %gpu_pll_config, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 72)
  %2 = getelementptr inbounds %struct.alpha_pll_config, ptr %gpu_pll_config, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1431655680, ptr %2, align 4
  %4 = getelementptr inbounds %struct.alpha_pll_config, ptr %gpu_pll_config, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1073808731, ptr %4, align 4
  %6 = getelementptr inbounds %struct.alpha_pll_config, ptr %gpu_pll_config, i32 0, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %6, align 4
  %8 = getelementptr inbounds %struct.alpha_pll_config, ptr %gpu_pll_config, i32 0, i32 16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16777216, ptr %8, align 4
  %10 = getelementptr inbounds %struct.alpha_pll_config, ptr %gpu_pll_config, i32 0, i32 22
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2097152, ptr %10, align 4
  %12 = getelementptr inbounds %struct.alpha_pll_config, ptr %gpu_pll_config, i32 0, i32 23
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3145728, ptr %12, align 4
  %call = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @gpucc_sdm660_desc) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %gpu_pll_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 41, ptr %gpu_pll_config, align 4
  %alpha_hi = getelementptr inbounds %struct.alpha_pll_config, ptr %gpu_pll_config, i32 0, i32 2
  %16 = ptrtoint ptr %alpha_hi to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 170, ptr %alpha_hi, align 4
  call void @clk_alpha_pll_configure(ptr noundef nonnull @gpu_pll0_pll_out_main, ptr noundef %call, ptr noundef nonnull %gpu_pll_config) #4
  %17 = ptrtoint ptr %gpu_pll_config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 38, ptr %gpu_pll_config, align 4
  %18 = ptrtoint ptr %alpha_hi to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 138, ptr %alpha_hi, align 4
  call void @clk_alpha_pll_configure(ptr noundef nonnull @gpu_pll1_pll_out_main, ptr noundef %call, ptr noundef nonnull %gpu_pll_config) #4
  %call5 = call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @gpucc_sdm660_desc, ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %14, %if.then ], [ %call5, %if.end ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %gpu_pll_config) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_alpha_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_gpucc_sdm660__170_345_gpucc_sdm660_driver_init6, !1, !"__initcall__kmod_gpucc_sdm660__170_345_gpucc_sdm660_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 345, i32 1}
!2 = !{ptr @__exitcall_gpucc_sdm660_driver_exit, !1, !"__exitcall_gpucc_sdm660_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 347, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 348, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 341, i32 11}
!10 = !{ptr @gpucc_sdm660_driver, !11, !"gpucc_sdm660_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 338, i32 31}
!12 = !{ptr @gpucc_sdm660_desc, !13, !"gpucc_sdm660_desc", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 292, i32 34}
!14 = !{ptr @gpucc_660_regmap_config, !15, !"gpucc_660_regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 284, i32 35}
!16 = !{ptr @gpucc_sdm660_clocks, !17, !"gpucc_sdm660_clocks", i1 false, i1 false}
!17 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 272, i32 27}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 45, i32 12}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 47, i32 16}
!22 = !{ptr @gpucc_cxo_clk, !23, !"gpucc_cxo_clk", i1 false, i1 false}
!23 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 39, i32 26}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 114, i32 12}
!26 = !{ptr @gfx3d_clk_src, !27, !"gfx3d_clk_src", i1 false, i1 false}
!27 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 106, i32 30}
!28 = !{ptr @gpucc_parent_map_1, !29, !"gpucc_parent_map_1", i1 false, i1 false}
!29 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 92, i32 32}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 103, i32 15}
!32 = !{ptr @gpucc_parent_data_1, !33, !"gpucc_parent_data_1", i1 false, i1 false}
!33 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 99, i32 37}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 192, i32 11}
!36 = !{ptr @rbcpr_clk_src, !37, !"rbcpr_clk_src", i1 false, i1 false}
!37 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 185, i32 24}
!38 = !{ptr @gpucc_parent_map_0, !39, !"gpucc_parent_map_0", i1 false, i1 false}
!39 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 148, i32 32}
!40 = !{ptr @ftbl_rbcpr_clk_src, !41, !"ftbl_rbcpr_clk_src", i1 false, i1 false}
!41 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 179, i32 30}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 157, i32 15}
!44 = !{ptr @gpucc_parent_data_0, !45, !"gpucc_parent_data_0", i1 false, i1 false}
!45 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 154, i32 37}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 172, i32 11}
!48 = !{ptr @rbbmtimer_clk_src, !49, !"rbbmtimer_clk_src", i1 false, i1 false}
!49 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 165, i32 24}
!50 = !{ptr @ftbl_rbbmtimer_clk_src, !51, !"ftbl_rbbmtimer_clk_src", i1 false, i1 false}
!51 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 160, i32 30}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 224, i32 12}
!54 = !{ptr @gpucc_rbcpr_clk, !55, !"gpucc_rbcpr_clk", i1 false, i1 false}
!55 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 217, i32 26}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 137, i32 12}
!58 = !{ptr @gpucc_gfx3d_clk, !59, !"gpucc_gfx3d_clk", i1 false, i1 false}
!59 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 128, i32 26}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 206, i32 12}
!62 = !{ptr @gpucc_rbbmtimer_clk, !63, !"gpucc_rbbmtimer_clk", i1 false, i1 false}
!63 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 199, i32 26}
!64 = !{ptr @gpucc_sdm660_resets, !65, !"gpucc_sdm660_resets", i1 false, i1 false}
!65 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 265, i32 36}
!66 = !{ptr @gpucc_sdm660_gdscs, !67, !"gpucc_sdm660_gdscs", i1 false, i1 false}
!67 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 260, i32 21}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 239, i32 11}
!70 = !{ptr @gpu_cx_gdsc, !71, !"gpu_cx_gdsc", i1 false, i1 false}
!71 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 235, i32 20}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 253, i32 11}
!74 = !{ptr @gpu_gx_gdsc, !75, !"gpu_gx_gdsc", i1 false, i1 false}
!75 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 245, i32 20}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 68, i32 11}
!78 = !{ptr @gpu_pll0_pll_out_main, !79, !"gpu_pll0_pll_out_main", i1 false, i1 false}
!79 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 62, i32 29}
!80 = !{ptr @gpu_vco, !81, !"gpu_vco", i1 false, i1 false}
!81 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 56, i32 23}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 83, i32 11}
!84 = !{ptr @gpu_pll1_pll_out_main, !85, !"gpu_pll1_pll_out_main", i1 false, i1 false}
!85 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 77, i32 29}
!86 = !{ptr @gpucc_sdm660_match_table, !87, !"gpucc_sdm660_match_table", i1 false, i1 false}
!87 = !{!"../drivers/clk/qcom/gpucc-sdm660.c", i32 302, i32 34}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
