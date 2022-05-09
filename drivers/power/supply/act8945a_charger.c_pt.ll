; ModuleID = '/llk/IR_all_yes/drivers/power/supply/act8945a_charger.c_pt.bc'
source_filename = "../drivers/power/supply/act8945a_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.act8945a_charger = type { ptr, %struct.power_supply_desc, ptr, %struct.work_struct, i8, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_act8945a_charger__187_658_act8945a_charger_driver_init6 = internal global ptr @act8945a_charger_driver_init, section ".initcall6.init", align 4
@act8945a_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @act8945a_charger_probe, ptr @act8945a_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_act8945a_charger_driver_exit = internal global ptr @act8945a_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [76 x i8] c"act8945a_charger.description=Active-semi ACT8945A ActivePath charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [60 x i8] c"act8945a_charger.author=Wenyou Yang <wenyou.yang@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [60 x i8] c"act8945a_charger.file=drivers/power/supply/act8945a_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [29 x i8] c"act8945a_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"act8945a-charger\00", [47 x i8] zeroinitializer }, align 32
@act8945a_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 586, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Parent did not provide regmap\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"act8945a_charger_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/act8945a_charger.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@act8945a_charger_probe._entry_ptr = internal global ptr @act8945a_charger_probe._entry, section ".printk_index", align 4
@act8945a_charger_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to find IRQ number\0A\00", [37 x i8] zeroinitializer }, align 32
@act8945a_charger_probe._entry_ptr.8 = internal global ptr @act8945a_charger_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"act8945a_interrupt\00", [45 x i8] zeroinitializer }, align 32
@act8945a_charger_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 604, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request nIRQ pin IRQ\0A\00", [32 x i8] zeroinitializer }, align 32
@act8945a_charger_probe._entry_ptr.12 = internal global ptr @act8945a_charger_probe._entry.10, section ".printk_index", align 4
@act8945a_charger_props = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 6, i32 2, i32 51, i32 16, i32 73, i32 74], [32 x i8] zeroinitializer }, align 32
@act8945a_charger_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@act8945a_charger_probe._entry_ptr.15 = internal global ptr @act8945a_charger_probe._entry.13, section ".printk_index", align 4
@act8945a_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&charger->work)\00", [62 x i8] zeroinitializer }, align 32
@act8945a_charger_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no charger of node\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"act8945a_charger_config\00", [40 x i8] zeroinitializer }, align 32
@act8945a_charger_config._entry_ptr = internal global ptr @act8945a_charger_config._entry, section ".printk_index", align 4
@act8945a_charger_config._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 482, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"have been suspended\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@act8945a_charger_config._entry_ptr.22 = internal global ptr @act8945a_charger_config._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"active-semi,lbo\00", [16 x i8] zeroinitializer }, align 32
@act8945a_charger_config._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.3, i32 489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to claim gpio \22lbo\22: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@act8945a_charger_config._entry_ptr.26 = internal global ptr @act8945a_charger_config._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"act8945a_lbo_detect\00", [44 x i8] zeroinitializer }, align 32
@act8945a_charger_config._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.3, i32 498, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request gpio \22lbo\22 IRQ\0A\00", [62 x i8] zeroinitializer }, align 32
@act8945a_charger_config._entry_ptr.30 = internal global ptr @act8945a_charger_config._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"active-semi,chglev\00", [45 x i8] zeroinitializer }, align 32
@act8945a_charger_config._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.3, i32 505, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to claim gpio \22chglev\22: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@act8945a_charger_config._entry_ptr.34 = internal global ptr @act8945a_charger_config._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"active-semi,input-voltage-threshold-microvolt\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"active-semi,precondition-timeout\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"active-semi,total-timeout\00", [38 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ACT8945A\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Active-semi\00", [20 x i8] zeroinitializer }, align 32
@switch.table.act8945a_charger_get_property = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 3, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 7000, i64 7500, i64 8000]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 60, i64 80]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.42 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 6, i64 16, i64 51, i64 73, i64 74]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.46 = private unnamed_addr constant [24 x i8] c"act8945a_charger_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 651, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 653, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 586, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 596, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 601, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 604, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"act8945a_charger_props\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 331, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 624, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 630, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 472, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 482, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 485, i32 51 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 489, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 496, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 498, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 501, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 505, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 510, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 515, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 519, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 18, i32 45 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [43 x i8] c"../drivers/power/supply/act8945a_charger.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 19, i32 52 }
@___asan_gen_.160 = private unnamed_addr constant [43 x i8] c"switch.table.act8945a_charger_get_property\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_act8945a_charger_driver_exit, ptr @__initcall__kmod_act8945a_charger__187_658_act8945a_charger_driver_init6, ptr @act8945a_charger_config._entry, ptr @act8945a_charger_config._entry.19, ptr @act8945a_charger_config._entry.24, ptr @act8945a_charger_config._entry.28, ptr @act8945a_charger_config._entry.32, ptr @act8945a_charger_config._entry_ptr, ptr @act8945a_charger_config._entry_ptr.22, ptr @act8945a_charger_config._entry_ptr.26, ptr @act8945a_charger_config._entry_ptr.30, ptr @act8945a_charger_config._entry_ptr.34, ptr @act8945a_charger_driver_exit, ptr @act8945a_charger_probe._entry, ptr @act8945a_charger_probe._entry.10, ptr @act8945a_charger_probe._entry.13, ptr @act8945a_charger_probe._entry.6, ptr @act8945a_charger_probe._entry_ptr, ptr @act8945a_charger_probe._entry_ptr.12, ptr @act8945a_charger_probe._entry_ptr.15, ptr @act8945a_charger_probe._entry_ptr.8, ptr @act8945a_charger_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @act8945a_charger_props, ptr @.str.14, ptr @act8945a_charger_probe.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @switch.table.act8945a_charger_get_property], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_props to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_config._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_config._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_config._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8945a_charger_config._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.act8945a_charger_get_property to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @act8945a_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @act8945a_charger_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @act8945a_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @act8945a_charger_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @act8945a_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  %state.i = alloca i32, align 4
  %total_time_out.i = alloca i32, align 4
  %pre_time_out.i = alloca i32, align 4
  %input_voltage_threshold.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #5
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %call2 = tail call ptr @dev_get_regmap(ptr noundef %2, ptr noundef null) #5
  %regmap = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %regmap, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %total_time_out.i) #5
  %6 = ptrtoint ptr %total_time_out.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %total_time_out.i, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pre_time_out.i) #5
  %7 = ptrtoint ptr %pre_time_out.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %pre_time_out.i, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input_voltage_threshold.i) #5
  %8 = ptrtoint ptr %input_voltage_threshold.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %input_voltage_threshold.i, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tmp.i, align 4, !annotation !92
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %act8945a_charger_config.exit.thread

