; ModuleID = '/llk/IR_all_yes/drivers/power/supply/da9150-fg.c_pt.bc'
source_filename = "../drivers/power/supply/da9150-fg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.da9150_fg = type { ptr, ptr, %struct.mutex, ptr, %struct.delayed_work, i32, i32, i32, i32 }
%struct.da9150_fg_pdata = type { i32, i8, i8 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_da9150_fg__288_571_da9150_fg_driver_init6 = internal global ptr @da9150_fg_driver_init, section ".initcall6.init", align 4
@da9150_fg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9150_fg_probe, ptr @da9150_fg_remove, ptr null, ptr null, ptr @da9150_fg_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9150_fg_driver_exit = internal global ptr @da9150_fg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [51 x i8] c"da9150_fg.description=Fuel-Gauge Driver for DA9150\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [68 x i8] c"da9150_fg.author=Adam Thomson <Adam.Thomson.Opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [46 x i8] c"da9150_fg.file=drivers/power/supply/da9150-fg\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"da9150_fg.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9150-fuel-gauge\00", [46 x i8] zeroinitializer }, align 32
@da9150_fg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&fg->io_lock\00", [19 x i8] zeroinitializer }, align 32
@fg_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.26, i32 1, ptr null, i32 0, ptr @da9150_fg_props, i32 5, ptr @da9150_fg_get_prop, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@da9150_fg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Version: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9150_fg_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/power/supply/da9150-fg.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9150_fg_probe._entry_ptr = internal global ptr @da9150_fg_probe._entry, section ".printk_index", align 4
@da9150_fg_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 488, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid SOC warning level provided, Ignoring\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da9150_fg_probe._entry_ptr.10 = internal global ptr @da9150_fg_probe._entry.7, section ".printk_index", align 4
@da9150_fg_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 494, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid SOC critical level provided, Ignoring\00", [50 x i8] zeroinitializer }, align 32
@da9150_fg_probe._entry_ptr.13 = internal global ptr @da9150_fg_probe._entry.11, section ".printk_index", align 4
@da9150_fg_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&fg->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@da9150_fg_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&fg->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FG\00", [29 x i8] zeroinitializer }, align 32
@da9150_fg_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 517, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get IRQ FG: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@da9150_fg_probe._entry_ptr.22 = internal global ptr @da9150_fg_probe._entry.19, section ".printk_index", align 4
@da9150_fg_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 525, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@da9150_fg_probe._entry_ptr.25 = internal global ptr @da9150_fg_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"da9150-fg\00", [22 x i8] zeroinitializer }, align 32
@da9150_fg_props = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 47, i32 18, i32 13, i32 24, i32 52], [44 x i8] zeroinitializer }, align 32
@da9150_fg_read_sync_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 150, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to perform QIF read sync!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"da9150_fg_read_sync_start\00", [38 x i8] zeroinitializer }, align 32
@da9150_fg_read_sync_start._entry_ptr = internal global ptr @da9150_fg_read_sync_start._entry, section ".printk_index", align 4
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlg,update-interval\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlg,warn-soc-level\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlg,crit-soc-level\00", [45 x i8] zeroinitializer }, align 32
@da9150_fg_write_attr_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 196, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Timeout waiting for existing QIF sync!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"da9150_fg_write_attr_sync\00", [38 x i8] zeroinitializer }, align 32
@da9150_fg_write_attr_sync._entry_ptr = internal global ptr @da9150_fg_write_attr_sync._entry, section ".printk_index", align 4
@da9150_fg_write_attr_sync._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 219, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error performing QIF sync write for code %d\0A\00", [51 x i8] zeroinitializer }, align 32
@da9150_fg_write_attr_sync._entry_ptr.36 = internal global ptr @da9150_fg_write_attr_sync._entry.34, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 13, i64 18, i64 24, i64 47, i64 52]
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"da9150_fg_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 562, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 564, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 461, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"fg_desc\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 437, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 475, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 488, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 494, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 509, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 515, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 517, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 525, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 438, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"da9150_fg_props\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 301, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 150, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 427, i32 32 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 429, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 431, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 196, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [36 x i8] c"../drivers/power/supply/da9150-fg.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 218, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_da9150_fg_driver_exit, ptr @__initcall__kmod_da9150_fg__288_571_da9150_fg_driver_init6, ptr @da9150_fg_driver_exit, ptr @da9150_fg_probe._entry, ptr @da9150_fg_probe._entry.11, ptr @da9150_fg_probe._entry.19, ptr @da9150_fg_probe._entry.23, ptr @da9150_fg_probe._entry.7, ptr @da9150_fg_probe._entry_ptr, ptr @da9150_fg_probe._entry_ptr.10, ptr @da9150_fg_probe._entry_ptr.13, ptr @da9150_fg_probe._entry_ptr.22, ptr @da9150_fg_probe._entry_ptr.25, ptr @da9150_fg_read_sync_start._entry, ptr @da9150_fg_read_sync_start._entry_ptr, ptr @da9150_fg_write_attr_sync._entry, ptr @da9150_fg_write_attr_sync._entry.34, ptr @da9150_fg_write_attr_sync._entry_ptr, ptr @da9150_fg_write_attr_sync._entry_ptr.36, ptr @da9150_fg_driver, ptr @.str, ptr @da9150_fg_probe.__key, ptr @.str.1, ptr @fg_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @da9150_fg_probe.__key.14, ptr @.str.15, ptr @da9150_fg_probe.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @da9150_fg_props, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fg_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_props to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_read_sync_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_write_attr_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9150_fg_write_attr_sync._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_fg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9150_fg_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9150_fg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9150_fg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_fg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 220, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %call.i, align 4
  %dev5 = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %dev5, align 4
  %io_lock = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %io_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @da9150_fg_probe.__key) #6
  tail call void @da9150_set_bits(ptr noundef %3, i16 noundef zeroext 785, i8 noundef zeroext 2, i8 noundef zeroext 2) #6
  %call6 = tail call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @fg_desc, ptr noundef null) #6
  %battery = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %battery, align 4
  %cmp.i159 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %buf.i, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  call void @da9150_read_qif(ptr noundef %13, i8 noundef zeroext 118, i32 noundef 2, ptr noundef nonnull %buf.i) #6
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf.i, align 4
  %conv5.i = zext i8 %15 to i32
  %arrayidx.i.1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.1, align 1
  %conv5.i.1 = zext i8 %17 to i32
  %shl.i.1 = shl nuw nsw i32 %conv5.i.1, 8
  %or6.i.1 = or i32 %shl.i.1, %conv5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %or6.i.1) #9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.end12.if.end19_crit_edge, label %if.then17

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %if.end12
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then17.da9150_fg_dt_pdata.exit_crit_edge, label %if.end.i160

