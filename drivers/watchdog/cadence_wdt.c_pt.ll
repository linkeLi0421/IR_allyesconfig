; ModuleID = '/llk/IR_all_yes/drivers/watchdog/cadence_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/cadence_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cdns_wdt = type { ptr, i8, ptr, i32, i32, %struct.spinlock, %struct.watchdog_device }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_wdt_timeout = internal constant [24 x i8] c"cadence_wdt.wdt_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wdt_timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_wdt_timeout = internal constant %struct.kernel_param { ptr @__param_str_wdt_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @wdt_timeout } }, section "__param", align 4
@__UNIQUE_ID_wdt_timeouttype187 = internal constant [37 x i8] c"cadence_wdt.parmtype=wdt_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wdt_timeout188 = internal constant [68 x i8] c"cadence_wdt.parm=wdt_timeout:Watchdog time in seconds. (default=10)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"cadence_wdt.nowayout\00", align 1
@nowayout = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype189 = internal constant [34 x i8] c"cadence_wdt.parmtype=nowayout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout190 = internal constant [78 x i8] c"cadence_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_cadence_wdt__191_434_cdns_wdt_driver_init6 = internal global ptr @cdns_wdt_driver_init, section ".initcall6.init", align 4
@cdns_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_wdt_driver_exit = internal global ptr @cdns_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author192 = internal constant [32 x i8] c"cadence_wdt.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [56 x i8] c"cadence_wdt.description=Watchdog driver for Cadence WDT\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [46 x i8] c"cadence_wdt.file=drivers/watchdog/cadence_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [24 x i8] c"cadence_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdns-wdt\00", [23 x i8] zeroinitializer }, align 32
@cdns_wdt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,wdt-r1p2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cdns_wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cdns_wdt_suspend, ptr @cdns_wdt_resume, ptr @cdns_wdt_suspend, ptr @cdns_wdt_resume, ptr @cdns_wdt_suspend, ptr @cdns_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cdns_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"cdns_wdt watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@cdns_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @cdns_wdt_start, ptr @cdns_wdt_stop, ptr @cdns_wdt_reload, ptr null, ptr @cdns_wdt_settimeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reset-on-timeout\00", [47 x i8] zeroinitializer }, align 32
@cdns_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot register interrupt handler err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns_wdt_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/cadence_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_wdt_probe._entry_ptr = internal global ptr @cdns_wdt_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"input clock not found\0A\00", [41 x i8] zeroinitializer }, align 32
@cdns_wdt_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@cdns_wdt_probe._entry_ptr.10 = internal global ptr @cdns_wdt_probe._entry.8, section ".printk_index", align 4
@cdns_wdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&wdt->io_lock\00", [18 x i8] zeroinitializer }, align 32
@cdns_wdt_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 370, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Xilinx Watchdog Timer with timeout %ds%s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cdns_wdt_probe._entry_ptr.15 = internal global ptr @cdns_wdt_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", nowayout\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cdns_wdt_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 253, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Watchdog timed out. Internal reset not enabled\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns_wdt_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@cdns_wdt_irq_handler._entry_ptr = internal global ptr @cdns_wdt_irq_handler._entry, section ".printk_index", align 4
@cdns_wdt_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.20, ptr @.str.4, i32 407, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns_wdt_resume\00", [16 x i8] zeroinitializer }, align 32
@cdns_wdt_resume._entry_ptr = internal global ptr @cdns_wdt_resume._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"wdt_timeout\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 49, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 50, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"cdns_wdt_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 425, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 428, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"cdns_wdt_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 418, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"cdns_wdt_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 416, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"cdns_wdt_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 262, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"cdns_wdt_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 269, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 315, i32 49 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 321, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 339, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 343, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 360, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 369, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 252, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [34 x i8] c"../drivers/watchdog/cadence_wdt.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 407, i32 4 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__UNIQUE_ID_nowayout190, ptr @__UNIQUE_ID_nowayouttype189, ptr @__UNIQUE_ID_wdt_timeout188, ptr @__UNIQUE_ID_wdt_timeouttype187, ptr @__exitcall_cdns_wdt_driver_exit, ptr @__initcall__kmod_cadence_wdt__191_434_cdns_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_wdt_timeout, ptr @cdns_wdt_driver_exit, ptr @cdns_wdt_irq_handler._entry, ptr @cdns_wdt_irq_handler._entry_ptr, ptr @cdns_wdt_probe._entry, ptr @cdns_wdt_probe._entry.12, ptr @cdns_wdt_probe._entry.8, ptr @cdns_wdt_probe._entry_ptr, ptr @cdns_wdt_probe._entry_ptr.10, ptr @cdns_wdt_probe._entry_ptr.15, ptr @cdns_wdt_resume._entry, ptr @cdns_wdt_resume._entry_ptr, ptr @wdt_timeout, ptr @nowayout, ptr @cdns_wdt_driver, ptr @.str, ptr @cdns_wdt_of_match, ptr @cdns_wdt_pm_ops, ptr @cdns_wdt_info, ptr @cdns_wdt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @cdns_wdt_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_wdt_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_wdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 172, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cdns_wdt_device2 = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 6
  %info = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cdns_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cdns_wdt_ops, ptr %ops, align 4
  %timeout = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %timeout, align 4
  %min_timeout = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 6, i32 9
  %3 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 6, i32 10
  %4 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 516, ptr %max_timeout, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i125 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i125, null
  %rst = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 1
  %frombool = zext i1 %tobool.i to i8
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %rst, align 4
  %call11 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %tobool13.not = xor i1 %tobool.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp = icmp sgt i32 %call11, -1
  %or.cond = select i1 %tobool13.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then14, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then14:                                        ; preds = %if.end9
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %call.i126 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call11, ptr noundef nonnull @cdns_wdt_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %11, ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool16.not = icmp eq i32 %call.i126, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %do.end

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call.i126) #8
  br label %cleanup

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %parent = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %parent, align 4
  %13 = load i32, ptr @wdt_timeout, align 4
  %call20 = tail call i32 @watchdog_init_timeout(ptr noundef %cdns_wdt_device2, i32 noundef %13, ptr noundef %dev1) #5
  %14 = load i32, ptr @nowayout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not = icmp eq i32 %14, 0
  br i1 %tobool21.not, label %if.end19.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end19.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 6, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end19.watchdog_set_nowayout.exit_crit_edge
  %status.i127 = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 6, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i127) #5
  %driver_data.i = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 6, i32 16
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call22, ptr %clk, align 4
  %cmp.i128 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then25, label %if.end29

