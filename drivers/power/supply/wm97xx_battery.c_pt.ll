; ModuleID = '/llk/IR_all_yes/drivers/power/supply/wm97xx_battery.c_pt.bc'
source_filename = "../drivers/power/supply/wm97xx_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wm97xx_batt_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_wm97xx_battery__239_272_wm97xx_bat_driver_init6 = internal global ptr @wm97xx_bat_driver_init, section ".initcall6.init", align 4
@wm97xx_bat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm97xx_bat_probe, ptr @wm97xx_bat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm97xx_bat_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm97xx_bat_driver_exit = internal global ptr @wm97xx_bat_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [56 x i8] c"wm97xx_battery.file=drivers/power/supply/wm97xx_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [27 x i8] c"wm97xx_battery.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [58 x i8] c"wm97xx_battery.author=Marek Vasut <marek.vasut@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [49 x i8] c"wm97xx_battery.description=WM97xx battery driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm97xx-battery\00", [17 x i8] zeroinitializer }, align 32
@wm97xx_bat_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @wm97xx_bat_suspend, ptr @wm97xx_bat_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@wm97xx_bat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No platform data supplied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm97xx_bat_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/wm97xx_battery.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm97xx_bat_probe._entry_ptr = internal global ptr @wm97xx_bat_probe._entry, section ".printk_index", align 4
@charge_gpiod = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get charge GPIO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BATT CHRG\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AC Detect\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request GPIO irq\0A\00", [36 x i8] zeroinitializer }, align 32
@prop = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wm97xx_bat_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bat_work = internal global { %struct.work_struct, [52 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&bat_work)\00", [35 x i8] zeroinitializer }, align 32
@wm97xx_bat_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 226, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"Please consider setting proper battery name in platform definition file, falling back to name \22wm97xx-batt\22\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm97xx_bat_probe._entry_ptr.14 = internal global ptr @wm97xx_bat_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm97xx-batt\00", [20 x i8] zeroinitializer }, align 32
@bat_psy_desc = internal global { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr null, i32 1, ptr null, i32 0, ptr null, i32 0, ptr @wm97xx_bat_get_property, ptr null, ptr null, ptr @wm97xx_bat_external_power_changed, ptr null, i8 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@bat_psy = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bat_status = internal global { i32, [28 x i8] } zeroinitializer, align 32
@work_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @work_lock, i64 52), ptr getelementptr (i8, ptr @work_lock, i64 52) }, ptr @work_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@wm97xx_bat_update.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm97xx_battery\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm97xx_bat_update\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %i -> %i\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"work_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"work_lock\00", [22 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 3, i64 6, i64 8, i64 9, i64 12, i64 52]
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"wm97xx_bat_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 261, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 263, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"wm97xx_bat_pm_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 150, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 165, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"charge_gpiod\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 23, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 178, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 180, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 183, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 186, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [5 x i8] c"prop\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 26, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"bat_work\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 22, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 221, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 224, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 227, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"bat_psy_desc\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 119, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"bat_psy\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 118, i32 29 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"bat_status\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 25, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [10 x i8] c"work_lock\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 110, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [41 x i8] c"../drivers/power/supply/wm97xx_battery.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 24, i32 8 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_wm97xx_bat_driver_exit, ptr @__initcall__kmod_wm97xx_battery__239_272_wm97xx_bat_driver_init6, ptr @wm97xx_bat_driver_exit, ptr @wm97xx_bat_probe._entry, ptr @wm97xx_bat_probe._entry.11, ptr @wm97xx_bat_probe._entry_ptr, ptr @wm97xx_bat_probe._entry_ptr.14, ptr @wm97xx_bat_driver, ptr @.str, ptr @wm97xx_bat_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @charge_gpiod, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @prop, ptr @wm97xx_bat_probe.__key, ptr @bat_work, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @bat_psy_desc, ptr @bat_psy, ptr @bat_status, ptr @work_lock, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm97xx_bat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm97xx_bat_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm97xx_bat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charge_gpiod to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prop to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm97xx_bat_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bat_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm97xx_bat_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bat_psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bat_psy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bat_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @work_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm97xx_bat_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm97xx_bat_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm97xx_bat_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm97xx_bat_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm97xx_bat_probe(ptr noundef %dev) #2 align 64 {
entry:
  %cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg) #6
  %2 = call ptr @memset(ptr %cfg, i32 0, i32 24)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %cfg, i32 0, i32 2
  %3 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %drv_data, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef null, i32 noundef 1) #6
  store ptr %call, ptr @charge_gpiod, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.end11.if.end22_crit_edge, label %if.then13

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call, ptr noundef nonnull @.str.7) #6
  %7 = load ptr, ptr @charge_gpiod, align 4
  %call15 = tail call i32 @gpiod_to_irq(ptr noundef %7) #6
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call15, ptr noundef nonnull @wm97xx_chrg_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.then13.if.end22_crit_edge, label %if.then18

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end22:                                         ; preds = %if.then13.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %props.0 = phi i32 [ 1, %if.end11.if.end22_crit_edge ], [ 2, %if.then13.if.end22_crit_edge ]
  %batt_tech = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %batt_tech to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %batt_tech, align 4
  %10 = xor i32 %9, -1
  %.lobit.not = lshr i32 %10, 31
  %spec.select = add nuw nsw i32 %.lobit.not, %props.0
  %temp_aux = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %temp_aux to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp_aux, align 4
  %13 = xor i32 %12, -1
  %.lobit.not156 = lshr i32 %13, 31
  %props.2 = add nuw nsw i32 %spec.select, %.lobit.not156
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %16 = xor i32 %15, -1
  %.lobit.not158 = lshr i32 %16, 31
  %props.3 = add nuw nsw i32 %props.2, %.lobit.not158
  %max_voltage = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_voltage, align 4
  %19 = xor i32 %18, -1
  %.lobit.not160 = lshr i32 %19, 31
  %props.4 = add nuw nsw i32 %props.3, %.lobit.not160
  %min_voltage = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %min_voltage to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_voltage, align 4
  %22 = xor i32 %21, -1
  %.lobit.not162 = lshr i32 %22, 31
  %props.5 = add nuw nsw i32 %props.4, %.lobit.not162
  %23 = shl nuw nsw i32 %props.5, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #10
  store ptr %call8.i.i, ptr @prop, align 4
  %tobool44.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool44.not, label %if.end22.err3_crit_edge, label %if.end46