if.then17.da9150_fg_dt_pdata.exit_crit_edge:      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9150_fg_dt_pdata.exit

if.end.i160:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #6
  %warn_soc_lvl.i = getelementptr inbounds %struct.da9150_fg_pdata, ptr %call.i.i, i32 0, i32 1
  %call.i.i12.i = call i32 @of_property_read_variable_u8_array(ptr noundef %21, ptr noundef nonnull @.str.30, ptr noundef %warn_soc_lvl.i, i32 noundef 1, i32 noundef 0) #6
  %crit_soc_lvl.i = getelementptr inbounds %struct.da9150_fg_pdata, ptr %call.i.i, i32 0, i32 2
  %call.i.i13.i = call i32 @of_property_read_variable_u8_array(ptr noundef %21, ptr noundef nonnull @.str.31, ptr noundef %crit_soc_lvl.i, i32 noundef 1, i32 noundef 0) #6
  br label %da9150_fg_dt_pdata.exit

da9150_fg_dt_pdata.exit:                          ; preds = %if.end.i160, %if.then17.da9150_fg_dt_pdata.exit_crit_edge
  %22 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %platform_data.i, align 8
  br label %if.end19

if.end19:                                         ; preds = %da9150_fg_dt_pdata.exit, %if.end12.if.end19_crit_edge
  %fg_pdata.0 = phi ptr [ %call.i.i, %da9150_fg_dt_pdata.exit ], [ %5, %if.end12.if.end19_crit_edge ]
  %tobool20.not = icmp eq ptr %fg_pdata.0, null
  br i1 %tobool20.not, label %if.end19.if.end48_crit_edge, label %if.then21

if.end19.if.end48_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then21:                                        ; preds = %if.end19
  %23 = ptrtoint ptr %fg_pdata.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fg_pdata.0, align 4
  %interval = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %interval, align 4
  %warn_soc_lvl = getelementptr inbounds %struct.da9150_fg_pdata, ptr %fg_pdata.0, i32 0, i32 1
  %26 = ptrtoint ptr %warn_soc_lvl to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %warn_soc_lvl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %27)
  %cmp22 = icmp ugt i8 %27, 100
  br i1 %cmp22, label %do.end27, label %if.else

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %if.end30

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %27 to i32
  %warn_soc = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %warn_soc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %warn_soc, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %do.end27
  %crit_soc_lvl = getelementptr inbounds %struct.da9150_fg_pdata, ptr %fg_pdata.0, i32 0, i32 2
  %29 = ptrtoint ptr %crit_soc_lvl to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %crit_soc_lvl, align 1
  %conv31 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %30)
  %cmp32 = icmp ugt i8 %30, 100
  br i1 %cmp32, label %if.end30.do.end43_crit_edge, label %lor.lhs.false

if.end30.do.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

lor.lhs.false:                                    ; preds = %if.end30
  %31 = ptrtoint ptr %warn_soc_lvl to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %warn_soc_lvl, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp38.not = icmp ult i8 %30, %32
  br i1 %cmp38.not, label %if.else44, label %lor.lhs.false.do.end43_crit_edge

lor.lhs.false.do.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

do.end43:                                         ; preds = %lor.lhs.false.do.end43_crit_edge, %if.end30.do.end43_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %if.end48

