; ModuleID = '/llk/IR_all_yes/drivers/power/supply/sc2731_charger.c_pt.bc'
source_filename = "../drivers/power/supply/sc2731_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.sc2731_charger_info = type { ptr, ptr, ptr, %struct.notifier_block, ptr, %struct.work_struct, %struct.mutex, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__initcall__kmod_sc2731_charger__232_538_sc2731_charger_driver_init6 = internal global ptr @sc2731_charger_driver_init, section ".initcall6.init", align 4
@sc2731_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sc2731_charger_probe, ptr @sc2731_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc2731_charger_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sc2731_charger_driver_exit = internal global ptr @sc2731_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description233 = internal constant [60 x i8] c"sc2731_charger.description=Spreadtrum SC2731 Charger Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [56 x i8] c"sc2731_charger.file=drivers/power/supply/sc2731_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [30 x i8] c"sc2731_charger.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc2731-charger\00", [17 x i8] zeroinitializer }, align 32
@sc2731_charger_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2731-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sc2731_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@sc2731_charger_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&info->work)\00", [33 x i8] zeroinitializer }, align 32
@sc2731_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 472, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get charger regmap\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sc2731_charger_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/sc2731_charger.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc2731_charger_probe._entry_ptr = internal global ptr @sc2731_charger_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sc2731_charger_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 478, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get register address\0A\00", [32 x i8] zeroinitializer }, align 32
@sc2731_charger_probe._entry_ptr.12 = internal global ptr @sc2731_charger_probe._entry.10, section ".printk_index", align 4
@sc2731_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.23, i32 4, ptr null, i32 0, ptr @sc2731_usb_props, i32 3, ptr @sc2731_charger_usb_get_property, ptr @sc2731_charger_usb_set_property, ptr @sc2731_charger_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sc2731_charger_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 488, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@sc2731_charger_probe._entry_ptr.15 = internal global ptr @sc2731_charger_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@sc2731_charger_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 498, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to find USB phy\0A\00", [40 x i8] zeroinitializer }, align 32
@sc2731_charger_probe._entry_ptr.19 = internal global ptr @sc2731_charger_probe._entry.17, section ".printk_index", align 4
@sc2731_charger_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 505, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register notifier: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sc2731_charger_probe._entry_ptr.22 = internal global ptr @sc2731_charger_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc2731_charger\00", [17 x i8] zeroinitializer }, align 32
@sc2731_usb_props = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 29, i32 38], [20 x i8] zeroinitializer }, align 32
@sc2731_charger_usb_set_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 220, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set charge current failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sc2731_charger_usb_set_property\00", [32 x i8] zeroinitializer }, align 32
@sc2731_charger_usb_set_property._entry_ptr = internal global ptr @sc2731_charger_usb_set_property._entry, section ".printk_index", align 4
@sc2731_charger_usb_set_property._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 227, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"set input current limit failed\0A\00", [32 x i8] zeroinitializer }, align 32
@sc2731_charger_usb_set_property._entry_ptr.28 = internal global ptr @sc2731_charger_usb_set_property._entry.26, section ".printk_index", align 4
@sc2731_charger_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 383, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no battery information is supplied\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sc2731_charger_hw_init\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sc2731_charger_hw_init._entry_ptr = internal global ptr @sc2731_charger_hw_init._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.sc2731_charger_usb_get_property = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 100000, i32 2000000, i32 900000, i32 500000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 29, i64 38]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 29, i64 38]
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"sc2731_charger_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 529, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 531, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"sc2731_charger_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 523, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 466, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 468, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 472, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 476, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 478, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"sc2731_charger_desc\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 313, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 488, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 496, i32 58 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 498, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 505, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 314, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"sc2731_usb_props\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 307, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 220, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 227, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [41 x i8] c"../drivers/power/supply/sc2731_charger.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 383, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [45 x i8] c"switch.table.sc2731_charger_usb_get_property\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_sc2731_charger_driver_exit, ptr @__initcall__kmod_sc2731_charger__232_538_sc2731_charger_driver_init6, ptr @sc2731_charger_driver_exit, ptr @sc2731_charger_hw_init._entry, ptr @sc2731_charger_hw_init._entry_ptr, ptr @sc2731_charger_probe._entry, ptr @sc2731_charger_probe._entry.10, ptr @sc2731_charger_probe._entry.13, ptr @sc2731_charger_probe._entry.17, ptr @sc2731_charger_probe._entry.20, ptr @sc2731_charger_probe._entry_ptr, ptr @sc2731_charger_probe._entry_ptr.12, ptr @sc2731_charger_probe._entry_ptr.15, ptr @sc2731_charger_probe._entry_ptr.19, ptr @sc2731_charger_probe._entry_ptr.22, ptr @sc2731_charger_usb_set_property._entry, ptr @sc2731_charger_usb_set_property._entry.26, ptr @sc2731_charger_usb_set_property._entry_ptr, ptr @sc2731_charger_usb_set_property._entry_ptr.28, ptr @sc2731_charger_driver, ptr @.str, ptr @sc2731_charger_of_match, ptr @sc2731_charger_probe.__key, ptr @.str.1, ptr @sc2731_charger_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @sc2731_charger_desc, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @sc2731_usb_props, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @switch.table.sc2731_charger_usb_get_property], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_usb_props to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_usb_set_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_usb_set_property._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_charger_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sc2731_charger_usb_get_property to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc2731_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sc2731_charger_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc2731_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sc2731_charger_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc2731_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %min.i = alloca i32, align 4
  %max.i = alloca i32, align 4
  %bat_info.i = alloca ptr, align 4
  %charger_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %charger_cfg) #7
  %2 = getelementptr inbounds i8, ptr %charger_cfg, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 176, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sc2731_charger_probe.__key) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %work = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %5 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @sc2731_charger_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry8 = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sc2731_charger_work, ptr %func, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call13 = tail call ptr @dev_get_regmap(ptr noundef %10, ptr noundef null) #7
  %regmap = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %regmap, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end21:                                         ; preds = %do.body
  %base = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %base, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool23.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %charger_cfg, i32 0, i32 2
  %12 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %drv_data, align 4
  %13 = ptrtoint ptr %charger_cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %charger_cfg, align 4
  %call32 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @sc2731_charger_desc, ptr noundef nonnull %charger_cfg) #7
  %psy_usb = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %psy_usb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call32, ptr %psy_usb, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end38, label %if.end42

