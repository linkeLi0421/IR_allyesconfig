; ModuleID = '/llk/IR_all_yes/drivers/watchdog/bcm47xx_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/bcm47xx_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
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
%struct.bcm47xx_wdt = type { ptr, ptr, i32, ptr, %struct.watchdog_device, %struct.timer_list, %struct.atomic_t }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_timeout = internal constant [20 x i8] c"bcm47xx_wdt.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype170 = internal constant [33 x i8] c"bcm47xx_wdt.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout171 = internal constant [64 x i8] c"bcm47xx_wdt.parm=timeout:Watchdog time in seconds. (default=30)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"bcm47xx_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype172 = internal constant [35 x i8] c"bcm47xx_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout173 = internal constant [78 x i8] c"bcm47xx_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_bcm47xx_wdt__176_238_bcm47xx_wdt_driver_init6 = internal global ptr @bcm47xx_wdt_driver_init, section ".initcall6.init", align 4
@bcm47xx_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm47xx_wdt_probe, ptr @bcm47xx_wdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm47xx_wdt_driver_exit = internal global ptr @bcm47xx_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author177 = internal constant [42 x i8] c"bcm47xx_wdt.author=Aleksandar Radovanovic\00", section ".modinfo", align 1
@__UNIQUE_ID_author178 = internal constant [53 x i8] c"bcm47xx_wdt.author=Hauke Mehrtens <hauke@hauke-m.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description179 = internal constant [61 x i8] c"bcm47xx_wdt.description=Watchdog driver for Broadcom BCM47xx\00", section ".modinfo", align 1
@__UNIQUE_ID_file180 = internal constant [46 x i8] c"bcm47xx_wdt.file=drivers/watchdog/bcm47xx_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license181 = internal constant [24 x i8] c"bcm47xx_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm47xx-wdt\00", [20 x i8] zeroinitializer }, align 32
@bcm47xx_wdt_soft_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @bcm47xx_wdt_soft_start, ptr @bcm47xx_wdt_soft_stop, ptr @bcm47xx_wdt_soft_keepalive, ptr null, ptr @bcm47xx_wdt_soft_set_timeout, ptr null, ptr null, ptr @bcm47xx_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@bcm47xx_wdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&wdt->soft_timer)\00", [45 x i8] zeroinitializer }, align 32
@bcm47xx_wdt_hard_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @bcm47xx_wdt_hard_start, ptr @bcm47xx_wdt_hard_stop, ptr @bcm47xx_wdt_hard_keepalive, ptr null, ptr @bcm47xx_wdt_hard_set_timeout, ptr null, ptr null, ptr @bcm47xx_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@bcm47xx_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"bcm47xx_wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@bcm47xx_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"BCM47xx Watchdog Timer enabled (%d seconds%s%s)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm47xx_wdt_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/bcm47xx_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm47xx_wdt_probe._entry_ptr = internal global ptr @bcm47xx_wdt_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", nowayout\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c", Software Timer\00", [47 x i8] zeroinitializer }, align 32
@bcm47xx_wdt_soft_set_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014bcm47xx_wdt: timeout value must be 1<=x<=%d, using %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bcm47xx_wdt_soft_set_timeout\00", [35 x i8] zeroinitializer }, align 32
@bcm47xx_wdt_soft_set_timeout._entry_ptr = internal global ptr @bcm47xx_wdt_soft_set_timeout._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm47xx_wdt_soft_timer_tick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\012bcm47xx_wdt: Watchdog will fire soon!!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcm47xx_wdt_soft_timer_tick\00", [36 x i8] zeroinitializer }, align 32
@bcm47xx_wdt_soft_timer_tick._entry_ptr = internal global ptr @bcm47xx_wdt_soft_timer_tick._entry, section ".printk_index", align 4
@bcm47xx_wdt_hard_set_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.14, ptr @.str.4, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bcm47xx_wdt_hard_set_timeout\00", [35 x i8] zeroinitializer }, align 32
@bcm47xx_wdt_hard_set_timeout._entry_ptr = internal global ptr @bcm47xx_wdt_hard_set_timeout._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 31, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 32, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"bcm47xx_wdt_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 230, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 232, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"bcm47xx_wdt_soft_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 168, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 190, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"bcm47xx_wdt_hard_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 97, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"bcm47xx_wdt_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 161, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 209, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 152, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 115, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [34 x i8] c"../drivers/watchdog/bcm47xx_wdt.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 78, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_author178, ptr @__UNIQUE_ID_description179, ptr @__UNIQUE_ID_file180, ptr @__UNIQUE_ID_license181, ptr @__UNIQUE_ID_nowayout173, ptr @__UNIQUE_ID_nowayouttype172, ptr @__UNIQUE_ID_timeout171, ptr @__UNIQUE_ID_timeouttype170, ptr @__exitcall_bcm47xx_wdt_driver_exit, ptr @__initcall__kmod_bcm47xx_wdt__176_238_bcm47xx_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @bcm47xx_wdt_driver_exit, ptr @bcm47xx_wdt_hard_set_timeout._entry, ptr @bcm47xx_wdt_hard_set_timeout._entry_ptr, ptr @bcm47xx_wdt_probe._entry, ptr @bcm47xx_wdt_probe._entry_ptr, ptr @bcm47xx_wdt_soft_set_timeout._entry, ptr @bcm47xx_wdt_soft_set_timeout._entry_ptr, ptr @bcm47xx_wdt_soft_timer_tick._entry, ptr @bcm47xx_wdt_soft_timer_tick._entry_ptr, ptr @timeout, ptr @nowayout, ptr @bcm47xx_wdt_driver, ptr @.str, ptr @bcm47xx_wdt_soft_ops, ptr @bcm47xx_wdt_probe.__key, ptr @.str.1, ptr @bcm47xx_wdt_hard_ops, ptr @bcm47xx_wdt_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_wdt_soft_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_wdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_wdt_hard_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_wdt_soft_set_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_wdt_soft_timer_tick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_wdt_hard_set_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm47xx_wdt_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm47xx_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm47xx_wdt_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_timer_ms = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max_timer_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_timer_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %3)
  %cmp = icmp ult i32 %3, 60000
  %ops = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 4, i32 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bcm47xx_wdt_soft_ops, ptr %ops, align 4
  %soft_timer = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %soft_timer, ptr noundef nonnull @bcm47xx_wdt_soft_timer_tick, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @bcm47xx_wdt_probe.__key) #7
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bcm47xx_wdt_hard_ops, ptr %ops, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %wdd6 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 4
  %info = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bcm47xx_wdt_info, ptr %info, align 4
  %timeout = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 30, ptr %timeout, align 4
  %parent = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %parent, align 4
  %ops11 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops11, align 4
  %set_timeout = getelementptr inbounds %struct.watchdog_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %set_timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_timeout, align 4
  %13 = load i32, ptr @timeout, align 4
  %call13 = tail call i32 %12(ptr noundef %wdd6, i32 noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end5.err_timer_crit_edge

if.end5.err_timer_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_timer

if.end16:                                         ; preds = %if.end5
  %14 = load i8, ptr @nowayout, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not = icmp eq i8 %14, 0
  br i1 %tobool18.not, label %if.end16.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end16.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %status.i = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 4, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #7
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end16.watchdog_set_nowayout.exit_crit_edge
  tail call void @watchdog_set_restart_priority(ptr noundef %wdd6, i32 noundef 64) #7
  %status.i60 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 4, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i60) #7
  %call22 = tail call i32 @watchdog_register_device(ptr noundef %wdd6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.end28, label %watchdog_set_nowayout.exit.err_timer_crit_edge

watchdog_set_nowayout.exit.err_timer_crit_edge:   ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_timer

do.end28:                                         ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load i32, ptr @timeout, align 4
  %16 = load i8, ptr @nowayout, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool30.not = icmp eq i8 %16, 0
  %cond = select i1 %tobool30.not, ptr @.str.8, ptr @.str.7
  %cond32 = select i1 %cmp, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %15, ptr noundef nonnull %cond, ptr noundef nonnull %cond32) #10
  br label %cleanup

