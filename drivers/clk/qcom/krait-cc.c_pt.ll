; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/krait-cc.c_pt.bc'
source_filename = "../drivers/clk/qcom/krait-cc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.krait_div2_clk = type { i32, i8, i32, i8, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.krait_mux_clk = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, %struct.clk_hw, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_krait_cc__183_393_krait_cc_driver_init6 = internal global ptr @krait_cc_driver_init, section ".initcall6.init", align 4
@krait_cc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @krait_cc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @krait_cc_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_krait_cc_driver_exit = internal global ptr @krait_cc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [44 x i8] c"krait_cc.description=Krait CPU Clock Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [40 x i8] c"krait_cc.file=drivers/clk/qcom/krait-cc\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [24 x i8] c"krait_cc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias187 = internal constant [33 x i8] c"krait_cc.alias=platform:krait-cc\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"krait-cc\00", [23 x i8] zeroinitializer }, align 32
@krait_cc_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,krait-cc-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,krait-cc-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qsb\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acpu_aux\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpll0_vote\00", [21 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/qcom/krait-cc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to turn on CPU%d clock\00", [34 x i8] zeroinitializer }, align 32
@krait_cc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016L2 @ QSB rate. Forcing new rate.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"krait_cc_probe\00", [17 x i8] zeroinitializer }, align 32
@krait_cc_probe._entry_ptr = internal global ptr @krait_cc_probe._entry, section ".printk_index", align 4
@krait_cc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.4, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016L2 @ %lu KHz\0A\00", [16 x i8] zeroinitializer }, align 32
@krait_cc_probe._entry_ptr.10 = internal global ptr @krait_cc_probe._entry.8, section ".printk_index", align 4
@krait_cc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.4, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016CPU%d @ QSB rate. Forcing new rate.\0A\00", [57 x i8] zeroinitializer }, align 32
@krait_cc_probe._entry_ptr.13 = internal global ptr @krait_cc_probe._entry.11, section ".printk_index", align 4
@krait_cc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.4, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016CPU%d @ %lu KHz\0A\00", [45 x i8] zeroinitializer }, align 32
@krait_cc_probe._entry_ptr.16 = internal global ptr @krait_cc_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"_l2\00", [28 x i8] zeroinitializer }, align 32
@krait_div2_clk_ops = external dso_local constant %struct.clk_ops, align 4
@__const.krait_add_div.init = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr null, ptr @krait_div2_clk_ops, ptr null, ptr null, ptr null, i8 1, [3 x i8] zeroinitializer, i32 4 }, align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hfpll%s_div\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hfpll%s\00", [24 x i8] zeroinitializer }, align 32
@krait_add_sec_mux.sec_mux_list = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.1], [24 x i8] zeroinitializer }, align 32
@krait_mux_clk_ops = external dso_local constant %struct.clk_ops, align 4
@__const.krait_add_sec_mux.init = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr null, ptr @krait_mux_clk_ops, ptr @krait_add_sec_mux.sec_mux_list, ptr null, ptr null, i8 2, [3 x i8] zeroinitializer, i32 4 }, align 4
@sec_mux_map = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"krait%s_sec_mux\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"acpu%s_aux\00", [21 x i8] zeroinitializer }, align 32
@krait_notifier_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 67, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register clock notifier: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"krait_notifier_register\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@krait_notifier_register._entry_ptr = internal global ptr @krait_notifier_register._entry, section ".printk_index", align 4
@pri_mux_map = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"krait%s_pri_mux\00", [16 x i8] zeroinitializer }, align 32
@krait_of_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: invalid clock index %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"krait_of_get\00", [19 x i8] zeroinitializer }, align 32
@krait_of_get._entry_ptr = internal global ptr @krait_of_get._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"krait_cc_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 386, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 389, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"krait_cc_match_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 283, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 305, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 310, i32 40 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 311, i32 7 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 342, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 360, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 366, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 371, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 378, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 244, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 249, i32 7 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 94, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 99, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"sec_mux_list\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 118, i32 21 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"sec_mux_map\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 18, i32 21 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 142, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 147, i32 43 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 67, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"pri_mux_map\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 23, i32 21 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 195, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [31 x i8] c"../drivers/clk/qcom/krait-cc.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 276, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias187, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_krait_cc_driver_exit, ptr @__initcall__kmod_krait_cc__183_393_krait_cc_driver_init6, ptr @krait_cc_driver_exit, ptr @krait_cc_probe._entry, ptr @krait_cc_probe._entry.11, ptr @krait_cc_probe._entry.14, ptr @krait_cc_probe._entry.8, ptr @krait_cc_probe._entry_ptr, ptr @krait_cc_probe._entry_ptr.10, ptr @krait_cc_probe._entry_ptr.13, ptr @krait_cc_probe._entry_ptr.16, ptr @krait_notifier_register._entry, ptr @krait_notifier_register._entry_ptr, ptr @krait_of_get._entry, ptr @krait_of_get._entry_ptr, ptr @krait_cc_driver, ptr @.str, ptr @krait_cc_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @krait_add_sec_mux.sec_mux_list, ptr @sec_mux_map, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pri_mux_map, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_cc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_cc_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_cc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_cc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_cc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_cc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_add_sec_mux.sec_mux_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_mux_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_notifier_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pri_mux_map to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_of_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_cc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @krait_cc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @krait_cc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @krait_cc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_cc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @krait_cc_match_table, ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @clk_register_fixed_rate(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 1) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %tobool7.not = icmp eq ptr %2, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %call9 = tail call ptr @clk_register_fixed_factor(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 1, i32 noundef 2) #6
  %cmp.i168 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then11, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #6
  %tobool16.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %for.cond.preheader

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end14
  %call19181 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call19181, i32 %4)
  %cmp182 = icmp ult i32 %call19181, %4
  br i1 %cmp182, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call19183 = phi i32 [ %call19, %if.end26.for.body_crit_edge ], [ %call19181, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %tobool21 = icmp ne ptr %6, null
  %call22 = tail call fastcc ptr @krait_add_clks(ptr noundef %dev1, i32 noundef %call19183, i1 noundef zeroext %tobool21)
  %cmp.i169 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then24, label %if.end26

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end26:                                         ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %call5.i.i, i32 %call19183
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %arrayidx, align 4
  %call19 = tail call i32 @cpumask_next(i32 noundef %call19183, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call19, %9
  br i1 %cmp, label %if.end26.for.body_crit_edge, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end26.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %tobool28 = icmp ne ptr %11, null
  %call29 = tail call fastcc ptr @krait_add_clks(ptr noundef %dev1, i32 noundef -1, i1 noundef zeroext %tobool28)
  %cmp.i170 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then31, label %if.end33

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end33:                                         ; preds = %for.end
  %arrayidx34 = getelementptr ptr, ptr %call5.i.i, i32 4
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call29, ptr %arrayidx34, align 4
  %call36184 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call36184, i32 %14)
  %cmp37185 = icmp ult i32 %call36184, %14
  br i1 %cmp37185, label %if.end33.for.body38_crit_edge, label %if.end33.for.end64_crit_edge

if.end33.for.end64_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end64

if.end33.for.body38_crit_edge:                    ; preds = %if.end33
  br label %for.body38

for.body38:                                       ; preds = %if.end57.for.body38_crit_edge, %if.end33.for.body38_crit_edge
  %call36186 = phi i32 [ %call36, %if.end57.for.body38_crit_edge ], [ %call36184, %if.end33.for.body38_crit_edge ]
  %call.i = tail call i32 @clk_prepare(ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body38.clk_prepare_enable.exit_crit_edge

for.body38.clk_prepare_enable.exit_crit_edge:     ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body38
  %call1.i = tail call i32 @clk_enable(ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call29) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %for.body38.clk_prepare_enable.exit_crit_edge
  %arrayidx40 = getelementptr ptr, ptr %call5.i.i, i32 %call36186
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx40, align 4
  %call.i171 = tail call i32 @clk_prepare(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i172 = icmp eq i32 %call.i171, 0
  br i1 %tobool.not.i172, label %if.end.i175, label %clk_prepare_enable.exit.do.end_crit_edge

clk_prepare_enable.exit.do.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i175:                                      ; preds = %clk_prepare_enable.exit
  %call1.i173 = tail call i32 @clk_enable(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i173)
  %tobool2.not.i174 = icmp eq i32 %call1.i173, 0
  br i1 %tobool2.not.i174, label %if.end.i175.if.end57_crit_edge, label %if.then3.i176

if.end.i175.if.end57_crit_edge:                   ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then3.i176:                                    ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %16) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i176, %clk_prepare_enable.exit.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call36186) #6
  br label %if.end57

if.end57:                                         ; preds = %do.end, %if.end.i175.if.end57_crit_edge
  %call36 = tail call i32 @cpumask_next(i32 noundef %call36186, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp37 = icmp ult i32 %call36, %17
  br i1 %cmp37, label %if.end57.for.body38_crit_edge, label %if.end57.for.end64_crit_edge

if.end57.for.end64_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end64

if.end57.for.body38_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body38

for.end64:                                        ; preds = %if.end57.for.end64_crit_edge, %if.end33.for.end64_crit_edge
  %call65 = tail call i32 @clk_get_rate(ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call65)
  %cmp66 = icmp eq i32 %call65, 1
  br i1 %cmp66, label %do.end70, label %for.end64.if.end73_crit_edge

for.end64.if.end73_crit_edge:                     ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

do.end70:                                         ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %if.end73

if.end73:                                         ; preds = %do.end70, %for.end64.if.end73_crit_edge
  %cur_rate.0 = phi i32 [ 384000000, %do.end70 ], [ %call65, %for.end64.if.end73_crit_edge ]
  %call74 = tail call i32 @clk_set_rate(ptr noundef %call29, i32 noundef 384000000) #6
  %call75 = tail call i32 @clk_set_rate(ptr noundef %call29, i32 noundef 2) #6
  %call76 = tail call i32 @clk_set_rate(ptr noundef %call29, i32 noundef %cur_rate.0) #6
  %call81 = tail call i32 @clk_get_rate(ptr noundef %call29) #6
  %div = udiv i32 %call81, 1000
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %div) #10
  %call84187 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call84187, i32 %18)
  %cmp85188 = icmp ult i32 %call84187, %18
  br i1 %cmp85188, label %if.end73.for.body86_crit_edge, label %if.end73.for.end107_crit_edge

