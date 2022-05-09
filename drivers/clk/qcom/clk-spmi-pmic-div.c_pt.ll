; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-spmi-pmic-div.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-spmi-pmic-div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.spmi_pmic_div_clk_cc = type { i32, [0 x %struct.clkdiv] }
%struct.clkdiv = type { ptr, i16, %struct.spinlock, %struct.clk_hw, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_spmi_pmic_div__185_290_spmi_pmic_clkdiv_driver_init6 = internal global ptr @spmi_pmic_clkdiv_driver_init, section ".initcall6.init", align 4
@spmi_pmic_clkdiv_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spmi_pmic_clkdiv_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spmi_pmic_clkdiv_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spmi_pmic_clkdiv_driver_exit = internal global ptr @spmi_pmic_clkdiv_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description186 = internal constant [59 x i8] c"clk_spmi_pmic_div.description=QCOM SPMI PMIC clkdiv driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [58 x i8] c"clk_spmi_pmic_div.file=drivers/clk/qcom/clk-spmi-pmic-div\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [33 x i8] c"clk_spmi_pmic_div.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom,spmi-pmic-clkdiv\00", [42 x i8] zeroinitializer }, align 32
@spmi_pmic_clkdiv_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-clkdiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@spmi_pmic_clkdiv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg property reading failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spmi_pmic_clkdiv_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clk/qcom/clk-spmi-pmic-div.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spmi_pmic_clkdiv_probe._entry_ptr = internal global ptr @spmi_pmic_clkdiv_probe._entry, section ".printk_index", align 4
@spmi_pmic_clkdiv_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't get parent's regmap\0A\00", [34 x i8] zeroinitializer }, align 32
@spmi_pmic_clkdiv_probe._entry_ptr.9 = internal global ptr @spmi_pmic_clkdiv_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,num-clkdivs\00", [47 x i8] zeroinitializer }, align 32
@spmi_pmic_clkdiv_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 227, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"qcom,num-clkdivs property reading failed, ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@spmi_pmic_clkdiv_probe._entry_ptr.13 = internal global ptr @spmi_pmic_clkdiv_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@spmi_pmic_clkdiv_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 243, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get xo clock\0A\00", [40 x i8] zeroinitializer }, align 32
@spmi_pmic_clkdiv_probe._entry_ptr.17 = internal global ptr @spmi_pmic_clkdiv_probe._entry.15, section ".printk_index", align 4
@spmi_pmic_clkdiv_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"missing parent clock\0A\00", [42 x i8] zeroinitializer }, align 32
@spmi_pmic_clkdiv_probe._entry_ptr.20 = internal global ptr @spmi_pmic_clkdiv_probe._entry.18, section ".printk_index", align 4
@clk_spmi_pmic_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_spmi_pmic_div_enable, ptr @clk_spmi_pmic_div_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_spmi_pmic_div_recalc_rate, ptr @clk_spmi_pmic_div_round_rate, ptr null, ptr null, ptr null, ptr @clk_spmi_pmic_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_clk%d\00", [22 x i8] zeroinitializer }, align 32
@spmi_pmic_clkdiv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&clkdiv[i].lock\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@spmi_pmic_div_clk_hw_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: index value %u is invalid; allowed range [1, %d]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spmi_pmic_div_clk_hw_get\00", [39 x i8] zeroinitializer }, align 32
@spmi_pmic_div_clk_hw_get._entry_ptr = internal global ptr @spmi_pmic_div_clk_hw_get._entry, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"spmi_pmic_clkdiv_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 283, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 285, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [29 x i8] c"spmi_pmic_clkdiv_match_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 277, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 212, i32 38 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 214, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 220, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 224, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 226, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 239, i32 21 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 243, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 251, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"clk_spmi_pmic_div_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 170, i32 29 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 261, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 263, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [40 x i8] c"../drivers/clk/qcom/clk-spmi-pmic-div.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 190, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_spmi_pmic_clkdiv_driver_exit, ptr @__initcall__kmod_clk_spmi_pmic_div__185_290_spmi_pmic_clkdiv_driver_init6, ptr @spmi_pmic_clkdiv_driver_exit, ptr @spmi_pmic_clkdiv_probe._entry, ptr @spmi_pmic_clkdiv_probe._entry.11, ptr @spmi_pmic_clkdiv_probe._entry.15, ptr @spmi_pmic_clkdiv_probe._entry.18, ptr @spmi_pmic_clkdiv_probe._entry.7, ptr @spmi_pmic_clkdiv_probe._entry_ptr, ptr @spmi_pmic_clkdiv_probe._entry_ptr.13, ptr @spmi_pmic_clkdiv_probe._entry_ptr.17, ptr @spmi_pmic_clkdiv_probe._entry_ptr.20, ptr @spmi_pmic_clkdiv_probe._entry_ptr.9, ptr @spmi_pmic_div_clk_hw_get._entry, ptr @spmi_pmic_div_clk_hw_get._entry_ptr, ptr @spmi_pmic_clkdiv_driver, ptr @.str, ptr @spmi_pmic_clkdiv_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @clk_spmi_pmic_div_ops, ptr @.str.21, ptr @spmi_pmic_clkdiv_probe.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_clkdiv_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_clkdiv_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_clkdiv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_clkdiv_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_clkdiv_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_clkdiv_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_clkdiv_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_spmi_pmic_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_clkdiv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_div_clk_hw_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_pmic_clkdiv_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spmi_pmic_clkdiv_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spmi_pmic_clkdiv_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @spmi_pmic_clkdiv_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_pmic_clkdiv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  %nclks = alloca i32, align 4
  %name = alloca [20 x i8], align 1
  %start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = call ptr @memset(ptr %init, i32 0, i32 28)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nclks) #8
  %3 = ptrtoint ptr %nclks to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nclks, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #8
  %4 = call ptr @memset(ptr %name, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #8
  %5 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %start, align 4, !annotation !65
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %start, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call3 = call ptr @dev_get_regmap(ptr noundef %7, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i.i121 = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef nonnull %nclks, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %cmp10 = icmp slt i32 %call.i.i121, 0
  br i1 %cmp10, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call.i.i121) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nclks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.end18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 68) #8
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %13 = add nuw i32 %12, 4
  %retval.0.i = select i1 %11, i32 -1, i32 %13
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #8
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %14 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nclks, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call.i, align 4
  %call25 = call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end23
  %cmp29.not = icmp eq ptr %call25, inttoptr (i32 -517 to ptr)
  br i1 %cmp29.not, label %if.then27.cleanup_crit_edge, label %do.end33

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  %call36 = call i32 @clk_get_rate(ptr noundef %call25) #8
  call void @clk_put(ptr noundef %call25) #8
  %call37 = call ptr @of_clk_get_parent_name(ptr noundef %2, i32 noundef 0) #8
  %18 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call37, ptr %parent_name, align 4
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end42, label %if.end43

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %19 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %name, ptr %init, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %20 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %21 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %num_parents, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @clk_spmi_pmic_div_ops, ptr %ops, align 4
  %clks = getelementptr inbounds %struct.spmi_pmic_div_clk_cc, ptr %call.i, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end43
  %i.0 = phi i32 [ 0, %if.end43 ], [ %add, %for.body.for.cond_crit_edge ]
  %23 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nclks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %24)
  %cmp46 = icmp slt i32 %i.0, %24
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add = add nuw nsw i32 %i.0, 1
  %call48 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %add)
  %arrayidx = getelementptr %struct.clkdiv, ptr %clks, i32 %i.0
  %lock = getelementptr %struct.clkdiv, ptr %clks, i32 %i.0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @spmi_pmic_clkdiv_probe.__key, i16 noundef signext 3) #8
  %25 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start, align 4
  %mul = shl i32 %i.0, 8
  %add53 = add i32 %26, %mul
  %conv = trunc i32 %add53 to i16
  %base = getelementptr %struct.clkdiv, ptr %clks, i32 %i.0, i32 1
  %27 = ptrtoint ptr %base to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %base, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call3, ptr %arrayidx, align 4
  %div = sdiv i32 1000000000, %call36
  %cxo_period_ns = getelementptr %struct.clkdiv, ptr %clks, i32 %i.0, i32 4
  %29 = ptrtoint ptr %cxo_period_ns to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div, ptr %cxo_period_ns, align 4
  %hw = getelementptr %struct.clkdiv, ptr %clks, i32 %i.0, i32 3
  %init59 = getelementptr %struct.clkdiv, ptr %clks, i32 %i.0, i32 3, i32 2
  %30 = ptrtoint ptr %init59 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %init, ptr %init59, align 4
  %call62 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %hw) #8
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @spmi_pmic_div_clk_hw_get, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %do.end42, %do.end33, %if.then27.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i121, %do.end14 ], [ %call66, %for.end ], [ -19, %do.end42 ], [ -22, %do.end7 ], [ -22, %if.end15.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ], [ %17, %do.end33 ], [ -517, %if.then27.cleanup_crit_edge ], [ %call62, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nclks) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @spmi_pmic_div_clk_hw_get(ptr nocapture noundef readonly %clkspec, ptr noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %sub = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp1.not = icmp slt i32 %sub, %3
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %1, i32 noundef %5) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr %struct.spmi_pmic_div_clk_cc, ptr %data, i32 0, i32 1, i32 %sub, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %hw, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_spmi_pmic_div_enable(ptr noundef %hw) #2 align 64 {
entry:
  %div_factor.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -52
  %lock = getelementptr i8, ptr %hw, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_factor.i) #8
  %0 = ptrtoint ptr %div_factor.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %div_factor.i, align 4, !annotation !65
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %base.i = getelementptr i8, ptr %hw, i32 -48
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 67
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %div_factor.i) #8
  %5 = ptrtoint ptr %div_factor.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %div_factor.i, align 4
  %and.i = and i32 %6, 7
  store i32 %and.i, ptr %div_factor.i, align 4
  %cxo_period_ns.i.i = getelementptr i8, ptr %hw, i32 12
  %7 = ptrtoint ptr %cxo_period_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cxo_period_ns.i.i, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %base.i, align 4
  %conv.i.i = zext i16 %12 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 70
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %add.i.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i, label %cond.false8.i.i.i, label %entry.spmi_pmic_clkdiv_set_enable_state.exit_crit_edge