if.end.i:                                         ; preds = %if.end7
  %call.i111 = call i32 @regmap_read(ptr noundef nonnull %call2, i32 noundef 113, ptr noundef nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool2.not.i = icmp eq i32 %call.i111, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.act8945a_charger_config.exit.thread_crit_edge

if.end.i.act8945a_charger_config.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_charger_config.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp.i, align 4
  %and.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end10.i_crit_edge, label %if.then6.i

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end4.i.if.end10.i_crit_edge
  %value.0.i = phi i32 [ 128, %if.then6.i ], [ 0, %if.end4.i.if.end10.i_crit_edge ]
  %call11.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef 1) #5
  %lbo_gpio.i = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %lbo_gpio.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11.i, ptr %lbo_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then14.i, label %if.end20.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call11.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %13) #8
  br label %act8945a_charger_config.exit

if.end20.i:                                       ; preds = %if.end10.i
  %call22.i = call i32 @gpiod_to_irq(ptr noundef %call11.i) #5
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call22.i, ptr noundef nonnull @act8945a_status_changed, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.27, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool24.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool24.not.i, label %if.end20.i.if.end29.i_crit_edge, label %do.end28.i

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

do.end28.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end28.i, %if.end20.i.if.end29.i_crit_edge
  %call30.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef 1) #5
  %chglev_gpio.i = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %chglev_gpio.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call30.i, ptr %chglev_gpio.i, align 4
  %cmp.i126.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126.i, label %if.then33.i, label %if.end39.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call30.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %15) #8
  br label %act8945a_charger_config.exit

if.end39.i:                                       ; preds = %if.end29.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.35, ptr noundef nonnull %input_voltage_threshold.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool41.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool41.not.i, label %if.end39.i.if.end43.i_crit_edge, label %if.then42.i

if.end39.i.if.end43.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %input_voltage_threshold.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6600, ptr %input_voltage_threshold.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %if.end39.i.if.end43.i_crit_edge
  %call.i.i127.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.36, ptr noundef nonnull %pre_time_out.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i127.i)
  %tobool45.not.i = icmp sgt i32 %call.i.i127.i, -1
  br i1 %tobool45.not.i, label %if.end43.i.if.end47.i_crit_edge, label %if.then46.i

if.end43.i.if.end47.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pre_time_out.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 40, ptr %pre_time_out.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end47.i_crit_edge
  %call.i.i128.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.37, ptr noundef nonnull %total_time_out.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i128.i)
  %tobool49.not.i = icmp sgt i32 %call.i.i128.i, -1
  br i1 %tobool49.not.i, label %if.end47.i.if.end51.i_crit_edge, label %if.then50.i

if.end47.i.if.end51.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %total_time_out.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %total_time_out.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then50.i, %if.end47.i.if.end51.i_crit_edge
  %19 = ptrtoint ptr %input_voltage_threshold.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %input_voltage_threshold.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end51.i.sw.epilog.i_crit_edge [
    i32 8000, label %sw.bb.i
    i32 7500, label %sw.bb53.i
    i32 7000, label %sw.bb55.i
  ]

if.end51.i.sw.epilog.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %or52.i = or i32 %value.0.i, 3
  br label %sw.epilog.i

sw.bb53.i:                                        ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %or54.i = or i32 %value.0.i, 2
  br label %sw.epilog.i

sw.bb55.i:                                        ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %or56.i = or i32 %value.0.i, 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb55.i, %sw.bb53.i, %sw.bb.i, %if.end51.i.sw.epilog.i_crit_edge
  %value.1.i = phi i32 [ %or56.i, %sw.bb55.i ], [ %or54.i, %sw.bb53.i ], [ %or52.i, %sw.bb.i ], [ %value.0.i, %if.end51.i.sw.epilog.i_crit_edge ]
  %22 = ptrtoint ptr %pre_time_out.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pre_time_out.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %23, label %sw.epilog.i.sw.epilog68.i_crit_edge [
    i32 60, label %sw.bb59.i
    i32 80, label %sw.bb61.i
    i32 0, label %sw.bb63.i
  ]

