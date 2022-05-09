; ModuleID = '/llk/IR_all_yes/drivers/power/supply/lt3651-charger.c_pt.bc'
source_filename = "../drivers/power/supply/lt3651-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lt3651_charger = type { ptr, %struct.power_supply_desc, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_lt3651_charger__187_202_lt3651_charger_driver_init6 = internal global ptr @lt3651_charger_driver_init, section ".initcall6.init", align 4
@lt3651_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lt3651_charger_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lt3651_charger_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lt3651_charger_driver_exit = internal global ptr @lt3651_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [63 x i8] c"lt3651_charger.author=Mike Looijmans <mike.looijmans@topic.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [53 x i8] c"lt3651_charger.description=Driver for LT3651 charger\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [56 x i8] c"lt3651_charger.file=drivers/power/supply/lt3651-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [27 x i8] c"lt3651_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [45 x i8] c"lt3651_charger.alias=platform:lt3651-charger\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lt3651-charger\00", [17 x i8] zeroinitializer }, align 32
@lt3651_charger_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3651-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,lt3651-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lltc,acpr\00", [22 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 110, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to acquire acpr GPIO: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lt3651_charger_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/lt3651-charger.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry_ptr = internal global ptr @lt3651_charger_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lltc,fault\00", [21 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to acquire fault GPIO: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry_ptr.10 = internal global ptr @lt3651_charger_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lltc,chrg\00", [22 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to acquire chrg GPIO: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry_ptr.14 = internal global ptr @lt3651_charger_probe._entry.12, section ".printk_index", align 4
@lt3651_charger_properties = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 2], [20 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 142, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register power supply: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry_ptr.17 = internal global ptr @lt3651_charger_probe._entry.15, section ".printk_index", align 4
@lt3651_charger_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 159, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to request acpr irq\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry_ptr.21 = internal global ptr @lt3651_charger_probe._entry.18, section ".printk_index", align 4
@lt3651_charger_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 169, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request fault irq\0A\00", [35 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry_ptr.24 = internal global ptr @lt3651_charger_probe._entry.22, section ".printk_index", align 4
@lt3651_charger_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 179, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to request chrg irq\0A\00", [36 x i8] zeroinitializer }, align 32
@lt3651_charger_probe._entry_ptr.27 = internal global ptr @lt3651_charger_probe._entry.25, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"lt3651_charger_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 194, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 197, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"lt3651_charger_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 187, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 107, i32 6 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 110, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 114, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 117, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 121, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 124, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"lt3651_charger_properties\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 88, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 141, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 159, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 169, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [41 x i8] c"../drivers/power/supply/lt3651-charger.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 179, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_lt3651_charger_driver_exit, ptr @__initcall__kmod_lt3651_charger__187_202_lt3651_charger_driver_init6, ptr @lt3651_charger_driver_exit, ptr @lt3651_charger_probe._entry, ptr @lt3651_charger_probe._entry.12, ptr @lt3651_charger_probe._entry.15, ptr @lt3651_charger_probe._entry.18, ptr @lt3651_charger_probe._entry.22, ptr @lt3651_charger_probe._entry.25, ptr @lt3651_charger_probe._entry.8, ptr @lt3651_charger_probe._entry_ptr, ptr @lt3651_charger_probe._entry_ptr.10, ptr @lt3651_charger_probe._entry_ptr.14, ptr @lt3651_charger_probe._entry_ptr.17, ptr @lt3651_charger_probe._entry_ptr.21, ptr @lt3651_charger_probe._entry_ptr.24, ptr @lt3651_charger_probe._entry_ptr.27, ptr @lt3651_charger_driver, ptr @.str, ptr @lt3651_charger_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @lt3651_charger_properties, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt3651_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt3651_charger_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt3651_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt3651_charger_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt3651_charger_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt3651_charger_properties to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt3651_charger_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt3651_charger_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt3651_charger_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt3651_charger_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lt3651_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lt3651_charger_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lt3651_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @lt3651_charger_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt3651_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #5
  %0 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 1) #5
  %acpr_gpio = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %acpr_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %acpr_gpio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %3) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 1) #5
  %fault_gpio = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %fault_gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %fault_gpio, align 4
  %cmp.i184 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %5) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %call23 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 1) #5
  %chrg_gpio = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %chrg_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %chrg_gpio, align 4
  %cmp.i185 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %7) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end21
  %charger_desc34 = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %charger_desc34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %charger_desc34, align 4
  %type = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %type, align 4
  %properties = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @lt3651_charger_properties, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lt3651_charger_get_property, ptr %get_property, align 4
  %17 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %18 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %drv_data, align 4
  %call41 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef %charger_desc34, ptr noundef nonnull %psy_cfg) #5
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call41, ptr %call.i, align 4
  %cmp.i186 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then44, label %if.end51