do.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  %15 = ptrtoint ptr %psy_usb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %psy_usb, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bat_info.i) #7
  %18 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %bat_info.i, align 4, !annotation !78
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i.i110 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 3084, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %tobool.not.i = icmp eq i32 %call.i.i110, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end42.sc2731_charger_hw_init.exit.thread_crit_edge

if.end42.sc2731_charger_hw_init.exit.thread_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc2731_charger_hw_init.exit.thread

if.end.i:                                         ; preds = %if.end42
  %21 = ptrtoint ptr %psy_usb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %psy_usb, align 4
  %call1.i = call i32 @power_supply_get_battery_info(ptr noundef %22, ptr noundef nonnull %bat_info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.29) #10
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bat_info.i, align 4
  %charge_term_current_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %charge_term_current_ua.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %charge_term_current_ua.i, align 4
  %div.i = sdiv i32 %28, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %div.i)
  %cmp.i111 = icmp ult i32 %div.i, 91
  br i1 %cmp.i111, label %if.else.i.if.end11.i_crit_edge, label %if.else5.i

if.else.i.if.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %div.i)
  %cmp6.i = icmp ugt i32 %div.i, 264
  br i1 %cmp6.i, label %if.else5.i.if.end11.i_crit_edge, label %if.else8.i

if.else5.i.if.end11.i_crit_edge:                  ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.else8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %div.i, -90
  %div9.i = udiv i32 %sub.i, 25
  %add.i = add nuw nsw i32 %div9.i, 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else8.i, %if.else5.i.if.end11.i_crit_edge, %if.else.i.if.end11.i_crit_edge
  %cur_val.0.i = phi i32 [ %add.i, %if.else8.i ], [ 0, %if.else.i.if.end11.i_crit_edge ], [ 7, %if.else5.i.if.end11.i_crit_edge ]
  %constant_charge_voltage_max_uv.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %26, i32 0, i32 12
  %29 = ptrtoint ptr %constant_charge_voltage_max_uv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %constant_charge_voltage_max_uv.i, align 4
  %div12.i = sdiv i32 %30, 1000
  %31 = call i32 @llvm.umin.i32(i32 %div12.i, i32 4500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4200, i32 %31)
  %cmp16.i = icmp ugt i32 %31, 4200
  %sub18.i = add nsw i32 %31, -4200
  %div19.i = udiv i32 %sub18.i, 100
  %32 = ptrtoint ptr %psy_usb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %psy_usb, align 4
  call void @power_supply_put_battery_info(ptr noundef %33, ptr noundef %26) #7
  %div19.op.i = shl nuw nsw i32 %div19.i, 1
  %div19.op.op.i = or i32 %div19.op.i, 48
  %phi.bo64.i = select i1 %cmp16.i, i32 %div19.op.op.i, i32 48
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end11.i, %do.end.i
  %cur_val.1.i = phi i32 [ 2, %do.end.i ], [ %cur_val.0.i, %if.end11.i ]
  %vol_val.1.i = phi i32 [ 50, %do.end.i ], [ %phi.bo64.i, %if.end11.i ]
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 4
  %add25.i = add i32 %37, 8
  %call.i61.i = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %add25.i, i32 noundef 7, i32 noundef %cur_val.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool27.not.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end23.i.error.i_crit_edge