sw.epilog.i.sw.epilog68.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog68.i

sw.bb59.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %or60.i = or i32 %value.1.i, 4
  br label %sw.epilog68.i

sw.bb61.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %or62.i = or i32 %value.1.i, 8
  br label %sw.epilog68.i

sw.bb63.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %or64.i = or i32 %value.1.i, 12
  br label %sw.epilog68.i

sw.epilog68.i:                                    ; preds = %sw.bb63.i, %sw.bb61.i, %sw.bb59.i, %sw.epilog.i.sw.epilog68.i_crit_edge
  %value.2.i = phi i32 [ %or64.i, %sw.bb63.i ], [ %or62.i, %sw.bb61.i ], [ %or60.i, %sw.bb59.i ], [ %value.1.i, %sw.epilog.i.sw.epilog68.i_crit_edge ]
  %25 = ptrtoint ptr %total_time_out.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_time_out.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %26, label %sw.epilog68.i.sw.epilog78.i_crit_edge [
    i32 4, label %sw.bb69.i
    i32 5, label %sw.bb71.i
    i32 0, label %sw.bb73.i
  ]

sw.epilog68.i.sw.epilog78.i_crit_edge:            ; preds = %sw.epilog68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog78.i

sw.bb69.i:                                        ; preds = %sw.epilog68.i
  call void @__sanitizer_cov_trace_pc() #7
  %or70.i = or i32 %value.2.i, 16
  br label %sw.epilog78.i

sw.bb71.i:                                        ; preds = %sw.epilog68.i
  call void @__sanitizer_cov_trace_pc() #7
  %or72.i = or i32 %value.2.i, 32
  br label %sw.epilog78.i

sw.bb73.i:                                        ; preds = %sw.epilog68.i
  call void @__sanitizer_cov_trace_pc() #7
  %or74.i = or i32 %value.2.i, 48
  br label %sw.epilog78.i

sw.epilog78.i:                                    ; preds = %sw.bb73.i, %sw.bb71.i, %sw.bb69.i, %sw.epilog68.i.sw.epilog78.i_crit_edge
  %value.3.i = phi i32 [ %or74.i, %sw.bb73.i ], [ %or72.i, %sw.bb71.i ], [ %or70.i, %sw.bb69.i ], [ %value.2.i, %sw.epilog68.i.sw.epilog78.i_crit_edge ]
  %call79.i = call i32 @regmap_write(ptr noundef nonnull %call2, i32 noundef 113, i32 noundef %value.3.i) #5
  br label %act8945a_charger_config.exit

act8945a_charger_config.exit.thread:              ; preds = %if.end.i.act8945a_charger_config.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i111, %if.end.i.act8945a_charger_config.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_voltage_threshold.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pre_time_out.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total_time_out.i) #5
  br label %cleanup