if.end73.for.end107_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end107

if.end73.for.body86_crit_edge:                    ; preds = %if.end73
  br label %for.body86

for.body86:                                       ; preds = %if.end96.for.body86_crit_edge, %if.end73.for.body86_crit_edge
  %call84189 = phi i32 [ %call84, %if.end96.for.body86_crit_edge ], [ %call84187, %if.end73.for.body86_crit_edge ]
  %arrayidx87 = getelementptr ptr, ptr %call5.i.i, i32 %call84189
  %19 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx87, align 4
  %call88 = tail call i32 @clk_get_rate(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call88)
  %cmp89 = icmp eq i32 %call88, 1
  br i1 %cmp89, label %do.end93, label %for.body86.if.end96_crit_edge

for.body86.if.end96_crit_edge:                    ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

do.end93:                                         ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call84189) #10
  br label %if.end96

if.end96:                                         ; preds = %do.end93, %for.body86.if.end96_crit_edge
  %cur_rate.1 = phi i32 [ 384000000, %do.end93 ], [ %call88, %for.body86.if.end96_crit_edge ]
  %call97 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef 384000000) #6
  %call98 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef 2) #6
  %call99 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef %cur_rate.1) #6
  %call104 = tail call i32 @clk_get_rate(ptr noundef %20) #6
  %div105 = udiv i32 %call104, 1000
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call84189, i32 noundef %div105) #10
  %call84 = tail call i32 @cpumask_next(i32 noundef %call84189, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp85 = icmp ult i32 %call84, %21
  br i1 %cmp85, label %if.end96.for.body86_crit_edge, label %if.end96.for.end107_crit_edge

if.end96.for.end107_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end107

if.end96.for.body86_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body86

for.end107:                                       ; preds = %if.end96.for.end107_crit_edge, %if.end73.for.end107_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call108 = tail call i32 @of_clk_add_provider(ptr noundef %23, ptr noundef nonnull @krait_of_get, ptr noundef nonnull %call5.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end107, %if.then31, %if.then24, %if.end14.cleanup_crit_edge, %if.then11, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %7, %if.then24 ], [ %12, %if.then31 ], [ 0, %for.end107 ], [ %3, %if.then11 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @krait_add_clks(ptr noundef %dev, i32 noundef %id, i1 noundef zeroext %unique_aux) unnamed_addr #2 align 64 {
entry:
  %p_names.i47 = alloca [3 x ptr], align 4
  %init.i48 = alloca %struct.clk_init_data, align 4
  %init.i35 = alloca %struct.clk_init_data, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %p_names.i = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id)
  %cmp = icmp sgt i32 %id, -1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %mul = shl i32 %id, 12
  %add = add i32 %mul, 17665
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.17, i32 noundef %id) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %offset.0 = phi i32 [ %add, %if.then.if.end3_crit_edge ], [ 1280, %entry.if.end3_crit_edge ]
  %p.0 = phi ptr [ %call, %if.then.if.end3_crit_edge ], [ null, %entry.if.end3_crit_edge ]
  %s.0 = phi ptr [ %call, %if.then.if.end3_crit_edge ], [ @.str.18, %entry.if.end3_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %0 = call ptr @memcpy(ptr %init.i, ptr @__const.krait_add_div.init, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_names.i) #6
  %1 = ptrtoint ptr %p_names.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %p_names.i, align 4, !annotation !83
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end3.krait_add_div.exit.thread_crit_edge, label %if.end.i

if.end3.krait_add_div.exit.thread_crit_edge:      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %krait_add_div.exit.thread

if.end.i:                                         ; preds = %if.end3
  %width.i = getelementptr inbounds %struct.krait_div2_clk, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %width.i, align 4
  %shift.i = getelementptr inbounds %struct.krait_div2_clk, ptr %call.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %shift.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %shift.i, align 4
  %lpl.i = getelementptr inbounds %struct.krait_div2_clk, ptr %call.i.i, i32 0, i32 3
  %id.lobit.i = lshr i32 %id, 31
  %4 = trunc i32 %id.lobit.i to i8
  %.not.i = xor i8 %4, 1
  %5 = ptrtoint ptr %lpl.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.not.i, ptr %lpl.i, align 4
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %offset.0, ptr %call.i.i, align 4
  %hw.i = getelementptr inbounds %struct.krait_div2_clk, ptr %call.i.i, i32 0, i32 4
  %init2.i = getelementptr inbounds %struct.krait_div2_clk, ptr %call.i.i, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %init2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %init.i, ptr %init2.i, align 4
  %call3.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.19, ptr noundef %s.0) #6
  %8 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3.i, ptr %init.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.end.i.krait_add_div.exit.thread_crit_edge, label %if.end7.i