if.end22.err3_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %err3

if.end46:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %call8.i.i, align 128
  %25 = load ptr, ptr @charge_gpiod, align 4
  %tobool48.not = icmp eq ptr %25, null
  br i1 %tobool48.not, label %if.end46.if.end52_crit_edge, label %if.then49

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %26 = load ptr, ptr @prop, align 4
  %arrayidx51 = getelementptr i32, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end46.if.end52_crit_edge
  %i.0 = phi i32 [ 2, %if.then49 ], [ 1, %if.end46.if.end52_crit_edge ]
  %28 = ptrtoint ptr %batt_tech to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %batt_tech, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp54 = icmp sgt i32 %29, -1
  br i1 %cmp54, label %if.then55, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %30 = load ptr, ptr @prop, align 4
  %inc56 = add nuw nsw i32 %i.0, 1
  %arrayidx57 = getelementptr i32, ptr %30, i32 %i.0
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %arrayidx57, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end52.if.end58_crit_edge
  %i.1 = phi i32 [ %inc56, %if.then55 ], [ %i.0, %if.end52.if.end58_crit_edge ]
  %32 = ptrtoint ptr %temp_aux to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %temp_aux, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp60 = icmp sgt i32 %33, -1
  br i1 %cmp60, label %if.then61, label %if.end58.if.end64_crit_edge

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %34 = load ptr, ptr @prop, align 4
  %inc62 = add nuw nsw i32 %i.1, 1
  %arrayidx63 = getelementptr i32, ptr %34, i32 %i.1
  %35 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 52, ptr %arrayidx63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end58.if.end64_crit_edge
  %i.2 = phi i32 [ %inc62, %if.then61 ], [ %i.1, %if.end58.if.end64_crit_edge ]
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp66 = icmp sgt i32 %37, -1
  br i1 %cmp66, label %if.then67, label %if.end64.if.end70_crit_edge