if.end23.i.error.i_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

if.end29.i:                                       ; preds = %if.end23.i
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base, align 4
  %call.i62.i = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %41, i32 noundef 510, i32 noundef %vol_val.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool34.not.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool34.not.i, label %if.end46, label %if.end29.i.error.i_crit_edge

if.end29.i.error.i_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

error.i:                                          ; preds = %if.end29.i.error.i_crit_edge, %if.end23.i.error.i_crit_edge
  %ret.0.i = phi i32 [ %call.i61.i, %if.end23.i.error.i_crit_edge ], [ %call.i62.i, %if.end29.i.error.i_crit_edge ]
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call.i63.i = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 3084, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sc2731_charger_hw_init.exit.thread

sc2731_charger_hw_init.exit.thread:               ; preds = %error.i, %if.end42.sc2731_charger_hw_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i110, %if.end42.sc2731_charger_hw_init.exit.thread_crit_edge ], [ %ret.0.i, %error.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bat_info.i) #7
  br label %cleanup

if.end46:                                         ; preds = %if.end29.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bat_info.i) #7
  %call48 = call ptr @devm_usb_get_phy_by_phandle(ptr noundef %dev, ptr noundef nonnull @.str.16, i8 noundef zeroext 0) #7
  %usb_phy = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call48, ptr %usb_phy, align 4
  %cmp.i112 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %do.end54, label %if.end58

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  %45 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb_phy, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end46
  %usb_notify = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %usb_notify to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @sc2731_charger_usb_change, ptr %usb_notify, align 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %call48, i32 0, i32 18
  %call.i113 = call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef %usb_notify) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool62.not = icmp eq i32 %call.i113, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i113) #10
  br label %cleanup

if.end68:                                         ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.i) #7
  %49 = ptrtoint ptr %min.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %min.i, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.i) #7
  %50 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %max.i, align 4, !annotation !78
  %51 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usb_phy, align 4
  %chg_state.i = getelementptr inbounds %struct.usb_phy, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %chg_state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.not.i = icmp eq i32 %54, 1
  br i1 %cmp.not.i, label %if.end.i114, label %if.end68.sc2731_charger_detect_status.exit_crit_edge

if.end68.sc2731_charger_detect_status.exit_crit_edge: ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc2731_charger_detect_status.exit

if.end.i114:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  call void @usb_phy_get_charger_current(ptr noundef %52, ptr noundef nonnull %min.i, ptr noundef nonnull %max.i) #7
  %55 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %min.i, align 4
  %limit.i = getelementptr inbounds %struct.sc2731_charger_info, ptr %call.i, i32 0, i32 9
  %57 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %limit.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %58 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %work) #7
  br label %sc2731_charger_detect_status.exit

sc2731_charger_detect_status.exit:                ; preds = %if.end.i114, %if.end68.sc2731_charger_detect_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.i) #7
  br label %cleanup