if.end.i.krait_add_div.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %krait_add_div.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %p_names.i, ptr %parent_names.i, align 4
  %call8.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.20, ptr noundef %s.0) #6
  %10 = ptrtoint ptr %p_names.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i, ptr %p_names.i, align 4
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init.i, align 4
  call void @kfree(ptr noundef %12) #6
  br label %krait_add_div.exit.thread

if.end13.i:                                       ; preds = %if.end7.i
  %call15.i = call ptr @devm_clk_register(ptr noundef %dev, ptr noundef %hw.i) #6
  %13 = ptrtoint ptr %p_names.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_names.i, align 4
  call void @kfree(ptr noundef %14) #6
  %15 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init.i, align 4
  call void @kfree(ptr noundef %16) #6
  %cmp.i.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_names.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br i1 %cmp.i.i.i, label %if.end13.i.err_crit_edge, label %krait_add_div.exit.thread73

if.end13.i.err_crit_edge:                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

krait_add_div.exit.thread73:                      ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i35) #6
  %17 = call ptr @memcpy(ptr %init.i35, ptr @__const.krait_add_sec_mux.init, i32 28)
  %call.i.i36 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #6
  %tobool.not.i37 = icmp eq ptr %call.i.i36, null
  br i1 %tobool.not.i37, label %krait_add_div.exit.thread73.krait_add_sec_mux.exit.thread_crit_edge, label %if.end.i43

