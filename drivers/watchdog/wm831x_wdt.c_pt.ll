; ModuleID = '/llk/IR_all_yes/drivers/watchdog/wm831x_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/wm831x_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.43 = type { i32, i16 }
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
%struct.wm831x = type { %struct.mutex, ptr, ptr, %struct.wm831x_pdata, i32, i32, %struct.mutex, ptr, [5 x i32], [5 x i32], i8, i8, i32, [16 x i32], [16 x i8], [16 x i8], %struct.mutex, %struct.list_head, i16, ptr, %struct.mutex, i8 }
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.wm831x_wdt_drvdata = type { %struct.watchdog_device, ptr, %struct.mutex, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wm831x_watchdog_pdata = type { i32, i32, i8 }

@__param_str_nowayout = internal constant [20 x i8] c"wm831x_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype191 = internal constant [34 x i8] c"wm831x_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout192 = internal constant [77 x i8] c"wm831x_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_wm831x_wdt__193_253_wm831x_wdt_driver_init6 = internal global ptr @wm831x_wdt_driver_init, section ".initcall6.init", align 4
@wm831x_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm831x_wdt_driver_exit = internal global ptr @wm831x_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author194 = internal constant [29 x i8] c"wm831x_wdt.author=Mark Brown\00", section ".modinfo", align 1
@__UNIQUE_ID_description195 = internal constant [39 x i8] c"wm831x_wdt.description=WM831x Watchdog\00", section ".modinfo", align 1
@__UNIQUE_ID_file196 = internal constant [44 x i8] c"wm831x_wdt.file=drivers/watchdog/wm831x_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [23 x i8] c"wm831x_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias198 = internal constant [42 x i8] c"wm831x_wdt.alias=platform:wm831x-watchdog\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm831x-watchdog\00", [16 x i8] zeroinitializer }, align 32
@wm831x_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read watchdog status: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm831x_wdt_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/wm831x_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_wdt_probe._entry_ptr = internal global ptr @wm831x_wdt_probe._entry, section ".printk_index", align 4
@wm831x_wdt_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 190, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Watchdog is paused\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm831x_wdt_probe._entry_ptr.9 = internal global ptr @wm831x_wdt_probe._entry.6, section ".printk_index", align 4
@wm831x_wdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&driver_data->lock\00", [45 x i8] zeroinitializer }, align 32
@wm831x_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"WM831x Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@wm831x_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @wm831x_wdt_start, ptr @wm831x_wdt_stop, ptr @wm831x_wdt_ping, ptr null, ptr @wm831x_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@wm831x_wdt_cfgs = internal constant { [7 x %struct.anon.43], [40 x i8] } { [7 x %struct.anon.43] [%struct.anon.43 { i32 1, i16 2 }, %struct.anon.43 { i32 2, i16 3 }, %struct.anon.43 { i32 4, i16 4 }, %struct.anon.43 { i32 8, i16 5 }, %struct.anon.43 { i32 16, i16 6 }, %struct.anon.43 { i32 32, i16 7 }, %struct.anon.43 { i32 33, i16 7 }], [40 x i8] zeroinitializer }, align 32
@wm831x_wdt_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 214, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown watchdog timeout: %x\0A\00", [34 x i8] zeroinitializer }, align 32
@wm831x_wdt_probe._entry_ptr.13 = internal global ptr @wm831x_wdt_probe._entry.11, section ".printk_index", align 4
@wm831x_wdt_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to unlock security key: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wm831x_wdt_probe._entry_ptr.16 = internal global ptr @wm831x_wdt_probe._entry.14, section ".printk_index", align 4
@wm831x_wdt_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.17, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm831x_wdt_start\00", [47 x i8] zeroinitializer }, align 32
@wm831x_wdt_start._entry_ptr = internal global ptr @wm831x_wdt_start._entry, section ".printk_index", align 4
@wm831x_wdt_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.3, i32 87, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm831x_wdt_stop\00", [16 x i8] zeroinitializer }, align 32
@wm831x_wdt_stop._entry_ptr = internal global ptr @wm831x_wdt_stop._entry, section ".printk_index", align 4
@wm831x_wdt_ping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Hardware watchdog update unsupported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm831x_wdt_ping\00", [16 x i8] zeroinitializer }, align 32
@wm831x_wdt_ping._entry_ptr = internal global ptr @wm831x_wdt_ping._entry, section ".printk_index", align 4
@wm831x_wdt_ping._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.20, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wm831x_wdt_ping._entry_ptr.22 = internal global ptr @wm831x_wdt_ping._entry.21, section ".printk_index", align 4
@wm831x_wdt_set_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.23, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm831x_wdt_set_timeout\00", [41 x i8] zeroinitializer }, align 32
@wm831x_wdt_set_timeout._entry_ptr = internal global ptr @wm831x_wdt_set_timeout._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 33]
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 21, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"wm831x_wdt_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 246, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 249, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 183, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 190, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 196, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"wm831x_wdt_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 158, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"wm831x_wdt_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 163, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"wm831x_wdt_cfgs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 39, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 213, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 237, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 63, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 86, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 107, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 119, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [33 x i8] c"../drivers/watchdog/wm831x_wdt.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 149, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_alias198, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__UNIQUE_ID_nowayout192, ptr @__UNIQUE_ID_nowayouttype191, ptr @__exitcall_wm831x_wdt_driver_exit, ptr @__initcall__kmod_wm831x_wdt__193_253_wm831x_wdt_driver_init6, ptr @__param_nowayout, ptr @wm831x_wdt_driver_exit, ptr @wm831x_wdt_ping._entry, ptr @wm831x_wdt_ping._entry.21, ptr @wm831x_wdt_ping._entry_ptr, ptr @wm831x_wdt_ping._entry_ptr.22, ptr @wm831x_wdt_probe._entry, ptr @wm831x_wdt_probe._entry.11, ptr @wm831x_wdt_probe._entry.14, ptr @wm831x_wdt_probe._entry.6, ptr @wm831x_wdt_probe._entry_ptr, ptr @wm831x_wdt_probe._entry_ptr.13, ptr @wm831x_wdt_probe._entry_ptr.16, ptr @wm831x_wdt_probe._entry_ptr.9, ptr @wm831x_wdt_set_timeout._entry, ptr @wm831x_wdt_set_timeout._entry_ptr, ptr @wm831x_wdt_start._entry, ptr @wm831x_wdt_start._entry_ptr, ptr @wm831x_wdt_stop._entry, ptr @wm831x_wdt_stop._entry_ptr, ptr @nowayout, ptr @wm831x_wdt_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @wm831x_wdt_probe.__key, ptr @.str.10, ptr @wm831x_wdt_info, ptr @wm831x_wdt_ops, ptr @wm831x_wdt_cfgs, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.23], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_cfgs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_ping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_ping._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_wdt_set_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm831x_wdt_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm831x_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %call4 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16388) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev5 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %call4) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %do.end9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev10 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.7) #7
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %if.end.if.end11_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 208, i32 noundef 3520) #4
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.body16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body16:                                        ; preds = %if.end11
  %lock = getelementptr inbounds %struct.wm831x_wdt_drvdata, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @wm831x_wdt_probe.__key) #4
  %wm831x19 = getelementptr inbounds %struct.wm831x_wdt_drvdata, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %wm831x19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %wm831x19, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wm831x_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @wm831x_wdt_ops, ptr %ops, align 4
  %parent20 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %parent20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %parent20, align 4
  %14 = load i8, ptr @nowayout, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  br i1 %tobool21.not, label %do.body16.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