if.then44:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %20) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end33
  %21 = ptrtoint ptr %acpr_gpio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %acpr_gpio, align 4
  %tobool53.not = icmp eq ptr %22, null
  br i1 %tobool53.not, label %if.end51.if.end71_crit_edge, label %if.then54

if.end51.if.end71_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then54:                                        ; preds = %if.end51
  %call56 = call i32 @gpiod_to_irq(ptr noundef nonnull %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call56)
  %cmp = icmp sgt i32 %call56, -1
  br i1 %cmp, label %if.then57, label %if.then54.do.end68_crit_edge

if.then54.do.end68_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

if.then57:                                        ; preds = %if.then54
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then57.if.end63_crit_edge

if.then57.if.end63_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.end.i:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end.i, %if.then57.if.end63_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %if.then57.if.end63_crit_edge ]
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %call62 = call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %call56, ptr noundef nonnull @lt3651_charger_irq, i32 noundef 3, ptr noundef %retval.0.i, ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp64 = icmp slt i32 %call62, 0
  br i1 %cmp64, label %if.end63.do.end68_crit_edge, label %if.end63.if.end71_crit_edge

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.end63.do.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

do.end68:                                         ; preds = %if.end63.do.end68_crit_edge, %if.then54.do.end68_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end68, %if.end63.if.end71_crit_edge, %if.end51.if.end71_crit_edge
  %29 = ptrtoint ptr %fault_gpio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fault_gpio, align 4
  %tobool73.not = icmp eq ptr %30, null
  br i1 %tobool73.not, label %if.end71.if.end92_crit_edge, label %if.then74

if.end71.if.end92_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then74:                                        ; preds = %if.end71
  %call76 = call i32 @gpiod_to_irq(ptr noundef nonnull %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call76)
  %cmp77 = icmp sgt i32 %call76, -1
  br i1 %cmp77, label %if.then78, label %if.then74.do.end89_crit_edge

if.then74.do.end89_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end89

if.then78:                                        ; preds = %if.then74
  %init_name.i187 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %init_name.i187 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i187, align 8
  %tobool.not.i188 = icmp eq ptr %32, null
  br i1 %tobool.not.i188, label %if.end.i189, label %if.then78.if.end84_crit_edge

if.then78.if.end84_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.end.i189:                                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end.i189, %if.then78.if.end84_crit_edge
  %retval.0.i190 = phi ptr [ %34, %if.end.i189 ], [ %32, %if.then78.if.end84_crit_edge ]
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %call83 = call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %call76, ptr noundef nonnull @lt3651_charger_irq, i32 noundef 3, ptr noundef %retval.0.i190, ptr noundef %36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp85 = icmp slt i32 %call83, 0
  br i1 %cmp85, label %if.end84.do.end89_crit_edge, label %if.end84.if.end92_crit_edge

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.end84.do.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end89

do.end89:                                         ; preds = %if.end84.do.end89_crit_edge, %if.then74.do.end89_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %if.end92

if.end92:                                         ; preds = %do.end89, %if.end84.if.end92_crit_edge, %if.end71.if.end92_crit_edge
  %37 = ptrtoint ptr %chrg_gpio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chrg_gpio, align 4
  %tobool94.not = icmp eq ptr %38, null
  br i1 %tobool94.not, label %if.end92.if.end113_crit_edge, label %if.then95

if.end92.if.end113_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.then95:                                        ; preds = %if.end92
  %call97 = call i32 @gpiod_to_irq(ptr noundef nonnull %38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call97)
  %cmp98 = icmp sgt i32 %call97, -1
  br i1 %cmp98, label %if.then99, label %if.then95.do.end110_crit_edge

if.then95.do.end110_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end110

if.then99:                                        ; preds = %if.then95
  %init_name.i192 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %init_name.i192 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i192, align 8
  %tobool.not.i193 = icmp eq ptr %40, null
  br i1 %tobool.not.i193, label %if.end.i194, label %if.then99.if.end105_crit_edge

if.then99.if.end105_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.end.i194:                                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.end.i194, %if.then99.if.end105_crit_edge
  %retval.0.i195 = phi ptr [ %42, %if.end.i194 ], [ %40, %if.then99.if.end105_crit_edge ]
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %call104 = call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %call97, ptr noundef nonnull @lt3651_charger_irq, i32 noundef 3, ptr noundef %retval.0.i195, ptr noundef %44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp106 = icmp slt i32 %call104, 0
  br i1 %cmp106, label %if.end105.do.end110_crit_edge, label %if.end105.if.end113_crit_edge