act8945a_charger_config.exit:                     ; preds = %sw.epilog78.i, %if.then33.i, %if.then14.i
  %retval.0.i = phi i32 [ %13, %if.then14.i ], [ %15, %if.then33.i ], [ %call79.i, %sw.epilog78.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_voltage_threshold.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pre_time_out.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total_time_out.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool10.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool10.not, label %if.end12, label %act8945a_charger_config.exit.cleanup_crit_edge

act8945a_charger_config.exit.cleanup_crit_edge:   ; preds = %act8945a_charger_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %act8945a_charger_config.exit
  %28 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node.i, align 8
  %call14 = call i32 @of_irq_get(ptr noundef %29, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp = icmp slt i32 %call14, 1
  br i1 %cmp, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool20.not = icmp eq i32 %call14, 0
  %. = select i1 %tobool20.not, i32 -6, i32 %call14
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call.i112 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call14, ptr noundef nonnull @act8945a_status_changed, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool24.not = icmp eq i32 %call.i112, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %desc = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str, ptr %desc, align 4
  %get_property = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 1, i32 6
  %31 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @act8945a_charger_get_property, ptr %get_property, align 4
  %properties = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @act8945a_charger_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %num_properties, align 4
  %type = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #5
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %status.i, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #5
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %state.i, align 4, !annotation !92
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i113 = call i32 @regmap_read(ptr noundef %37, i32 noundef 120, ptr noundef nonnull %status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp.i = icmp slt i32 %call.i113, 0
  br i1 %cmp.i, label %if.end30.act8945a_set_supply_type.exit.thread_crit_edge, label %if.end.i114

if.end30.act8945a_set_supply_type.exit.thread_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_set_supply_type.exit.thread

if.end.i114:                                      ; preds = %if.end30
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %39, i32 noundef 122, ptr noundef nonnull %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i114.act8945a_set_supply_type.exit.thread_crit_edge, label %if.end5.i

if.end.i114.act8945a_set_supply_type.exit.thread_crit_edge: ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_set_supply_type.exit.thread

if.end5.i:                                        ; preds = %if.end.i114
  %40 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status.i, align 4
  %and.i115 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.not.i116 = icmp eq i32 %and.i115, 0
  br i1 %tobool.not.i116, label %if.end5.i.if.end38_crit_edge, label %if.then6.i117

if.end5.i.if.end38_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then6.i117:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i, align 4
  %and7.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %..i = select i1 %tobool8.not.i, i32 4, i32 3
  br label %if.end38

act8945a_set_supply_type.exit.thread:             ; preds = %if.end.i114.act8945a_set_supply_type.exit.thread_crit_edge, %if.end30.act8945a_set_supply_type.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #5
  br label %cleanup

if.end38:                                         ; preds = %if.then6.i117, %if.end5.i.if.end38_crit_edge
  %.sink.i = phi i32 [ %..i, %if.then6.i117 ], [ 1, %if.end5.i.if.end38_crit_edge ]
  %44 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %type, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #5
  %45 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node.i, align 8
  %47 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %48 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %drv_data, align 4
  %call44 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %psy_cfg) #5
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call44, ptr %call.i, align 4
  %cmp.i119 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %do.end50, label %if.end54

do.end50:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end38
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 3
  call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %54 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @act8945a_charger_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry59 = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %entry59 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %entry59, ptr %entry59, align 4
  %prev.i = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry59, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 3, i32 2
  %57 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @act8945a_work, ptr %func, align 4
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call.i121 = call i32 @regmap_write(ptr noundef %59, i32 noundef 121, i32 noundef 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i122 = icmp eq i32 %call.i121, 0
  br i1 %tobool.not.i122, label %act8945a_enable_interrupt.exit, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

act8945a_enable_interrupt.exit:                   ; preds = %if.end54
  %call3.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 120, i32 noundef 240) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool64.not = icmp eq i32 %call3.i, 0
  br i1 %tobool64.not, label %if.end66, label %act8945a_enable_interrupt.exit.cleanup_crit_edge

act8945a_enable_interrupt.exit.cleanup_crit_edge: ; preds = %act8945a_enable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end66:                                         ; preds = %act8945a_enable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %init_done = getelementptr inbounds %struct.act8945a_charger, ptr %call.i, i32 0, i32 4
  %60 = ptrtoint ptr %init_done to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %init_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %act8945a_enable_interrupt.exit.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %do.end50, %act8945a_set_supply_type.exit.thread, %do.end28, %do.end18, %act8945a_charger_config.exit.cleanup_crit_edge, %act8945a_charger_config.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %do.end18 ], [ %call.i112, %do.end28 ], [ %52, %do.end50 ], [ 0, %if.end66 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %act8945a_charger_config.exit.cleanup_crit_edge ], [ -5, %act8945a_enable_interrupt.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %act8945a_charger_config.exit.thread ], [ -22, %act8945a_set_supply_type.exit.thread ], [ -5, %if.end54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @act8945a_charger_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %init_done = getelementptr inbounds %struct.act8945a_charger, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %init_done to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %init_done, align 4
  %work = getelementptr inbounds %struct.act8945a_charger, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @act8945a_status_changed(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_done = getelementptr inbounds %struct.act8945a_charger, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %init_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %init_done, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %work = getelementptr inbounds %struct.act8945a_charger, ptr %dev_id, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @act8945a_charger_get_property(ptr noundef %psy, i32 noundef %prop, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %status.i73 = alloca i32, align 4
  %state.i74 = alloca i32, align 4
  %status.i57 = alloca i32, align 4
  %state.i58 = alloca i32, align 4
  %config.i59 = alloca i32, align 4
  %status.i44 = alloca i32, align 4
  %state.i45 = alloca i32, align 4
  %config.i = alloca i32, align 4
  %status.i29 = alloca i32, align 4
  %state.i30 = alloca i32, align 4
  %status.i = alloca i32, align 4
  %state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  %regmap1 = getelementptr inbounds %struct.act8945a_charger, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %2 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %prop, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 6, label %sw.bb5
    i32 2, label %sw.bb6
    i32 51, label %sw.bb8
    i32 16, label %sw.bb10
    i32 73, label %sw.bb12
    i32 74, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #5
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status.i, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %state.i, align 4, !annotation !92
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 120, ptr noundef nonnull %status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.act8945a_get_charger_state.exit_crit_edge, label %if.end.i

sw.bb.act8945a_get_charger_state.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_charger_state.exit

if.end.i:                                         ; preds = %sw.bb
  %call1.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 122, ptr noundef nonnull %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.act8945a_get_charger_state.exit_crit_edge, label %if.end4.i

if.end.i.act8945a_get_charger_state.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_charger_state.exit

if.end4.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  %and.i = lshr i32 %6, 4
  %shr.i = and i32 %and.i, 3
  %7 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %shr.i, label %sw.default.i [
    i32 3, label %if.end4.i.cleanup.sink.split.i_crit_edge
    i32 2, label %if.end4.i.cleanup.sink.split.i_crit_edge92
    i32 1, label %sw.bb5.i
  ]

if.end4.i.cleanup.sink.split.i_crit_edge92:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end4.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

sw.bb5.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status.i, align 4
  %and6.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 4
  br label %cleanup.sink.split.i

sw.default.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i, align 4
  %and10.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %.25.i = select i1 %tobool11.not.i, i32 2, i32 3
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.default.i, %sw.bb5.i, %if.end4.i.cleanup.sink.split.i_crit_edge, %if.end4.i.cleanup.sink.split.i_crit_edge92
  %.sink.i = phi i32 [ 1, %if.end4.i.cleanup.sink.split.i_crit_edge ], [ 1, %if.end4.i.cleanup.sink.split.i_crit_edge92 ], [ %..i, %sw.bb5.i ], [ %.25.i, %sw.default.i ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %val, align 4
  br label %act8945a_get_charger_state.exit

act8945a_get_charger_state.exit:                  ; preds = %cleanup.sink.split.i, %if.end.i.act8945a_get_charger_state.exit_crit_edge, %sw.bb.act8945a_get_charger_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %sw.bb.act8945a_get_charger_state.exit_crit_edge ], [ %call1.i, %if.end.i.act8945a_get_charger_state.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i29) #5
  %13 = ptrtoint ptr %status.i29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %status.i29, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i30) #5
  %14 = ptrtoint ptr %state.i30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %state.i30, align 4, !annotation !92
  %call.i31 = call i32 @regmap_read(ptr noundef %1, i32 noundef 120, ptr noundef nonnull %status.i29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp.i32, label %sw.bb3.act8945a_get_charge_type.exit_crit_edge, label %if.end.i35

sw.bb3.act8945a_get_charge_type.exit_crit_edge:   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_charge_type.exit

if.end.i35:                                       ; preds = %sw.bb3
  %call1.i33 = call i32 @regmap_read(ptr noundef %1, i32 noundef 122, ptr noundef nonnull %state.i30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %cmp2.i34 = icmp slt i32 %call1.i33, 0
  br i1 %cmp2.i34, label %if.end.i35.act8945a_get_charge_type.exit_crit_edge, label %if.end4.i38

if.end.i35.act8945a_get_charge_type.exit_crit_edge: ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_charge_type.exit

if.end4.i38:                                      ; preds = %if.end.i35
  %15 = ptrtoint ptr %state.i30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i30, align 4
  %and.i36 = lshr i32 %16, 4
  %shr.i37 = and i32 %and.i36, 3
  %switch.tableidx = add nsw i32 %shr.i37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 3
  br i1 %17, label %switch.lookup, label %sw.default.i40

sw.default.i40:                                   ; preds = %if.end4.i38
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %status.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status.i29, align 4
  %and8.i = lshr i32 %19, 1
  %and8.lobit.i = and i32 %and8.i, 1
  %20 = xor i32 %and8.lobit.i, 1
  br label %cleanup.sink.split.i42

switch.lookup:                                    ; preds = %if.end4.i38
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.act8945a_charger_get_property, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split.i42

cleanup.sink.split.i42:                           ; preds = %switch.lookup, %sw.default.i40
  %.sink.i41 = phi i32 [ %20, %sw.default.i40 ], [ %switch.load, %switch.lookup ]
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i41, ptr %val, align 4
  br label %act8945a_get_charge_type.exit

act8945a_get_charge_type.exit:                    ; preds = %cleanup.sink.split.i42, %if.end.i35.act8945a_get_charge_type.exit_crit_edge, %sw.bb3.act8945a_get_charge_type.exit_crit_edge
  %retval.0.i43 = phi i32 [ %call.i31, %sw.bb3.act8945a_get_charge_type.exit_crit_edge ], [ %call1.i33, %if.end.i35.act8945a_get_charge_type.exit_crit_edge ], [ 0, %cleanup.sink.split.i42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i30) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i29) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i44) #5
  %24 = ptrtoint ptr %status.i44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %status.i44, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i45) #5
  %25 = ptrtoint ptr %state.i45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %state.i45, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config.i) #5
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %config.i, align 4, !annotation !92
  %call.i46 = call i32 @regmap_read(ptr noundef %1, i32 noundef 120, ptr noundef nonnull %status.i44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i47 = icmp slt i32 %call.i46, 0
  br i1 %cmp.i47, label %sw.bb6.act8945a_get_battery_health.exit_crit_edge, label %if.end.i50

sw.bb6.act8945a_get_battery_health.exit_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_battery_health.exit

if.end.i50:                                       ; preds = %sw.bb6
  %call1.i48 = call i32 @regmap_read(ptr noundef %1, i32 noundef 113, ptr noundef nonnull %config.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %cmp2.i49 = icmp slt i32 %call1.i48, 0
  br i1 %cmp2.i49, label %if.end.i50.act8945a_get_battery_health.exit_crit_edge, label %if.end4.i51

if.end.i50.act8945a_get_battery_health.exit_crit_edge: ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_battery_health.exit

if.end4.i51:                                      ; preds = %if.end.i50
  %call5.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 122, ptr noundef nonnull %state.i45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i51.act8945a_get_battery_health.exit_crit_edge, label %if.end8.i

if.end4.i51.act8945a_get_battery_health.exit_crit_edge: ; preds = %if.end4.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_battery_health.exit

if.end8.i:                                        ; preds = %if.end4.i51
  %27 = ptrtoint ptr %state.i45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state.i45, align 4
  %29 = and i32 %28, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cond.i = icmp eq i32 %29, 0
  br i1 %cond.i, label %sw.bb.i, label %if.end8.i.cleanup.sink.split.i55_crit_edge

if.end8.i.cleanup.sink.split.i55_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i55

sw.bb.i:                                          ; preds = %if.end8.i
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %config.i, align 4
  %and9.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i52 = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i52, label %if.else.i, label %sw.bb.i.cleanup.sink.split.i55_crit_edge

sw.bb.i.cleanup.sink.split.i55_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i55

if.else.i:                                        ; preds = %sw.bb.i
  %32 = ptrtoint ptr %status.i44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status.i44, align 4
  %and11.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else.i.cleanup.sink.split.i55_crit_edge, label %if.then13.i

if.else.i.cleanup.sink.split.i55_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i55

if.then13.i:                                      ; preds = %if.else.i
  %and14.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.cleanup.sink.split.i55_crit_edge, label %if.else17.i

if.then13.i.cleanup.sink.split.i55_crit_edge:     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i55

if.else17.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  %and18.i = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %..i53 = select i1 %tobool19.not.i, i32 4, i32 8
  br label %cleanup.sink.split.i55

cleanup.sink.split.i55:                           ; preds = %if.else17.i, %if.then13.i.cleanup.sink.split.i55_crit_edge, %if.else.i.cleanup.sink.split.i55_crit_edge, %sw.bb.i.cleanup.sink.split.i55_crit_edge, %if.end8.i.cleanup.sink.split.i55_crit_edge
  %.sink.i54 = phi i32 [ 0, %sw.bb.i.cleanup.sink.split.i55_crit_edge ], [ 2, %if.then13.i.cleanup.sink.split.i55_crit_edge ], [ %..i53, %if.else17.i ], [ 1, %if.else.i.cleanup.sink.split.i55_crit_edge ], [ 1, %if.end8.i.cleanup.sink.split.i55_crit_edge ]
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i54, ptr %val, align 4
  br label %act8945a_get_battery_health.exit

act8945a_get_battery_health.exit:                 ; preds = %cleanup.sink.split.i55, %if.end4.i51.act8945a_get_battery_health.exit_crit_edge, %if.end.i50.act8945a_get_battery_health.exit_crit_edge, %sw.bb6.act8945a_get_battery_health.exit_crit_edge
  %retval.0.i56 = phi i32 [ %call.i46, %sw.bb6.act8945a_get_battery_health.exit_crit_edge ], [ %call1.i48, %if.end.i50.act8945a_get_battery_health.exit_crit_edge ], [ %call5.i, %if.end4.i51.act8945a_get_battery_health.exit_crit_edge ], [ 0, %cleanup.sink.split.i55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i45) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i44) #5
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i57) #5
  %35 = ptrtoint ptr %status.i57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %status.i57, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i58) #5
  %36 = ptrtoint ptr %state.i58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %state.i58, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config.i59) #5
  %37 = ptrtoint ptr %config.i59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %config.i59, align 4, !annotation !92
  %lbo_gpio.i = getelementptr inbounds %struct.act8945a_charger, ptr %call, i32 0, i32 5
  %38 = ptrtoint ptr %lbo_gpio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lbo_gpio.i, align 4
  %call.i60 = tail call i32 @gpiod_get_value(ptr noundef %39) #5
  %call1.i61 = call i32 @regmap_read(ptr noundef %1, i32 noundef 120, ptr noundef nonnull %status.i57) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %cmp.i62 = icmp slt i32 %call1.i61, 0
  br i1 %cmp.i62, label %sw.bb8.act8945a_get_capacity_level.exit_crit_edge, label %if.end.i63

