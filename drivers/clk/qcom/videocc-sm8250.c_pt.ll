; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/videocc-sm8250.c_pt.bc'
source_filename = "../drivers/clk/qcom/videocc-sm8250.c"
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
%struct.alpha_pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.qcom_reset_map = type { i32, i8 }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_regmap_div = type { i32, i32, i32, %struct.clk_regmap }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_videocc_sm8250__171_420_video_cc_sm8250_init4 = internal global ptr @video_cc_sm8250_init, section ".initcall4.init", align 4
@video_cc_sm8250_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @video_cc_sm8250_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @video_cc_sm8250_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_video_cc_sm8250_exit = internal global ptr @video_cc_sm8250_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file172 = internal constant [52 x i8] c"videocc_sm8250.file=drivers/clk/qcom/videocc-sm8250\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [30 x i8] c"videocc_sm8250.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [53 x i8] c"videocc_sm8250.description=QTI VIDEOCC SM8250 Driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sm8250-videocc\00", [17 x i8] zeroinitializer }, align 32
@video_cc_sm8250_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-videocc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@video_cc_sm8250_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @video_cc_sm8250_regmap_config, ptr @video_cc_sm8250_clocks, i32 11, ptr @video_cc_sm8250_resets, i32 7, ptr @video_cc_sm8250_gdscs, i32 4, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@video_pll0 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 1068, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 68), ptr @lucid_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@video_pll0_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 37, i32 32768, i32 0, i32 541611673, i32 8801, i32 848980380, i32 0, i32 2053, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@video_pll1 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 2000, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 68), ptr @lucid_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@video_pll1_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 43, i32 49152, i32 0, i32 541611673, i32 8801, i32 848980380, i32 0, i32 2053, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@video_cc_sm8250_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 3916, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@video_cc_sm8250_clocks = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr getelementptr (i8, ptr @video_cc_mvs0_clk_src, i64 16), ptr getelementptr (i8, ptr @video_cc_mvs0c_clk, i64 12), ptr getelementptr (i8, ptr @video_cc_mvs0c_div2_div_clk_src, i64 12), ptr getelementptr (i8, ptr @video_cc_mvs1_clk_src, i64 16), ptr getelementptr (i8, ptr @video_cc_mvs1_div2_clk, i64 12), ptr getelementptr (i8, ptr @video_cc_mvs1c_clk, i64 12), ptr getelementptr (i8, ptr @video_cc_mvs1c_div2_div_clk_src, i64 12), ptr getelementptr (i8, ptr @video_pll0, i64 20), ptr getelementptr (i8, ptr @video_pll1, i64 20), ptr getelementptr (i8, ptr @video_cc_mvs0_div_clk_src, i64 12), ptr getelementptr (i8, ptr @video_cc_mvs0_clk, i64 12)], [52 x i8] zeroinitializer }, align 32
@video_cc_sm8250_resets = internal constant { [7 x %struct.qcom_reset_map], [40 x i8] } { [7 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 3668, i8 0 }, %struct.qcom_reset_map { i32 3348, i8 0 }, %struct.qcom_reset_map { i32 3124, i8 2 }, %struct.qcom_reset_map { i32 3060, i8 0 }, %struct.qcom_reset_map { i32 3476, i8 0 }, %struct.qcom_reset_map { i32 3284, i8 2 }, %struct.qcom_reset_map { i32 3220, i8 0 }], [40 x i8] zeroinitializer }, align 32
@video_cc_sm8250_gdscs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mvs0c_gdsc, ptr @mvs1c_gdsc, ptr @mvs0_gdsc, ptr @mvs1_gdsc], [16 x i8] zeroinitializer }, align 32
@video_cc_mvs0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 2964, i8 0, i8 5, i8 0, ptr @video_cc_parent_map_1, ptr @ftbl_video_cc_mvs0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@video_cc_mvs0c_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 3124, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, ptr null, i32 3124, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_mvs0c_div2_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 3156, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_mvs1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 2996, i8 0, i8 5, i8 0, ptr @video_cc_parent_map_2, ptr @ftbl_video_cc_mvs1_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@video_cc_mvs1_div2_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 3572, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 }, ptr null, i32 3572, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_mvs1c_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 3284, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 }, ptr null, i32 3284, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_mvs1c_div2_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 3316, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_mvs0_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 3412, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_mvs0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 3380, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, i32 3380, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_parent_map_1 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 1 }], [28 x i8] zeroinitializer }, align 32
@ftbl_video_cc_mvs0_clk_src = internal constant { [6 x %struct.freq_tbl], [56 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 720000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 1014000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 1098000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 1332000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"video_cc_mvs0_clk_src\00", [42 x i8] zeroinitializer }, align 32
@clk_rcg2_shared_ops = external dso_local constant %struct.clk_ops, align 4
@video_cc_parent_data_1 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.2, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @video_pll0, i64 20), ptr null, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_rcg2_shared_ops, ptr null, ptr @video_cc_parent_data_1, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"video_cc_mvs0c_clk\00", [45 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.4 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @video_cc_mvs0c_div2_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.3, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.4, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"video_cc_mvs0c_div2_div_clk_src\00", [32 x i8] zeroinitializer }, align 32
@clk_regmap_div_ro_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.7 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @video_cc_mvs0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @clk_regmap_div_ro_ops, ptr null, ptr null, ptr @.compoundliteral.7, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@video_cc_parent_map_2 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 2, i8 1 }], [28 x i8] zeroinitializer }, align 32
@ftbl_video_cc_mvs1_clk_src = internal constant { [5 x %struct.freq_tbl], [36 x i8] } { [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 840000000, i8 2, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 1098000000, i8 2, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 1332000000, i8 2, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"video_cc_mvs1_clk_src\00", [42 x i8] zeroinitializer }, align 32
@video_cc_parent_data_2 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.2, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @video_pll1, i64 20), ptr null, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.9, ptr @clk_rcg2_shared_ops, ptr null, ptr @video_cc_parent_data_2, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"video_cc_mvs1_div2_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @video_cc_mvs1c_div2_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.11, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.12, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"video_cc_mvs1c_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @video_cc_mvs1c_div2_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.14, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.15, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"video_cc_mvs1c_div2_div_clk_src\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @video_cc_mvs1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @clk_regmap_div_ro_ops, ptr null, ptr null, ptr @.compoundliteral.18, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"video_cc_mvs0_div_clk_src\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @video_cc_mvs0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_regmap_div_ro_ops, ptr null, ptr null, ptr @.compoundliteral.21, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"video_cc_mvs0_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @video_cc_mvs0_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.23, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.24, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@mvs0c_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.26, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 3064, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 0, ptr null, ptr null, i32 0, ptr @.str.27, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@mvs1c_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.28, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 3224, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 0, ptr null, ptr null, i32 0, ptr @.str.27, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@mvs0_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.29, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 3352, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 4, ptr null, ptr null, i32 0, ptr @.str.27, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@mvs1_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.30, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 3480, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 4, ptr null, ptr null, i32 0, ptr @.str.27, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mvs0c_gdsc\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmcx\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mvs1c_gdsc\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mvs0_gdsc\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mvs1_gdsc\00", [22 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@lucid_vco = internal global { [1 x %struct.pll_vco], [20 x i8] } { [1 x %struct.pll_vco] [%struct.pll_vco { i32 249600000, i32 2000000000, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video_pll0\00", [21 x i8] zeroinitializer }, align 32
@clk_alpha_pll_lucid_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.32 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.31, ptr @clk_alpha_pll_lucid_ops, ptr null, ptr @.compoundliteral.32, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video_pll1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.34, ptr @clk_alpha_pll_lucid_ops, ptr null, ptr @.compoundliteral.35, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"video_cc_sm8250_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 408, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 411, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"video_cc_sm8250_match_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 362, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"video_cc_sm8250_desc\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 352, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [11 x i8] c"video_pll0\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 44, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"video_pll0_config\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 33, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"video_pll1\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 72, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"video_pll1_config\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 61, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant [30 x i8] c"video_cc_sm8250_regmap_config\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 344, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"video_cc_sm8250_clocks\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 313, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant [23 x i8] c"video_cc_sm8250_resets\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 327, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"video_cc_sm8250_gdscs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 337, i32 21 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"video_cc_mvs0_clk_src\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 118, i32 24 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"video_cc_mvs0c_clk\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 201, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant [32 x i8] c"video_cc_mvs0c_div2_div_clk_src\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 156, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"video_cc_mvs1_clk_src\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 141, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"video_cc_mvs1_div2_clk\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 237, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"video_cc_mvs1c_clk\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 255, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant [32 x i8] c"video_cc_mvs1c_div2_div_clk_src\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 186, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"video_cc_mvs0_div_clk_src\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 171, i32 30 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"video_cc_mvs0_clk\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 219, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [22 x i8] c"video_cc_parent_map_1\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 89, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"ftbl_video_cc_mvs0_clk_src\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 109, i32 30 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 125, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"video_cc_parent_data_1\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 94, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 95, i32 15 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 208, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 161, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"video_cc_parent_map_2\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 99, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"ftbl_video_cc_mvs1_clk_src\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 133, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 148, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant [23 x i8] c"video_cc_parent_data_2\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 104, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 244, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 262, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 191, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 176, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 226, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [11 x i8] c"mvs0c_gdsc\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 273, i32 20 }
@___asan_gen_.167 = private unnamed_addr constant [11 x i8] c"mvs1c_gdsc\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 283, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant [10 x i8] c"mvs0_gdsc\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 293, i32 20 }
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"mvs1_gdsc\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 303, i32 20 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 276, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 280, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 286, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 296, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 306, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant [10 x i8] c"lucid_vco\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 29, i32 23 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 51, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [37 x i8] c"../drivers/clk/qcom/videocc-sm8250.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 79, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_video_cc_sm8250_exit, ptr @__initcall__kmod_videocc_sm8250__171_420_video_cc_sm8250_init4, ptr @video_cc_sm8250_exit, ptr @video_cc_sm8250_driver, ptr @.str, ptr @video_cc_sm8250_match_table, ptr @video_cc_sm8250_desc, ptr @video_pll0, ptr @video_pll0_config, ptr @video_pll1, ptr @video_pll1_config, ptr @video_cc_sm8250_regmap_config, ptr @video_cc_sm8250_clocks, ptr @video_cc_sm8250_resets, ptr @video_cc_sm8250_gdscs, ptr @video_cc_mvs0_clk_src, ptr @video_cc_mvs0c_clk, ptr @video_cc_mvs0c_div2_div_clk_src, ptr @video_cc_mvs1_clk_src, ptr @video_cc_mvs1_div2_clk, ptr @video_cc_mvs1c_clk, ptr @video_cc_mvs1c_div2_div_clk_src, ptr @video_cc_mvs0_div_clk_src, ptr @video_cc_mvs0_clk, ptr @video_cc_parent_map_1, ptr @ftbl_video_cc_mvs0_clk_src, ptr @.str.1, ptr @video_cc_parent_data_1, ptr @.compoundliteral, ptr @.str.2, ptr @.str.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @video_cc_parent_map_2, ptr @ftbl_video_cc_mvs1_clk_src, ptr @.str.9, ptr @video_cc_parent_data_2, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @mvs0c_gdsc, ptr @mvs1c_gdsc, ptr @mvs0_gdsc, ptr @mvs1_gdsc, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @lucid_vco, ptr @.str.31, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sm8250_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sm8250_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sm8250_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_pll0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_pll0_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_pll1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_pll1_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sm8250_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sm8250_clocks to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sm8250_resets to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sm8250_gdscs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_mvs0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_mvs0c_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_mvs0c_div2_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_mvs1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_mvs1_div2_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_mvs1c_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_mvs1c_div2_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_mvs0_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_mvs0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_parent_map_1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_video_cc_mvs0_clk_src to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_parent_data_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_parent_map_2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_video_cc_mvs1_clk_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_parent_data_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs0c_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs1c_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs0_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs1_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lucid_vco to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @video_cc_sm8250_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @video_cc_sm8250_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @video_cc_sm8250_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @video_cc_sm8250_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_cc_sm8250_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %dev) #4
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @video_cc_sm8250_pm_runtime_disable, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i38 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.i = icmp slt i32 %call.i38, 0
  br i1 %cmp.i, label %if.then.i39, label %if.end7

if.then.i39:                                      ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #4, !srcloc !117
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i39.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i39.cleanup_crit_edge:                    ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !118
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @video_cc_sm8250_desc) #4
  %cmp.i40 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call.i41 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #4
  %1 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_trion_pll_configure(ptr noundef nonnull @video_pll0, ptr noundef %call8, ptr noundef nonnull @video_pll0_config) #4
  tail call void @clk_trion_pll_configure(ptr noundef nonnull @video_pll1, ptr noundef %call8, ptr noundef nonnull @video_pll1_config) #4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %call8, i32 noundef 3672, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %call8, i32 noundef 3820, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call17 = tail call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @video_cc_sm8250_desc, ptr noundef %call8) #4
  %call.i44 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then10, %do.end11.i.i.i.i.i, %if.then.i39.cleanup_crit_edge, %devm_add_action_or_reset.exit
  %retval.0 = phi i32 [ %1, %if.then10 ], [ %call17, %if.end14 ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call.i38, %if.then.i39.cleanup_crit_edge ], [ %call.i38, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @video_cc_sm8250_pm_runtime_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_trion_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_videocc_sm8250__171_420_video_cc_sm8250_init4, !1, !"__initcall__kmod_videocc_sm8250__171_420_video_cc_sm8250_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 420, i32 1}
!2 = !{ptr @__exitcall_video_cc_sm8250_exit, !3, !"__exitcall_video_cc_sm8250_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 426, i32 1}
!4 = !{ptr @__UNIQUE_ID_file172, !5, !"__UNIQUE_ID_file172", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 428, i32 1}
!6 = !{ptr @__UNIQUE_ID_license173, !5, !"__UNIQUE_ID_license173", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description174, !8, !"__UNIQUE_ID_description174", i1 false, i1 false}
!8 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 429, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 411, i32 11}
!11 = !{ptr @video_cc_sm8250_driver, !12, !"video_cc_sm8250_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 408, i32 31}
!13 = !{ptr @video_cc_sm8250_desc, !14, !"video_cc_sm8250_desc", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 352, i32 34}
!15 = !{ptr @video_cc_sm8250_regmap_config, !16, !"video_cc_sm8250_regmap_config", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 344, i32 35}
!17 = !{ptr @video_cc_sm8250_clocks, !18, !"video_cc_sm8250_clocks", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 313, i32 27}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 125, i32 11}
!21 = !{ptr @video_cc_mvs0_clk_src, !22, !"video_cc_mvs0_clk_src", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 118, i32 24}
!23 = !{ptr @video_cc_parent_map_1, !24, !"video_cc_parent_map_1", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 89, i32 32}
!25 = !{ptr @ftbl_video_cc_mvs0_clk_src, !26, !"ftbl_video_cc_mvs0_clk_src", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 109, i32 30}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 95, i32 15}
!29 = !{ptr @video_cc_parent_data_1, !30, !"video_cc_parent_data_1", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 94, i32 37}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 208, i32 12}
!33 = !{ptr @video_cc_mvs0c_clk, !34, !"video_cc_mvs0c_clk", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 201, i32 26}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 161, i32 11}
!37 = !{ptr @video_cc_mvs0c_div2_div_clk_src, !38, !"video_cc_mvs0c_div2_div_clk_src", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 156, i32 30}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 148, i32 11}
!41 = !{ptr @video_cc_mvs1_clk_src, !42, !"video_cc_mvs1_clk_src", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 141, i32 24}
!43 = !{ptr @video_cc_parent_map_2, !44, !"video_cc_parent_map_2", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 99, i32 32}
!45 = !{ptr @ftbl_video_cc_mvs1_clk_src, !46, !"ftbl_video_cc_mvs1_clk_src", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 133, i32 30}
!47 = !{ptr @video_cc_parent_data_2, !48, !"video_cc_parent_data_2", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 104, i32 37}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 244, i32 12}
!51 = !{ptr @video_cc_mvs1_div2_clk, !52, !"video_cc_mvs1_div2_clk", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 237, i32 26}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 262, i32 12}
!55 = !{ptr @video_cc_mvs1c_clk, !56, !"video_cc_mvs1c_clk", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 255, i32 26}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 191, i32 11}
!59 = !{ptr @video_cc_mvs1c_div2_div_clk_src, !60, !"video_cc_mvs1c_div2_div_clk_src", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 186, i32 30}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 176, i32 11}
!63 = !{ptr @video_cc_mvs0_div_clk_src, !64, !"video_cc_mvs0_div_clk_src", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 171, i32 30}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 226, i32 12}
!67 = !{ptr @video_cc_mvs0_clk, !68, !"video_cc_mvs0_clk", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 219, i32 26}
!69 = !{ptr @video_cc_sm8250_resets, !70, !"video_cc_sm8250_resets", i1 false, i1 false}
!70 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 327, i32 36}
!71 = !{ptr @video_cc_sm8250_gdscs, !72, !"video_cc_sm8250_gdscs", i1 false, i1 false}
!72 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 337, i32 21}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 276, i32 11}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 280, i32 12}
!77 = !{ptr @mvs0c_gdsc, !78, !"mvs0c_gdsc", i1 false, i1 false}
!78 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 273, i32 20}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 286, i32 11}
!81 = !{ptr @mvs1c_gdsc, !82, !"mvs1c_gdsc", i1 false, i1 false}
!82 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 283, i32 20}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 296, i32 11}
!85 = !{ptr @mvs0_gdsc, !86, !"mvs0_gdsc", i1 false, i1 false}
!86 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 293, i32 20}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 306, i32 11}
!89 = !{ptr @mvs1_gdsc, !90, !"mvs1_gdsc", i1 false, i1 false}
!90 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 303, i32 20}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 51, i32 12}
!93 = !{ptr @video_pll0, !94, !"video_pll0", i1 false, i1 false}
!94 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 44, i32 29}
!95 = !{ptr @lucid_vco, !96, !"lucid_vco", i1 false, i1 false}
!96 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 29, i32 23}
!97 = !{ptr @video_pll0_config, !98, !"video_pll0_config", i1 false, i1 false}
!98 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 33, i32 38}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 79, i32 12}
!101 = !{ptr @video_pll1, !102, !"video_pll1", i1 false, i1 false}
!102 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 72, i32 29}
!103 = !{ptr @video_pll1_config, !104, !"video_pll1_config", i1 false, i1 false}
!104 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 61, i32 38}
!105 = !{ptr @video_cc_sm8250_match_table, !106, !"video_cc_sm8250_match_table", i1 false, i1 false}
!106 = !{!"../drivers/clk/qcom/videocc-sm8250.c", i32 362, i32 34}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2148275986}
!117 = !{i64 760809, i64 760834, i64 760856, i64 760872, i64 760884, i64 760904, i64 760928, i64 760944, i64 760956}
!118 = !{i64 2148276174}