do.body16.watchdog_set_nowayout.exit_crit_edge:   ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #4
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %do.body16.watchdog_set_nowayout.exit_crit_edge
  %driver_data.i117 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %15 = ptrtoint ptr %driver_data.i117 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i117, align 4
  %call22 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16388) #4
  %and23 = and i32 %call22, 7
  %switch.tableidx = add nsw i32 %and23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 6
  br i1 %16, label %if.else, label %do.end34

do.end34:                                         ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev35 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.12, i32 noundef %and23) #7
  br label %if.end37

if.else:                                          ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx36 = getelementptr [7 x %struct.anon.43], ptr @wm831x_wdt_cfgs, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx36, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %timeout, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %do.end34
  %tobool38.not = icmp eq ptr %5, null
  br i1 %tobool38.not, label %if.end37.if.end61_crit_edge, label %if.end41

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.end41:                                         ; preds = %if.end37
  %watchdog = getelementptr inbounds %struct.wm831x_pdata, ptr %5, i32 0, i32 13
  %22 = ptrtoint ptr %watchdog to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %watchdog, align 4
  %tobool42.not = icmp eq ptr %23, null
  br i1 %tobool42.not, label %if.end41.if.end61_crit_edge, label %if.then43

if.end41.if.end61_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then43:                                        ; preds = %if.end41
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %secondary = getelementptr inbounds %struct.wm831x_watchdog_pdata, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %secondary to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %secondary, align 4
  %software = getelementptr inbounds %struct.wm831x_watchdog_pdata, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %software to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %software, align 4
  %call49 = tail call i32 @wm831x_reg_unlock(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %do.end58

if.then52:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl i32 %25, 4
  %or = or i32 %shl, %and23
  %shl45 = shl i32 %27, 8
  %or46 = or i32 %or, %shl45
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %shl47 = shl nuw nsw i32 %bf.cast, 13
  %or48 = or i32 %or46, %shl47
  %conv53 = trunc i32 %or48 to i16
  %call54 = tail call i32 @wm831x_reg_write(ptr noundef %3, i16 noundef zeroext 16388, i16 noundef zeroext %conv53) #4
  tail call void @wm831x_reg_lock(ptr noundef %3) #4
  br label %if.end61

do.end58:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  %dev59 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.15, i32 noundef %call49) #7
  br label %cleanup