sw.bb8.act8945a_get_capacity_level.exit_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_capacity_level.exit

if.end.i63:                                       ; preds = %sw.bb8
  %call2.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 113, ptr noundef nonnull %config.i59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i63.act8945a_get_capacity_level.exit_crit_edge, label %if.end5.i

if.end.i63.act8945a_get_capacity_level.exit_crit_edge: ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_capacity_level.exit

if.end5.i:                                        ; preds = %if.end.i63
  %call6.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 122, ptr noundef nonnull %state.i58) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.act8945a_get_capacity_level.exit_crit_edge, label %if.end9.i

if.end5.i.act8945a_get_capacity_level.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_capacity_level.exit

if.end9.i:                                        ; preds = %if.end5.i
  %40 = ptrtoint ptr %state.i58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state.i58, align 4
  %and.i64 = lshr i32 %41, 4
  %shr.i65 = and i32 %and.i64, 3
  %42 = zext i32 %shr.i65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %shr.i65, label %sw.default.i70 [
    i32 3, label %if.end9.i.cleanup.sink.split.i71_crit_edge
    i32 2, label %sw.bb10.i
    i32 1, label %sw.bb13.i
  ]

if.end9.i.cleanup.sink.split.i71_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i71

sw.bb10.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i66 = icmp eq i32 %call.i60, 0
  %..i67 = select i1 %tobool.not.i66, i32 2, i32 4
  br label %cleanup.sink.split.i71