if.end105.if.end113_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.end105.do.end110_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end110

do.end110:                                        ; preds = %if.end105.do.end110_crit_edge, %if.then95.do.end110_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  br label %if.end113

if.end113:                                        ; preds = %do.end110, %if.end105.if.end113_crit_edge, %if.end92.if.end113_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.then44, %if.then26, %if.then14, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %5, %if.then14 ], [ %7, %if.then26 ], [ %20, %if.then44 ], [ 0, %if.end113 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt3651_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb6
    i32 2, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %chrg_gpio = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %chrg_gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chrg_gpio, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %sw.bb.cleanup.sink.split_crit_edge, label %if.end

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @gpiod_get_value(ptr noundef nonnull %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool3.not, i32 3, i32 1
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %acpr_gpio = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %acpr_gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %acpr_gpio, align 4
  %call7 = tail call i32 @gpiod_get_value(ptr noundef %4) #5
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %entry
  %fault_gpio = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %fault_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fault_gpio, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %sw.bb8.cleanup.sink.split_crit_edge, label %if.end11

sw.bb8.cleanup.sink.split_crit_edge:              ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end11:                                         ; preds = %sw.bb8
  %call13 = tail call i32 @gpiod_get_value(ptr noundef nonnull %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.cleanup.sink.split_crit_edge, label %if.end16

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end11
  %chrg_gpio17 = getelementptr inbounds %struct.lt3651_charger, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %chrg_gpio17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chrg_gpio17, align 4
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %if.end16.cleanup.sink.split_crit_edge, label %if.end20

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 @gpiod_get_value(ptr noundef nonnull %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  %cond = select i1 %tobool23.not, i32 3, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end20, %if.end16.cleanup.sink.split_crit_edge, %if.end11.cleanup.sink.split_crit_edge, %sw.bb8.cleanup.sink.split_crit_edge, %sw.bb6, %if.end, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %call7, %sw.bb6 ], [ %cond, %if.end20 ], [ 0, %sw.bb.cleanup.sink.split_crit_edge ], [ %., %if.end ], [ 0, %sw.bb8.cleanup.sink.split_crit_edge ], [ 1, %if.end11.cleanup.sink.split_crit_edge ], [ 5, %if.end16.cleanup.sink.split_crit_edge ]
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lt3651_charger_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @power_supply_changed(ptr noundef %devid) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_lt3651_charger__187_202_lt3651_charger_driver_init6, !1, !"__initcall__kmod_lt3651_charger__187_202_lt3651_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/lt3651-charger.c", i32 202, i32 1}
!2 = !{ptr @__exitcall_lt3651_charger_driver_exit, !1, !"__exitcall_lt3651_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/lt3651-charger.c", i32 204, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/lt3651-charger.c", i32 205, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/lt3651-charger.c", i32 206, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias192, !11, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/lt3651-charger.c", i32 207, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/lt3651-charger.c", i32 197, i32 11}
!14 = !{ptr @lt3651_charger_driver, !15, !"lt3651_charger_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/lt3651-charger.c", i32 194, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/lt3651-charger.c", i32 107, i32 6}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/lt3651-charger.c", i32 110, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lt3651_charger_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @lt3651_charger_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/lt3651-charger.c", i32 114, i32 6}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/lt3651-charger.c", i32 117, i32 3}
!30 = !{ptr @lt3651_charger_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lt3651_charger_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/lt3651-charger.c", i32 121, i32 6}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/lt3651-charger.c", i32 124, i32 3}
!36 = !{ptr @lt3651_charger_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @lt3651_charger_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/lt3651-charger.c", i32 141, i32 3}
!40 = !{ptr @lt3651_charger_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @lt3651_charger_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/lt3651-charger.c", i32 159, i32 4}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @lt3651_charger_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @lt3651_charger_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/lt3651-charger.c", i32 169, i32 4}
!49 = !{ptr @lt3651_charger_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @lt3651_charger_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/lt3651-charger.c", i32 179, i32 4}
!53 = !{ptr @lt3651_charger_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @lt3651_charger_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @lt3651_charger_properties, !56, !"lt3651_charger_properties", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/lt3651-charger.c", i32 88, i32 35}
!57 = !{ptr @lt3651_charger_match, !58, !"lt3651_charger_match", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/lt3651-charger.c", i32 187, i32 34}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