if.else44:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %crit_soc = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %crit_soc to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv31, ptr %crit_soc, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %do.end43, %if.end19.if.end48_crit_edge
  call fastcc void @da9150_fg_soc_event_config(ptr noundef nonnull %call.i)
  %interval49 = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %interval49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %interval49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool50.not = icmp eq i32 %35, 0
  br i1 %tobool50.not, label %if.end48.if.end76_crit_edge, label %do.body53

if.end48.if.end76_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.body53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 4
  call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %36 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @da9150_fg_probe.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry61 = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %37 = ptrtoint ptr %entry61 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry61, ptr %entry61, align 4
  %prev.i = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry61, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %39 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @da9150_fg_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 4, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.17, ptr noundef nonnull @da9150_fg_probe.__key.16) #6
  %40 = ptrtoint ptr %interval49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %interval49, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %41) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i161 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %work, i32 noundef %call2.i) #6
  br label %if.end76

if.end76:                                         ; preds = %do.body53, %if.end48.if.end76_crit_edge
  %call77 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end83, label %if.end84

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call77) #9
  br label %irq_fail

if.end84:                                         ; preds = %if.end76
  %call85 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call77, ptr noundef null, ptr noundef nonnull @da9150_fg_irq, i32 noundef 8192, ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end84.cleanup_crit_edge, label %do.end90

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call77, i32 noundef %call85) #9
  br label %irq_fail

irq_fail:                                         ; preds = %do.end90, %do.end83
  %ret.0 = phi i32 [ %call77, %do.end83 ], [ %call85, %do.end90 ]
  %43 = ptrtoint ptr %interval49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %interval49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool93.not = icmp eq i32 %44, 0
  br i1 %tobool93.not, label %irq_fail.cleanup_crit_edge, label %if.then94

irq_fail.cleanup_crit_edge:                       ; preds = %irq_fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then94:                                        ; preds = %irq_fail
  call void @__sanitizer_cov_trace_pc() #8
  %work95 = getelementptr inbounds %struct.da9150_fg, ptr %call.i, i32 0, i32 4
  %call96 = call zeroext i1 @cancel_delayed_work(ptr noundef %work95) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %irq_fail.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then9 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ], [ %ret.0, %if.then94 ], [ %ret.0, %irq_fail.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_fg_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %interval = getelementptr inbounds %struct.da9150_fg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.da9150_fg, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_fg_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %interval = getelementptr inbounds %struct.da9150_fg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.da9150_fg, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @flush_delayed_work(ptr noundef %work) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @da9150_set_bits(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @da9150_fg_soc_event_config(ptr noundef %fg) unnamed_addr #2 align 64 {
entry:
  %buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @da9150_fg_read_sync_start(ptr noundef %fg) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #6
  %0 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i.i, align 4
  %1 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fg, align 4
  call void @da9150_read_qif(ptr noundef %2, i8 noundef zeroext 43, i32 noundef 2, ptr noundef nonnull %buf.i.i) #6
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.i.i, align 4
  %conv5.i.i = zext i8 %4 to i32
  %arrayidx.i.i.1 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.1, align 1
  %conv5.i.i.1 = zext i8 %6 to i32
  %shl.i.i.1 = shl nuw nsw i32 %conv5.i.i.1, 8
  %or6.i.i.1 = or i32 %shl.i.i.1, %conv5.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #6
  %io_lock.i.i = getelementptr inbounds %struct.da9150_fg, ptr %fg, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %io_lock.i.i) #6
  %warn_soc = getelementptr inbounds %struct.da9150_fg, ptr %fg, i32 0, i32 6
  %7 = ptrtoint ptr %warn_soc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %warn_soc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i.i.1, i32 %8)
  %cmp = icmp sgt i32 %or6.i.i.1, %8
  br i1 %cmp, label %if.then, label %land.lhs.true

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nsw i32 %8, 1
  call fastcc void @da9150_fg_write_attr_sync(ptr noundef %fg, i8 noundef zeroext 45, i32 noundef %add)
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %crit_soc = getelementptr inbounds %struct.da9150_fg, ptr %fg, i32 0, i32 7
  %9 = ptrtoint ptr %crit_soc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crit_soc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i.i.1, i32 %10)
  %cmp4 = icmp sgt i32 %or6.i.i.1, %10
  br i1 %cmp4, label %if.then5, label %if.then12

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add7 = add nsw i32 %10, 1
  call fastcc void @da9150_fg_write_attr_sync(ptr noundef %fg, i8 noundef zeroext 45, i32 noundef %add7)
  %11 = ptrtoint ptr %warn_soc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %warn_soc, align 4
  call fastcc void @da9150_fg_write_attr_sync(ptr noundef %fg, i8 noundef zeroext 44, i32 noundef %12)
  br label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @da9150_fg_write_attr_sync(ptr noundef %fg, i8 noundef zeroext 44, i32 noundef %10)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9150_fg_work(ptr noundef %work) #2 align 64 {