sw.bb13.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %status.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status.i57, align 4
  %and14.i68 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i68)
  %tobool15.not.i69 = icmp eq i32 %and14.i68, 0
  %.51.i = select i1 %tobool15.not.i69, i32 3, i32 5
  br label %cleanup.sink.split.i71

sw.default.i70:                                   ; preds = %if.end9.i
  %45 = ptrtoint ptr %config.i59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %config.i59, align 4
  %and20.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.else23.i, label %sw.default.i70.cleanup.sink.split.i71_crit_edge

sw.default.i70.cleanup.sink.split.i71_crit_edge:  ; preds = %sw.default.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i71

if.else23.i:                                      ; preds = %sw.default.i70
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %status.i57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status.i57, align 4
  %and24.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool27.not.i = icmp eq i32 %call.i60, 0
  %or.cond.i = select i1 %tobool25.not.i, i1 %tobool27.not.i, i1 false
  %spec.store.select.i = select i1 %or.cond.i, i32 1, i32 3
  br label %cleanup.sink.split.i71

cleanup.sink.split.i71:                           ; preds = %if.else23.i, %sw.default.i70.cleanup.sink.split.i71_crit_edge, %sw.bb13.i, %sw.bb10.i, %if.end9.i.cleanup.sink.split.i71_crit_edge
  %spec.store.select.sink.i = phi i32 [ %spec.store.select.i, %if.else23.i ], [ 2, %if.end9.i.cleanup.sink.split.i71_crit_edge ], [ %..i67, %sw.bb10.i ], [ %.51.i, %sw.bb13.i ], [ 0, %sw.default.i70.cleanup.sink.split.i71_crit_edge ]
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.store.select.sink.i, ptr %val, align 4
  br label %act8945a_get_capacity_level.exit

