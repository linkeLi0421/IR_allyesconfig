; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/gpucc-msm8998.c_pt.bc'
source_filename = "../drivers/clk/qcom/gpucc-msm8998.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.qcom_reset_map = type { i32, i8 }
%struct.clk_alpha_pll = type { i32, ptr, ptr, i32, i8, %struct.clk_regmap }
%struct.clk_alpha_pll_postdiv = type { i32, i8, ptr, %struct.clk_regmap, i32, ptr, i32 }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.pll_vco = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
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

@__initcall__kmod_gpucc_msm8998__170_348_gpucc_msm8998_driver_init6 = internal global ptr @gpucc_msm8998_driver_init, section ".initcall6.init", align 4
@gpucc_msm8998_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpucc_msm8998_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpucc_msm8998_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpucc_msm8998_driver_exit = internal global ptr @gpucc_msm8998_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [52 x i8] c"gpucc_msm8998.description=QCOM GPUCC MSM8998 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [50 x i8] c"gpucc_msm8998.file=drivers/clk/qcom/gpucc-msm8998\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [29 x i8] c"gpucc_msm8998.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpucc-msm8998\00", [18 x i8] zeroinitializer }, align 32
@gpucc_msm8998_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-gpucc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpucc_msm8998_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @gpucc_msm8998_regmap_config, ptr @gpucc_msm8998_clocks, i32 11, ptr @gpucc_msm8998_resets, i32 4, ptr @gpucc_msm8998_gdscs, i32 3, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gfx3d_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4248, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 }, ptr null, i32 4248, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpucc_msm8998_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 36864, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@gpucc_msm8998_clocks = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr getelementptr (i8, ptr @gpupll0, i64 20), ptr getelementptr (i8, ptr @gpupll0_out_even, i64 12), ptr getelementptr (i8, ptr @rbcpr_clk_src, i64 16), ptr getelementptr (i8, ptr @gfx3d_clk_src, i64 16), ptr getelementptr (i8, ptr @rbbmtimer_clk_src, i64 16), ptr getelementptr (i8, ptr @gfx3d_isense_clk_src, i64 16), ptr getelementptr (i8, ptr @rbcpr_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_clk, i64 12), ptr getelementptr (i8, ptr @rbbmtimer_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_isense_clk, i64 12), ptr getelementptr (i8, ptr @gpucc_cxo_clk, i64 12)], [52 x i8] zeroinitializer }, align 32
@gpucc_msm8998_resets = internal constant { [4 x %struct.qcom_reset_map], [32 x i8] } { [4 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 4096, i8 0 }, %struct.qcom_reset_map { i32 4176, i8 0 }, %struct.qcom_reset_map { i32 4240, i8 0 }, %struct.qcom_reset_map { i32 4384, i8 0 }], [32 x i8] zeroinitializer }, align 32
@gpucc_msm8998_gdscs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr null, ptr @gpu_cx_gdsc, ptr @gpu_gx_gdsc], [20 x i8] zeroinitializer }, align 32
@gpupll0 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 0, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), ptr @fabia_vco, i32 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.2 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@gpupll0_out_even = internal global { %struct.clk_alpha_pll_postdiv, [44 x i8] } { %struct.clk_alpha_pll_postdiv { i32 0, i8 4, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, ptr null, i32 0, i32 0, i8 0 }, i32 8, ptr @post_div_table_fabia_even, i32 5 }, [44 x i8] zeroinitializer }, align 32
@rbcpr_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4144, i8 0, i8 5, i8 0, ptr @gpu_xo_gpll0_map, ptr @ftbl_rbcpr_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.7 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@gfx3d_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4208, i8 0, i8 5, i8 0, ptr @gpu_xo_gpupll0_map, ptr @ftbl_gfx3d_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@rbbmtimer_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4272, i8 0, i8 5, i8 0, ptr @gpu_xo_gpll0_map, ptr @ftbl_rbbmtimer_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@gfx3d_isense_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4352, i8 0, i8 5, i8 0, ptr @gpu_xo_gpll0_map, ptr @ftbl_gfx3d_isense_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@rbcpr_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4180, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 }, ptr null, i32 4180, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@rbbmtimer_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4304, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.20 }, ptr null, i32 4304, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gfx3d_isense_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4388, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 }, ptr null, i32 4388, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpucc_cxo_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4128, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 }, ptr null, i32 4128, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@fabia_vco = internal global { [2 x %struct.pll_vco], [40 x i8] } { [2 x %struct.pll_vco] [%struct.pll_vco { i32 249600000, i32 2000000000, i32 0 }, %struct.pll_vco { i32 125000000, i32 1000000000, i32 1 }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpupll0\00", [24 x i8] zeroinitializer }, align 32
@clk_alpha_pll_fabia_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @gpucc_cxo_clk, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_alpha_pll_fabia_ops, ptr null, ptr null, ptr @.compoundliteral, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpupll0_out_even\00", [47 x i8] zeroinitializer }, align 32
@clk_alpha_pll_postdiv_fabia_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.4 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @gpupll0, i64 20)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.3, ptr @clk_alpha_pll_postdiv_fabia_ops, ptr null, ptr null, ptr @.compoundliteral.4, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@post_div_table_fabia_even = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gpu_xo_gpll0_map = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 5 }], [28 x i8] zeroinitializer }, align 32
@ftbl_rbcpr_clk_src = internal constant { [3 x %struct.freq_tbl], [60 x i8] } { [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 50000000, i8 1, i8 23, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rbcpr_clk_src\00", [18 x i8] zeroinitializer }, align 32
@clk_rcg2_ops = external dso_local constant %struct.clk_ops, align 4
@gpu_xo_gpll0 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr getelementptr (i8, ptr @gpucc_cxo_clk, i64 12), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @clk_rcg2_ops, ptr null, ptr @gpu_xo_gpll0, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpll0\00", [26 x i8] zeroinitializer }, align 32
@gpu_xo_gpupll0_map = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 2, i8 1 }], [28 x i8] zeroinitializer }, align 32
@ftbl_gfx3d_clk_src = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 0, i8 2, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfx3d_clk_src\00", [18 x i8] zeroinitializer }, align 32
@gpu_xo_gpupll0 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr getelementptr (i8, ptr @gpucc_cxo_clk, i64 12), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @gpupll0_out_even, i64 12), ptr null, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.9, ptr @clk_rcg2_ops, ptr null, ptr @gpu_xo_gpupll0, ptr null, i8 2, i32 4100 }, [36 x i8] zeroinitializer }, align 32
@ftbl_rbbmtimer_clk_src = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rbbmtimer_clk_src\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.11, ptr @clk_rcg2_ops, ptr null, ptr @gpu_xo_gpll0, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ftbl_gfx3d_isense_clk_src = internal constant { [5 x %struct.freq_tbl], [36 x i8] } { [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 40000000, i8 1, i8 29, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 300000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gfx3d_isense_clk_src\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.13, ptr @clk_rcg2_ops, ptr null, ptr @gpu_xo_gpll0, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rbcpr_clk\00", [22 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @rbcpr_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.15, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.16, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rbbmtimer_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @rbbmtimer_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.19, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gfx3d_isense_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @gfx3d_isense_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.21, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.22, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpucc_cxo_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.25, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.26, ptr null, i8 1, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@gpu_cx_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.28, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 4100, i32 4104, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 1, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@gpu_gx_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.29, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr @gpu_cx_gdsc, ptr null, i32 4244, i32 0, i32 304, ptr @.compoundliteral.30, i32 1, i32 0, i32 0, i32 0, i8 7, i16 282, ptr null, ptr @.compoundliteral.31, i32 1, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpu_cx\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpu_gx\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4248], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx3d_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @gfx3d_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.33, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"gpucc_msm8998_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 341, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 344, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"gpucc_msm8998_match_table\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 319, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"gpucc_msm8998_desc\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 309, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"gfx3d_clk\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 206, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"gpucc_msm8998_regmap_config\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 301, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"gpucc_msm8998_clocks\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 275, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"gpucc_msm8998_resets\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 294, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"gpucc_msm8998_gdscs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 289, i32 21 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"gpupll0\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 65, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"gpupll0_out_even\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 78, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"rbcpr_clk_src\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 120, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"gfx3d_clk_src\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 138, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"rbbmtimer_clk_src\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 157, i32 24 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"gfx3d_isense_clk_src\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 178, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant [10 x i8] c"rbcpr_clk\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 191, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"rbbmtimer_clk\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 221, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"gfx3d_isense_clk\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 236, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"gpucc_cxo_clk\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 35, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"fabia_vco\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 52, i32 23 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 71, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 86, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [26 x i8] c"post_div_table_fabia_even\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 57, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"gpu_xo_gpll0_map\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 94, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"ftbl_rbcpr_clk_src\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 114, i32 30 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 126, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"gpu_xo_gpll0\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 99, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 101, i32 15 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"gpu_xo_gpupll0_map\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 104, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"ftbl_gfx3d_clk_src\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 133, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 144, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"gpu_xo_gpupll0\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 109, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [23 x i8] c"ftbl_rbbmtimer_clk_src\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 152, i32 30 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 163, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [26 x i8] c"ftbl_gfx3d_isense_clk_src\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 170, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 184, i32 11 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 197, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 227, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 242, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 41, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 43, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"gpu_cx_gdsc\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 250, i32 20 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"gpu_gx_gdsc\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 260, i32 20 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 254, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 268, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [36 x i8] c"../drivers/clk/qcom/gpucc-msm8998.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 212, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_gpucc_msm8998_driver_exit, ptr @__initcall__kmod_gpucc_msm8998__170_348_gpucc_msm8998_driver_init6, ptr @gpucc_msm8998_driver_exit, ptr @gpucc_msm8998_driver, ptr @.str, ptr @gpucc_msm8998_match_table, ptr @gpucc_msm8998_desc, ptr @gfx3d_clk, ptr @gpucc_msm8998_regmap_config, ptr @gpucc_msm8998_clocks, ptr @gpucc_msm8998_resets, ptr @gpucc_msm8998_gdscs, ptr @gpupll0, ptr @gpupll0_out_even, ptr @rbcpr_clk_src, ptr @gfx3d_clk_src, ptr @rbbmtimer_clk_src, ptr @gfx3d_isense_clk_src, ptr @rbcpr_clk, ptr @rbbmtimer_clk, ptr @gfx3d_isense_clk, ptr @gpucc_cxo_clk, ptr @fabia_vco, ptr @.str.1, ptr @.compoundliteral, ptr @.compoundliteral.2, ptr @.str.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @post_div_table_fabia_even, ptr @gpu_xo_gpll0_map, ptr @ftbl_rbcpr_clk_src, ptr @.str.6, ptr @gpu_xo_gpll0, ptr @.compoundliteral.7, ptr @.str.8, ptr @gpu_xo_gpupll0_map, ptr @ftbl_gfx3d_clk_src, ptr @.str.9, ptr @gpu_xo_gpupll0, ptr @.compoundliteral.10, ptr @ftbl_rbbmtimer_clk_src, ptr @.str.11, ptr @.compoundliteral.12, ptr @ftbl_gfx3d_isense_clk_src, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @gpu_cx_gdsc, ptr @gpu_gx_gdsc, ptr @.str.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_msm8998_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_msm8998_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_msm8998_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx3d_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_msm8998_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_msm8998_clocks to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_msm8998_resets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_msm8998_gdscs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpupll0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpupll0_out_even to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbcpr_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx3d_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbbmtimer_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx3d_isense_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbcpr_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbbmtimer_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx3d_isense_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpucc_cxo_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fabia_vco to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_div_table_fabia_even to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_xo_gpll0_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_rbcpr_clk_src to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_xo_gpll0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_xo_gpupll0_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gfx3d_clk_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_xo_gpupll0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_rbbmtimer_clk_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gfx3d_isense_clk_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cx_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_gx_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpucc_msm8998_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpucc_msm8998_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpucc_msm8998_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpucc_msm8998_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpucc_msm8998_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @gpucc_msm8998_desc) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = load i32, ptr getelementptr inbounds (%struct.clk_branch, ptr @gfx3d_clk, i32 0, i32 5, i32 2), align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %1, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #3
  %2 = load i32, ptr getelementptr inbounds (%struct.clk_branch, ptr @gfx3d_clk, i32 0, i32 5, i32 2), align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %2, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #3
  %call5 = tail call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @gpucc_msm8998_desc, ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_gpucc_msm8998__170_348_gpucc_msm8998_driver_init6, !1, !"__initcall__kmod_gpucc_msm8998__170_348_gpucc_msm8998_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 348, i32 1}
!2 = !{ptr @__exitcall_gpucc_msm8998_driver_exit, !1, !"__exitcall_gpucc_msm8998_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 350, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 351, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 344, i32 11}
!10 = !{ptr @gpucc_msm8998_driver, !11, !"gpucc_msm8998_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 341, i32 31}
!12 = !{ptr @gpucc_msm8998_desc, !13, !"gpucc_msm8998_desc", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 309, i32 34}
!14 = !{ptr @gpucc_msm8998_regmap_config, !15, !"gpucc_msm8998_regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 301, i32 35}
!16 = !{ptr @gpucc_msm8998_clocks, !17, !"gpucc_msm8998_clocks", i1 false, i1 false}
!17 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 275, i32 27}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 71, i32 11}
!20 = !{ptr @gpupll0, !21, !"gpupll0", i1 false, i1 false}
!21 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 65, i32 29}
!22 = !{ptr @fabia_vco, !23, !"fabia_vco", i1 false, i1 false}
!23 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 52, i32 23}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 86, i32 11}
!26 = !{ptr @gpupll0_out_even, !27, !"gpupll0_out_even", i1 false, i1 false}
!27 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 78, i32 37}
!28 = !{ptr @post_div_table_fabia_even, !29, !"post_div_table_fabia_even", i1 false, i1 false}
!29 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 57, i32 35}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 126, i32 11}
!32 = !{ptr @rbcpr_clk_src, !33, !"rbcpr_clk_src", i1 false, i1 false}
!33 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 120, i32 24}
!34 = !{ptr @gpu_xo_gpll0_map, !35, !"gpu_xo_gpll0_map", i1 false, i1 false}
!35 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 94, i32 32}
!36 = !{ptr @ftbl_rbcpr_clk_src, !37, !"ftbl_rbcpr_clk_src", i1 false, i1 false}
!37 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 114, i32 30}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 101, i32 15}
!40 = !{ptr @gpu_xo_gpll0, !41, !"gpu_xo_gpll0", i1 false, i1 false}
!41 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 99, i32 37}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 144, i32 11}
!44 = !{ptr @gfx3d_clk_src, !45, !"gfx3d_clk_src", i1 false, i1 false}
!45 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 138, i32 24}
!46 = !{ptr @gpu_xo_gpupll0_map, !47, !"gpu_xo_gpupll0_map", i1 false, i1 false}
!47 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 104, i32 32}
!48 = !{ptr @ftbl_gfx3d_clk_src, !49, !"ftbl_gfx3d_clk_src", i1 false, i1 false}
!49 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 133, i32 30}
!50 = !{ptr @gpu_xo_gpupll0, !51, !"gpu_xo_gpupll0", i1 false, i1 false}
!51 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 109, i32 37}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 163, i32 11}
!54 = !{ptr @rbbmtimer_clk_src, !55, !"rbbmtimer_clk_src", i1 false, i1 false}
!55 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 157, i32 24}
!56 = !{ptr @ftbl_rbbmtimer_clk_src, !57, !"ftbl_rbbmtimer_clk_src", i1 false, i1 false}
!57 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 152, i32 30}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 184, i32 11}
!60 = !{ptr @gfx3d_isense_clk_src, !61, !"gfx3d_isense_clk_src", i1 false, i1 false}
!61 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 178, i32 24}
!62 = !{ptr @ftbl_gfx3d_isense_clk_src, !63, !"ftbl_gfx3d_isense_clk_src", i1 false, i1 false}
!63 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 170, i32 30}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 197, i32 12}
!66 = !{ptr @rbcpr_clk, !67, !"rbcpr_clk", i1 false, i1 false}
!67 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 191, i32 26}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 227, i32 12}
!70 = !{ptr @rbbmtimer_clk, !71, !"rbbmtimer_clk", i1 false, i1 false}
!71 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 221, i32 26}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 242, i32 12}
!74 = !{ptr @gfx3d_isense_clk, !75, !"gfx3d_isense_clk", i1 false, i1 false}
!75 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 236, i32 26}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 41, i32 12}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 43, i32 16}
!80 = !{ptr @gpucc_cxo_clk, !81, !"gpucc_cxo_clk", i1 false, i1 false}
!81 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 35, i32 26}
!82 = !{ptr @gpucc_msm8998_resets, !83, !"gpucc_msm8998_resets", i1 false, i1 false}
!83 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 294, i32 36}
!84 = !{ptr @gpucc_msm8998_gdscs, !85, !"gpucc_msm8998_gdscs", i1 false, i1 false}
!85 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 289, i32 21}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 254, i32 11}
!88 = !{ptr @gpu_cx_gdsc, !89, !"gpu_cx_gdsc", i1 false, i1 false}
!89 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 250, i32 20}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 268, i32 11}
!92 = !{ptr @gpu_gx_gdsc, !93, !"gpu_gx_gdsc", i1 false, i1 false}
!93 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 260, i32 20}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 212, i32 12}
!96 = !{ptr @gfx3d_clk, !97, !"gfx3d_clk", i1 false, i1 false}
!97 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 206, i32 26}
!98 = !{ptr @gpucc_msm8998_match_table, !99, !"gpucc_msm8998_match_table", i1 false, i1 false}
!99 = !{!"../drivers/clk/qcom/gpucc-msm8998.c", i32 319, i32 34}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