entry:
  %buf.i.i.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  tail call fastcc void @da9150_fg_read_sync_start(ptr noundef %add.ptr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i.i) #6
  %0 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i.i.i.i, align 4
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  call void @da9150_read_qif(ptr noundef %2, i8 noundef zeroext 43, i32 noundef 2, ptr noundef nonnull %buf.i.i.i.i) #6
  %3 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.i.i.i.i, align 4
  %conv5.i.i.i.i = zext i8 %4 to i32
  %arrayidx.i.i.1.i.i = getelementptr inbounds [4 x i8], ptr %buf.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.1.i.i, align 1
  %conv5.i.i.1.i.i = zext i8 %6 to i32
  %shl.i.i.1.i.i = shl nuw nsw i32 %conv5.i.i.1.i.i, 8
  %or6.i.i.1.i.i = or i32 %shl.i.i.1.i.i, %conv5.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i.i) #6
  %io_lock.i.i.i.i = getelementptr i8, ptr %work, i32 -96
  call void @mutex_unlock(ptr noundef %io_lock.i.i.i.i) #6
  %7 = call i32 @llvm.smin.i32(i32 %or6.i.i.1.i.i, i32 100) #6
  %soc.i = getelementptr i8, ptr %work, i32 112
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %soc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i = icmp eq i32 %7, %9
  br i1 %cmp.not.i, label %entry.if.else.i_crit_edge, label %if.then

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %soc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %soc.i, align 4
  %battery = getelementptr i8, ptr %work, i32 -4
  %11 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %battery, align 4
  call void @power_supply_changed(ptr noundef %12) #6
  br label %if.else.i

if.else.i:                                        ; preds = %if.then, %entry.if.else.i_crit_edge
  %interval = getelementptr i8, ptr %work, i32 100
  %13 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %interval, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %14) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work, i32 noundef %call2.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_fg_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %buf.i4 = alloca [4 x i8], align 1
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  call void @da9150_read_qif(ptr noundef %2, i8 noundef zeroext 126, i32 noundef 2, ptr noundef nonnull %buf.i) #6
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.i, align 4
  %arrayidx.i.1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.1, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  %7 = and i8 %4, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @da9150_fg_soc_event_config(ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i4) #6
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i4, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %buf.i4, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 -1, ptr %9, align 1
  %11 = ptrtoint ptr %buf.i4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %4, ptr %buf.i4, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %6, ptr %8, align 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  call void @da9150_write_qif(ptr noundef %14, i8 noundef zeroext -2, i32 noundef 2, ptr noundef nonnull %buf.i4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i4) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9150_fg_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %buf.i.i.i36 = alloca [4 x i8], align 4
  %buf.i.i.i28 = alloca [4 x i8], align 4
  %buf.i.i.i18 = alloca [4 x i8], align 4
  %buf.i16.i = alloca [4 x i8], align 4
  %buf.i4.i = alloca [4 x i8], align 4
  %buf.i.i = alloca [4 x i8], align 4
  %buf.i.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 47, label %sw.bb
    i32 18, label %sw.bb2
    i32 13, label %sw.bb4
    i32 24, label %sw.bb6
    i32 52, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @da9150_fg_read_sync_start(ptr noundef %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #6
  %5 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buf.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  call void @da9150_read_qif(ptr noundef %7, i8 noundef zeroext 43, i32 noundef 2, ptr noundef nonnull %buf.i.i.i) #6
  %8 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf.i.i.i, align 4
  %conv5.i.i.i = zext i8 %9 to i32
  %arrayidx.i.i.1.i = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.1.i, align 1
  %conv5.i.i.1.i = zext i8 %11 to i32
  %shl.i.i.1.i = shl nuw nsw i32 %conv5.i.i.1.i, 8
  %or6.i.i.1.i = or i32 %shl.i.i.1.i, %conv5.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #6
  %io_lock.i.i.i = getelementptr inbounds %struct.da9150_fg, ptr %3, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %io_lock.i.i.i) #6
  %12 = call i32 @llvm.smin.i32(i32 %or6.i.i.1.i, i32 100) #6
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  tail call fastcc void @da9150_fg_read_sync_start(ptr noundef %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #6
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %buf.i.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  call void @da9150_read_qif(ptr noundef %15, i8 noundef zeroext 8, i32 noundef 4, ptr noundef nonnull %buf.i.i) #6
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf.i.i, align 4
  %arrayidx.i.1.i = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.1.i, align 1
  %conv5.i.1.i = zext i8 %19 to i32
  %shl.i.1.i = shl nuw nsw i32 %conv5.i.1.i, 8
  %arrayidx.i.2.i = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.2.i, align 2
  %conv5.i.2.i = zext i8 %21 to i32
  %shl.i.2.i = shl nuw nsw i32 %conv5.i.2.i, 16
  %arrayidx.i.3.i = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.3.i, align 1
  %conv5.i.3.i = zext i8 %23 to i32
  %shl.i.3.i = shl nuw i32 %conv5.i.3.i, 24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i4.i) #6
  %24 = ptrtoint ptr %buf.i4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %buf.i4.i, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  call void @da9150_read_qif(ptr noundef %26, i8 noundef zeroext 36, i32 noundef 2, ptr noundef nonnull %buf.i4.i) #6
  %27 = ptrtoint ptr %buf.i4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf.i4.i, align 4
  %arrayidx.i7.1.i = getelementptr inbounds [4 x i8], ptr %buf.i4.i, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.i7.1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i7.1.i, align 1
  %conv5.i8.1.i = zext i8 %30 to i32
  %shl.i10.1.i = shl nuw nsw i32 %conv5.i8.1.i, 8
  %conv5.i.i = zext i8 %17 to i32
  %or6.i.1.i = or i32 %shl.i.1.i, %conv5.i.i
  %or6.i.2.i = or i32 %or6.i.1.i, %shl.i.2.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i4.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i16.i) #6
  %31 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %buf.i16.i, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  call void @da9150_read_qif(ptr noundef %33, i8 noundef zeroext 38, i32 noundef 4, ptr noundef nonnull %buf.i16.i) #6
  %34 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf.i16.i, align 4
  %conv5.i20.i = zext i8 %35 to i32
  %arrayidx.i19.1.i = getelementptr inbounds [4 x i8], ptr %buf.i16.i, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx.i19.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i19.1.i, align 1
  %conv5.i20.1.i = zext i8 %37 to i32
  %shl.i22.1.i = shl nuw nsw i32 %conv5.i20.1.i, 8
  %or6.i23.1.i = or i32 %shl.i22.1.i, %conv5.i20.i
  %arrayidx.i19.2.i = getelementptr inbounds [4 x i8], ptr %buf.i16.i, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx.i19.2.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i19.2.i, align 2
  %conv5.i20.2.i = zext i8 %39 to i32
  %shl.i22.2.i = shl nuw nsw i32 %conv5.i20.2.i, 16
  %or6.i23.2.i = or i32 %or6.i23.1.i, %shl.i22.2.i
  %arrayidx.i19.3.i = getelementptr inbounds [4 x i8], ptr %buf.i16.i, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx.i19.3.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i19.3.i, align 1
  %conv5.i20.3.i = zext i8 %41 to i32
  %shl.i22.3.i = shl nuw i32 %conv5.i20.3.i, 24
  %or6.i23.3.i = or i32 %or6.i23.2.i, %shl.i22.3.i
  %conv5.i8.i = zext i8 %28 to i32
  %or6.i11.1.i = or i32 %shl.i10.1.i, %conv5.i8.i
  %or6.i.3.i = or i32 %or6.i.2.i, %shl.i.3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i16.i) #6
  %io_lock.i.i = getelementptr inbounds %struct.da9150_fg, ptr %3, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %io_lock.i.i) #6
  %mul.i = mul i32 %or6.i23.3.i, %or6.i11.1.i
  %conv.i = zext i32 %mul.i to i64
  %mul3.i = shl nuw nsw i64 %conv.i, 16
  %42 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul3.i) #10, !srcloc !85
  %43 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul3.i, i64 %42, i32 0) #10, !srcloc !86
  %asmresult10.i.i = extractvalue { i64, i32 } %43, 0
  %div1661.i = lshr i64 %asmresult10.i.i, 18
  %extract.t2.i = trunc i64 %div1661.i to i32
  %conv188.i = zext i32 %or6.i.3.i to i64
  %mul189.i = mul nuw nsw i64 %conv188.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul189.i)
  %cmp392.i = icmp ult i64 %mul189.i, 4294967296
  br i1 %cmp392.i, label %if.then400.i, label %if.else406.i, !prof !87