krait_add_div.exit.thread73.krait_add_sec_mux.exit.thread_crit_edge: ; preds = %krait_add_div.exit.thread73
  call void @__sanitizer_cov_trace_pc() #8
  br label %krait_add_sec_mux.exit.thread

krait_add_div.exit.thread:                        ; preds = %if.then11.i, %if.end.i.krait_add_div.exit.thread_crit_edge, %if.end3.krait_add_div.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_names.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br label %err

if.end.i43:                                       ; preds = %krait_add_div.exit.thread73
  %offset1.i = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i36, i32 0, i32 1
  %18 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %offset.0, ptr %offset1.i, align 4
  %lpl.i38 = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i36, i32 0, i32 5
  %19 = ptrtoint ptr %lpl.i38 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.not.i, ptr %lpl.i38, align 4
  %mask.i = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i36, i32 0, i32 2
  %20 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %mask.i, align 4
  %shift.i41 = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i36, i32 0, i32 3
  %21 = ptrtoint ptr %shift.i41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %shift.i41, align 4
  %22 = ptrtoint ptr %call.i.i36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sec_mux_map, ptr %call.i.i36, align 4
  %hw.i42 = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i36, i32 0, i32 9
  %init3.i = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i36, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %init3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %init.i35, ptr %init3.i, align 4
  %safe_sel.i = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i36, i32 0, i32 6
  %24 = ptrtoint ptr %safe_sel.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %safe_sel.i, align 1
  %call4.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.21, ptr noundef %s.0) #6
  %25 = ptrtoint ptr %init.i35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call4.i, ptr %init.i35, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.end.i43.krait_add_sec_mux.exit.thread_crit_edge, label %if.end8.i