act8945a_get_capacity_level.exit:                 ; preds = %cleanup.sink.split.i71, %if.end5.i.act8945a_get_capacity_level.exit_crit_edge, %if.end.i63.act8945a_get_capacity_level.exit_crit_edge, %sw.bb8.act8945a_get_capacity_level.exit_crit_edge
  %retval.0.i72 = phi i32 [ %call1.i61, %sw.bb8.act8945a_get_capacity_level.exit_crit_edge ], [ %call2.i, %if.end.i63.act8945a_get_capacity_level.exit_crit_edge ], [ %call6.i, %if.end5.i.act8945a_get_capacity_level.exit_crit_edge ], [ 0, %cleanup.sink.split.i71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i59) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i58) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i57) #5
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i73) #5
  %50 = ptrtoint ptr %status.i73 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %status.i73, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i74) #5
  %51 = ptrtoint ptr %state.i74 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %state.i74, align 4, !annotation !92
  %chglev_gpio.i = getelementptr inbounds %struct.act8945a_charger, ptr %call, i32 0, i32 6
  %52 = ptrtoint ptr %chglev_gpio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chglev_gpio.i, align 4
  %call.i75 = tail call i32 @gpiod_get_value(ptr noundef %53) #5
  %call1.i76 = call i32 @regmap_read(ptr noundef %1, i32 noundef 120, ptr noundef nonnull %status.i73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %cmp.i77 = icmp slt i32 %call1.i76, 0
  br i1 %cmp.i77, label %sw.bb10.act8945a_get_current_max.exit_crit_edge, label %if.end.i80

sw.bb10.act8945a_get_current_max.exit_crit_edge:  ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_current_max.exit

if.end.i80:                                       ; preds = %sw.bb10
  %call2.i78 = call i32 @regmap_read(ptr noundef %1, i32 noundef 122, ptr noundef nonnull %state.i74) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i78)
  %cmp3.i79 = icmp slt i32 %call2.i78, 0
  br i1 %cmp3.i79, label %if.end.i80.act8945a_get_current_max.exit_crit_edge, label %if.end5.i84

if.end.i80.act8945a_get_current_max.exit_crit_edge: ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_get_current_max.exit

if.end5.i84:                                      ; preds = %if.end.i80
  %54 = ptrtoint ptr %state.i74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state.i74, align 4
  %and.i81 = lshr i32 %55, 1
  %shr.i82 = and i32 %and.i81, 1
  %and6.i83 = lshr i32 %55, 4
  %shr7.i = and i32 %and6.i83, 3
  %56 = zext i32 %shr7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %shr7.i, label %if.end5.i84.cleanup.sink.split.i90_crit_edge [
    i32 3, label %sw.bb.i86
    i32 2, label %sw.bb14.i
  ]

if.end5.i84.cleanup.sink.split.i90_crit_edge:     ; preds = %if.end5.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i90

sw.bb.i86:                                        ; preds = %if.end5.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i82)
  %tobool.not.i85 = icmp eq i32 %shr.i82, 0
  br i1 %tobool.not.i85, label %sw.bb.i86.cleanup.sink.split.i90_crit_edge, label %if.then8.i

sw.bb.i86.cleanup.sink.split.i90_crit_edge:       ; preds = %sw.bb.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i90

if.then8.i:                                       ; preds = %sw.bb.i86
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool9.not.i = icmp eq i32 %call.i75, 0
  %..i87 = select i1 %tobool9.not.i, i32 11731, i32 88653
  br label %cleanup.sink.split.i90

sw.bb14.i:                                        ; preds = %if.end5.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i82)
  %tobool15.not.i88 = icmp eq i32 %shr.i82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool22.not.i = icmp eq i32 %call.i75, 0
  br i1 %tobool15.not.i88, label %if.else21.i, label %if.then16.i

if.then16.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  %.46.i = select i1 %tobool22.not.i, i32 117305, i32 886527
  br label %cleanup.sink.split.i90

if.else21.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  %.47.i = select i1 %tobool22.not.i, i32 90000, i32 450000
  br label %cleanup.sink.split.i90

cleanup.sink.split.i90:                           ; preds = %if.else21.i, %if.then16.i, %if.then8.i, %sw.bb.i86.cleanup.sink.split.i90_crit_edge, %if.end5.i84.cleanup.sink.split.i90_crit_edge
  %.sink.i89 = phi i32 [ %..i87, %if.then8.i ], [ 45000, %sw.bb.i86.cleanup.sink.split.i90_crit_edge ], [ %.46.i, %if.then16.i ], [ %.47.i, %if.else21.i ], [ 0, %if.end5.i84.cleanup.sink.split.i90_crit_edge ]
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink.i89, ptr %val, align 4
  br label %act8945a_get_current_max.exit