if.then400.i:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %conv401.i = trunc i64 %mul189.i to i32
  %div404.i = udiv i32 %conv401.i, %extract.t2.i
  br label %sw.epilog.sink.split

if.else406.i:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %44 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %extract.t2.i, i64 %mul189.i) #10, !srcloc !88
  %asmresult1.i.i = extractvalue { i64, i64 } %44, 1
  %extract.t53.i = trunc i64 %asmresult1.i.i to i32
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @da9150_fg_read_sync_start(ptr noundef %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i18) #6
  %45 = ptrtoint ptr %buf.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %buf.i.i.i18, align 4
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  call void @da9150_read_qif(ptr noundef %47, i8 noundef zeroext 6, i32 noundef 4, ptr noundef nonnull %buf.i.i.i18) #6
  %48 = ptrtoint ptr %buf.i.i.i18 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buf.i.i.i18, align 4
  %conv5.i.i.i19 = zext i8 %49 to i32
  %arrayidx.i.i.1.i20 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i18, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx.i.i.1.i20 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i.1.i20, align 1
  %conv5.i.i.1.i21 = zext i8 %51 to i32
  %shl.i.i.1.i22 = shl nuw nsw i32 %conv5.i.i.1.i21, 8
  %or6.i.i.1.i23 = or i32 %shl.i.i.1.i22, %conv5.i.i.i19
  %arrayidx.i.i.2.i = getelementptr inbounds [4 x i8], ptr %buf.i.i.i18, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx.i.i.2.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i.2.i, align 2
  %conv5.i.i.2.i = zext i8 %53 to i32
  %shl.i.i.2.i = shl nuw nsw i32 %conv5.i.i.2.i, 16
  %or6.i.i.2.i = or i32 %or6.i.i.1.i23, %shl.i.i.2.i
  %arrayidx.i.i.3.i = getelementptr inbounds [4 x i8], ptr %buf.i.i.i18, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx.i.i.3.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i.3.i, align 1
  %conv5.i.i.3.i = zext i8 %55 to i32
  %shl.i.i.3.i = shl nuw i32 %conv5.i.i.3.i, 24
  %or6.i.i.3.i = or i32 %or6.i.i.2.i, %shl.i.i.3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i18) #6
  %io_lock.i.i.i24 = getelementptr inbounds %struct.da9150_fg, ptr %3, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %io_lock.i.i.i24) #6
  %conv.i25 = sext i32 %or6.i.i.3.i to i64
  %mul.i26 = mul nsw i64 %conv.i25, 186
  %56 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %mul.i26) #10, !srcloc !85
  %57 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %mul.i26, i64 %56) #10, !srcloc !89
  %div1621.i = lshr i64 %57, 11
  %extract.t2.i27 = trunc i64 %div1621.i to i32
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @da9150_fg_read_sync_start(ptr noundef %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i28) #6
  %58 = ptrtoint ptr %buf.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %buf.i.i.i28, align 4
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  call void @da9150_read_qif(ptr noundef %60, i8 noundef zeroext 40, i32 noundef 2, ptr noundef nonnull %buf.i.i.i28) #6
  %61 = ptrtoint ptr %buf.i.i.i28 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %buf.i.i.i28, align 4
  %conv5.i.i.i29 = zext i8 %62 to i32
  %arrayidx.i.i.1.i30 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i28, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx.i.i.1.i30 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.i.1.i30, align 1
  %conv5.i.i.1.i31 = zext i8 %64 to i32
  %shl.i.i.1.i32 = shl nuw nsw i32 %conv5.i.i.1.i31, 8
  %or6.i.i.1.i33 = or i32 %shl.i.i.1.i32, %conv5.i.i.i29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i28) #6
  %io_lock.i.i.i34 = getelementptr inbounds %struct.da9150_fg, ptr %3, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %io_lock.i.i.i34) #6
  %mul.i35 = mul nuw nsw i32 %or6.i.i.1.i33, 1000
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @da9150_fg_read_sync_start(ptr noundef %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i36) #6
  %65 = ptrtoint ptr %buf.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %buf.i.i.i36, align 4
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 4
  call void @da9150_read_qif(ptr noundef %67, i8 noundef zeroext 12, i32 noundef 4, ptr noundef nonnull %buf.i.i.i36) #6
  %68 = ptrtoint ptr %buf.i.i.i36 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %buf.i.i.i36, align 4
  %conv5.i.i.i37 = zext i8 %69 to i32
  %arrayidx.i.i.1.i38 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i36, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx.i.i.1.i38 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i.1.i38, align 1
  %conv5.i.i.1.i39 = zext i8 %71 to i32
  %shl.i.i.1.i40 = shl nuw nsw i32 %conv5.i.i.1.i39, 8
  %or6.i.i.1.i41 = or i32 %shl.i.i.1.i40, %conv5.i.i.i37
  %arrayidx.i.i.2.i42 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i36, i32 0, i32 2
  %72 = ptrtoint ptr %arrayidx.i.i.2.i42 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i.2.i42, align 2
  %conv5.i.i.2.i43 = zext i8 %73 to i32
  %shl.i.i.2.i44 = shl nuw nsw i32 %conv5.i.i.2.i43, 16
  %or6.i.i.2.i45 = or i32 %or6.i.i.1.i41, %shl.i.i.2.i44
  %arrayidx.i.i.3.i46 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i36, i32 0, i32 3
  %74 = ptrtoint ptr %arrayidx.i.i.3.i46 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.i.3.i46, align 1
  %conv5.i.i.3.i47 = zext i8 %75 to i32
  %shl.i.i.3.i48 = shl nuw i32 %conv5.i.i.3.i47, 24
  %or6.i.i.3.i49 = or i32 %or6.i.i.2.i45, %shl.i.i.3.i48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i36) #6
  %io_lock.i.i.i50 = getelementptr inbounds %struct.da9150_fg, ptr %3, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %io_lock.i.i.i50) #6
  %mul.i51 = mul i32 %or6.i.i.3.i49, 10
  %div.i = sdiv i32 %mul.i51, 1048576
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %if.else406.i, %if.then400.i, %sw.bb
  %div.i.sink = phi i32 [ %div.i, %sw.bb8 ], [ %mul.i35, %sw.bb6 ], [ %extract.t2.i27, %sw.bb4 ], [ %12, %sw.bb ], [ %div404.i, %if.then400.i ], [ %extract.t53.i, %if.else406.i ]
  %76 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div.i.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @da9150_fg_read_sync_start(ptr noundef %fg) unnamed_addr #2 align 64 {