if.end.i43.krait_add_sec_mux.exit.thread_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %krait_add_sec_mux.exit.thread

if.end8.i:                                        ; preds = %if.end.i43
  br i1 %unique_aux, label %if.then10.i, label %if.end8.i.if.end16.i_crit_edge

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end8.i
  %call11.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.22, ptr noundef %s.0) #6
  store ptr %call11.i, ptr @krait_add_sec_mux.sec_mux_list, align 4
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %krait_add_sec_mux.exit.thread85, label %if.then10.i.if.end16.i_crit_edge

if.then10.i.if.end16.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

krait_add_sec_mux.exit.thread85:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %init.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init.i35, align 4
  call void @kfree(ptr noundef %27) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i35) #6
  br label %err

if.end16.i:                                       ; preds = %if.then10.i.if.end16.i_crit_edge, %if.end8.i.if.end16.i_crit_edge
  %call18.i = call ptr @devm_clk_register(ptr noundef %dev, ptr noundef %hw.i42) #6
  %clk_nb.i.i = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i36, i32 0, i32 10
  %28 = ptrtoint ptr %clk_nb.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @krait_notifier_cb, ptr %clk_nb.i.i, align 4
  %call.i46.i = call i32 @clk_notifier_register(ptr noundef %call18.i, ptr noundef %clk_nb.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool.not.i.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool.not.i.i, label %if.end16.i.krait_notifier_register.exit.i_crit_edge, label %do.end.i.i

if.end16.i.krait_notifier_register.exit.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %krait_notifier_register.exit.i

do.end.i.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call.i46.i) #10
  br label %krait_notifier_register.exit.i

krait_notifier_register.exit.i:                   ; preds = %do.end.i.i, %if.end16.i.krait_notifier_register.exit.i_crit_edge
  br i1 %unique_aux, label %if.then25.i, label %krait_notifier_register.exit.i.err_aux.i_crit_edge

krait_notifier_register.exit.i.err_aux.i_crit_edge: ; preds = %krait_notifier_register.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_aux.i

if.then25.i:                                      ; preds = %krait_notifier_register.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = load ptr, ptr @krait_add_sec_mux.sec_mux_list, align 4
  call void @kfree(ptr noundef %29) #6
  br label %err_aux.i

err_aux.i:                                        ; preds = %if.then25.i, %krait_notifier_register.exit.i.err_aux.i_crit_edge
  %30 = ptrtoint ptr %init.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init.i35, align 4
  call void @kfree(ptr noundef %31) #6
  %cmp.i.i.i44 = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i35) #6
  br i1 %cmp.i.i.i44, label %err_aux.i.err_crit_edge, label %krait_add_sec_mux.exit.thread80

err_aux.i.err_crit_edge:                          ; preds = %err_aux.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

krait_add_sec_mux.exit.thread80:                  ; preds = %err_aux.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p_names.i47) #6
  %32 = ptrtoint ptr %p_names.i47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %p_names.i47, align 4, !annotation !83
  %33 = getelementptr inbounds [3 x ptr], ptr %p_names.i47, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %33, align 4, !annotation !83
  %35 = getelementptr inbounds [3 x ptr], ptr %p_names.i47, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %35, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i48) #6
  %37 = getelementptr inbounds i8, ptr %init.i48, i32 20
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 67108863, ptr %37, align 4
  %39 = ptrtoint ptr %init.i48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %init.i48, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i48, i32 0, i32 1
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @krait_mux_clk_ops, ptr %ops.i, align 4
  %parent_names.i49 = getelementptr inbounds %struct.clk_init_data, ptr %init.i48, i32 0, i32 2
  %41 = ptrtoint ptr %parent_names.i49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %p_names.i47, ptr %parent_names.i49, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i48, i32 0, i32 3
  %42 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %parent_data.i, align 4
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i48, i32 0, i32 4
  %43 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %parent_hws.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i48, i32 0, i32 6
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %flags.i, align 4
  %call.i.i50 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #6
  %tobool.not.i51 = icmp eq ptr %call.i.i50, null
  br i1 %tobool.not.i51, label %krait_add_sec_mux.exit.thread80.krait_add_pri_mux.exit_crit_edge, label %if.end.i61