if.then25:                                        ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call22 to i32
  %call28 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %17, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end29:                                         ; preds = %watchdog_set_nowayout.exit
  %call.i129 = tail call i32 @clk_prepare(ptr noundef %call22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.do.end36_crit_edge

if.end29.do.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.end.i:                                         ; preds = %if.end29
  %call1.i = tail call i32 @clk_enable(ptr noundef %call22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end37, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call22) #5
  br label %do.end36

do.end36:                                         ; preds = %if.then3.i, %if.end29.do.end36_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i129, %if.end29.do.end36_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end.i
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %call.i130 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @cdns_clk_disable_unprepare, ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool.not.i131 = icmp eq i32 %call.i130, 0
  br i1 %tobool.not.i131, label %if.end42, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %19) #5
  tail call void @clk_unprepare(ptr noundef %19) #5
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %call44 = tail call i32 @clk_get_rate(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 75000001, i32 %call44)
  %cmp45 = icmp ult i32 %call44, 75000001
  %spec.select = select i1 %cmp45, i32 512, i32 4096
  %spec.select140 = select i1 %cmp45, i32 2, i32 3
  %22 = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select140, ptr %24, align 4
  %io_lock = getelementptr inbounds %struct.cdns_wdt, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %io_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @cdns_wdt_probe.__key, i16 noundef signext 3) #5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i127) #5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status.i127) #5
  %call54 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %cdns_wdt_device2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timeout, align 4
  %29 = load i32, ptr @nowayout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool62.not = icmp eq i32 %29, 0
  %cond = select i1 %tobool62.not, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %28, ptr noundef nonnull %cond) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end42.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end36, %if.then25, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ %call28, %if.then25 ], [ %retval.0.i.ph, %do.end36 ], [ 0, %if.end57 ], [ %call.i126, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call.i130, %devm_add_action_or_reset.exit ], [ %call54, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_wdt_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #5
  tail call void @clk_unprepare(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %3) #5
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %prescaler = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %prescaler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prescaler, align 4
  %div = udiv i32 %call1, %7
  %mul = mul i32 %div, %5
  %div233 = lshr i32 %mul, 12
  %8 = trunc i32 %div233 to i16
  %conv = add i16 %8, 1
  %9 = tail call i16 @llvm.umin.i16(i16 %conv, i16 4095)
  %io_lock = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %io_lock) #5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 12626688) #5, !srcloc !82
  %12 = shl nuw nsw i16 %9, 2
  %conv7 = zext i16 %12 to i32
  %ctrl_clksel = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %ctrl_clksel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctrl_clksel, align 4
  %or = or i32 %14, %conv7
  %or8 = or i32 %or, 9568256
  %15 = tail call i32 @llvm.bswap.i32(i32 %or8) #5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #5, !srcloc !82
  %rst = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %rst to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rst, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %. = select i1 %tobool.not, i32 11255861, i32 11255859
  %20 = tail call i32 @llvm.bswap.i32(i32 %.) #5
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !82
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i34 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 -1726414848) #5, !srcloc !82
  tail call void @_raw_spin_unlock(ptr noundef %io_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %io_lock = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %io_lock) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 12626688) #5, !srcloc !82
  tail call void @_raw_spin_unlock(ptr noundef %io_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_wdt_reload(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %io_lock = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %io_lock) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1726414848) #5, !srcloc !82
  tail call void @_raw_spin_unlock(ptr noundef %io_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_wdt_settimeout(ptr nocapture noundef %wdd, i32 noundef %new_time) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_time, ptr %timeout, align 4
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.cdns_wdt, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %4) #5
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timeout, align 4
  %prescaler.i = getelementptr inbounds %struct.cdns_wdt, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %prescaler.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prescaler.i, align 4
  %div.i = udiv i32 %call1.i, %8
  %mul.i = mul i32 %div.i, %6
  %div233.i = lshr i32 %mul.i, 12
  %9 = trunc i32 %div233.i to i16
  %conv.i = add i16 %9, 1
  %10 = tail call i16 @llvm.umin.i16(i16 %conv.i, i16 4095) #5
  %io_lock.i = getelementptr inbounds %struct.cdns_wdt, ptr %2, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %io_lock.i) #5
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 12626688) #5, !srcloc !82
  %13 = shl nuw nsw i16 %10, 2
  %conv7.i = zext i16 %13 to i32
  %ctrl_clksel.i = getelementptr inbounds %struct.cdns_wdt, ptr %2, i32 0, i32 4
  %14 = ptrtoint ptr %ctrl_clksel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl_clksel.i, align 4
  %or.i = or i32 %15, %conv7.i
  %or8.i = or i32 %or.i, 9568256
  %16 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #5
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #5, !srcloc !82
  %rst.i = getelementptr inbounds %struct.cdns_wdt, ptr %2, i32 0, i32 1
  %19 = ptrtoint ptr %rst.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rst.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %..i = select i1 %tobool.not.i, i32 11255861, i32 11255859
  %21 = tail call i32 @llvm.bswap.i32(i32 %..i) #5
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #5, !srcloc !82
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %2, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 -1726414848) #5, !srcloc !82
  tail call void @_raw_spin_unlock(ptr noundef %io_lock.i) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_wdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 6, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 6, i32 16
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %io_lock.i = getelementptr inbounds %struct.cdns_wdt, ptr %5, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %io_lock.i) #5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 12626688) #5, !srcloc !82
  tail call void @_raw_spin_unlock(ptr noundef %io_lock.i) #5
  %clk = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_wdt_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 6, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 6, i32 16
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.cdns_wdt, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  %call1.i12 = tail call i32 @clk_get_rate(ptr noundef %9) #5
  %timeout.i = getelementptr inbounds %struct.cdns_wdt, ptr %1, i32 0, i32 6, i32 7
  %10 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout.i, align 4
  %prescaler.i = getelementptr inbounds %struct.cdns_wdt, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %prescaler.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prescaler.i, align 4
  %div.i = udiv i32 %call1.i12, %13
  %mul.i = mul i32 %div.i, %11
  %div233.i = lshr i32 %mul.i, 12
  %14 = trunc i32 %div233.i to i16
  %conv.i = add i16 %14, 1
  %15 = tail call i16 @llvm.umin.i16(i16 %conv.i, i16 4095) #5
  %io_lock.i = getelementptr inbounds %struct.cdns_wdt, ptr %7, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %io_lock.i) #5
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 12626688) #5, !srcloc !82
  %18 = shl nuw nsw i16 %15, 2
  %conv7.i = zext i16 %18 to i32
  %ctrl_clksel.i = getelementptr inbounds %struct.cdns_wdt, ptr %7, i32 0, i32 4
  %19 = ptrtoint ptr %ctrl_clksel.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl_clksel.i, align 4
  %or.i = or i32 %20, %conv7.i
  %or8.i = or i32 %or.i, 9568256
  %21 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #5
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #5, !srcloc !82
  %rst.i = getelementptr inbounds %struct.cdns_wdt, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %rst.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rst.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i13 = icmp eq i8 %25, 0
  %..i = select i1 %tobool.not.i13, i32 11255861, i32 11255859
  %26 = tail call i32 @llvm.bswap.i32(i32 %..i) #5
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !82
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 -1726414848) #5, !srcloc !82
  tail call void @_raw_spin_unlock(ptr noundef %io_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !51, !52, !53, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__param_wdt_timeout, !1, !"__param_wdt_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/cadence_wdt.c", i32 52, i32 1}
