; ModuleID = '/llk/IR_all_yes/drivers/watchdog/bcm2835_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/bcm2835_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm2835_wdt = type { ptr, %struct.spinlock }
%struct.bcm2835_pm = type { ptr, ptr, ptr }

@__initcall__kmod_bcm2835_wdt__170_236_bcm2835_wdt_driver_init6 = internal global ptr @bcm2835_wdt_driver_init, section ".initcall6.init", align 4
@bcm2835_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_wdt_probe, ptr @bcm2835_wdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_wdt_driver_exit = internal global ptr @bcm2835_wdt_driver_exit, section ".exitcall.exit", align 4
@__param_str_heartbeat = internal constant [22 x i8] c"bcm2835_wdt.heartbeat\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype171 = internal constant [36 x i8] c"bcm2835_wdt.parmtype=heartbeat:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat172 = internal constant [65 x i8] c"bcm2835_wdt.parm=heartbeat:Initial watchdog heartbeat in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"bcm2835_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype173 = internal constant [35 x i8] c"bcm2835_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout174 = internal constant [78 x i8] c"bcm2835_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [39 x i8] c"bcm2835_wdt.alias=platform:bcm2835-wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [51 x i8] c"bcm2835_wdt.author=Lubomir Rintel <lkundrak@v3.sk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [67 x i8] c"bcm2835_wdt.description=Driver for Broadcom BCM2835 watchdog timer\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [46 x i8] c"bcm2835_wdt.file=drivers/watchdog/bcm2835_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [24 x i8] c"bcm2835_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm2835-wdt\00", [20 x i8] zeroinitializer }, align 32
@bcm2835_wdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&wdt->lock\00", [21 x i8] zeroinitializer }, align 32
@bcm2835_wdt_wdd = internal global { %struct.watchdog_device, [52 x i8] } { %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @bcm2835_wdt_info, ptr @bcm2835_wdt_ops, ptr null, i32 0, i32 15, i32 0, i32 1, i32 15, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@bcm2835_power_off_wdt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bcm2835_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 213, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Poweroff handler already present!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm2835_wdt_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/bcm2835_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_wdt_probe._entry_ptr = internal global ptr @bcm2835_wdt_probe._entry, section ".printk_index", align 4
@bcm2835_wdt_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Broadcom BCM2835 watchdog timer\00", [32 x i8] zeroinitializer }, align 32
@bcm2835_wdt_probe._entry_ptr.9 = internal global ptr @bcm2835_wdt_probe._entry.7, section ".printk_index", align 4
@bcm2835_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Broadcom BCM2835 Watchdog timer\00" }, [56 x i8] zeroinitializer }, align 32
@bcm2835_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @bcm2835_wdt_start, ptr @bcm2835_wdt_stop, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_wdt_get_timeleft, ptr @bcm2835_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system-power-controller\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"bcm2835_wdt_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 229, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 53, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 54, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 233, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 181, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"bcm2835_wdt_wdd\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 139, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"bcm2835_power_off_wdt\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 51, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 213, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 217, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"bcm2835_wdt_info\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 133, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"bcm2835_wdt_ops\00", align 1
@___asan_gen_.63 = private constant [34 x i8] c"../drivers/watchdog/bcm2835_wdt.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 125, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1548, i32 35 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_heartbeat172, ptr @__UNIQUE_ID_heartbeattype171, ptr @__UNIQUE_ID_license179, ptr @__UNIQUE_ID_nowayout174, ptr @__UNIQUE_ID_nowayouttype173, ptr @__exitcall_bcm2835_wdt_driver_exit, ptr @__initcall__kmod_bcm2835_wdt__170_236_bcm2835_wdt_driver_init6, ptr @__param_heartbeat, ptr @__param_nowayout, ptr @bcm2835_wdt_driver_exit, ptr @bcm2835_wdt_probe._entry, ptr @bcm2835_wdt_probe._entry.7, ptr @bcm2835_wdt_probe._entry_ptr, ptr @bcm2835_wdt_probe._entry_ptr.9, ptr @bcm2835_wdt_driver, ptr @heartbeat, ptr @nowayout, ptr @.str, ptr @bcm2835_wdt_probe.__key, ptr @.str.1, ptr @bcm2835_wdt_wdd, ptr @bcm2835_power_off_wdt, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @bcm2835_wdt_info, ptr @bcm2835_wdt_ops, ptr @.str.10], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_wdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_wdt_wdd to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_power_off_wdt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_wdt_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.bcm2835_wdt, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bcm2835_wdt_probe.__key, i16 noundef signext 3) #6
  %base = getelementptr inbounds %struct.bcm2835_pm, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call.i, align 4
  store ptr %call.i, ptr getelementptr inbounds (%struct.watchdog_device, ptr @bcm2835_wdt_wdd, i32 0, i32 16), align 4
  %7 = load i32, ptr @heartbeat, align 4
  %call6 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull @bcm2835_wdt_wdd, i32 noundef %7, ptr noundef %dev) #6
  %8 = load i8, ptr @nowayout, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %do.body.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

