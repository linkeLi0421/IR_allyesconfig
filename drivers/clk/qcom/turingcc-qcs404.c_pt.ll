; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/turingcc-qcs404.c_pt.bc'
source_filename = "../drivers/clk/qcom/turingcc-qcs404.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_turingcc_qcs404__171_154_turingcc_driver_init6 = internal global ptr @turingcc_driver_init, section ".initcall6.init", align 4
@turingcc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @turingcc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @turingcc_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @turingcc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_turingcc_driver_exit = internal global ptr @turingcc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [68 x i8] c"turingcc_qcs404.description=Qualcomm QCS404 Turing Clock Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [54 x i8] c"turingcc_qcs404.file=drivers/clk/qcom/turingcc-qcs404\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [31 x i8] c"turingcc_qcs404.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcs404-turingcc\00", [16 x i8] zeroinitializer }, align 32
@turingcc_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-turingcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@turingcc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_clk_suspend, ptr @pm_clk_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@turingcc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 124, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to acquire iface clock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"turingcc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clk/qcom/turingcc-qcs404.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@turingcc_probe._entry_ptr = internal global ptr @turingcc_probe._entry, section ".printk_index", align 4
@turingcc_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @turingcc_regmap_config, ptr @turingcc_clocks, i32 5, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@turingcc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 143364, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@turingcc_clocks = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr getelementptr (i8, ptr @turing_q6ss_q6_axim_clk, i64 12), ptr getelementptr (i8, ptr @turing_q6ss_ahbm_aon_cbcr, i64 12), ptr getelementptr (i8, ptr @turing_wrapper_aon_cbcr, i64 12), ptr getelementptr (i8, ptr @turing_q6ss_ahbs_aon_cbcr, i64 12), ptr getelementptr (i8, ptr @turing_wrapper_qos_ahbs_aon_cbcr, i64 12)], [44 x i8] zeroinitializer }, align 32
@turing_q6ss_q6_axim_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45056, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, ptr null, i32 45056, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@turing_q6ss_ahbm_aon_cbcr = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 36864, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 }, ptr null, i32 36864, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@turing_wrapper_aon_cbcr = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20632, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, ptr null, i32 20632, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@turing_q6ss_ahbs_aon_cbcr = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 65536, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 }, ptr null, i32 65536, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@turing_wrapper_qos_ahbs_aon_cbcr = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 69652, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, i32 69652, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"turing_q6ss_q6_axim_clk\00", [40 x i8] zeroinitializer }, align 32
@clk_branch2_aon_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @clk_branch2_aon_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"turing_q6ss_ahbm_aon_cbcr\00", [38 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.8 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"turing_wrapper_aon_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.9, ptr @clk_branch2_aon_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"turing_q6ss_ahbs_aon_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.11, ptr @clk_branch2_aon_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"turing_wrapper_qos_ahbs_aon_clk\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.13, ptr @clk_branch2_aon_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"turingcc_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 145, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 148, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"turingcc_match_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 139, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"turingcc_pm_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 135, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 124, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"turingcc_desc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 104, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"turingcc_regmap_config\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 96, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"turingcc_clocks\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 88, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"turing_q6ss_q6_axim_clk\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 49, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"turing_q6ss_ahbm_aon_cbcr\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 36, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant [24 x i8] c"turing_wrapper_aon_cbcr\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 23, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [26 x i8] c"turing_q6ss_ahbs_aon_cbcr\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 62, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant [33 x i8] c"turing_wrapper_qos_ahbs_aon_cbcr\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 75, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 56, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 43, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 30, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 69, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [38 x i8] c"../drivers/clk/qcom/turingcc-qcs404.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 82, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_turingcc_driver_exit, ptr @__initcall__kmod_turingcc_qcs404__171_154_turingcc_driver_init6, ptr @turingcc_driver_exit, ptr @turingcc_probe._entry, ptr @turingcc_probe._entry_ptr, ptr @turingcc_driver, ptr @.str, ptr @turingcc_match_table, ptr @turingcc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @turingcc_desc, ptr @turingcc_regmap_config, ptr @turingcc_clocks, ptr @turing_q6ss_q6_axim_clk, ptr @turing_q6ss_ahbm_aon_cbcr, ptr @turing_wrapper_aon_cbcr, ptr @turing_q6ss_ahbs_aon_cbcr, ptr @turing_wrapper_qos_ahbs_aon_cbcr, ptr @.str.6, ptr @.compoundliteral, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turingcc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turingcc_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turingcc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turingcc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turingcc_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turingcc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turingcc_clocks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turing_q6ss_q6_axim_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turing_q6ss_ahbm_aon_cbcr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turing_wrapper_aon_cbcr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turing_q6ss_ahbs_aon_cbcr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turing_wrapper_qos_ahbs_aon_cbcr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @turingcc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @turingcc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @turingcc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @turingcc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @turingcc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_pm_runtime_enable(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @devm_pm_clk_create(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @pm_clk_add(ptr noundef %dev, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @qcom_cc_probe(ptr noundef %pdev, ptr noundef nonnull @turingcc_desc) #5
  %0 = tail call i32 @llvm.smin.i32(i32 %call11, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_turingcc_qcs404__171_154_turingcc_driver_init6, !1, !"__initcall__kmod_turingcc_qcs404__171_154_turingcc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 154, i32 1}
!2 = !{ptr @__exitcall_turingcc_driver_exit, !1, !"__exitcall_turingcc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description172, !4, !"__UNIQUE_ID_description172", i1 false, i1 false}
!4 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 156, i32 1}
!5 = !{ptr @__UNIQUE_ID_file173, !6, !"__UNIQUE_ID_file173", i1 false, i1 false}
!6 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 157, i32 1}
!7 = !{ptr @__UNIQUE_ID_license174, !6, !"__UNIQUE_ID_license174", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 148, i32 11}
!10 = !{ptr @turingcc_driver, !11, !"turingcc_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 145, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 124, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @turingcc_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @turingcc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @turingcc_desc, !21, !"turingcc_desc", i1 false, i1 false}
!21 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 104, i32 34}
!22 = !{ptr @turingcc_regmap_config, !23, !"turingcc_regmap_config", i1 false, i1 false}
!23 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 96, i32 35}
!24 = !{ptr @turingcc_clocks, !25, !"turingcc_clocks", i1 false, i1 false}
!25 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 88, i32 27}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 56, i32 12}
!28 = !{ptr @turing_q6ss_q6_axim_clk, !29, !"turing_q6ss_q6_axim_clk", i1 false, i1 false}
!29 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 49, i32 26}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 43, i32 12}
!32 = !{ptr @turing_q6ss_ahbm_aon_cbcr, !33, !"turing_q6ss_ahbm_aon_cbcr", i1 false, i1 false}
!33 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 36, i32 26}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 30, i32 12}
!36 = !{ptr @turing_wrapper_aon_cbcr, !37, !"turing_wrapper_aon_cbcr", i1 false, i1 false}
!37 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 23, i32 26}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 69, i32 12}
!40 = !{ptr @turing_q6ss_ahbs_aon_cbcr, !41, !"turing_q6ss_ahbs_aon_cbcr", i1 false, i1 false}
!41 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 62, i32 26}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 82, i32 12}
!44 = !{ptr @turing_wrapper_qos_ahbs_aon_cbcr, !45, !"turing_wrapper_qos_ahbs_aon_cbcr", i1 false, i1 false}
!45 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 75, i32 26}
!46 = !{ptr @turingcc_match_table, !47, !"turingcc_match_table", i1 false, i1 false}
!47 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 139, i32 34}
!48 = !{ptr @turingcc_pm_ops, !49, !"turingcc_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/clk/qcom/turingcc-qcs404.c", i32 135, i32 32}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