cleanup:                                          ; preds = %sc2731_charger_detect_status.exit, %do.end66, %do.end54, %sc2731_charger_hw_init.exit.thread, %do.end38, %do.end27, %do.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end27 ], [ %17, %do.end38 ], [ %47, %do.end54 ], [ %call.i113, %do.end66 ], [ 0, %sc2731_charger_detect_status.exit ], [ -19, %do.end19 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %sc2731_charger_hw_init.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %charger_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc2731_charger_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb_phy = getelementptr inbounds %struct.sc2731_charger_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_phy, align 4
  %usb_notify = getelementptr inbounds %struct.sc2731_charger_info, ptr %1, i32 0, i32 3
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 18
  %call.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef %usb_notify) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc2731_charger_work(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %data, i32 44
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %limit = getelementptr i8, ptr %data, i32 144
  %0 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %charging17 = getelementptr i8, ptr %data, i32 136
  %2 = ptrtoint ptr %charging17 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %charging17, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool18.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %land.lhs.true16, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool18.not, label %if.then, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %1)
  %cmp.i = icmp ult i32 %1, 101
  br i1 %cmp.i, label %if.then.sc2731_charger_set_current_limit.exit_crit_edge, label %if.else.i

if.then.sc2731_charger_set_current_limit.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc2731_charger_set_current_limit.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %1)
  %cmp1.i = icmp ult i32 %1, 501
  br i1 %cmp1.i, label %if.else.i.sc2731_charger_set_current_limit.exit_crit_edge, label %if.else3.i

if.else.i.sc2731_charger_set_current_limit.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc2731_charger_set_current_limit.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 901, i32 %1)
  %cmp4.i = icmp ult i32 %1, 901
  %..i = select i1 %cmp4.i, i32 512, i32 256
  br label %sc2731_charger_set_current_limit.exit

sc2731_charger_set_current_limit.exit:            ; preds = %if.else3.i, %if.else.i.sc2731_charger_set_current_limit.exit_crit_edge, %if.then.sc2731_charger_set_current_limit.exit_crit_edge
  %val.0.i = phi i32 [ 0, %if.then.sc2731_charger_set_current_limit.exit_crit_edge ], [ 768, %if.else.i.sc2731_charger_set_current_limit.exit_crit_edge ], [ %..i, %if.else3.i ]
  %regmap.i = getelementptr i8, ptr %data, i32 -24
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr i8, ptr %data, i32 140
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  %add.i = add i32 %7, 40
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef 768, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %if.end, label %sc2731_charger_set_current_limit.exit.out_crit_edge

sc2731_charger_set_current_limit.exit.out_crit_edge: ; preds = %sc2731_charger_set_current_limit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %sc2731_charger_set_current_limit.exit
  %8 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limit, align 4
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i, align 4
  %call.i.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef 6144, i32 noundef 6144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %tobool.not.i = icmp eq i32 %call.i.i41, 0
  br i1 %tobool.not.i, label %sc2731_charger_set_current.exit, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sc2731_charger_set_current.exit:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %9)
  %cmp.i42 = icmp ugt i32 %9, 2000
  %14 = tail call i32 @llvm.umax.i32(i32 %9, i32 450) #7
  %phi.bo.i = add i32 %14, -450
  %phi.bo17.i = udiv i32 %phi.bo.i, 50
  %cur.addr.0.i = select i1 %cmp.i42, i32 31, i32 %phi.bo17.i
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base.i, align 4
  %add8.i = add i32 %18, 4
  %call.i18.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %add8.i, i32 noundef 63, i32 noundef %cur.addr.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool6.not = icmp eq i32 %call.i18.i, 0
  br i1 %tobool6.not, label %if.end8, label %sc2731_charger_set_current.exit.out_crit_edge

sc2731_charger_set_current.exit.out_crit_edge:    ; preds = %sc2731_charger_set_current.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %sc2731_charger_set_current.exit
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base.i, align 4
  %call.i.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %22, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45)
  %tobool.not.i46 = icmp eq i32 %call.i.i45, 0
  br i1 %tobool.not.i46, label %sc2731_charger_start_charge.exit, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sc2731_charger_start_charge.exit:                 ; preds = %if.end8
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base.i, align 4
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %26, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool10.not = icmp eq i32 %call.i9.i, 0
  br i1 %tobool10.not, label %if.end12, label %sc2731_charger_start_charge.exit.out_crit_edge