err_timer:                                        ; preds = %watchdog_set_nowayout.exit.err_timer_crit_edge, %if.end5.err_timer_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end5.err_timer_crit_edge ], [ %call22, %watchdog_set_nowayout.exit.err_timer_crit_edge ]
  br i1 %cmp, label %if.then34, label %err_timer.cleanup_crit_edge

err_timer.cleanup_crit_edge:                      ; preds = %err_timer
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %err_timer
  call void @__sanitizer_cov_trace_pc() #9
  %soft_timer35 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 5
  %call36 = tail call i32 @del_timer_sync(ptr noundef %soft_timer35) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %err_timer.cleanup_crit_edge, %do.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end28 ], [ -6, %entry.cleanup_crit_edge ], [ %ret.0, %if.then34 ], [ %ret.0, %err_timer.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %wdd = getelementptr inbounds %struct.bcm47xx_wdt, ptr %1, i32 0, i32 4
  tail call void @watchdog_unregister_device(ptr noundef %wdd) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm47xx_wdt_soft_timer_tick(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr i8, ptr %t, i32 -80
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %max_timer_ms = getelementptr i8, ptr %t, i32 -116
  %2 = ptrtoint ptr %max_timer_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_timer_ms, align 4
  %soft_ticks = getelementptr i8, ptr %t, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %soft_ticks, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %soft_ticks, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %soft_ticks, ptr %soft_ticks, i32 1, ptr elementtype(i32) %soft_ticks) #7, !srcloc !77
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %1, 1000
  %5 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %3)
  %add.ptr = getelementptr i8, ptr %t, i32 -124
  %timer_set_ms = getelementptr i8, ptr %t, i32 -120
  %6 = ptrtoint ptr %timer_set_ms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer_set_ms, align 4
  %call2 = tail call i32 %7(ptr noundef %add.ptr, i32 noundef %5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 100
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_soft_start(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_ticks.i = getelementptr i8, ptr %wdd, i32 156
  %timeout.i = getelementptr %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %soft_ticks.i, i32 noundef 4) #7
  %2 = ptrtoint ptr %soft_ticks.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %1, ptr %soft_ticks.i, align 4
  %3 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout.i, align 4
  %max_timer_ms.i = getelementptr i8, ptr %wdd, i32 -8
  %5 = ptrtoint ptr %max_timer_ms.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_timer_ms.i, align 4
  %call.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %soft_ticks.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %soft_ticks.i, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %soft_ticks.i, ptr %soft_ticks.i, i32 1, ptr elementtype(i32) %soft_ticks.i) #7, !srcloc !77
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %soft_timer = getelementptr i8, ptr %wdd, i32 108
  %mul.i = mul i32 %4, 1000
  %8 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %6) #7
  %add.ptr.i6 = getelementptr i8, ptr %wdd, i32 -16
  %timer_set_ms.i = getelementptr i8, ptr %wdd, i32 -12
  %9 = ptrtoint ptr %timer_set_ms.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %timer_set_ms.i, align 4
  %call2.i = tail call i32 %10(ptr noundef %add.ptr.i6, i32 noundef %8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %11, 100
  %call3.i = tail call i32 @mod_timer(ptr noundef %soft_timer, i32 noundef %add.i) #7
  br label %bcm47xx_wdt_soft_timer_tick.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %bcm47xx_wdt_soft_timer_tick.exit

bcm47xx_wdt_soft_timer_tick.exit:                 ; preds = %do.end.i, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_soft_stop(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdd, i32 -16
  %soft_timer = getelementptr i8, ptr %wdd, i32 108
  %call1 = tail call i32 @del_timer_sync(ptr noundef %soft_timer) #7
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call2 = tail call i32 %1(ptr noundef %add.ptr.i, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_soft_keepalive(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_ticks = getelementptr i8, ptr %wdd, i32 156
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %soft_ticks, i32 noundef 4) #7
  %2 = ptrtoint ptr %soft_ticks to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %1, ptr %soft_ticks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_soft_set_timeout(ptr nocapture noundef writeonly %wdd, i32 noundef %new_time) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %new_time, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %0)
  %1 = icmp ult i32 %0, -255
  br i1 %1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 255, i32 noundef %new_time) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_time, ptr %timeout, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_restart(ptr noundef %wdd, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdd, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call i32 %1(ptr noundef %add.ptr.i, i32 noundef 1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm47xx_wdt_hard_start(ptr nocapture noundef readnone %wdd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_hard_stop(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdd, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call i32 %1(ptr noundef %add.ptr.i, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_hard_keepalive(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdd, i32 -16
  %timer_set_ms = getelementptr i8, ptr %wdd, i32 -12
  %0 = ptrtoint ptr %timer_set_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer_set_ms, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  %mul = mul i32 %3, 1000
  %call1 = tail call i32 %1(ptr noundef %add.ptr.i, i32 noundef %mul) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_hard_set_timeout(ptr nocapture noundef %wdd, i32 noundef %new_time) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_timer_ms = getelementptr i8, ptr %wdd, i32 -8
  %0 = ptrtoint ptr %max_timer_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_timer_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_time)
  %cmp = icmp eq i32 %new_time, 0
  %div = udiv i32 %1, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %new_time)
  %cmp1 = icmp ult i32 %div, %new_time
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div, i32 noundef %new_time) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_time, ptr %timeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype170, !1, !"__UNIQUE_ID_timeouttype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout171, !4, !"__UNIQUE_ID_timeout171", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 35, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 38, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype172, !6, !"__UNIQUE_ID_nowayouttype172", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout173, !9, !"__UNIQUE_ID_nowayout173", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 39, i32 1}
!10 = !{ptr @__initcall__kmod_bcm47xx_wdt__176_238_bcm47xx_wdt_driver_init6, !11, !"__initcall__kmod_bcm47xx_wdt__176_238_bcm47xx_wdt_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 238, i32 1}
!12 = !{ptr @__exitcall_bcm47xx_wdt_driver_exit, !11, !"__exitcall_bcm47xx_wdt_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author177, !14, !"__UNIQUE_ID_author177", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 240, i32 1}
!15 = !{ptr @__UNIQUE_ID_author178, !16, !"__UNIQUE_ID_author178", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 241, i32 1}
!17 = !{ptr @__UNIQUE_ID_description179, !18, !"__UNIQUE_ID_description179", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 242, i32 1}
!19 = !{ptr @__UNIQUE_ID_file180, !20, !"__UNIQUE_ID_file180", i1 false, i1 false}
!20 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 243, i32 1}
!21 = !{ptr @__UNIQUE_ID_license181, !20, !"__UNIQUE_ID_license181", i1 false, i1 false}
!22 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!23 = !{ptr @timeout, !24, !"timeout", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 31, i32 12}
!25 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!26 = !{ptr @nowayout, !27, !"nowayout", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 32, i32 13}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 232, i32 11}
!30 = !{ptr @bcm47xx_wdt_driver, !31, !"bcm47xx_wdt_driver", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 230, i32 31}
!32 = !{ptr @bcm47xx_wdt_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 190, i32 3}
!34 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 209, i32 2}
!37 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @bcm47xx_wdt_probe._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcm47xx_wdt_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bcm47xx_wdt_soft_ops, !47, !"bcm47xx_wdt_soft_ops", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 168, i32 34}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 152, i32 3}
!50 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @bcm47xx_wdt_soft_set_timeout._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @bcm47xx_wdt_soft_set_timeout._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 115, i32 3}
!55 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @bcm47xx_wdt_soft_timer_tick._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @bcm47xx_wdt_soft_timer_tick._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @bcm47xx_wdt_hard_ops, !59, !"bcm47xx_wdt_hard_ops", i1 false, i1 false}
!59 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 97, i32 34}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 78, i32 3}
!62 = !{ptr @bcm47xx_wdt_hard_set_timeout._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @bcm47xx_wdt_hard_set_timeout._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @bcm47xx_wdt_info, !65, !"bcm47xx_wdt_info", i1 false, i1 false}
!65 = !{!"../drivers/watchdog/bcm47xx_wdt.c", i32 161, i32 35}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i8 0, i8 2}
!76 = !{i64 2148411718}
!77 = !{i64 2148326427, i64 2148326459, i64 2148326488, i64 2148326522, i64 2148326553, i64 2148326576}
!78 = !{i64 2148411947}