if.end64.if.end70_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %38 = load ptr, ptr @prop, align 4
  %inc68 = add nuw nsw i32 %i.2, 1
  %arrayidx69 = getelementptr i32, ptr %38, i32 %i.2
  %39 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 12, ptr %arrayidx69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end64.if.end70_crit_edge
  %i.3 = phi i32 [ %inc68, %if.then67 ], [ %i.2, %if.end64.if.end70_crit_edge ]
  %40 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp72 = icmp sgt i32 %41, -1
  br i1 %cmp72, label %if.then73, label %if.end70.if.end76_crit_edge

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %42 = load ptr, ptr @prop, align 4
  %inc74 = add nuw nsw i32 %i.3, 1
  %arrayidx75 = getelementptr i32, ptr %42, i32 %i.3
  %43 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %arrayidx75, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end70.if.end76_crit_edge
  %i.4 = phi i32 [ %inc74, %if.then73 ], [ %i.3, %if.end70.if.end76_crit_edge ]
  %44 = ptrtoint ptr %min_voltage to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %min_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp78 = icmp sgt i32 %45, -1
  br i1 %cmp78, label %if.then79, label %if.end76.do.body83_crit_edge

if.end76.do.body83_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body83

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %46 = load ptr, ptr @prop, align 4
  %arrayidx81 = getelementptr i32, ptr %46, i32 %i.4
  %47 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 9, ptr %arrayidx81, align 4
  br label %do.body83

do.body83:                                        ; preds = %if.then79, %if.end76.do.body83_crit_edge
  tail call void @__init_work(ptr noundef nonnull @bat_work, i32 noundef 0) #6
  store i32 -64, ptr @bat_work, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.work_struct, ptr @bat_work, i32 0, i32 3), ptr noundef nonnull @.str.10, ptr noundef nonnull @wm97xx_bat_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  store volatile ptr getelementptr inbounds (%struct.work_struct, ptr @bat_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @bat_work, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.work_struct, ptr @bat_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @bat_work, i32 0, i32 1, i32 1), align 4
  store ptr @wm97xx_bat_work, ptr getelementptr inbounds (%struct.work_struct, ptr @bat_work, i32 0, i32 2), align 4
  %batt_name = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %1, i32 0, i32 9
  %48 = ptrtoint ptr %batt_name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %batt_name, align 4
  %tobool86.not = icmp eq ptr %49, null
  br i1 %tobool86.not, label %do.end90, label %do.body83.if.end93_crit_edge

do.body83.if.end93_crit_edge:                     ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

do.end90:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %if.end93

if.end93:                                         ; preds = %do.end90, %do.body83.if.end93_crit_edge
  %storemerge = phi ptr [ @.str.15, %do.end90 ], [ %49, %do.body83.if.end93_crit_edge ]
  store ptr %storemerge, ptr @bat_psy_desc, align 4
  %50 = load ptr, ptr @prop, align 4
  store ptr %50, ptr getelementptr inbounds (%struct.power_supply_desc, ptr @bat_psy_desc, i32 0, i32 4), align 4
  store i32 %props.5, ptr getelementptr inbounds (%struct.power_supply_desc, ptr @bat_psy_desc, i32 0, i32 5), align 4
  %call95 = call ptr @power_supply_register(ptr noundef %dev1, ptr noundef nonnull @bat_psy_desc, ptr noundef nonnull %cfg) #6
  store ptr %call95, ptr @bat_psy, align 4
  %cmp.i151 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.else99, label %if.then97

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %51 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %51, ptr noundef nonnull @bat_work) #6
  br label %cleanup

if.else99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %call95 to i32
  %53 = load ptr, ptr @prop, align 4
  call void @kfree(ptr noundef %53) #6
  br label %err3