sc2731_charger_start_charge.exit.out_crit_edge:   ; preds = %sc2731_charger_start_charge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12:                                         ; preds = %sc2731_charger_start_charge.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %charging17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %charging17, align 4
  br label %out

land.lhs.true16:                                  ; preds = %entry
  br i1 %tobool18.not, label %land.lhs.true16.out_crit_edge, label %if.then19

land.lhs.true16.out_crit_edge:                    ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then19:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %charging17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %charging17, align 4
  %regmap.i48 = getelementptr i8, ptr %data, i32 -24
  %29 = ptrtoint ptr %regmap.i48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i48, align 4
  %base.i49 = getelementptr i8, ptr %data, i32 140
  %31 = ptrtoint ptr %base.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base.i49, align 4
  %call.i.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %32, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %33 = ptrtoint ptr %regmap.i48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i48, align 4
  %35 = ptrtoint ptr %base.i49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base.i49, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %36, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %out

out:                                              ; preds = %if.then19, %land.lhs.true16.out_crit_edge, %if.end12, %sc2731_charger_start_charge.exit.out_crit_edge, %if.end8.out_crit_edge, %sc2731_charger_set_current.exit.out_crit_edge, %if.end.out_crit_edge, %sc2731_charger_set_current_limit.exit.out_crit_edge, %land.lhs.true.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc2731_charger_usb_change(ptr noundef %nb, i32 noundef %limit, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %limit1 = getelementptr i8, ptr %nb, i32 160
  %0 = ptrtoint ptr %limit1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %limit, ptr %limit1, align 4
  %work = getelementptr i8, ptr %nb, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work) #7
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc2731_charger_usb_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %val.i44 = alloca i32, align 4
  %val.i38 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %lock = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.out_crit_edge [
    i32 0, label %sw.bb
    i32 29, label %sw.bb2
    i32 38, label %sw.bb12
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %entry
  %charging = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %charging to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %charging, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !78
  %regmap.i = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 3804, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.sc2731_charger_get_status.exit_crit_edge

if.then.sc2731_charger_get_status.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc2731_charger_get_status.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  %and.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool1.not.i, i32 1, i32 4
  br label %sc2731_charger_get_status.exit

sc2731_charger_get_status.exit:                   ; preds = %if.end.i, %if.then.sc2731_charger_get_status.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.sc2731_charger_get_status.exit_crit_edge ], [ %..i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %val, align 4
  br label %out

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %val, align 4
  br label %out

sw.bb2:                                           ; preds = %entry
  %charging3 = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %charging3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %charging3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.then5, label %if.else6

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val, align 4
  br label %out

if.else6:                                         ; preds = %sw.bb2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i38) #7
  %13 = ptrtoint ptr %val.i38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i38, align 4, !annotation !78
  %regmap.i39 = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i39, align 4
  %base.i = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 8
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i, align 4
  %add.i = add i32 %17, 4
  %call.i40 = call i32 @regmap_read(ptr noundef %15, i32 noundef %add.i, ptr noundef nonnull %val.i38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.end10, label %sc2731_charger_get_current.exit

sc2731_charger_get_current.exit:                  ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i38) #7
  br label %out

if.end10:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %val.i38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i38, align 4
  %and.i42 = and i32 %19, 63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i38) #7
  %20 = mul nuw nsw i32 %and.i42, 50000
  %mul = add nuw nsw i32 %20, 450000
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %val, align 4
  br label %out

sw.bb12:                                          ; preds = %entry
  %charging13 = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 7
  %22 = ptrtoint ptr %charging13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %charging13, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  br i1 %tobool14.not, label %if.then15, label %if.else16

if.then15:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %val, align 4
  br label %out

if.else16:                                        ; preds = %sw.bb12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i44) #7
  %25 = ptrtoint ptr %val.i44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %val.i44, align 4, !annotation !78
  %regmap.i45 = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i45, align 4
  %base.i46 = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 8
  %28 = ptrtoint ptr %base.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base.i46, align 4
  %add.i47 = add i32 %29, 40
  %call.i48 = call i32 @regmap_read(ptr noundef %27, i32 noundef %add.i47, ptr noundef nonnull %val.i44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %if.end.i51, label %sc2731_charger_get_current_limit.exit

if.end.i51:                                       ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %val.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i44, align 4
  %and.i50 = lshr i32 %31, 8
  %shr.i = and i32 %and.i50, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sc2731_charger_usb_get_property, i32 0, i32 %shr.i
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i44) #7
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %switch.load, ptr %val, align 4
  br label %out