entry.spmi_pmic_clkdiv_set_enable_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_pmic_clkdiv_set_enable_state.exit

cond.false8.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i, 0
  %div_factor.op.i.i.i = add nsw i32 %and.i, -1
  %div_factor.op.op.i.op.i.i = shl nuw nsw i32 3, %div_factor.op.i.i.i
  %div_factor.op.op.i.op.i.i.op = add nuw i32 %div_factor.op.op.i.op.i.i, 2
  %add6.i.i = select i1 %tobool.not.i.i.i, i32 5, i32 %div_factor.op.op.i.op.i.i.op
  %mul7.i.i = mul i32 %add6.i.i, %8
  %sub.i.i.i = add i32 %mul7.i.i, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %13(i32 noundef %div.i.i.i) #8
  br label %spmi_pmic_clkdiv_set_enable_state.exit

spmi_pmic_clkdiv_set_enable_state.exit:           ; preds = %cond.false8.i.i.i, %entry.spmi_pmic_clkdiv_set_enable_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_factor.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_spmi_pmic_div_disable(ptr noundef %hw) #2 align 64 {
entry:
  %div_factor.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -52
  %lock = getelementptr i8, ptr %hw, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_factor.i) #8
  %0 = ptrtoint ptr %div_factor.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %div_factor.i, align 4, !annotation !65
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %base.i = getelementptr i8, ptr %hw, i32 -48
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 67
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %div_factor.i) #8
  %5 = ptrtoint ptr %div_factor.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %div_factor.i, align 4
  %and.i = and i32 %6, 7
  store i32 %and.i, ptr %div_factor.i, align 4
  %cxo_period_ns.i.i = getelementptr i8, ptr %hw, i32 12
  %7 = ptrtoint ptr %cxo_period_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cxo_period_ns.i.i, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %base.i, align 4
  %conv.i.i = zext i16 %12 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 70
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %add.i.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i, label %cond.false8.i26.i.i, label %entry.spmi_pmic_clkdiv_set_enable_state.exit_crit_edge

