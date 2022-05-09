; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/gpucc-sm8250.c_pt.bc'
source_filename = "../drivers/clk/qcom/gpucc-sm8250.c"
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
%struct.pll_vco = type { i32, i32, i32 }

@__initcall__kmod_gpucc_sm8250__170_338_gpu_cc_sm8250_init4 = internal global ptr @gpu_cc_sm8250_init, section ".initcall4.init", align 4
@gpu_cc_sm8250_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpu_cc_sm8250_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpu_cc_sm8250_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpu_cc_sm8250_exit = internal global ptr @gpu_cc_sm8250_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [50 x i8] c"gpucc_sm8250.description=QTI GPU_CC SM8250 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [48 x i8] c"gpucc_sm8250.file=drivers/clk/qcom/gpucc-sm8250\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [28 x i8] c"gpucc_sm8250.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sm8250-gpucc\00", [19 x i8] zeroinitializer }, align 32
@gpu_cc_sm8250_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-gpucc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpu_cc_sm8250_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @gpu_cc_sm8250_regmap_config, ptr @gpu_cc_sm8250_clocks, i32 11, ptr @gpu_cc_sm8250_resets, i32 6, ptr @gpu_cc_sm8250_gdscs, i32 2, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gpu_cc_pll1 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 256, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 68), ptr @lucid_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@gpu_cc_pll1_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 26, i32 2730, i32 0, i32 541611673, i32 8801, i32 43674012, i32 0, i32 2053, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@gpu_cc_sm8250_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 32776, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@gpu_cc_sm8250_clocks = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr getelementptr (i8, ptr @gpu_cc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gpu_cc_crc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gpu_cc_cx_apb_clk, i64 12), ptr getelementptr (i8, ptr @gpu_cc_cx_gmu_clk, i64 12), ptr getelementptr (i8, ptr @gpu_cc_cx_snoc_dvm_clk, i64 12), ptr getelementptr (i8, ptr @gpu_cc_cxo_aon_clk, i64 12), ptr getelementptr (i8, ptr @gpu_cc_cxo_clk, i64 12), ptr getelementptr (i8, ptr @gpu_cc_gmu_clk_src, i64 16), ptr getelementptr (i8, ptr @gpu_cc_gx_gmu_clk, i64 12), ptr getelementptr (i8, ptr @gpu_cc_pll1, i64 20), ptr getelementptr (i8, ptr @gpu_cc_hlos1_vote_gpu_smmu_clk, i64 12)], [52 x i8] zeroinitializer }, align 32
@gpu_cc_sm8250_resets = internal constant { [6 x %struct.qcom_reset_map], [48 x i8] } { [6 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 4448, i8 0 }, %struct.qcom_reset_map { i32 4200, i8 0 }, %struct.qcom_reset_map { i32 4256, i8 0 }, %struct.qcom_reset_map { i32 4380, i8 0 }, %struct.qcom_reset_map { i32 4104, i8 0 }, %struct.qcom_reset_map { i32 4096, i8 0 }], [48 x i8] zeroinitializer }, align 32
@gpu_cc_sm8250_gdscs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpu_cx_gdsc, ptr @gpu_gx_gdsc], [24 x i8] zeroinitializer }, align 32
@gpu_cc_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4216, i8 0, i8 0, i8 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, ptr null, i32 4216, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpu_cc_crc_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4220, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.3 }, ptr null, i32 4220, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpu_cc_cx_apb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4232, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, ptr null, i32 4232, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpu_cc_cx_gmu_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4248, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 }, ptr null, i32 4248, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpu_cc_cx_snoc_dvm_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4236, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, ptr null, i32 4236, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpu_cc_cxo_aon_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4100, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 }, ptr null, i32 4100, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpu_cc_cxo_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4252, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, i32 4252, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpu_cc_gmu_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4384, i8 0, i8 5, i8 0, ptr @gpu_cc_parent_map_0, ptr @ftbl_gpu_cc_gmu_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@gpu_cc_gx_gmu_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4196, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, ptr null, i32 4196, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gpu_cc_hlos1_vote_gpu_smmu_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20480, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 }, ptr null, i32 20480, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu_cc_ahb_clk\00", [17 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpu_cc_crc_ahb_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.2, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpu_cc_cx_apb_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.4, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpu_cc_cx_gmu_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @gpu_cc_gmu_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.7, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpu_cc_cx_snoc_dvm_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.9, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpu_cc_cxo_aon_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.11, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu_cc_cxo_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.13, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@gpu_cc_parent_map_0 = internal constant { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 4, i8 3 }, %struct.parent_map { i8 1, i8 5 }, %struct.parent_map { i8 2, i8 6 }], [24 x i8] zeroinitializer }, align 32
@ftbl_gpu_cc_gmu_clk_src = internal constant { [4 x %struct.freq_tbl], [48 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 2, i8 2, i16 0, i16 0 }, %struct.freq_tbl { i32 500000000, i8 4, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpu_cc_gmu_clk_src\00", [45 x i8] zeroinitializer }, align 32
@clk_rcg2_ops = external dso_local constant %struct.clk_ops, align 4
@gpu_cc_parent_data_0 = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.17, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @gpu_cc_pll1, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.18, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.19, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.15, ptr @clk_rcg2_ops, ptr null, ptr @gpu_cc_parent_data_0, ptr null, i8 4, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gcc_gpu_gpll0_clk_src\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gcc_gpu_gpll0_div_clk_src\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpu_cc_gx_gmu_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @gpu_cc_gmu_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.21, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gpu_cc_hlos1_vote_gpu_smmu_clk\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.23, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@gpu_cx_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.25, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 4204, i32 5440, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 1, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@gpu_gx_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.26, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @gdsc_gx_do_nothing_enable, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 4108, i32 0, i32 5384, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 50, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_cx_gdsc\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_gx_gdsc\00", [20 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@lucid_vco = internal global { [1 x %struct.pll_vco], [20 x i8] } { [1 x %struct.pll_vco] [%struct.pll_vco { i32 249600000, i32 2000000000, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_cc_pll1\00", [20 x i8] zeroinitializer }, align 32
@clk_alpha_pll_lucid_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.28 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.17, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @clk_alpha_pll_lucid_ops, ptr null, ptr @.compoundliteral.28, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"gpu_cc_sm8250_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 326, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 329, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [26 x i8] c"gpu_cc_sm8250_match_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 297, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"gpu_cc_sm8250_desc\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 287, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"gpu_cc_pll1\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 50, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"gpu_cc_pll1_config\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 39, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"gpu_cc_sm8250_regmap_config\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 279, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"gpu_cc_sm8250_clocks\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 251, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"gpu_cc_sm8250_resets\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 265, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"gpu_cc_sm8250_gdscs\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 274, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"gpu_cc_ahb_clk\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 103, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"gpu_cc_crc_ahb_clk\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 116, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"gpu_cc_cx_apb_clk\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 129, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"gpu_cc_cx_gmu_clk\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 142, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"gpu_cc_cx_snoc_dvm_clk\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 160, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"gpu_cc_cxo_aon_clk\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 173, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"gpu_cc_cxo_clk\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 186, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"gpu_cc_gmu_clk_src\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 88, i32 24 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"gpu_cc_gx_gmu_clk\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 199, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant [31 x i8] c"gpu_cc_hlos1_vote_gpu_smmu_clk\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 217, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 110, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 123, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 136, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 149, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 167, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 180, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 193, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"gpu_cc_parent_map_0\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 67, i32 32 }
@___asan_gen_.122 = private unnamed_addr constant [24 x i8] c"ftbl_gpu_cc_gmu_clk_src\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 81, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 95, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant [21 x i8] c"gpu_cc_parent_data_0\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 74, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 75, i32 15 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 77, i32 15 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 78, i32 15 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 206, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 224, i32 13 }
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"gpu_cx_gdsc\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 230, i32 20 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"gpu_gx_gdsc\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 240, i32 20 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 234, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 244, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant [10 x i8] c"lucid_vco\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 35, i32 23 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [35 x i8] c"../drivers/clk/qcom/gpucc-sm8250.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 57, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_gpu_cc_sm8250_exit, ptr @__initcall__kmod_gpucc_sm8250__170_338_gpu_cc_sm8250_init4, ptr @gpu_cc_sm8250_exit, ptr @gpu_cc_sm8250_driver, ptr @.str, ptr @gpu_cc_sm8250_match_table, ptr @gpu_cc_sm8250_desc, ptr @gpu_cc_pll1, ptr @gpu_cc_pll1_config, ptr @gpu_cc_sm8250_regmap_config, ptr @gpu_cc_sm8250_clocks, ptr @gpu_cc_sm8250_resets, ptr @gpu_cc_sm8250_gdscs, ptr @gpu_cc_ahb_clk, ptr @gpu_cc_crc_ahb_clk, ptr @gpu_cc_cx_apb_clk, ptr @gpu_cc_cx_gmu_clk, ptr @gpu_cc_cx_snoc_dvm_clk, ptr @gpu_cc_cxo_aon_clk, ptr @gpu_cc_cxo_clk, ptr @gpu_cc_gmu_clk_src, ptr @gpu_cc_gx_gmu_clk, ptr @gpu_cc_hlos1_vote_gpu_smmu_clk, ptr @.str.1, ptr @.compoundliteral, ptr @.str.2, ptr @.compoundliteral.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @gpu_cc_parent_map_0, ptr @ftbl_gpu_cc_gmu_clk_src, ptr @.str.15, ptr @gpu_cc_parent_data_0, ptr @.compoundliteral.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @gpu_cx_gdsc, ptr @gpu_gx_gdsc, ptr @.str.25, ptr @.str.26, ptr @lucid_vco, ptr @.str.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sm8250_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sm8250_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sm8250_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_pll1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_pll1_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sm8250_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sm8250_clocks to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sm8250_resets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_sm8250_gdscs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_crc_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_cx_apb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_cx_gmu_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_cx_snoc_dvm_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_cxo_aon_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_cxo_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_gmu_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_gx_gmu_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_hlos1_vote_gpu_smmu_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_parent_map_0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_gpu_cc_gmu_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cc_parent_data_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_cx_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_gx_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lucid_vco to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpu_cc_sm8250_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpu_cc_sm8250_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpu_cc_sm8250_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpu_cc_sm8250_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpu_cc_sm8250_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @gpu_cc_sm8250_desc) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_trion_pll_configure(ptr noundef nonnull @gpu_cc_pll1, ptr noundef %call, ptr noundef nonnull @gpu_cc_pll1_config) #3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 4248, i32 noundef 4080, i32 noundef 4080, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %call4 = tail call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @gpu_cc_sm8250_desc, ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_trion_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_gpucc_sm8250__170_338_gpu_cc_sm8250_init4, !1, !"__initcall__kmod_gpucc_sm8250__170_338_gpu_cc_sm8250_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 338, i32 1}
!2 = !{ptr @__exitcall_gpu_cc_sm8250_exit, !3, !"__exitcall_gpu_cc_sm8250_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 344, i32 1}
!4 = !{ptr @__UNIQUE_ID_description171, !5, !"__UNIQUE_ID_description171", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 346, i32 1}
!6 = !{ptr @__UNIQUE_ID_file172, !7, !"__UNIQUE_ID_file172", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 347, i32 1}
!8 = !{ptr @__UNIQUE_ID_license173, !7, !"__UNIQUE_ID_license173", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 329, i32 11}
!11 = !{ptr @gpu_cc_sm8250_driver, !12, !"gpu_cc_sm8250_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 326, i32 31}
!13 = !{ptr @gpu_cc_sm8250_desc, !14, !"gpu_cc_sm8250_desc", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 287, i32 34}
!15 = !{ptr @gpu_cc_sm8250_regmap_config, !16, !"gpu_cc_sm8250_regmap_config", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 279, i32 35}
!17 = !{ptr @gpu_cc_sm8250_clocks, !18, !"gpu_cc_sm8250_clocks", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 251, i32 27}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 110, i32 12}
!21 = !{ptr @gpu_cc_ahb_clk, !22, !"gpu_cc_ahb_clk", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 103, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 123, i32 12}
!25 = !{ptr @gpu_cc_crc_ahb_clk, !26, !"gpu_cc_crc_ahb_clk", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 116, i32 26}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 136, i32 12}
!29 = !{ptr @gpu_cc_cx_apb_clk, !30, !"gpu_cc_cx_apb_clk", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 129, i32 26}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 149, i32 12}
!33 = !{ptr @gpu_cc_cx_gmu_clk, !34, !"gpu_cc_cx_gmu_clk", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 142, i32 26}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 167, i32 12}
!37 = !{ptr @gpu_cc_cx_snoc_dvm_clk, !38, !"gpu_cc_cx_snoc_dvm_clk", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 160, i32 26}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 180, i32 12}
!41 = !{ptr @gpu_cc_cxo_aon_clk, !42, !"gpu_cc_cxo_aon_clk", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 173, i32 26}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 193, i32 12}
!45 = !{ptr @gpu_cc_cxo_clk, !46, !"gpu_cc_cxo_clk", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 186, i32 26}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 95, i32 11}
!49 = !{ptr @gpu_cc_gmu_clk_src, !50, !"gpu_cc_gmu_clk_src", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 88, i32 24}
!51 = !{ptr @gpu_cc_parent_map_0, !52, !"gpu_cc_parent_map_0", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 67, i32 32}
!53 = !{ptr @ftbl_gpu_cc_gmu_clk_src, !54, !"ftbl_gpu_cc_gmu_clk_src", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 81, i32 30}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 75, i32 15}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 77, i32 15}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 78, i32 15}
!61 = !{ptr @gpu_cc_parent_data_0, !62, !"gpu_cc_parent_data_0", i1 false, i1 false}
!62 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 74, i32 37}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 206, i32 12}
!65 = !{ptr @gpu_cc_gx_gmu_clk, !66, !"gpu_cc_gx_gmu_clk", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 199, i32 26}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 224, i32 13}
!69 = !{ptr @gpu_cc_hlos1_vote_gpu_smmu_clk, !70, !"gpu_cc_hlos1_vote_gpu_smmu_clk", i1 false, i1 false}
!70 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 217, i32 26}
!71 = !{ptr @gpu_cc_sm8250_resets, !72, !"gpu_cc_sm8250_resets", i1 false, i1 false}
!72 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 265, i32 36}
!73 = !{ptr @gpu_cc_sm8250_gdscs, !74, !"gpu_cc_sm8250_gdscs", i1 false, i1 false}
!74 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 274, i32 21}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 234, i32 11}
!77 = !{ptr @gpu_cx_gdsc, !78, !"gpu_cx_gdsc", i1 false, i1 false}
!78 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 230, i32 20}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 244, i32 11}
!81 = !{ptr @gpu_gx_gdsc, !82, !"gpu_gx_gdsc", i1 false, i1 false}
!82 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 240, i32 20}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 57, i32 12}
!85 = !{ptr @gpu_cc_pll1, !86, !"gpu_cc_pll1", i1 false, i1 false}
!86 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 50, i32 29}
!87 = !{ptr @lucid_vco, !88, !"lucid_vco", i1 false, i1 false}
!88 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 35, i32 23}
!89 = !{ptr @gpu_cc_pll1_config, !90, !"gpu_cc_pll1_config", i1 false, i1 false}
!90 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 39, i32 38}
!91 = !{ptr @gpu_cc_sm8250_match_table, !92, !"gpu_cc_sm8250_match_table", i1 false, i1 false}
!92 = !{!"../drivers/clk/qcom/gpucc-sm8250.c", i32 297, i32 34}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