!2 = !{ptr @__UNIQUE_ID_wdt_timeouttype187, !1, !"__UNIQUE_ID_wdt_timeouttype187", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_wdt_timeout188, !4, !"__UNIQUE_ID_wdt_timeout188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/cadence_wdt.c", i32 53, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/cadence_wdt.c", i32 57, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype189, !6, !"__UNIQUE_ID_nowayouttype189", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout190, !9, !"__UNIQUE_ID_nowayout190", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/cadence_wdt.c", i32 58, i32 1}
!10 = !{ptr @__initcall__kmod_cadence_wdt__191_434_cdns_wdt_driver_init6, !11, !"__initcall__kmod_cadence_wdt__191_434_cdns_wdt_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/cadence_wdt.c", i32 434, i32 1}
!12 = !{ptr @__exitcall_cdns_wdt_driver_exit, !11, !"__exitcall_cdns_wdt_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author192, !14, !"__UNIQUE_ID_author192", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/cadence_wdt.c", i32 436, i32 1}
!15 = !{ptr @__UNIQUE_ID_description193, !16, !"__UNIQUE_ID_description193", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/cadence_wdt.c", i32 437, i32 1}
!17 = !{ptr @__UNIQUE_ID_file194, !18, !"__UNIQUE_ID_file194", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/cadence_wdt.c", i32 438, i32 1}
!19 = !{ptr @__UNIQUE_ID_license195, !18, !"__UNIQUE_ID_license195", i1 false, i1 false}
!20 = !{ptr @wdt_timeout, !21, !"wdt_timeout", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/cadence_wdt.c", i32 49, i32 12}
!22 = !{ptr @__param_str_wdt_timeout, !1, !"__param_str_wdt_timeout", i1 false, i1 false}
!23 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!24 = !{ptr @nowayout, !25, !"nowayout", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/cadence_wdt.c", i32 50, i32 12}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/cadence_wdt.c", i32 428, i32 11}
!28 = !{ptr @cdns_wdt_driver, !29, !"cdns_wdt_driver", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/cadence_wdt.c", i32 425, i32 31}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/cadence_wdt.c", i32 315, i32 49}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/cadence_wdt.c", i32 321, i32 4}
!34 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cdns_wdt_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @cdns_wdt_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/cadence_wdt.c", i32 339, i32 10}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/cadence_wdt.c", i32 343, i32 3}
!44 = !{ptr @cdns_wdt_probe._entry.8, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cdns_wdt_probe._entry_ptr.10, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @cdns_wdt_probe.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/cadence_wdt.c", i32 360, i32 2}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/watchdog/cadence_wdt.c", i32 369, i32 2}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cdns_wdt_probe._entry.12, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @cdns_wdt_probe._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cdns_wdt_info, !57, !"cdns_wdt_info", i1 false, i1 false}
!57 = !{!"../drivers/watchdog/cadence_wdt.c", i32 262, i32 35}
!58 = !{ptr @cdns_wdt_ops, !59, !"cdns_wdt_ops", i1 false, i1 false}
!59 = !{!"../drivers/watchdog/cadence_wdt.c", i32 269, i32 34}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/watchdog/cadence_wdt.c", i32 252, i32 2}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @cdns_wdt_irq_handler._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @cdns_wdt_irq_handler._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @cdns_wdt_of_match, !66, !"cdns_wdt_of_match", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/cadence_wdt.c", i32 418, i32 34}
!67 = !{ptr @cdns_wdt_pm_ops, !68, !"cdns_wdt_pm_ops", i1 false, i1 false}
!68 = !{!"../drivers/watchdog/cadence_wdt.c", i32 416, i32 8}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/cadence_wdt.c", i32 407, i32 4}
!71 = !{ptr @cdns_wdt_resume._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cdns_wdt_resume._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 4239587}
!83 = !{i8 0, i8 2}