if.end61:                                         ; preds = %if.then52, %if.end41.if.end61_crit_edge, %if.end37.if.end61_crit_edge
  %call63 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end58, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call63, %if.end61 ], [ %call49, %do.end58 ], [ -12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm831x_reg_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_wdt_start(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wm831x1 = getelementptr inbounds %struct.wm831x_wdt_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm831x1, align 4
  %lock = getelementptr inbounds %struct.wm831x_wdt_drvdata, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %call2 = tail call i32 @wm831x_reg_unlock(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16388, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #4
  tail call void @wm831x_reg_lock(ptr noundef %3) #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %call2) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call2, %do.end ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_wdt_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wm831x1 = getelementptr inbounds %struct.wm831x_wdt_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm831x1, align 4
  %lock = getelementptr inbounds %struct.wm831x_wdt_drvdata, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %call2 = tail call i32 @wm831x_reg_unlock(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16388, i16 noundef zeroext -32768, i16 noundef zeroext 0) #4
  tail call void @wm831x_reg_lock(ptr noundef %3) #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %call2) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call2, %do.end ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_wdt_ping(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wm831x1 = getelementptr inbounds %struct.wm831x_wdt_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm831x1, align 4
  %lock = getelementptr inbounds %struct.wm831x_wdt_drvdata, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %call2 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16388) #4
  %and = and i32 %call2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19) #7
  br label %out

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @wm831x_reg_unlock(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then8, label %do.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = trunc i32 %call2 to i16
  %conv5 = or i16 %6, 2048
  %call9 = tail call i32 @wm831x_reg_write(ptr noundef %3, i16 noundef zeroext 16388, i16 noundef zeroext %conv5) #4
  tail call void @wm831x_reg_lock(ptr noundef %3) #4
  br label %out

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev13 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %call6) #7
  br label %out

out:                                              ; preds = %do.end12, %if.then8, %do.end
  %ret.0 = phi i32 [ %call9, %if.then8 ], [ %call6, %do.end12 ], [ -22, %do.end ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_wdt_set_timeout(ptr nocapture noundef %wdt_dev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wm831x1 = getelementptr inbounds %struct.wm831x_wdt_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm831x1, align 4
  %4 = zext i32 %timeout to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %timeout, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end5_crit_edge
    i32 2, label %if.end5.fold.split
    i32 4, label %if.end5.fold.split32
    i32 8, label %if.end5.fold.split33
    i32 16, label %if.end5.fold.split34
    i32 32, label %if.end5.fold.split35
    i32 33, label %if.end5.fold.split36
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split32:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split33:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split34:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split36:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5:                                          ; preds = %if.end5.fold.split36, %if.end5.fold.split35, %if.end5.fold.split34, %if.end5.fold.split33, %if.end5.fold.split32, %if.end5.fold.split, %entry.if.end5_crit_edge
  %i.030.lcssa = phi i32 [ 0, %entry.if.end5_crit_edge ], [ 1, %if.end5.fold.split ], [ 2, %if.end5.fold.split32 ], [ 3, %if.end5.fold.split33 ], [ 4, %if.end5.fold.split34 ], [ 5, %if.end5.fold.split35 ], [ 6, %if.end5.fold.split36 ]
  %call6 = tail call i32 @wm831x_reg_unlock(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %do.end

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr [7 x %struct.anon.43], ptr @wm831x_wdt_cfgs, i32 0, i32 %i.030.lcssa, i32 1
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 4
  %call10 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16388, i16 noundef zeroext 7, i16 noundef zeroext %6) #4
  tail call void @wm831x_reg_lock(ptr noundef %3) #4
  br label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %call6) #7
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then8
  %ret.0 = phi i32 [ %call10, %if.then8 ], [ %call6, %do.end ]
  %timeout12 = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %9 = ptrtoint ptr %timeout12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %timeout, ptr %timeout12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype191, !1, !"__UNIQUE_ID_nowayouttype191", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout192, !4, !"__UNIQUE_ID_nowayout192", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 23, i32 1}
!5 = !{ptr @__initcall__kmod_wm831x_wdt__193_253_wm831x_wdt_driver_init6, !6, !"__initcall__kmod_wm831x_wdt__193_253_wm831x_wdt_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 253, i32 1}
!7 = !{ptr @__exitcall_wm831x_wdt_driver_exit, !6, !"__exitcall_wm831x_wdt_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author194, !9, !"__UNIQUE_ID_author194", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 255, i32 1}
!10 = !{ptr @__UNIQUE_ID_description195, !11, !"__UNIQUE_ID_description195", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 256, i32 1}
!12 = !{ptr @__UNIQUE_ID_file196, !13, !"__UNIQUE_ID_file196", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 257, i32 1}
!14 = !{ptr @__UNIQUE_ID_license197, !13, !"__UNIQUE_ID_license197", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias198, !16, !"__UNIQUE_ID_alias198", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 258, i32 1}
!17 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!18 = !{ptr @nowayout, !19, !"nowayout", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 21, i32 13}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 249, i32 11}
!22 = !{ptr @wm831x_wdt_driver, !23, !"wm831x_wdt_driver", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 246, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 183, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wm831x_wdt_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @wm831x_wdt_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 190, i32 3}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @wm831x_wdt_probe._entry.6, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @wm831x_wdt_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @wm831x_wdt_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 196, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 213, i32 3}
!42 = !{ptr @wm831x_wdt_probe._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wm831x_wdt_probe._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 237, i32 4}
!46 = !{ptr @wm831x_wdt_probe._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wm831x_wdt_probe._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @wm831x_wdt_info, !49, !"wm831x_wdt_info", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 158, i32 35}
!50 = !{ptr @wm831x_wdt_ops, !51, !"wm831x_wdt_ops", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 163, i32 34}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 63, i32 3}
!54 = !{ptr @wm831x_wdt_start._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wm831x_wdt_start._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 86, i32 3}
!58 = !{ptr @wm831x_wdt_stop._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wm831x_wdt_stop._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 107, i32 3}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @wm831x_wdt_ping._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @wm831x_wdt_ping._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @wm831x_wdt_ping._entry.21, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 119, i32 3}
!67 = !{ptr @wm831x_wdt_ping._entry_ptr.22, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 149, i32 3}
!70 = !{ptr @wm831x_wdt_set_timeout._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wm831x_wdt_set_timeout._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @wm831x_wdt_cfgs, !73, !"wm831x_wdt_cfgs", i1 false, i1 false}
!73 = !{!"../drivers/watchdog/wm831x_wdt.c", i32 39, i32 3}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