entry:
  %buf.i14 = alloca [4 x i8], align 4
  %buf.i13 = alloca [4 x i8], align 1
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lock = getelementptr inbounds %struct.da9150_fg, ptr %fg, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i, align 4
  %1 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fg, align 4
  call void @da9150_read_qif(ptr noundef %2, i8 noundef zeroext 127, i32 noundef 2, ptr noundef nonnull %buf.i) #6
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.i, align 4
  %conv5.i = zext i8 %4 to i32
  %arrayidx.i.1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.1, align 1
  %conv5.i.1 = zext i8 %6 to i32
  %shl.i.1 = shl nuw nsw i32 %conv5.i.1, 8
  %or6.i.1 = or i32 %shl.i.1, %conv5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i.1)
  %cmp.not = icmp eq i32 %or6.i.1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i13) #6
  %7 = getelementptr inbounds [4 x i8], ptr %buf.i13, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %buf.i13, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 -1, ptr %8, align 1
  %10 = ptrtoint ptr %buf.i13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %buf.i13, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %7, align 1
  %12 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fg, align 4
  call void @da9150_write_qif(ptr noundef %13, i8 noundef zeroext -1, i32 noundef 2, ptr noundef nonnull %buf.i13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i17.1 = getelementptr inbounds [4 x i8], ptr %buf.i14, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end
  %i.026 = phi i32 [ 0, %if.end ], [ %inc, %while.body.while.body_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i14) #6
  %14 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %buf.i14, align 4
  %15 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fg, align 4
  call void @da9150_read_qif(ptr noundef %16, i8 noundef zeroext 127, i32 noundef 2, ptr noundef nonnull %buf.i14) #6
  %17 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf.i14, align 4
  %conv5.i18 = zext i8 %18 to i32
  %19 = ptrtoint ptr %arrayidx.i17.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i17.1, align 1
  %conv5.i18.1 = zext i8 %20 to i32
  %shl.i20.1 = shl nuw nsw i32 %conv5.i18.1, 8
  %or6.i21.1 = or i32 %shl.i20.1, %conv5.i18
  %inc = add nuw nsw i32 %i.026, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i21.1)
  %cmp1 = icmp eq i32 %or6.i21.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.026)
  %cmp2 = icmp ult i32 %i.026, 9
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %cmp1, label %do.end, label %while.end.if.end6_crit_edge

