; ModuleID = '/llk/IR_all_yes/drivers/watchdog/da9063_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/da9063_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.da9063 = type { ptr, i32, i8, i32, ptr, i32, i32, ptr }

@__initcall__kmod_da9063_wdt__288_258_da9063_wdt_driver_init6 = internal global ptr @da9063_wdt_driver_init, section ".initcall6.init", align 4
@da9063_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9063_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9063_wdt_driver_exit = internal global ptr @da9063_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [66 x i8] c"da9063_wdt.author=Mariusz Wojtasik <mariusz.wojtasik@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"da9063_wdt.description=Watchdog driver for Dialog DA9063\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"da9063_wdt.file=drivers/watchdog/da9063_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"da9063_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [42 x i8] c"da9063_wdt.alias=platform:da9063-watchdog\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9063-watchdog\00", [16 x i8] zeroinitializer }, align 32
@da9063_watchdog_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 32896, i32 0, [32 x i8] c"DA9063 Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@da9063_watchdog_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @da9063_wdt_start, ptr @da9063_wdt_stop, ptr @da9063_wdt_ping, ptr null, ptr @da9063_wdt_set_timeout, ptr null, ptr null, ptr @da9063_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@wdt_timeout = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 2, i32 4, i32 8, i32 16, i32 32, i32 65, i32 131], [32 x i8] zeroinitializer }, align 32
@da9063_wdt_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Watchdog failed to start (err = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9063_wdt_start\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/da9063_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9063_wdt_start._entry_ptr = internal global ptr @da9063_wdt_start._entry, section ".printk_index", align 4
@da9063_wdt_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 115, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Watchdog failed to stop (err = %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9063_wdt_stop\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@da9063_wdt_stop._entry_ptr = internal global ptr @da9063_wdt_stop._entry, section ".printk_index", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@da9063_wdt_ping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 136, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to ping the watchdog (err = %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9063_wdt_ping\00", [16 x i8] zeroinitializer }, align 32
@da9063_wdt_ping._entry_ptr = internal global ptr @da9063_wdt_ping._entry, section ".printk_index", align 4
@da9063_wdt_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 181, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to shutdown (err = %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9063_wdt_restart\00", [45 x i8] zeroinitializer }, align 32
@da9063_wdt_restart._entry_ptr = internal global ptr @da9063_wdt_restart._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@da9063_wdt_set_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to set watchdog timeout (err = %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9063_wdt_set_timeout\00", [41 x i8] zeroinitializer }, align 32
@da9063_wdt_set_timeout._entry_ptr = internal global ptr @da9063_wdt_set_timeout._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"da9063_wdt_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 252, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 255, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"da9063_watchdog_info\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 189, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"da9063_watchdog_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 194, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"wdt_timeout\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 28, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 101, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 114, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 135, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 180, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [33 x i8] c"../drivers/watchdog/da9063_wdt.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 161, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_da9063_wdt_driver_exit, ptr @__initcall__kmod_da9063_wdt__288_258_da9063_wdt_driver_init6, ptr @da9063_wdt_driver_exit, ptr @da9063_wdt_ping._entry, ptr @da9063_wdt_ping._entry_ptr, ptr @da9063_wdt_restart._entry, ptr @da9063_wdt_restart._entry_ptr, ptr @da9063_wdt_set_timeout._entry, ptr @da9063_wdt_set_timeout._entry_ptr, ptr @da9063_wdt_start._entry, ptr @da9063_wdt_start._entry_ptr, ptr @da9063_wdt_stop._entry, ptr @da9063_wdt_stop._entry_ptr, ptr @da9063_wdt_driver, ptr @.str, ptr @da9063_watchdog_info, ptr @da9063_watchdog_ops, ptr @wdt_timeout, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_watchdog_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_watchdog_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_timeout to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_wdt_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_wdt_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_wdt_ping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_wdt_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_wdt_set_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9063_wdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9063_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9063_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 108, i32 noundef 3520) #5
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @da9063_watchdog_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @da9063_watchdog_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131, ptr %max_timeout, align 4
  %min_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 11
  %8 = ptrtoint ptr %min_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 256, ptr %min_hw_heartbeat_ms, align 4
  %parent10 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %parent10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %parent10, align 4
  %status = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %status, align 4
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull %call.i, i32 noundef 128) #5
  %driver_data.i59 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %driver_data.i59 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %driver_data.i59, align 4
  %timeout11 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %timeout11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %timeout11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !60
  %regmap.i = getelementptr inbounds %struct.da9063, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i60 = call i32 @regmap_read(ptr noundef %15, i32 noundef 17, ptr noundef nonnull %val.i) #5
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %and.i = and i32 %17, 7
  %arrayidx.i = getelementptr [8 x i32], ptr @wdt_timeout, i32 0, i32 %and.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not = icmp eq i32 %and.i, 0
  br i1 %tobool13.not, label %if.end25.critedge, label %if.then14

if.then14:                                        ; preds = %if.end9
  %20 = ptrtoint ptr %timeout11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %timeout11, align 4
  %call17.c = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %dev1) #5
  %21 = ptrtoint ptr %timeout11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timeout11, align 4
  %call19.c = call i32 @da9063_wdt_set_timeout(ptr noundef nonnull %call.i, i32 noundef %22)
  %23 = ptrtoint ptr %timeout11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timeout11, align 4
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then14.da9063_wdt_update_timeout.exit_crit_edge

if.then14.da9063_wdt_update_timeout.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_update_timeout.exit

if.end.i:                                         ; preds = %if.then14
  call void @usleep_range_state(i32 noundef 150, i32 noundef 300, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp1.not.i.i = icmp ugt i32 %24, 2
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %if.end.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge

if.end.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_timeout_to_sel.exit.i

for.inc.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp1.not.1.i.i = icmp ugt i32 %24, 4
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge

for.inc.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_timeout_to_sel.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp1.not.2.i.i = icmp ugt i32 %24, 8
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge

for.inc.1.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_timeout_to_sel.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %cmp1.not.3.i.i = icmp ugt i32 %24, 16
  br i1 %cmp1.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge

for.inc.2.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_timeout_to_sel.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp1.not.4.i.i = icmp ugt i32 %24, 32
  br i1 %cmp1.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge

for.inc.3.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_timeout_to_sel.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %24)
  %cmp1.not.5.i.i = icmp ugt i32 %24, 65
  %spec.select.i.i = select i1 %cmp1.not.5.i.i, i32 7, i32 6
  br label %da9063_wdt_timeout_to_sel.exit.i

da9063_wdt_timeout_to_sel.exit.i:                 ; preds = %for.inc.4.i.i, %for.inc.3.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge, %for.inc.2.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge, %for.inc.1.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge, %for.inc.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge, %if.end.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge ], [ 2, %for.inc.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge ], [ 3, %for.inc.1.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge ], [ 4, %for.inc.2.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge ], [ 5, %for.inc.3.i.i.da9063_wdt_timeout_to_sel.exit.i_crit_edge ], [ %spec.select.i.i, %for.inc.4.i.i ]
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 17, i32 noundef 7, i32 noundef %retval.0.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %da9063_wdt_update_timeout.exit

da9063_wdt_update_timeout.exit:                   ; preds = %da9063_wdt_timeout_to_sel.exit.i, %if.then14.da9063_wdt_update_timeout.exit_crit_edge
  call void @_set_bit(i32 noundef 3, ptr noundef %status) #5
  br label %if.end25

if.end25.critedge:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call17.c57 = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %dev1) #5
  %29 = ptrtoint ptr %timeout11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timeout11, align 4
  %call19.c58 = call i32 @da9063_wdt_set_timeout(ptr noundef nonnull %call.i, i32 noundef %30)
  br label %if.end25

if.end25:                                         ; preds = %if.end25.critedge, %da9063_wdt_update_timeout.exit
  %call26 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end25 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_wdt_set_timeout(ptr noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.else_crit_edge, label %if.then

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %entry
  %regmap.i.i = getelementptr inbounds %struct.da9063, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 300, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %timeout)
  %cmp1.not.i.i = icmp ugt i32 %timeout, 2
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %timeout)
  %cmp1.not.1.i.i = icmp ugt i32 %timeout, 4
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.if.end_crit_edge

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %timeout)
  %cmp1.not.2.i.i = icmp ugt i32 %timeout, 8
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.if.end_crit_edge