act8945a_get_current_max.exit:                    ; preds = %cleanup.sink.split.i90, %if.end.i80.act8945a_get_current_max.exit_crit_edge, %sw.bb10.act8945a_get_current_max.exit_crit_edge
  %retval.0.i91 = phi i32 [ %call1.i76, %sw.bb10.act8945a_get_current_max.exit_crit_edge ], [ %call2.i78, %if.end.i80.act8945a_get_current_max.exit_crit_edge ], [ 0, %cleanup.sink.split.i90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i74) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i73) #5
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.38, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.39, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %sw.bb12, %act8945a_get_current_max.exit, %act8945a_get_capacity_level.exit, %act8945a_get_battery_health.exit, %sw.bb5, %act8945a_get_charge_type.exit, %act8945a_get_charger_state.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb13 ], [ 0, %sw.bb12 ], [ %retval.0.i91, %act8945a_get_current_max.exit ], [ %retval.0.i72, %act8945a_get_capacity_level.exit ], [ %retval.0.i56, %act8945a_get_battery_health.exit ], [ 0, %sw.bb5 ], [ %retval.0.i43, %act8945a_get_charge_type.exit ], [ %retval.0.i, %act8945a_get_charger_state.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @act8945a_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  %state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %work, i32 -52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #5
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status.i, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #5
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %state.i, align 4, !annotation !92
  %regmap.i = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 120, ptr noundef nonnull %status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.act8945a_set_supply_type.exit_crit_edge, label %if.end.i

entry.act8945a_set_supply_type.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_set_supply_type.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 122, ptr noundef nonnull %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.act8945a_set_supply_type.exit_crit_edge, label %if.end5.i

if.end.i.act8945a_set_supply_type.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %act8945a_set_supply_type.exit

if.end5.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.i.cleanup.sink.split.i_crit_edge, label %if.then6.i

if.end5.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %and7.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %..i = select i1 %tobool8.not.i, i32 4, i32 3
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then6.i, %if.end5.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %..i, %if.then6.i ], [ 1, %if.end5.i.cleanup.sink.split.i_crit_edge ]
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink.i, ptr %type, align 4
  br label %act8945a_set_supply_type.exit

act8945a_set_supply_type.exit:                    ; preds = %cleanup.sink.split.i, %if.end.i.act8945a_set_supply_type.exit_crit_edge, %entry.act8945a_set_supply_type.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #5
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  call void @power_supply_changed(ptr noundef %12) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_act8945a_charger__187_658_act8945a_charger_driver_init6, !1, !"__initcall__kmod_act8945a_charger__187_658_act8945a_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/act8945a_charger.c", i32 658, i32 1}
!2 = !{ptr @__exitcall_act8945a_charger_driver_exit, !1, !"__exitcall_act8945a_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/act8945a_charger.c", i32 660, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/act8945a_charger.c", i32 661, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/act8945a_charger.c", i32 662, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/act8945a_charger.c", i32 653, i32 11}
!12 = !{ptr @act8945a_charger_driver, !13, !"act8945a_charger_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/act8945a_charger.c", i32 651, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/act8945a_charger.c", i32 586, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @act8945a_charger_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @act8945a_charger_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/act8945a_charger.c", i32 596, i32 3}
!24 = !{ptr @act8945a_charger_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @act8945a_charger_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/act8945a_charger.c", i32 601, i32 33}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/act8945a_charger.c", i32 604, i32 3}
!30 = !{ptr @act8945a_charger_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @act8945a_charger_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/act8945a_charger.c", i32 624, i32 3}
!34 = !{ptr @act8945a_charger_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @act8945a_charger_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @act8945a_charger_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/act8945a_charger.c", i32 630, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/act8945a_charger.c", i32 472, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @act8945a_charger_config._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @act8945a_charger_config._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/act8945a_charger.c", i32 482, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @act8945a_charger_config._entry.19, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @act8945a_charger_config._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/act8945a_charger.c", i32 485, i32 51}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/act8945a_charger.c", i32 489, i32 3}
!53 = !{ptr @act8945a_charger_config._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @act8945a_charger_config._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/act8945a_charger.c", i32 496, i32 11}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/act8945a_charger.c", i32 498, i32 3}
!59 = !{ptr @act8945a_charger_config._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @act8945a_charger_config._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/act8945a_charger.c", i32 501, i32 14}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/act8945a_charger.c", i32 505, i32 3}
!65 = !{ptr @act8945a_charger_config._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @act8945a_charger_config._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/act8945a_charger.c", i32 510, i32 6}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/act8945a_charger.c", i32 515, i32 6}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/act8945a_charger.c", i32 519, i32 31}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/act8945a_charger.c", i32 18, i32 45}
!75 = distinct !{null, !76, !"act8945a_charger_model", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/act8945a_charger.c", i32 18, i32 20}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/act8945a_charger.c", i32 19, i32 52}
!79 = distinct !{null, !80, !"act8945a_charger_manufacturer", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/act8945a_charger.c", i32 19, i32 20}
!81 = !{ptr @act8945a_charger_props, !82, !"act8945a_charger_props", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/act8945a_charger.c", i32 331, i32 35}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i8 0, i8 2}