while.end.if.end6_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.da9150_fg, ptr %fg, i32 0, i32 1
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.27) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %while.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @da9150_write_qif(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @da9150_read_qif(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @da9150_fg_write_attr_sync(ptr noundef %fg, i8 noundef zeroext %code, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %buf.i16 = alloca [4 x i8], align 4
  %buf.i14 = alloca [4 x i8], align 1
  %buf.i2 = alloca [4 x i8], align 4
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lock = getelementptr inbounds %struct.da9150_fg, ptr %fg, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i, align 4
  %1 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fg, align 4
  call void @da9150_read_qif(ptr noundef %2, i8 noundef zeroext 127, i32 noundef 2, ptr noundef nonnull %buf.i) #6
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.i, align 4
  %conv5.i = zext i8 %4 to i32
  %arrayidx.i.1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.1, align 1
  %conv5.i.1 = zext i8 %6 to i32
  %shl.i.1 = shl nuw nsw i32 %conv5.i.1, 8
  %or6.i.1 = or i32 %shl.i.1, %conv5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i.1)
  %cmp28 = icmp eq i32 %or6.i.1, 0
  br i1 %cmp28, label %while.body.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.preheader:                             ; preds = %entry
  %arrayidx.i5.1 = getelementptr inbounds [4 x i8], ptr %buf.i2, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %i.029 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.body.preheader ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i2) #6
  %7 = ptrtoint ptr %buf.i2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf.i2, align 4
  %8 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fg, align 4
  call void @da9150_read_qif(ptr noundef %9, i8 noundef zeroext 127, i32 noundef 2, ptr noundef nonnull %buf.i2) #6
  %10 = ptrtoint ptr %buf.i2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.i2, align 4
  %conv5.i6 = zext i8 %11 to i32
  %12 = ptrtoint ptr %arrayidx.i5.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i5.1, align 1
  %conv5.i6.1 = zext i8 %13 to i32
  %shl.i8.1 = shl nuw nsw i32 %conv5.i6.1, 8
  %or6.i9.1 = or i32 %shl.i8.1, %conv5.i6
  %inc = add nuw nsw i32 %i.029, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i9.1)
  %cmp = icmp eq i32 %or6.i9.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.029)
  %cmp1 = icmp ult i32 %i.029, 9
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %cmp, label %do.end, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.da9150_fg, ptr %fg, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.32) #9
  call void @mutex_unlock(ptr noundef %io_lock) #6
  br label %cleanup

if.end:                                           ; preds = %while.end.if.end_crit_edge, %entry.if.end_crit_edge
  %res.0.lcssa35 = phi i32 [ %or6.i9.1, %while.end.if.end_crit_edge ], [ %or6.i.1, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i14) #6
  %16 = getelementptr inbounds [4 x i8], ptr %buf.i14, i32 0, i32 1
  %conv5.i15 = trunc i32 %val to i8
  %17 = getelementptr inbounds i8, ptr %buf.i14, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 -1, ptr %17, align 1
  %19 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5.i15, ptr %buf.i14, align 1
  %shr.1.i = lshr i32 %val, 8
  %conv5.1.i = trunc i32 %shr.1.i to i8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv5.1.i, ptr %16, align 1
  %21 = or i8 %code, -128
  %22 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fg, align 4
  call void @da9150_write_qif(ptr noundef %23, i8 noundef zeroext %21, i32 noundef 2, ptr noundef nonnull %buf.i14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i14) #6
  %arrayidx.i19.1 = getelementptr inbounds [4 x i8], ptr %buf.i16, i32 0, i32 1
  br label %while.body11