krait_add_sec_mux.exit.thread80.krait_add_pri_mux.exit_crit_edge: ; preds = %krait_add_sec_mux.exit.thread80
  call void @__sanitizer_cov_trace_pc() #8
  br label %krait_add_pri_mux.exit

krait_add_sec_mux.exit.thread:                    ; preds = %if.end.i43.krait_add_sec_mux.exit.thread_crit_edge, %krait_add_div.exit.thread73.krait_add_sec_mux.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i35) #6
  br label %err

if.end.i61:                                       ; preds = %krait_add_sec_mux.exit.thread80
  %mask.i52 = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i50, i32 0, i32 2
  %45 = ptrtoint ptr %mask.i52 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %mask.i52, align 4
  %shift.i53 = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i50, i32 0, i32 3
  %46 = ptrtoint ptr %shift.i53 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %shift.i53, align 4
  %offset2.i = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i50, i32 0, i32 1
  %47 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %offset.0, ptr %offset2.i, align 4
  %lpl.i54 = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i50, i32 0, i32 5
  %48 = ptrtoint ptr %lpl.i54 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.not.i, ptr %lpl.i54, align 4
  %49 = ptrtoint ptr %call.i.i50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @pri_mux_map, ptr %call.i.i50, align 4
  %hw.i57 = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i50, i32 0, i32 9
  %init3.i58 = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i50, i32 0, i32 9, i32 2
  %50 = ptrtoint ptr %init3.i58 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %init.i48, ptr %init3.i58, align 4
  %safe_sel.i59 = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i50, i32 0, i32 6
  %51 = ptrtoint ptr %safe_sel.i59 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %safe_sel.i59, align 1
  %call4.i60 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, ptr noundef %s.0) #6
  %52 = ptrtoint ptr %init.i48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call4.i60, ptr %init.i48, align 4
  %tobool7.not.i = icmp eq ptr %call4.i60, null
  br i1 %tobool7.not.i, label %if.end.i61.krait_add_pri_mux.exit_crit_edge, label %if.end10.i

if.end.i61.krait_add_pri_mux.exit_crit_edge:      ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %krait_add_pri_mux.exit

if.end10.i:                                       ; preds = %if.end.i61
  %call11.i62 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.20, ptr noundef %s.0) #6
  %53 = ptrtoint ptr %p_names.i47 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call11.i62, ptr %p_names.i47, align 4
  %tobool13.not.i = icmp eq ptr %call11.i62, null
  br i1 %tobool13.not.i, label %if.end10.i.err_p0.i_crit_edge, label %if.end16.i63

if.end10.i.err_p0.i_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_p0.i

if.end16.i63:                                     ; preds = %if.end10.i
  %call17.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.19, ptr noundef %s.0) #6
  %54 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call17.i, ptr %33, align 4
  %tobool20.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool20.not.i, label %if.end16.i63.err_p1.i_crit_edge, label %if.end23.i

if.end16.i63.err_p1.i_crit_edge:                  ; preds = %if.end16.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_p1.i

if.end23.i:                                       ; preds = %if.end16.i63
  %call24.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.21, ptr noundef %s.0) #6
  %55 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call24.i, ptr %35, align 4
  %tobool27.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool27.not.i, label %if.end23.i.err_p2.i_crit_edge, label %if.end30.i

if.end23.i.err_p2.i_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_p2.i

if.end30.i:                                       ; preds = %if.end23.i
  %call32.i = call ptr @devm_clk_register(ptr noundef %dev, ptr noundef %hw.i57) #6
  %clk_nb.i.i64 = getelementptr inbounds %struct.krait_mux_clk, ptr %call.i.i50, i32 0, i32 10
  %56 = ptrtoint ptr %clk_nb.i.i64 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @krait_notifier_cb, ptr %clk_nb.i.i64, align 4
  %call.i60.i = call i32 @clk_notifier_register(ptr noundef %call32.i, ptr noundef %clk_nb.i.i64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool.not.i.i65 = icmp eq i32 %call.i60.i, 0
  br i1 %tobool.not.i.i65, label %if.end30.i.krait_notifier_register.exit.i67_crit_edge, label %do.end.i.i66

if.end30.i.krait_notifier_register.exit.i67_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %krait_notifier_register.exit.i67

do.end.i.i66:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call.i60.i) #10
  br label %krait_notifier_register.exit.i67