err3:                                             ; preds = %if.else99, %if.end22.err3_crit_edge
  %ret.0 = phi i32 [ %52, %if.else99 ], [ -12, %if.end22.err3_crit_edge ]
  %54 = load ptr, ptr @charge_gpiod, align 4
  %tobool102.not = icmp eq ptr %54, null
  br i1 %tobool102.not, label %err3.cleanup_crit_edge, label %if.then103

err3.cleanup_crit_edge:                           ; preds = %err3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then103:                                       ; preds = %err3
  call void @__sanitizer_cov_trace_pc() #8
  %call104 = call i32 @gpiod_to_irq(ptr noundef nonnull %54) #6
  %call105 = call ptr @free_irq(i32 noundef %call104, ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %err3.cleanup_crit_edge, %if.then97, %if.then18, %if.then7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call10, %if.then7 ], [ %call20, %if.then18 ], [ 0, %if.then97 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ %ret.0, %if.then103 ], [ %ret.0, %err3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm97xx_bat_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @charge_gpiod, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @gpiod_to_irq(ptr noundef nonnull %0) #6
  %call1 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @bat_work) #6
  %1 = load ptr, ptr @bat_psy, align 4
  tail call void @power_supply_unregister(ptr noundef %1) #6
  %2 = load ptr, ptr @prop, align 4
  tail call void @kfree(ptr noundef %2) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm97xx_chrg_irq(i32 noundef %irq, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @bat_work) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm97xx_bat_work(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bat_psy, align 4
  tail call fastcc void @wm97xx_bat_update(ptr noundef %0)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm97xx_bat_update(ptr noundef %bat_ps) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bat_status, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @work_lock, i32 noundef 0) #6
  %1 = load ptr, ptr @charge_gpiod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool1.not, i32 1, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond2 = phi i32 [ %cond, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  store i32 %cond2, ptr @bat_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cond2)
  %cmp.not = icmp eq i32 %0, %cond2
  br i1 %cmp.not, label %cond.end.if.end9_crit_edge, label %do.body

cond.end.if.end9_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.body:                                          ; preds = %cond.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm97xx_bat_update.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm97xx_bat_update, %do.end)) #6
          to label %if.then8 [label %do.end], !srcloc !72

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bat_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bat_ps, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = load i32, ptr @bat_status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wm97xx_bat_update.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.18, ptr noundef %5, i32 noundef %0, i32 noundef %6) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call void @power_supply_changed(ptr noundef %bat_ps) #6
  br label %if.end9