entry.spmi_pmic_clkdiv_set_enable_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_pmic_clkdiv_set_enable_state.exit

cond.false8.i26.i.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i, 0
  %div_factor.op.i.i.i = add nsw i32 %and.i, -1
  %div_factor.op.op.i.op.i.i = shl nuw nsw i32 3, %div_factor.op.i.i.i
  %mul.i.i = select i1 %tobool.not.i.i.i, i32 3, i32 %div_factor.op.op.i.op.i.i
  %mul9.i.i = mul i32 %mul.i.i, %8
  %sub.i19.i.i = add i32 %mul9.i.i, 999
  %div.i20.i.i = udiv i32 %sub.i19.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %13(i32 noundef %div.i20.i.i) #8
  br label %spmi_pmic_clkdiv_set_enable_state.exit

spmi_pmic_clkdiv_set_enable_state.exit:           ; preds = %cond.false8.i26.i.i, %entry.spmi_pmic_clkdiv_set_enable_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_factor.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_spmi_pmic_div_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %div_factor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_factor) #8
  %0 = ptrtoint ptr %div_factor to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %div_factor, align 4, !annotation !65
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %base = getelementptr i8, ptr %hw, i32 -48
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base, align 4
  %conv = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv, 67
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %div_factor) #8
  %5 = ptrtoint ptr %div_factor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %div_factor, align 4
  %and = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %div_factor.op.i = add nsw i32 %and, -1
  %7 = select i1 %tobool.not.i, i32 0, i32 %div_factor.op.i
  %div4 = lshr i32 %parent_rate, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_factor) #8
  ret i32 %div4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_spmi_pmic_div_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %add = add i32 %rate, -1
  %sub = add i32 %add, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %rate)
  %tobool.not.i.i.i = icmp ult i32 %sub, %rate
  %div1 = udiv i32 %sub, %rate
  %2 = tail call i32 @llvm.ctlz.i32(i32 %div1, i1 true) #8, !range !66
  %sub.i.op.i.i = xor i32 %2, 31
  %3 = call i32 @llvm.smin.i32(i32 %sub.i.op.i.i, i32 6)
  %4 = select i1 %tobool.not.i.i.i, i32 0, i32 %3
  %div37 = lshr i32 %1, %4
  ret i32 %div37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_spmi_pmic_div_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %div_factor.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -52
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %tobool.not.i.i.i = icmp ugt i32 %rate, %parent_rate
  %div = udiv i32 %parent_rate, %rate
  %0 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 true) #8, !range !66
  %sub.i.op.i.i = xor i32 %0, 31
  %1 = call i32 @llvm.smin.i32(i32 %sub.i.op.i.i, i32 6)
  %2 = select i1 %tobool.not.i.i.i, i32 -1, i32 %1
  %3 = add nsw i32 %2, 1
  %lock = getelementptr i8, ptr %hw, i32 -44
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val.i, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %base.i = getelementptr i8, ptr %hw, i32 -48
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 70
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %add.i, ptr noundef nonnull %val.i) #8
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %and.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br i1 %tobool.i.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_factor.i) #8
  %11 = ptrtoint ptr %div_factor.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %div_factor.i, align 4, !annotation !65
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %base.i, align 4
  %conv.i33 = zext i16 %15 to i32
  %add.i34 = add nuw nsw i32 %conv.i33, 67
  %call.i35 = call i32 @regmap_read(ptr noundef %13, i32 noundef %add.i34, ptr noundef nonnull %div_factor.i) #8
  %16 = ptrtoint ptr %div_factor.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div_factor.i, align 4
  %and.i36 = and i32 %17, 7
  store i32 %and.i36, ptr %div_factor.i, align 4
  %cxo_period_ns.i.i = getelementptr i8, ptr %hw, i32 12
  %18 = ptrtoint ptr %cxo_period_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cxo_period_ns.i.i, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %base.i, align 4
  %conv.i.i = zext i16 %23 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 70
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %add.i.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i, label %cond.false8.i26.i.i, label %spmi_pmic_clkdiv_set_enable_state.exit