for.inc.1.i.i.if.end_crit_edge:                   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %timeout)
  %cmp1.not.3.i.i = icmp ugt i32 %timeout, 16
  br i1 %cmp1.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.if.end_crit_edge

for.inc.2.i.i.if.end_crit_edge:                   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %timeout)
  %cmp1.not.4.i.i = icmp ugt i32 %timeout, 32
  br i1 %cmp1.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.if.end_crit_edge

for.inc.3.i.i.if.end_crit_edge:                   ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %timeout)
  %cmp1.not.5.i.i = icmp ugt i32 %timeout, 65
  %spec.select.i.i = select i1 %cmp1.not.5.i.i, i32 7, i32 6
  br label %if.end

if.end:                                           ; preds = %for.inc.4.i.i, %for.inc.3.i.i.if.end_crit_edge, %for.inc.2.i.i.if.end_crit_edge, %for.inc.1.i.i.if.end_crit_edge, %for.inc.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end.i.if.end_crit_edge ], [ 2, %for.inc.i.i.if.end_crit_edge ], [ 3, %for.inc.1.i.i.if.end_crit_edge ], [ 4, %for.inc.2.i.i.if.end_crit_edge ], [ 5, %for.inc.3.i.i.if.end_crit_edge ], [ %spec.select.i.i, %for.inc.4.i.i ]
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 17, i32 noundef 7, i32 noundef %retval.0.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.then.do.end_crit_edge
  %ret.021 = phi i32 [ %call.i.i, %if.end.do.end_crit_edge ], [ %call.i.i.i, %if.then.do.end_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %ret.021) #8
  br label %if.end6