krait_notifier_register.exit.i67:                 ; preds = %do.end.i.i66, %if.end30.i.krait_notifier_register.exit.i67_crit_edge
  %57 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %35, align 4
  call void @kfree(ptr noundef %58) #6
  br label %err_p2.i

err_p2.i:                                         ; preds = %krait_notifier_register.exit.i67, %if.end23.i.err_p2.i_crit_edge
  %clk.0.i68 = phi ptr [ %call32.i, %krait_notifier_register.exit.i67 ], [ inttoptr (i32 -12 to ptr), %if.end23.i.err_p2.i_crit_edge ]
  %59 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %33, align 4
  call void @kfree(ptr noundef %60) #6
  br label %err_p1.i

err_p1.i:                                         ; preds = %err_p2.i, %if.end16.i63.err_p1.i_crit_edge
  %clk.1.i = phi ptr [ %clk.0.i68, %err_p2.i ], [ inttoptr (i32 -12 to ptr), %if.end16.i63.err_p1.i_crit_edge ]
  %61 = ptrtoint ptr %p_names.i47 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %p_names.i47, align 4
  call void @kfree(ptr noundef %62) #6
  br label %err_p0.i

err_p0.i:                                         ; preds = %err_p1.i, %if.end10.i.err_p0.i_crit_edge
  %clk.2.i = phi ptr [ %clk.1.i, %err_p1.i ], [ inttoptr (i32 -12 to ptr), %if.end10.i.err_p0.i_crit_edge ]
  %63 = ptrtoint ptr %init.i48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init.i48, align 4
  call void @kfree(ptr noundef %64) #6
  br label %krait_add_pri_mux.exit

krait_add_pri_mux.exit:                           ; preds = %err_p0.i, %if.end.i61.krait_add_pri_mux.exit_crit_edge, %krait_add_sec_mux.exit.thread80.krait_add_pri_mux.exit_crit_edge
  %retval.0.i69 = phi ptr [ %clk.2.i, %err_p0.i ], [ inttoptr (i32 -12 to ptr), %krait_add_sec_mux.exit.thread80.krait_add_pri_mux.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i61.krait_add_pri_mux.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i48) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p_names.i47) #6
  br label %err

err:                                              ; preds = %krait_add_pri_mux.exit, %krait_add_sec_mux.exit.thread, %err_aux.i.err_crit_edge, %krait_add_sec_mux.exit.thread85, %krait_add_div.exit.thread, %if.end13.i.err_crit_edge
  %clk.0 = phi ptr [ %retval.0.i69, %krait_add_pri_mux.exit ], [ inttoptr (i32 -12 to ptr), %krait_add_div.exit.thread ], [ inttoptr (i32 -12 to ptr), %krait_add_sec_mux.exit.thread ], [ inttoptr (i32 -12 to ptr), %krait_add_sec_mux.exit.thread85 ], [ %call15.i, %if.end13.i.err_crit_edge ], [ %call18.i, %err_aux.i.err_crit_edge ]
  call void @kfree(ptr noundef %p.0) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %clk.0, %err ], [ inttoptr (i32 -12 to ptr), %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @krait_of_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2 = getelementptr ptr, ptr %data, i32 %1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -19 to ptr), ptr %3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_notifier_cb(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.if.end11.thread_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then4
  ]

entry.if.end11.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.thread

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @krait_mux_clk_ops, i32 0, i32 14) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @krait_mux_clk_ops, i32 0, i32 14), align 4
  %hw = getelementptr i8, ptr %nb, i32 -12
  %call = tail call zeroext i8 %1(ptr noundef %hw) #6
  %old_index = getelementptr i8, ptr %nb, i32 -14
  %2 = ptrtoint ptr %old_index to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call, ptr %old_index, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @krait_mux_clk_ops, i32 0, i32 13) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @krait_mux_clk_ops, i32 0, i32 13), align 4
  %safe_sel = getelementptr i8, ptr %nb, i32 -15
  %4 = ptrtoint ptr %safe_sel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %safe_sel, align 1
  %call2 = tail call i32 %3(ptr noundef %hw, i8 noundef zeroext %5) #6
  %reparent = getelementptr i8, ptr %nb, i32 -13
  %6 = ptrtoint ptr %reparent to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reparent, align 1
  br label %if.end11