while.body11:                                     ; preds = %while.body11.while.body11_crit_edge, %if.end
  %i.131 = phi i32 [ 0, %if.end ], [ %inc8, %while.body11.while.body11_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i16) #6
  %24 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %buf.i16, align 4
  %25 = ptrtoint ptr %fg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fg, align 4
  call void @da9150_read_qif(ptr noundef %26, i8 noundef zeroext 127, i32 noundef 2, ptr noundef nonnull %buf.i16) #6
  %27 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf.i16, align 4
  %conv5.i20 = zext i8 %28 to i32
  %29 = ptrtoint ptr %arrayidx.i19.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i19.1, align 1
  %conv5.i20.1 = zext i8 %30 to i32
  %shl.i22.1 = shl nuw nsw i32 %conv5.i20.1, 8
  %or6.i23.1 = or i32 %shl.i22.1, %conv5.i20
  %inc8 = add nuw nsw i32 %i.131, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i16) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i23.1, i32 %res.0.lcssa35)
  %cmp6 = icmp eq i32 %or6.i23.1, %res.0.lcssa35
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.131)
  %cmp9 = icmp ult i32 %i.131, 9
  %or.cond1 = select i1 %cmp6, i1 %cmp9, i1 false
  br i1 %or.cond1, label %while.body11.while.body11_crit_edge, label %while.end13

while.body11.while.body11_crit_edge:              ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body11

while.end13:                                      ; preds = %while.body11
  call void @mutex_unlock(ptr noundef %io_lock) #6
  %add = add nsw i32 %res.0.lcssa35, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i23.1, i32 %add)
  %cmp15.not = icmp eq i32 %or6.i23.1, %add
  br i1 %cmp15.not, label %while.end13.cleanup_crit_edge, label %do.end19

while.end13.cleanup_crit_edge:                    ; preds = %while.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end19:                                         ; preds = %while.end13
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.da9150_fg, ptr %fg, i32 0, i32 1
  %31 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev20, align 4
  %conv = zext i8 %code to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.35, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %while.end13.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_da9150_fg__288_571_da9150_fg_driver_init6, !1, !"__initcall__kmod_da9150_fg__288_571_da9150_fg_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/da9150-fg.c", i32 571, i32 1}
!2 = !{ptr @__exitcall_da9150_fg_driver_exit, !1, !"__exitcall_da9150_fg_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/da9150-fg.c", i32 573, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/da9150-fg.c", i32 574, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/da9150-fg.c", i32 575, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/da9150-fg.c", i32 564, i32 11}
!12 = !{ptr @da9150_fg_driver, !13, !"da9150_fg_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/da9150-fg.c", i32 562, i32 31}
!14 = !{ptr @da9150_fg_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/da9150-fg.c", i32 461, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/da9150-fg.c", i32 475, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @da9150_fg_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @da9150_fg_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/da9150-fg.c", i32 488, i32 4}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @da9150_fg_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @da9150_fg_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/da9150-fg.c", i32 494, i32 4}
!32 = !{ptr @da9150_fg_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @da9150_fg_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @da9150_fg_probe.__key.14, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/da9150-fg.c", i32 509, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @da9150_fg_probe.__key.16, !35, !"__key", i1 false, i1 false}
!38 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/da9150-fg.c", i32 515, i32 38}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/da9150-fg.c", i32 517, i32 3}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @da9150_fg_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @da9150_fg_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/da9150-fg.c", i32 525, i32 3}
!48 = !{ptr @da9150_fg_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @da9150_fg_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/da9150-fg.c", i32 438, i32 11}
!52 = !{ptr @fg_desc, !53, !"fg_desc", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/da9150-fg.c", i32 437, i32 39}
!54 = !{ptr @da9150_fg_props, !55, !"da9150_fg_props", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/da9150-fg.c", i32 301, i32 35}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/da9150-fg.c", i32 150, i32 3}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @da9150_fg_read_sync_start._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @da9150_fg_read_sync_start._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/da9150-fg.c", i32 427, i32 32}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/da9150-fg.c", i32 429, i32 31}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/da9150-fg.c", i32 431, i32 31}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/da9150-fg.c", i32 196, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @da9150_fg_write_attr_sync._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @da9150_fg_write_attr_sync._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/da9150-fg.c", i32 218, i32 3}
!74 = !{ptr @da9150_fg_write_attr_sync._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @da9150_fg_write_attr_sync._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 1126967, i64 1126994}
!86 = !{i64 1127662, i64 1127689, i64 1127722, i64 1127743, i64 1127770, i64 1127796}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2148612798, i64 2148613078, i64 2148613412, i64 2148613746}
!89 = !{i64 1127477, i64 1127504, i64 1127538, i64 1127559}