cond.false8.i26.i.i:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i.i.i37 = icmp eq i32 %and.i36, 0
  %div_factor.op.i.i.i = add nsw i32 %and.i36, -1
  %div_factor.op.op.i.op.i.i = shl nuw nsw i32 3, %div_factor.op.i.i.i
  %mul.i.i = select i1 %tobool.not.i.i.i37, i32 3, i32 %div_factor.op.op.i.op.i.i
  %mul9.i.i = mul i32 %mul.i.i, %19
  %sub.i19.i.i = add i32 %mul9.i.i, 999
  %div.i20.i.i = udiv i32 %sub.i19.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %24(i32 noundef %div.i20.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_factor.i) #8
  br label %if.end11

spmi_pmic_clkdiv_set_enable_state.exit:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_factor.i) #8
  br label %unlock

if.end11:                                         ; preds = %cond.false8.i26.i.i, %entry.if.end11_crit_edge
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %base.i, align 4
  %conv12 = zext i16 %28 to i32
  %add = add nuw nsw i32 %conv12, 67
  %call.i38 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %add, i32 noundef 7, i32 noundef %3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool14.not = icmp ne i32 %call.i38, 0
  %brmerge = select i1 %tobool14.not, i1 true, i1 %tobool.i.not
  br i1 %brmerge, label %if.end11.unlock_crit_edge, label %if.then18