if.else:                                          ; preds = %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %timeout)
  %cmp1.not.i = icmp ugt i32 %timeout, 2
  br i1 %cmp1.not.i, label %for.inc.i, label %if.else.da9063_wdt_timeout_to_sel.exit_crit_edge

if.else.da9063_wdt_timeout_to_sel.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_timeout_to_sel.exit

for.inc.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %timeout)
  %cmp1.not.1.i = icmp ugt i32 %timeout, 4
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.da9063_wdt_timeout_to_sel.exit_crit_edge

for.inc.i.da9063_wdt_timeout_to_sel.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_timeout_to_sel.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %timeout)
  %cmp1.not.2.i = icmp ugt i32 %timeout, 8
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.da9063_wdt_timeout_to_sel.exit_crit_edge

for.inc.1.i.da9063_wdt_timeout_to_sel.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_timeout_to_sel.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %timeout)
  %cmp1.not.3.i = icmp ugt i32 %timeout, 16
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.da9063_wdt_timeout_to_sel.exit_crit_edge

for.inc.2.i.da9063_wdt_timeout_to_sel.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_timeout_to_sel.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %timeout)
  %cmp1.not.4.i = icmp ugt i32 %timeout, 32
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.da9063_wdt_timeout_to_sel.exit_crit_edge

for.inc.3.i.da9063_wdt_timeout_to_sel.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_timeout_to_sel.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %timeout)
  %cmp1.not.5.i = icmp ugt i32 %timeout, 65
  %spec.select.i = select i1 %cmp1.not.5.i, i32 7, i32 6
  br label %da9063_wdt_timeout_to_sel.exit

da9063_wdt_timeout_to_sel.exit:                   ; preds = %for.inc.4.i, %for.inc.3.i.da9063_wdt_timeout_to_sel.exit_crit_edge, %for.inc.2.i.da9063_wdt_timeout_to_sel.exit_crit_edge, %for.inc.1.i.da9063_wdt_timeout_to_sel.exit_crit_edge, %for.inc.i.da9063_wdt_timeout_to_sel.exit_crit_edge, %if.else.da9063_wdt_timeout_to_sel.exit_crit_edge
  %retval.0.i13 = phi i32 [ 1, %if.else.da9063_wdt_timeout_to_sel.exit_crit_edge ], [ 2, %for.inc.i.da9063_wdt_timeout_to_sel.exit_crit_edge ], [ 3, %for.inc.1.i.da9063_wdt_timeout_to_sel.exit_crit_edge ], [ 4, %for.inc.2.i.da9063_wdt_timeout_to_sel.exit_crit_edge ], [ 5, %for.inc.3.i.da9063_wdt_timeout_to_sel.exit_crit_edge ], [ %spec.select.i, %for.inc.4.i ]
  %arrayidx = getelementptr [8 x i32], ptr @wdt_timeout, i32 0, i32 %retval.0.i13
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %timeout5 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %12 = ptrtoint ptr %timeout5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %timeout5, align 4
  br label %if.end6

if.end6:                                          ; preds = %da9063_wdt_timeout_to_sel.exit, %do.end
  %ret.016 = phi i32 [ 0, %da9063_wdt_timeout_to_sel.exit ], [ %ret.021, %do.end ]
  ret i32 %ret.016
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  %regmap.i.i = getelementptr inbounds %struct.da9063, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 300, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.not.i.i = icmp ugt i32 %3, 2
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %if.end.i.da9063_wdt_update_timeout.exit_crit_edge

if.end.i.da9063_wdt_update_timeout.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_update_timeout.exit

for.inc.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp1.not.1.i.i = icmp ugt i32 %3, 4
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.da9063_wdt_update_timeout.exit_crit_edge

for.inc.i.i.da9063_wdt_update_timeout.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_update_timeout.exit

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp1.not.2.i.i = icmp ugt i32 %3, 8
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.da9063_wdt_update_timeout.exit_crit_edge

for.inc.1.i.i.da9063_wdt_update_timeout.exit_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_update_timeout.exit

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp1.not.3.i.i = icmp ugt i32 %3, 16
  br i1 %cmp1.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.da9063_wdt_update_timeout.exit_crit_edge