do.body.watchdog_set_nowayout.exit_crit_edge:     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @bcm2835_wdt_wdd, i32 0, i32 18)) #6
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %do.body.watchdog_set_nowayout.exit_crit_edge
  store ptr %dev, ptr getelementptr inbounds (%struct.watchdog_device, ptr @bcm2835_wdt_wdd, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 28
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %12 = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %watchdog_set_nowayout.exit.if.end10_crit_edge, label %if.then9

watchdog_set_nowayout.exit.if.end10_crit_edge:    ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 3, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @bcm2835_wdt_wdd, i32 0, i32 18)) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %watchdog_set_nowayout.exit.if.end10_crit_edge
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull @bcm2835_wdt_wdd, i32 noundef 128) #6
  tail call void @_set_bit(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @bcm2835_wdt_wdd, i32 0, i32 18)) #6
  %call11 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev, ptr noundef nonnull @bcm2835_wdt_wdd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool.i.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.i.not, label %if.end14.do.end28_crit_edge, label %if.then18

if.end14.do.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.then18:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %17 = load ptr, ptr @pm_power_off, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %if.then20, label %do.end23

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @bcm2835_power_off, ptr @pm_power_off, align 4
  store ptr %call.i, ptr @bcm2835_power_off_wdt, align 4
  br label %do.end28

do.end23:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %do.end28

do.end28:                                         ; preds = %do.end23, %if.then20, %if.end14.do.end28_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end28 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_wdt_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %0 = load ptr, ptr @pm_power_off, align 4
  %cmp = icmp eq ptr %0, @bcm2835_power_off
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_power_off() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bcm2835_power_off_wdt, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !67
  %4 = or i32 %3, 1426391130
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #6, !srcloc !69
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 167772250) #6, !srcloc !69
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 28
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !67
  %12 = and i32 %11, -805306459
  %13 = or i32 %12, 536871002
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %0, align 4
  %add.ptr4.i = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %13) #6, !srcloc !69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_wdt_start(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.bcm2835_wdt, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  %shl = shl i32 %3, 16
  %and = and i32 %shl, 983040
  %or = or i32 %and, 1509949440
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !69
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !67
  %10 = and i32 %9, -805306459
  %11 = or i32 %10, 536871002
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %11) #6, !srcloc !69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_wdt_stop(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33620058) #6, !srcloc !69
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_wdt_get_timeleft(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !67
  %5 = and i32 %4, -61696
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shr = lshr i32 %6, 16
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_restart(ptr nocapture noundef readonly %wdog, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 167772250) #6, !srcloc !69
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !67
  %7 = and i32 %6, -805306459
  %8 = or i32 %7, 536871002
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #6, !srcloc !69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_bcm2835_wdt__170_236_bcm2835_wdt_driver_init6, !1, !"__initcall__kmod_bcm2835_wdt__170_236_bcm2835_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 236, i32 1}
!2 = !{ptr @__exitcall_bcm2835_wdt_driver_exit, !1, !"__exitcall_bcm2835_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_heartbeat, !4, !"__param_heartbeat", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 238, i32 1}
!5 = !{ptr @__UNIQUE_ID_heartbeattype171, !4, !"__UNIQUE_ID_heartbeattype171", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_heartbeat172, !7, !"__UNIQUE_ID_heartbeat172", i1 false, i1 false}
!7 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 239, i32 1}
!8 = !{ptr @__param_nowayout, !9, !"__param_nowayout", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 241, i32 1}
!10 = !{ptr @__UNIQUE_ID_nowayouttype173, !9, !"__UNIQUE_ID_nowayouttype173", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_nowayout174, !12, !"__UNIQUE_ID_nowayout174", i1 false, i1 false}
!12 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 242, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias175, !14, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 245, i32 1}
!15 = !{ptr @__UNIQUE_ID_author176, !16, !"__UNIQUE_ID_author176", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 246, i32 1}
!17 = !{ptr @__UNIQUE_ID_description177, !18, !"__UNIQUE_ID_description177", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 247, i32 1}
!19 = !{ptr @__UNIQUE_ID_file178, !20, !"__UNIQUE_ID_file178", i1 false, i1 false}
!20 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 248, i32 1}
!21 = !{ptr @__UNIQUE_ID_license179, !20, !"__UNIQUE_ID_license179", i1 false, i1 false}
!22 = !{ptr @heartbeat, !23, !"heartbeat", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 53, i32 21}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 233, i32 12}
!26 = !{ptr @bcm2835_wdt_driver, !27, !"bcm2835_wdt_driver", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 229, i32 31}
!28 = !{ptr @bcm2835_wdt_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 181, i32 2}
!30 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 213, i32 4}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bcm2835_wdt_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @bcm2835_wdt_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 217, i32 2}
!41 = !{ptr @bcm2835_wdt_probe._entry.7, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcm2835_wdt_probe._entry_ptr.9, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @bcm2835_wdt_wdd, !44, !"bcm2835_wdt_wdd", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 139, i32 31}
!45 = !{ptr @bcm2835_wdt_info, !46, !"bcm2835_wdt_info", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 133, i32 35}
!47 = !{ptr @bcm2835_wdt_ops, !48, !"bcm2835_wdt_ops", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 125, i32 34}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/of.h", i32 1548, i32 35}
!51 = !{ptr @bcm2835_power_off_wdt, !52, !"bcm2835_power_off_wdt", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 51, i32 28}
!53 = !{ptr @__param_str_heartbeat, !4, !"__param_str_heartbeat", i1 false, i1 false}
!54 = !{ptr @__param_str_nowayout, !9, !"__param_str_nowayout", i1 false, i1 false}
!55 = !{ptr @nowayout, !56, !"nowayout", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/bcm2835_wdt.c", i32 54, i32 13}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i8 0, i8 2}
!67 = !{i64 3053996}
!68 = !{i64 2152613450}
!69 = !{i64 3053578}