if.end11.unlock_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then18:                                        ; preds = %if.end11
  %cxo_period_ns.i = getelementptr i8, ptr %hw, i32 12
  %29 = ptrtoint ptr %cxo_period_ns.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cxo_period_ns.i, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %base.i, align 4
  %conv.i40 = zext i16 %34 to i32
  %add.i41 = add nuw nsw i32 %conv.i40, 70
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %add.i41, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %cond.false8.i.i, label %if.then18.unlock_crit_edge

if.then18.unlock_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

cond.false8.i.i:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  %div_factor.op.op.i.op.i = shl nuw nsw i32 3, %2
  %div_factor.op.op.i.op.i.op = add nuw i32 %div_factor.op.op.i.op.i, 2
  %add6.i = select i1 %tobool.not.i.i, i32 5, i32 %div_factor.op.op.i.op.i.op
  %mul7.i = mul i32 %30, %add6.i
  %sub.i.i42 = add i32 %mul7.i, 999
  %div.i.i = udiv i32 %sub.i.i42, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %35(i32 noundef %div.i.i) #8
  br label %unlock

unlock:                                           ; preds = %cond.false8.i.i, %if.then18.unlock_crit_edge, %if.end11.unlock_crit_edge, %spmi_pmic_clkdiv_set_enable_state.exit
  %ret.0 = phi i32 [ %call.i.i.i, %spmi_pmic_clkdiv_set_enable_state.exit ], [ %call.i38, %if.end11.unlock_crit_edge ], [ %call.i.i, %if.then18.unlock_crit_edge ], [ 0, %cond.false8.i.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !49, !51, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_clk_spmi_pmic_div__185_290_spmi_pmic_clkdiv_driver_init6, !1, !"__initcall__kmod_clk_spmi_pmic_div__185_290_spmi_pmic_clkdiv_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 290, i32 1}
!2 = !{ptr @__exitcall_spmi_pmic_clkdiv_driver_exit, !1, !"__exitcall_spmi_pmic_clkdiv_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description186, !4, !"__UNIQUE_ID_description186", i1 false, i1 false}
!4 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 292, i32 1}
!5 = !{ptr @__UNIQUE_ID_file187, !6, !"__UNIQUE_ID_file187", i1 false, i1 false}
!6 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 293, i32 1}
!7 = !{ptr @__UNIQUE_ID_license188, !6, !"__UNIQUE_ID_license188", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 285, i32 11}
!10 = !{ptr @spmi_pmic_clkdiv_driver, !11, !"spmi_pmic_clkdiv_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 283, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 212, i32 38}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 214, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @spmi_pmic_clkdiv_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @spmi_pmic_clkdiv_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 220, i32 3}
!24 = !{ptr @spmi_pmic_clkdiv_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @spmi_pmic_clkdiv_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 224, i32 38}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 226, i32 3}
!30 = !{ptr @spmi_pmic_clkdiv_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @spmi_pmic_clkdiv_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 239, i32 21}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 243, i32 4}
!36 = !{ptr @spmi_pmic_clkdiv_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @spmi_pmic_clkdiv_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 251, i32 3}
!40 = !{ptr @spmi_pmic_clkdiv_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @spmi_pmic_clkdiv_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 261, i32 32}
!44 = !{ptr @spmi_pmic_clkdiv_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 263, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @clk_spmi_pmic_div_ops, !48, !"clk_spmi_pmic_div_ops", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 170, i32 29}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 190, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @spmi_pmic_div_clk_hw_get._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @spmi_pmic_div_clk_hw_get._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @spmi_pmic_clkdiv_match_table, !55, !"spmi_pmic_clkdiv_match_table", i1 false, i1 false}
!55 = !{!"../drivers/clk/qcom/clk-spmi-pmic-div.c", i32 277, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i32 0, i32 33}