for.inc.2.i.i.da9063_wdt_update_timeout.exit_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_update_timeout.exit

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp1.not.4.i.i = icmp ugt i32 %3, 32
  br i1 %cmp1.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.da9063_wdt_update_timeout.exit_crit_edge

for.inc.3.i.i.da9063_wdt_update_timeout.exit_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9063_wdt_update_timeout.exit

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %3)
  %cmp1.not.5.i.i = icmp ugt i32 %3, 65
  %spec.select.i.i = select i1 %cmp1.not.5.i.i, i32 7, i32 6
  br label %da9063_wdt_update_timeout.exit

da9063_wdt_update_timeout.exit:                   ; preds = %for.inc.4.i.i, %for.inc.3.i.i.da9063_wdt_update_timeout.exit_crit_edge, %for.inc.2.i.i.da9063_wdt_update_timeout.exit_crit_edge, %for.inc.1.i.i.da9063_wdt_update_timeout.exit_crit_edge, %for.inc.i.i.da9063_wdt_update_timeout.exit_crit_edge, %if.end.i.da9063_wdt_update_timeout.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end.i.da9063_wdt_update_timeout.exit_crit_edge ], [ 2, %for.inc.i.i.da9063_wdt_update_timeout.exit_crit_edge ], [ 3, %for.inc.1.i.i.da9063_wdt_update_timeout.exit_crit_edge ], [ 4, %for.inc.2.i.i.da9063_wdt_update_timeout.exit_crit_edge ], [ 5, %for.inc.3.i.i.da9063_wdt_update_timeout.exit_crit_edge ], [ %spec.select.i.i, %for.inc.4.i.i ]
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 17, i32 noundef 7, i32 noundef %retval.0.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %da9063_wdt_update_timeout.exit.if.end_crit_edge, label %da9063_wdt_update_timeout.exit.do.end_crit_edge

da9063_wdt_update_timeout.exit.do.end_crit_edge:  ; preds = %da9063_wdt_update_timeout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

da9063_wdt_update_timeout.exit.if.end_crit_edge:  ; preds = %da9063_wdt_update_timeout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %da9063_wdt_update_timeout.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i8 = phi i32 [ %call.i.i, %da9063_wdt_update_timeout.exit.do.end_crit_edge ], [ %call.i.i.i, %entry.do.end_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i8) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %da9063_wdt_update_timeout.exit.if.end_crit_edge
  %retval.0.i9 = phi i32 [ %retval.0.i8, %do.end ], [ 0, %da9063_wdt_update_timeout.exit.if.end_crit_edge ]
  ret i32 %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.da9063, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %2 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp ugt i32 %2, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.da9063, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 19, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_wdt_restart(ptr nocapture noundef readonly %wdd, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -32
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.while.body.preheader_crit_edge

entry.while.body.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %call1) #8
  br label %while.body.preheader

while.body.preheader:                             ; preds = %do.end, %entry.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 500, %while.body.preheader ]
  %dec = add nsw i32 %__ms.06, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_da9063_wdt__288_258_da9063_wdt_driver_init6, !1, !"__initcall__kmod_da9063_wdt__288_258_da9063_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/da9063_wdt.c", i32 258, i32 1}
!2 = !{ptr @__exitcall_da9063_wdt_driver_exit, !1, !"__exitcall_da9063_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/da9063_wdt.c", i32 260, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/da9063_wdt.c", i32 261, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/da9063_wdt.c", i32 262, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/da9063_wdt.c", i32 263, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/da9063_wdt.c", i32 255, i32 11}
!14 = !{ptr @da9063_wdt_driver, !15, !"da9063_wdt_driver", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/da9063_wdt.c", i32 252, i32 31}
!16 = !{ptr @da9063_watchdog_info, !17, !"da9063_watchdog_info", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/da9063_wdt.c", i32 189, i32 35}
!18 = !{ptr @da9063_watchdog_ops, !19, !"da9063_watchdog_ops", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/da9063_wdt.c", i32 194, i32 34}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/da9063_wdt.c", i32 101, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @da9063_wdt_start._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @da9063_wdt_start._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/da9063_wdt.c", i32 114, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @da9063_wdt_stop._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @da9063_wdt_stop._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/da9063_wdt.c", i32 135, i32 3}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @da9063_wdt_ping._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @da9063_wdt_ping._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/da9063_wdt.c", i32 180, i32 3}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @da9063_wdt_restart._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @da9063_wdt_restart._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @wdt_timeout, !45, !"wdt_timeout", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/da9063_wdt.c", i32 28, i32 27}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/da9063_wdt.c", i32 161, i32 3}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @da9063_wdt_set_timeout._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @da9063_wdt_set_timeout._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