sc2731_charger_get_current_limit.exit:            ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i44) #7
  br label %out

out:                                              ; preds = %sc2731_charger_get_current_limit.exit, %if.end.i51, %if.then15, %if.end10, %sc2731_charger_get_current.exit, %if.then5, %if.else, %sc2731_charger_get_status.exit, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i48, %sc2731_charger_get_current_limit.exit ], [ 0, %if.end.i51 ], [ 0, %if.then15 ], [ %call.i40, %sc2731_charger_get_current.exit ], [ 0, %if.end10 ], [ 0, %if.then5 ], [ 0, %sc2731_charger_get_status.exit ], [ 0, %if.else ], [ -22, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc2731_charger_usb_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %lock = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %charging = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %charging to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %charging, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %psp, label %if.end.cleanup_crit_edge [
    i32 29, label %sw.bb
    i32 38, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %regmap.i = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 8
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef 6144, i32 noundef 6144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %sw.bb.sc2731_charger_set_current.exit_crit_edge

sw.bb.sc2731_charger_set_current.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc2731_charger_set_current.exit

if.end5.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %div = sdiv i32 %4, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %div)
  %cmp.i = icmp ugt i32 %div, 2000
  %9 = tail call i32 @llvm.umax.i32(i32 %div, i32 450) #7
  %phi.bo.i = add i32 %9, -450
  %phi.bo17.i = udiv i32 %phi.bo.i, 50
  %cur.addr.0.i = select i1 %cmp.i, i32 31, i32 %phi.bo17.i
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i, align 4
  %add8.i = add i32 %13, 4
  %call.i18.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add8.i, i32 noundef 63, i32 noundef %cur.addr.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sc2731_charger_set_current.exit

sc2731_charger_set_current.exit:                  ; preds = %if.end5.i, %sw.bb.sc2731_charger_set_current.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i18.i, %if.end5.i ], [ %call.i.i, %sw.bb.sc2731_charger_set_current.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %sc2731_charger_set_current.exit.sw.epilog.sink.split_crit_edge, label %sc2731_charger_set_current.exit.cleanup_crit_edge

sc2731_charger_set_current.exit.cleanup_crit_edge: ; preds = %sc2731_charger_set_current.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sc2731_charger_set_current.exit.sw.epilog.sink.split_crit_edge: ; preds = %sc2731_charger_set_current.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %if.end
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %div6 = sdiv i32 %15, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %div6)
  %cmp.i27 = icmp ult i32 %div6, 101
  br i1 %cmp.i27, label %sw.bb5.sc2731_charger_set_current_limit.exit_crit_edge, label %if.else.i

sw.bb5.sc2731_charger_set_current_limit.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc2731_charger_set_current_limit.exit

if.else.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %div6)
  %cmp1.i = icmp ult i32 %div6, 501
  br i1 %cmp1.i, label %if.else.i.sc2731_charger_set_current_limit.exit_crit_edge, label %if.else3.i

if.else.i.sc2731_charger_set_current_limit.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc2731_charger_set_current_limit.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 901, i32 %div6)
  %cmp4.i = icmp ult i32 %div6, 901
  %..i = select i1 %cmp4.i, i32 512, i32 256
  br label %sc2731_charger_set_current_limit.exit

sc2731_charger_set_current_limit.exit:            ; preds = %if.else3.i, %if.else.i.sc2731_charger_set_current_limit.exit_crit_edge, %sw.bb5.sc2731_charger_set_current_limit.exit_crit_edge
  %val.0.i = phi i32 [ 0, %sw.bb5.sc2731_charger_set_current_limit.exit_crit_edge ], [ 768, %if.else.i.sc2731_charger_set_current_limit.exit_crit_edge ], [ %..i, %if.else3.i ]
  %regmap.i28 = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i28, align 4
  %base.i29 = getelementptr inbounds %struct.sc2731_charger_info, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base.i29, align 4
  %add.i = add i32 %19, 40
  %call.i.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %add.i, i32 noundef 768, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp8 = icmp slt i32 %call.i.i30, 0
  br i1 %cmp8, label %sc2731_charger_set_current_limit.exit.sw.epilog.sink.split_crit_edge, label %sc2731_charger_set_current_limit.exit.cleanup_crit_edge

