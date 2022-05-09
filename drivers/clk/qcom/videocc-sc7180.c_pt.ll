; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/videocc-sc7180.c_pt.bc'
source_filename = "../drivers/clk/qcom/videocc-sc7180.c"
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
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
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

@__initcall__kmod_videocc_sc7180__170_244_video_cc_sc7180_init4 = internal global ptr @video_cc_sc7180_init, section ".initcall4.init", align 4
@video_cc_sc7180_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @video_cc_sc7180_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @video_cc_sc7180_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_video_cc_sc7180_exit = internal global ptr @video_cc_sc7180_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [52 x i8] c"videocc_sc7180.file=drivers/clk/qcom/videocc-sc7180\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [30 x i8] c"videocc_sc7180.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [53 x i8] c"videocc_sc7180.description=QTI VIDEOCC SC7180 Driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc7180-videocc\00", [17 x i8] zeroinitializer }, align 32
@video_cc_sc7180_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-videocc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@video_cc_sc7180_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @video_cc_sc7180_regmap_config, ptr @video_cc_sc7180_clocks, i32 7, ptr null, i32 0, ptr @video_cc_sc7180_gdscs, i32 2, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@video_pll0 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 1068, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), ptr @fabia_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@video_cc_sc7180_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 2964, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@video_cc_sc7180_clocks = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr getelementptr (i8, ptr @video_pll0, i64 20), ptr getelementptr (i8, ptr @video_cc_vcodec0_axi_clk, i64 12), ptr getelementptr (i8, ptr @video_cc_vcodec0_core_clk, i64 12), ptr getelementptr (i8, ptr @video_cc_venus_ahb_clk, i64 12), ptr getelementptr (i8, ptr @video_cc_venus_clk_src, i64 16), ptr getelementptr (i8, ptr @video_cc_venus_ctl_axi_clk, i64 12), ptr getelementptr (i8, ptr @video_cc_venus_ctl_core_clk, i64 12)], [36 x i8] zeroinitializer }, align 32
@video_cc_sc7180_gdscs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @venus_gdsc, ptr @vcodec0_gdsc], [24 x i8] zeroinitializer }, align 32
@video_cc_vcodec0_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 2540, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, ptr null, i32 2540, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_vcodec0_core_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 2192, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.4 }, ptr null, i32 2192, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_venus_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 2636, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 }, ptr null, i32 2636, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_venus_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 2032, i8 0, i8 5, i8 0, ptr @video_cc_parent_map_1, ptr @ftbl_video_cc_venus_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@video_cc_venus_ctl_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 2508, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 }, ptr null, i32 2508, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@video_cc_venus_ctl_core_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 2128, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, i32 2128, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"video_cc_vcodec0_axi_clk\00", [39 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"video_cc_vcodec0_core_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @video_cc_venus_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.2, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.3, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"video_cc_venus_ahb_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.5, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@video_cc_parent_map_1 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 1 }], [28 x i8] zeroinitializer }, align 32
@ftbl_video_cc_venus_clk_src = internal constant { [7 x %struct.freq_tbl], [44 x i8] } { [7 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 150000000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 270000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 340000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 434000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 500000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"video_cc_venus_clk_src\00", [41 x i8] zeroinitializer }, align 32
@clk_rcg2_shared_ops = external dso_local constant %struct.clk_ops, align 4
@video_cc_parent_data_1 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.9, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @video_pll0, i64 20), ptr null, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @clk_rcg2_shared_ops, ptr null, ptr @video_cc_parent_data_1, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"video_cc_venus_ctl_axi_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.10, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"video_cc_venus_ctl_core_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @video_cc_venus_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.13, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@venus_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.15, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 2068, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 0, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@vcodec0_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 2164, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 4, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"venus_gdsc\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcodec0_gdsc\00", [19 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@fabia_vco = internal constant { [1 x %struct.pll_vco], [20 x i8] } { [1 x %struct.pll_vco] [%struct.pll_vco { i32 249600000, i32 2000000000, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video_pll0\00", [21 x i8] zeroinitializer }, align 32
@clk_alpha_pll_fabia_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.18 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.9, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @clk_alpha_pll_fabia_ops, ptr null, ptr @.compoundliteral.18, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"video_cc_sc7180_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 232, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 235, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"video_cc_sc7180_match_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 204, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"video_cc_sc7180_desc\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 196, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"video_pll0\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 29, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [30 x i8] c"video_cc_sc7180_regmap_config\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 188, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"video_cc_sc7180_clocks\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 173, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"video_cc_sc7180_gdscs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 183, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [25 x i8] c"video_cc_vcodec0_axi_clk\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 81, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"video_cc_vcodec0_core_clk\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 94, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"video_cc_venus_ahb_clk\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 112, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"video_cc_venus_clk_src\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 66, i32 24 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"video_cc_venus_ctl_axi_clk\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 125, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"video_cc_venus_ctl_core_clk\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 138, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 88, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 101, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 119, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"video_cc_parent_map_1\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 46, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"ftbl_video_cc_venus_clk_src\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 56, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 73, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"video_cc_parent_data_1\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 51, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 52, i32 15 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 132, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 145, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"venus_gdsc\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 156, i32 20 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"vcodec0_gdsc\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 164, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 159, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 167, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [10 x i8] c"fabia_vco\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 25, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [37 x i8] c"../drivers/clk/qcom/videocc-sc7180.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 36, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_video_cc_sc7180_exit, ptr @__initcall__kmod_videocc_sc7180__170_244_video_cc_sc7180_init4, ptr @video_cc_sc7180_exit, ptr @video_cc_sc7180_driver, ptr @.str, ptr @video_cc_sc7180_match_table, ptr @video_cc_sc7180_desc, ptr @video_pll0, ptr @video_cc_sc7180_regmap_config, ptr @video_cc_sc7180_clocks, ptr @video_cc_sc7180_gdscs, ptr @video_cc_vcodec0_axi_clk, ptr @video_cc_vcodec0_core_clk, ptr @video_cc_venus_ahb_clk, ptr @video_cc_venus_clk_src, ptr @video_cc_venus_ctl_axi_clk, ptr @video_cc_venus_ctl_core_clk, ptr @.str.1, ptr @.compoundliteral, ptr @.str.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @.compoundliteral.6, ptr @video_cc_parent_map_1, ptr @ftbl_video_cc_venus_clk_src, ptr @.str.7, ptr @video_cc_parent_data_1, ptr @.compoundliteral.8, ptr @.str.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @venus_gdsc, ptr @vcodec0_gdsc, ptr @.str.15, ptr @.str.16, ptr @fabia_vco, ptr @.str.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sc7180_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sc7180_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sc7180_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_pll0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sc7180_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sc7180_clocks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_sc7180_gdscs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_vcodec0_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_vcodec0_core_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_venus_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_venus_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_venus_ctl_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_venus_ctl_core_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_parent_map_1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_video_cc_venus_clk_src to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_cc_parent_data_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcodec0_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fabia_vco to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @video_cc_sc7180_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @video_cc_sc7180_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @video_cc_sc7180_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @video_cc_sc7180_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_cc_sc7180_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %video_pll0_config = alloca %struct.alpha_pll_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %video_pll0_config) #4
  %0 = getelementptr inbounds i8, ptr %video_pll0_config, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %call = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @video_cc_sc7180_desc) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %video_pll0_config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 31, ptr %video_pll0_config, align 4
  %alpha = getelementptr inbounds %struct.alpha_pll_config, ptr %video_pll0_config, i32 0, i32 1
  %4 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16384, ptr %alpha, align 4
  %user_ctl_val = getelementptr inbounds %struct.alpha_pll_config, ptr %video_pll0_config, i32 0, i32 6
  %5 = ptrtoint ptr %user_ctl_val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %user_ctl_val, align 4
  %user_ctl_hi_val = getelementptr inbounds %struct.alpha_pll_config, ptr %video_pll0_config, i32 0, i32 7
  %6 = ptrtoint ptr %user_ctl_hi_val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 18437, ptr %user_ctl_hi_val, align 4
  call void @clk_fabia_pll_configure(ptr noundef nonnull @video_pll0, ptr noundef %call, ptr noundef nonnull %video_pll0_config) #4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 2436, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call4 = call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @video_cc_sc7180_desc, ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %video_pll0_config) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_fabia_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_videocc_sc7180__170_244_video_cc_sc7180_init4, !1, !"__initcall__kmod_videocc_sc7180__170_244_video_cc_sc7180_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 244, i32 1}
!2 = !{ptr @__exitcall_video_cc_sc7180_exit, !3, !"__exitcall_video_cc_sc7180_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 250, i32 1}
!4 = !{ptr @__UNIQUE_ID_file171, !5, !"__UNIQUE_ID_file171", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 252, i32 1}
!6 = !{ptr @__UNIQUE_ID_license172, !5, !"__UNIQUE_ID_license172", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description173, !8, !"__UNIQUE_ID_description173", i1 false, i1 false}
!8 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 253, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 235, i32 11}
!11 = !{ptr @video_cc_sc7180_driver, !12, !"video_cc_sc7180_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 232, i32 31}
!13 = !{ptr @video_cc_sc7180_desc, !14, !"video_cc_sc7180_desc", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 196, i32 34}
!15 = !{ptr @video_cc_sc7180_regmap_config, !16, !"video_cc_sc7180_regmap_config", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 188, i32 35}
!17 = !{ptr @video_cc_sc7180_clocks, !18, !"video_cc_sc7180_clocks", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 173, i32 27}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 88, i32 12}
!21 = !{ptr @video_cc_vcodec0_axi_clk, !22, !"video_cc_vcodec0_axi_clk", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 81, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 101, i32 12}
!25 = !{ptr @video_cc_vcodec0_core_clk, !26, !"video_cc_vcodec0_core_clk", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 94, i32 26}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 119, i32 12}
!29 = !{ptr @video_cc_venus_ahb_clk, !30, !"video_cc_venus_ahb_clk", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 112, i32 26}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 73, i32 11}
!33 = !{ptr @video_cc_venus_clk_src, !34, !"video_cc_venus_clk_src", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 66, i32 24}
!35 = !{ptr @video_cc_parent_map_1, !36, !"video_cc_parent_map_1", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 46, i32 32}
!37 = !{ptr @ftbl_video_cc_venus_clk_src, !38, !"ftbl_video_cc_venus_clk_src", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 56, i32 30}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 52, i32 15}
!41 = !{ptr @video_cc_parent_data_1, !42, !"video_cc_parent_data_1", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 51, i32 37}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 132, i32 12}
!45 = !{ptr @video_cc_venus_ctl_axi_clk, !46, !"video_cc_venus_ctl_axi_clk", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 125, i32 26}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 145, i32 12}
!49 = !{ptr @video_cc_venus_ctl_core_clk, !50, !"video_cc_venus_ctl_core_clk", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 138, i32 26}
!51 = !{ptr @video_cc_sc7180_gdscs, !52, !"video_cc_sc7180_gdscs", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 183, i32 21}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 159, i32 11}
!55 = !{ptr @venus_gdsc, !56, !"venus_gdsc", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 156, i32 20}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 167, i32 11}
!59 = !{ptr @vcodec0_gdsc, !60, !"vcodec0_gdsc", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 164, i32 20}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 36, i32 12}
!63 = !{ptr @video_pll0, !64, !"video_pll0", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 29, i32 29}
!65 = !{ptr @fabia_vco, !66, !"fabia_vco", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 25, i32 29}
!67 = !{ptr @video_cc_sc7180_match_table, !68, !"video_cc_sc7180_match_table", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/videocc-sc7180.c", i32 204, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