if.then4:                                         ; preds = %entry
  %reparent5 = getelementptr i8, ptr %nb, i32 -13
  %7 = ptrtoint ptr %reparent5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reparent5, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then6, label %if.then4.if.end11.thread_crit_edge

if.then4.if.end11.thread_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.thread

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @krait_mux_clk_ops, i32 0, i32 13) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @krait_mux_clk_ops, i32 0, i32 13), align 4
  %hw7 = getelementptr i8, ptr %nb, i32 -12
  %old_index8 = getelementptr i8, ptr %nb, i32 -14
  %10 = ptrtoint ptr %old_index8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %old_index8, align 2
  %call9 = tail call i32 %9(ptr noundef %hw7, i8 noundef zeroext %11) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call9, %if.then6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not.i = icmp eq i32 %ret.0, 0
  %sub.i = sub i32 1, %ret.0
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i, label %if.end11.if.end11.thread_crit_edge, label %if.end11._crit_edge

if.end11._crit_edge:                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

if.end11.if.end11.thread_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end11.if.end11.thread_crit_edge, %if.then4.if.end11.thread_crit_edge, %entry.if.end11.thread_crit_edge
  br label %12

12:                                               ; preds = %if.end11.thread, %if.end11._crit_edge
  %13 = phi i32 [ 1, %if.end11.thread ], [ %or.i, %if.end11._crit_edge ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !65, !67, !69, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_krait_cc__183_393_krait_cc_driver_init6, !1, !"__initcall__kmod_krait_cc__183_393_krait_cc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/krait-cc.c", i32 393, i32 1}
!2 = !{ptr @__exitcall_krait_cc_driver_exit, !1, !"__exitcall_krait_cc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/clk/qcom/krait-cc.c", i32 395, i32 1}
!5 = !{ptr @__UNIQUE_ID_file185, !6, !"__UNIQUE_ID_file185", i1 false, i1 false}
!6 = !{!"../drivers/clk/qcom/krait-cc.c", i32 396, i32 1}
!7 = !{ptr @__UNIQUE_ID_license186, !6, !"__UNIQUE_ID_license186", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias187, !9, !"__UNIQUE_ID_alias187", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/krait-cc.c", i32 397, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/krait-cc.c", i32 389, i32 11}
!12 = !{ptr @krait_cc_driver, !13, !"krait_cc_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/krait-cc.c", i32 386, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/qcom/krait-cc.c", i32 305, i32 37}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/qcom/krait-cc.c", i32 310, i32 40}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/qcom/krait-cc.c", i32 311, i32 7}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/qcom/krait-cc.c", i32 342, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/krait-cc.c", i32 360, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @krait_cc_probe._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @krait_cc_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/qcom/krait-cc.c", i32 366, i32 2}
!30 = !{ptr @krait_cc_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @krait_cc_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/qcom/krait-cc.c", i32 371, i32 4}
!34 = !{ptr @krait_cc_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @krait_cc_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/qcom/krait-cc.c", i32 378, i32 3}
!38 = !{ptr @krait_cc_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @krait_cc_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/qcom/krait-cc.c", i32 244, i32 33}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/qcom/krait-cc.c", i32 249, i32 7}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/qcom/krait-cc.c", i32 94, i32 36}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/qcom/krait-cc.c", i32 99, i32 37}
!48 = !{ptr @krait_add_sec_mux.sec_mux_list, !49, !"sec_mux_list", i1 false, i1 false}
!49 = !{!"../drivers/clk/qcom/krait-cc.c", i32 118, i32 21}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/qcom/krait-cc.c", i32 142, i32 36}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/qcom/krait-cc.c", i32 147, i32 43}
!54 = !{ptr @sec_mux_map, !55, !"sec_mux_map", i1 false, i1 false}
!55 = !{!"../drivers/clk/qcom/krait-cc.c", i32 18, i32 21}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/qcom/krait-cc.c", i32 67, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @krait_notifier_register._entry, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @krait_notifier_register._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/krait-cc.c", i32 195, i32 36}
!65 = !{ptr @pri_mux_map, !66, !"pri_mux_map", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/krait-cc.c", i32 23, i32 21}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/krait-cc.c", i32 276, i32 3}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @krait_of_get._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @krait_of_get._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @krait_cc_match_table, !73, !"krait_cc_match_table", i1 false, i1 false}
!73 = !{!"../drivers/clk/qcom/krait-cc.c", i32 283, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{i8 0, i8 2}
