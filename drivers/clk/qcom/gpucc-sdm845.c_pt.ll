; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/gpucc-sdm845.c_pt.bc'
source_filename = "../drivers/clk/qcom/gpucc-sdm845.c"
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
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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

@__initcall__kmod_gpucc_sdm845__170_215_gpu_cc_sdm845_init4 = internal global ptr @gpu_cc_sdm845_init, section ".initcall4.init", align 4
@gpu_cc_sdm845_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpu_cc_sdm845_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpu_cc_sdm845_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpu_cc_sdm845_exit = internal global ptr @gpu_cc_sdm845_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [49 x i8] c"gpucc_sdm845.description=QTI GPUCC SDM845 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [48 x i8] c"gpucc_sdm845.file=drivers/clk/qcom/gpucc-sdm845\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [28 x i8] c"gpucc_sdm845.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdm845-gpucc\00", [19 x i8] zeroinitializer }, align 32
@gpu_cc_sdm845_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-gpucc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpu_cc_sdm845_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @gpu_cc_sdm845_regmap_config, ptr @gpu_cc_sdm845_clocks, i32 4, ptr null, i32 0, ptr @gpu_cc_sdm845_gdscs, i32 2, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gpu_cc_pll1 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 256, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), ptr null, i32 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@gpu_cc_pll1_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 26, i32 2731, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@gpu_cc_sdm845_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 32776, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@gpu_cc_sdm845_clocks = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr getelementptr (i8, ptr @gpu_cc_cx_gmu_clk, i64 12), ptr getelementptr (i8, ptr @gpu_cc_cxo_clk, i64 12), ptr getelementptr (i8, ptr @gpu_cc_gmu_clk_src, i64 16), ptr getelementptr (i8, ptr @gpu_cc_pll1, i64 20)], [16 x i8] zeroinitializer }, align 32
@gpu_cc_sdm845_gdscs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpu_cx_gdsc, ptr @gpu_gx_gdsc], [24 x i8] zeroinitializer }, align 32
@gpu_cc_cx_gmu_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4248, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.2 }, ptr null, i32 4248, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpu_cc_cxo_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4252, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.4 }, ptr null, i32 4252, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpu_cc_gmu_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4384, i8 0, i8 5, i8 0, ptr @gpu_cc_parent_map_0, ptr @ftbl_gpu_cc_gmu_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpu_cc_cx_gmu_clk\00", [46 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @gpu_cc_gmu_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu_cc_cxo_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.3, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@gpu_cc_parent_map_0 = internal constant { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 3, i8 3 }, %struct.parent_map { i8 1, i8 5 }, %struct.parent_map { i8 2, i8 6 }], [24 x i8] zeroinitializer }, align 32
@ftbl_gpu_cc_gmu_clk_src = internal constant { [4 x %struct.freq_tbl], [48 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 2, i8 2, i16 0, i16 0 }, %struct.freq_tbl { i32 500000000, i8 3, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpu_cc_gmu_clk_src\00", [45 x i8] zeroinitializer }, align 32
@clk_rcg2_shared_ops = external dso_local constant %struct.clk_ops, align 4
@gpu_cc_parent_data_0 = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @gpu_cc_pll1, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr @.str.8, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.5, ptr @clk_rcg2_shared_ops, ptr null, ptr @gpu_cc_parent_data_0, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gcc_gpu_gpll0_clk_src\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gcc_gpu_gpll0_div_clk_src\00", [38 x i8] zeroinitializer }, align 32
@gpu_cx_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.10, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 4204, i32 5440, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 1, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@gpu_gx_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.11, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @gdsc_gx_do_nothing_enable, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 4108, i32 0, i32 5384, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 50, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_cx_gdsc\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_gx_gdsc\00", [20 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_cc_pll1\00", [20 x i8] zeroinitializer }, align 32
@clk_alpha_pll_fabia_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.13 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.7, ptr @.str.7, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @clk_alpha_pll_fabia_ops, ptr null, ptr @.compoundliteral.13, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"gpu_cc_sdm845_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 203, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 206, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"gpu_cc_sdm845_match_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 170, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"gpu_cc_sdm845_desc\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 162, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"gpu_cc_pll1\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 40, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"gpu_cc_pll1_config\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 35, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"gpu_cc_sdm845_regmap_config\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 154, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"gpu_cc_sdm845_clocks\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 142, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"gpu_cc_sdm845_gdscs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 149, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"gpu_cc_cx_gmu_clk\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 90, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"gpu_cc_cxo_clk\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 108, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"gpu_cc_gmu_clk_src\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 76, i32 24 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 97, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 115, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"gpu_cc_parent_map_0\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 55, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant [24 x i8] c"ftbl_gpu_cc_gmu_clk_src\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 69, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 83, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"gpu_cc_parent_data_0\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 62, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 63, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 65, i32 15 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 66, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"gpu_cx_gdsc\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 121, i32 20 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"gpu_gx_gdsc\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 131, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 125, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 135, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [35 x i8] c"../drivers/clk/qcom/gpucc-sdm845.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 45, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_gpu_cc_sdm845_exit, ptr @__initcall__kmod_gpucc_sdm845__170_215_gpu_cc_sdm845_init4, ptr @gpu_cc_sdm845_exit, ptr @gpu_cc_sdm845_driver, ptr @.str, ptr @gpu_cc_sdm845_match_table, ptr @gpu_cc_sdm845_desc, ptr @gpu_cc_pll1, ptr @gpu_cc_pll1_config, ptr @gpu_cc_sdm845_regmap_config, ptr @gpu_cc_sdm845_clocks, ptr @gpu_cc_sdm845_gdscs, ptr @gpu_cc_cx_gmu_clk, ptr @gpu_cc_cxo_clk, ptr @gpu_cc_gmu_clk_src, ptr @.str.1, ptr @.compoundliteral, ptr @.compoundliteral.2, ptr @.str.3, ptr @.compoundliteral.4, ptr @gpu_cc_parent_map_0, ptr @ftbl_gpu_cc_gmu_clk_src, ptr @.str.5, ptr @gpu_cc_parent_data_0, ptr @.compoundliteral.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @gpu_cx_gdsc, ptr @gpu_gx_gdsc, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sdm845_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sdm845_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sdm845_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_pll1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_pll1_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sdm845_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sdm845_clocks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sdm845_gdscs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_cx_gmu_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_cxo_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_gmu_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_parent_map_0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gpu_cc_gmu_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_parent_data_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cx_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_gx_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpu_cc_sdm845_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpu_cc_sdm845_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpu_cc_sdm845_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpu_cc_sdm845_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpu_cc_sdm845_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @gpu_cc_sdm845_desc) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_fabia_pll_configure(ptr noundef nonnull @gpu_cc_pll1, ptr noundef %call, ptr noundef nonnull @gpu_cc_pll1_config) #3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 4248, i32 noundef 4080, i32 noundef 4080, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 4204, i32 noundef 61440, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %call5 = tail call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @gpu_cc_sdm845_desc, ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_fabia_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gdsc_gx_do_nothing_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_gpucc_sdm845__170_215_gpu_cc_sdm845_init4, !1, !"__initcall__kmod_gpucc_sdm845__170_215_gpu_cc_sdm845_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 215, i32 1}
!2 = !{ptr @__exitcall_gpu_cc_sdm845_exit, !3, !"__exitcall_gpu_cc_sdm845_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 221, i32 1}
!4 = !{ptr @__UNIQUE_ID_description171, !5, !"__UNIQUE_ID_description171", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 223, i32 1}
!6 = !{ptr @__UNIQUE_ID_file172, !7, !"__UNIQUE_ID_file172", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 224, i32 1}
!8 = !{ptr @__UNIQUE_ID_license173, !7, !"__UNIQUE_ID_license173", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 206, i32 11}
!11 = !{ptr @gpu_cc_sdm845_driver, !12, !"gpu_cc_sdm845_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 203, i32 31}
!13 = !{ptr @gpu_cc_sdm845_desc, !14, !"gpu_cc_sdm845_desc", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 162, i32 34}
!15 = !{ptr @gpu_cc_sdm845_regmap_config, !16, !"gpu_cc_sdm845_regmap_config", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 154, i32 35}
!17 = !{ptr @gpu_cc_sdm845_clocks, !18, !"gpu_cc_sdm845_clocks", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 142, i32 27}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 97, i32 12}
!21 = !{ptr @gpu_cc_cx_gmu_clk, !22, !"gpu_cc_cx_gmu_clk", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 90, i32 26}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 115, i32 12}
!25 = !{ptr @gpu_cc_cxo_clk, !26, !"gpu_cc_cxo_clk", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 108, i32 26}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 83, i32 11}
!29 = !{ptr @gpu_cc_gmu_clk_src, !30, !"gpu_cc_gmu_clk_src", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 76, i32 24}
!31 = !{ptr @gpu_cc_parent_map_0, !32, !"gpu_cc_parent_map_0", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 55, i32 32}
!33 = !{ptr @ftbl_gpu_cc_gmu_clk_src, !34, !"ftbl_gpu_cc_gmu_clk_src", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 69, i32 30}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 63, i32 15}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 65, i32 15}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 66, i32 15}
!41 = !{ptr @gpu_cc_parent_data_0, !42, !"gpu_cc_parent_data_0", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 62, i32 37}
!43 = !{ptr @gpu_cc_sdm845_gdscs, !44, !"gpu_cc_sdm845_gdscs", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 149, i32 21}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 125, i32 11}
!47 = !{ptr @gpu_cx_gdsc, !48, !"gpu_cx_gdsc", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 121, i32 20}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 135, i32 11}
!51 = !{ptr @gpu_gx_gdsc, !52, !"gpu_gx_gdsc", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 131, i32 20}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 45, i32 12}
!55 = !{ptr @gpu_cc_pll1, !56, !"gpu_cc_pll1", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 40, i32 29}
!57 = !{ptr @gpu_cc_pll1_config, !58, !"gpu_cc_pll1_config", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 35, i32 38}
!59 = !{ptr @gpu_cc_sdm845_match_table, !60, !"gpu_cc_sdm845_match_table", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/gpucc-sdm845.c", i32 170, i32 34}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