sc2731_charger_set_current_limit.exit.cleanup_crit_edge: ; preds = %sc2731_charger_set_current_limit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sc2731_charger_set_current_limit.exit.sw.epilog.sink.split_crit_edge: ; preds = %sc2731_charger_set_current_limit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sc2731_charger_set_current_limit.exit.sw.epilog.sink.split_crit_edge, %sc2731_charger_set_current.exit.sw.epilog.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.24, %sc2731_charger_set_current.exit.sw.epilog.sink.split_crit_edge ], [ @.str.27, %sc2731_charger_set_current_limit.exit.sw.epilog.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %retval.0.i, %sc2731_charger_set_current.exit.sw.epilog.sink.split_crit_edge ], [ %call.i.i30, %sc2731_charger_set_current_limit.exit.sw.epilog.sink.split_crit_edge ]
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull %.str.27.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split, %sc2731_charger_set_current_limit.exit.cleanup_crit_edge, %sc2731_charger_set_current.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call.i.i30, %sc2731_charger_set_current_limit.exit.cleanup_crit_edge ], [ %retval.0.i, %sc2731_charger_set_current.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sc2731_charger_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %psp)
  %switch.selectcmp.case1 = icmp eq i32 %psp, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %switch.selectcmp.case2 = icmp eq i32 %psp, 38
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %0 = zext i1 %switch.selectcmp to i32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_get_charger_current(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_sc2731_charger__232_538_sc2731_charger_driver_init6, !1, !"__initcall__kmod_sc2731_charger__232_538_sc2731_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/sc2731_charger.c", i32 538, i32 1}
!2 = !{ptr @__exitcall_sc2731_charger_driver_exit, !1, !"__exitcall_sc2731_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description233, !4, !"__UNIQUE_ID_description233", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/sc2731_charger.c", i32 540, i32 1}
!5 = !{ptr @__UNIQUE_ID_file234, !6, !"__UNIQUE_ID_file234", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/sc2731_charger.c", i32 541, i32 1}
!7 = !{ptr @__UNIQUE_ID_license235, !6, !"__UNIQUE_ID_license235", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/sc2731_charger.c", i32 531, i32 11}
!10 = !{ptr @sc2731_charger_driver, !11, !"sc2731_charger_driver", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/sc2731_charger.c", i32 529, i32 31}
!12 = !{ptr @sc2731_charger_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/sc2731_charger.c", i32 466, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sc2731_charger_probe.__key.2, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/sc2731_charger.c", i32 468, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/sc2731_charger.c", i32 472, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sc2731_charger_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sc2731_charger_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/sc2731_charger.c", i32 476, i32 33}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/sc2731_charger.c", i32 478, i32 3}
!30 = !{ptr @sc2731_charger_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sc2731_charger_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/sc2731_charger.c", i32 488, i32 3}
!34 = !{ptr @sc2731_charger_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sc2731_charger_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/sc2731_charger.c", i32 496, i32 58}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/sc2731_charger.c", i32 498, i32 3}
!40 = !{ptr @sc2731_charger_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sc2731_charger_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/sc2731_charger.c", i32 505, i32 3}
!44 = !{ptr @sc2731_charger_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sc2731_charger_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/sc2731_charger.c", i32 314, i32 12}
!48 = !{ptr @sc2731_charger_desc, !49, !"sc2731_charger_desc", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/sc2731_charger.c", i32 313, i32 39}
!50 = !{ptr @sc2731_usb_props, !51, !"sc2731_usb_props", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/sc2731_charger.c", i32 307, i32 35}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/sc2731_charger.c", i32 220, i32 4}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @sc2731_charger_usb_set_property._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @sc2731_charger_usb_set_property._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/sc2731_charger.c", i32 227, i32 4}
!59 = !{ptr @sc2731_charger_usb_set_property._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sc2731_charger_usb_set_property._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/sc2731_charger.c", i32 383, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sc2731_charger_hw_init._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @sc2731_charger_hw_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @sc2731_charger_of_match, !68, !"sc2731_charger_of_match", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/sc2731_charger.c", i32 523, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{i8 0, i8 2}