if.end9:                                          ; preds = %do.end, %cond.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @work_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm97xx_bat_get_property(ptr noundef %bat_ps, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %bat_ps) #6
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 6, label %sw.bb1
    i32 12, label %sw.bb2
    i32 52, label %sw.bb4
    i32 8, label %sw.bb10
    i32 9, label %sw.bb16
    i32 3, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load i32, ptr @bat_status, align 4
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %batt_tech = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %batt_tech to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %batt_tech, align 4
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %if.then, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %bat_ps) #6
  %parent.i = getelementptr inbounds %struct.power_supply, ptr %bat_ps, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i, align 4
  %conv.i = trunc i32 %11 to i16
  %call2.i = tail call i32 @wm97xx_read_aux_adc(ptr noundef %9, i16 noundef zeroext %conv.i) #6
  %batt_mult.i = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %batt_mult.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %batt_mult.i, align 4
  %mul.i = mul i32 %13, %call2.i
  %batt_div.i = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %batt_div.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %batt_div.i, align 4
  %div.i = sdiv i32 %mul.i, %15
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  %temp_aux = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %temp_aux to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp_aux, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp5 = icmp sgt i32 %17, -1
  br i1 %cmp5, label %if.then6, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i38 = tail call ptr @power_supply_get_drvdata(ptr noundef %bat_ps) #6
  %parent.i39 = getelementptr inbounds %struct.power_supply, ptr %bat_ps, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %parent.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i39, align 8
  %driver_data.i.i40 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i40, align 4
  %temp_aux.i = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %call.i38, i32 0, i32 1
  %22 = ptrtoint ptr %temp_aux.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temp_aux.i, align 4
  %conv.i41 = trunc i32 %23 to i16
  %call2.i42 = tail call i32 @wm97xx_read_aux_adc(ptr noundef %21, i16 noundef zeroext %conv.i41) #6
  %temp_mult.i = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %call.i38, i32 0, i32 7
  %24 = ptrtoint ptr %temp_mult.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %temp_mult.i, align 4
  %mul.i43 = mul i32 %25, %call2.i42
  %temp_div.i = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %call.i38, i32 0, i32 6
  %26 = ptrtoint ptr %temp_div.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp_div.i, align 4
  %div.i44 = sdiv i32 %mul.i43, %27
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %entry
  %max_voltage = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %call, i32 0, i32 3
  %28 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp11 = icmp sgt i32 %29, -1
  br i1 %cmp11, label %sw.bb10.cleanup.sink.split_crit_edge, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10.cleanup.sink.split_crit_edge:             ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %entry
  %min_voltage = getelementptr inbounds %struct.wm97xx_batt_pdata, ptr %call, i32 0, i32 2
  %30 = ptrtoint ptr %min_voltage to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp17 = icmp sgt i32 %31, -1
  br i1 %cmp17, label %sw.bb16.cleanup.sink.split_crit_edge, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb16.cleanup.sink.split_crit_edge:             ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb16.cleanup.sink.split_crit_edge, %sw.bb10.cleanup.sink.split_crit_edge, %if.then6, %if.then, %sw.bb1, %sw.bb, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %1, %sw.bb ], [ %3, %sw.bb1 ], [ %div.i, %if.then ], [ %div.i44, %if.then6 ], [ %29, %sw.bb10.cleanup.sink.split_crit_edge ], [ %31, %sw.bb16.cleanup.sink.split_crit_edge ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb16.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm97xx_bat_external_power_changed(ptr nocapture noundef readnone %bat_ps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @bat_work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm97xx_read_aux_adc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm97xx_bat_suspend(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @flush_work(ptr noundef nonnull @bat_work) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm97xx_bat_resume(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @bat_work) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !55, !56, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_wm97xx_battery__239_272_wm97xx_bat_driver_init6, !1, !"__initcall__kmod_wm97xx_battery__239_272_wm97xx_bat_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 272, i32 1}
!2 = !{ptr @__exitcall_wm97xx_bat_driver_exit, !1, !"__exitcall_wm97xx_bat_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file240, !4, !"__UNIQUE_ID_file240", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 274, i32 1}
!5 = !{ptr @__UNIQUE_ID_license241, !4, !"__UNIQUE_ID_license241", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author242, !7, !"__UNIQUE_ID_author242", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 275, i32 1}
!8 = !{ptr @__UNIQUE_ID_description243, !9, !"__UNIQUE_ID_description243", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 276, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 263, i32 11}
!12 = !{ptr @wm97xx_bat_driver, !13, !"wm97xx_bat_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 261, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 165, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wm97xx_bat_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @wm97xx_bat_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 178, i32 10}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 180, i32 41}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 183, i32 5}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 186, i32 11}
!30 = !{ptr @wm97xx_bat_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 221, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 224, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @wm97xx_bat_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @wm97xx_bat_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 227, i32 23}
!40 = !{ptr @charge_gpiod, !41, !"charge_gpiod", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 23, i32 26}
!42 = !{ptr @prop, !43, !"prop", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 26, i32 36}
!44 = !{ptr @bat_work, !45, !"bat_work", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 22, i32 27}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 110, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @wm97xx_bat_update.__UNIQUE_ID_ddebug238, !47, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!51 = !{ptr @bat_status, !52, !"bat_status", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 25, i32 12}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 24, i32 8}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @work_lock, !54, !"work_lock", i1 false, i1 false}
!57 = !{ptr @bat_psy_desc, !58, !"bat_psy_desc", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 119, i32 33}
!59 = !{ptr @bat_psy, !60, !"bat_psy", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 118, i32 29}
!61 = !{ptr @wm97xx_bat_pm_ops, !62, !"wm97xx_bat_pm_ops", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/wm97xx_battery.c", i32 150, i32 32}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148696348, i64 2148696353, i64 2148696366, i64 2148696410, i64 2148696444, i64 2148696465}
