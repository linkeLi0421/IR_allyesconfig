; ModuleID = '/llk/IR_all_yes/drivers/watchdog/at91sam9_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/at91sam9_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.at91wdt = type { %struct.watchdog_device, ptr, i32, %struct.timer_list, i32, i32, i32, i8, i32, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_heartbeat = internal constant [23 x i8] c"at91sam9_wdt.heartbeat\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype191 = internal constant [36 x i8] c"at91sam9_wdt.parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat192 = internal constant [75 x i8] c"at91sam9_wdt.parm=heartbeat:Watchdog heartbeats in seconds. (default = 15)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [22 x i8] c"at91sam9_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype193 = internal constant [36 x i8] c"at91sam9_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout194 = internal constant [79 x i8] c"at91sam9_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@at91wdt_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014at91sam9_wdt: I quit now, hardware will probably reboot!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91wdt_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/watchdog/at91sam9_wdt.c\00", [32 x i8] zeroinitializer }, align 32
@at91wdt_remove._entry_ptr = internal global ptr @at91wdt_remove._entry, section ".printk_index", align 4
@__initcall__kmod_at91sam9_wdt__195_414_at91wdt_driver_init6 = internal global ptr @at91wdt_driver_init, section ".initcall6.init", align 4
@at91wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.41, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at91wdt_driver_exit = internal global ptr @at91wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author196 = internal constant [67 x i8] c"at91sam9_wdt.author=Renaud CERRATO <r.cerrato@til-technologies.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description197 = internal constant [72 x i8] c"at91sam9_wdt.description=Watchdog driver for Atmel AT91SAM9x processors\00", section ".modinfo", align 1
@__UNIQUE_ID_file198 = internal constant [48 x i8] c"at91sam9_wdt.file=drivers/watchdog/at91sam9_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license199 = internal constant [25 x i8] c"at91sam9_wdt.license=GPL\00", section ".modinfo", align 1
@at91_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"AT91SAM9 Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@at91_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @at91_wdt_start, ptr @at91_wdt_stop, ptr null, ptr null, ptr @at91_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@at91wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 358, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not enable slow clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91wdt_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91wdt_probe._entry_ptr = internal global ptr @at91wdt_probe._entry, section ".printk_index", align 4
@at91wdt_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016at91sam9_wdt: enabled (heartbeat=%d sec, nowayout=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@at91wdt_probe._entry_ptr.9 = internal global ptr @at91wdt_probe._entry.7, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@of_at91wdt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 275, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get IRQ from DT\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"of_at91wdt_init\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@of_at91wdt_init._entry_ptr = internal global ptr @of_at91wdt_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel,max-heartbeat-sec\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel,min-heartbeat-sec\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel,watchdog-type\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"software\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,reset-type\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"proc\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel,disable\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel,idle-halt\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel,dbg-halt\00", [17 x i8] zeroinitializer }, align 32
@at91_wdt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"watchdog is disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91_wdt_init\00", [18 x i8] zeroinitializer }, align 32
@at91_wdt_init._entry_ptr = internal global ptr @at91_wdt_init._entry, section ".printk_index", align 4
@at91_wdt_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"heartbeat is too small for the system to handle it correctly\0A\00", [34 x i8] zeroinitializer }, align 32
@at91_wdt_init._entry_ptr.26 = internal global ptr @at91_wdt_init._entry.24, section ".printk_index", align 4
@at91_wdt_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 206, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"min heartbeat and max heartbeat might be too close for the system to handle it correctly\0A\00", [38 x i8] zeroinitializer }, align 32
@at91_wdt_init._entry_ptr.29 = internal global ptr @at91_wdt_init._entry.27, section ".printk_index", align 4
@at91_wdt_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 220, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"watchdog already configured differently (mr = %x expecting %x)\0A\00", [32 x i8] zeroinitializer }, align 32
@at91_wdt_init._entry_ptr.32 = internal global ptr @at91_wdt_init._entry.30, section ".printk_index", align 4
@at91_wdt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&wdt->timer)\00", [18 x i8] zeroinitializer }, align 32
@wdt_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012at91sam9_wdt: at91sam9 WDT software reset\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wdt_interrupt\00", [18 x i8] zeroinitializer }, align 32
@wdt_interrupt._entry_ptr = internal global ptr @wdt_interrupt._entry, section ".printk_index", align 4
@wdt_interrupt._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\012at91sam9_wdt: Reboot didn't ?????\0A\00", [59 x i8] zeroinitializer }, align 32
@wdt_interrupt._entry_ptr.38 = internal global ptr @wdt_interrupt._entry.36, section ".printk_index", align 4
@at91_ping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012at91sam9_wdt: I will reset your machine !\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at91_ping\00", [22 x i8] zeroinitializer }, align 32
@at91_ping._entry_ptr = internal global ptr @at91_ping._entry, section ".printk_index", align 4
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"at91_wdt\00", [23 x i8] zeroinitializer }, align 32
@at91_wdt_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 70, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 75, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 390, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"at91wdt_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 406, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"at91_wdt_info\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 252, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"at91_wdt_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 258, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 358, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 374, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 275, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 277, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 282, i32 39 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 294, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 295, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 302, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 303, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 306, i32 32 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 311, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 314, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 174, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 186, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 205, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 218, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 222, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 101, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 103, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 128, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 409, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"at91_wdt_dt_ids\00", align 1
@___asan_gen_.190 = private constant [35 x i8] c"../drivers/watchdog/at91sam9_wdt.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 398, i32 34 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author196, ptr @__UNIQUE_ID_description197, ptr @__UNIQUE_ID_file198, ptr @__UNIQUE_ID_heartbeat192, ptr @__UNIQUE_ID_heartbeattype191, ptr @__UNIQUE_ID_license199, ptr @__UNIQUE_ID_nowayout194, ptr @__UNIQUE_ID_nowayouttype193, ptr @__exitcall_at91wdt_driver_exit, ptr @__initcall__kmod_at91sam9_wdt__195_414_at91wdt_driver_init6, ptr @__param_heartbeat, ptr @__param_nowayout, ptr @at91_ping._entry, ptr @at91_ping._entry_ptr, ptr @at91_wdt_init._entry, ptr @at91_wdt_init._entry.24, ptr @at91_wdt_init._entry.27, ptr @at91_wdt_init._entry.30, ptr @at91_wdt_init._entry_ptr, ptr @at91_wdt_init._entry_ptr.26, ptr @at91_wdt_init._entry_ptr.29, ptr @at91_wdt_init._entry_ptr.32, ptr @at91wdt_driver_exit, ptr @at91wdt_probe._entry, ptr @at91wdt_probe._entry.7, ptr @at91wdt_probe._entry_ptr, ptr @at91wdt_probe._entry_ptr.9, ptr @at91wdt_remove, ptr @at91wdt_remove._entry, ptr @at91wdt_remove._entry_ptr, ptr @of_at91wdt_init._entry, ptr @of_at91wdt_init._entry_ptr, ptr @wdt_interrupt._entry, ptr @wdt_interrupt._entry.36, ptr @wdt_interrupt._entry_ptr, ptr @wdt_interrupt._entry_ptr.38, ptr @heartbeat, ptr @nowayout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @at91wdt_driver, ptr @at91_wdt_info, ptr @at91_wdt_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @at91_wdt_init.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @at91_wdt_dt_ids], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_at91wdt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_interrupt._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_ping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91wdt_remove(ptr nocapture noundef readonly %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @watchdog_unregister_device(ptr noundef %1) #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %timer = getelementptr inbounds %struct.at91wdt, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @del_timer(ptr noundef %timer) #9
  %sclk = getelementptr inbounds %struct.at91wdt, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sclk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at91wdt_driver, ptr noundef nonnull @at91wdt_probe, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91wdt_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91wdt_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %min.i = alloca i32, align 4
  %max.i = alloca i32, align 4
  %tmp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 188, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mr = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1073684992, ptr %mr, align 4
  %mr_mask = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %mr_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1073741823, ptr %mr_mask, align 4
  %2 = load i8, ptr @nowayout, align 1, !range !120
  %nowayout = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %nowayout to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %nowayout, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @at91_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @at91_wdt_ops, ptr %ops, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15, ptr %timeout, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65535, ptr %max_timeout, align 4
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %sclk = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16, ptr %sclk, align 4
  %cmp.i87 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %call.i88 = tail call i32 @clk_prepare(ptr noundef %call16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.do.end_crit_edge

if.end22.do.end_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %call16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call16) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end22.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i88, %if.end22.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end.i
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %tobool30.not = icmp eq ptr %15, null
  br i1 %tobool30.not, label %if.end28.if.end38_crit_edge, label %if.then31

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then31:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.i) #9
  %16 = ptrtoint ptr %min.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %min.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.i) #9
  %17 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %max.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp.i, align 4, !annotation !121
  %call.i89 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %15, i32 noundef 0) #9
  %irq.i = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i89, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %do.end.i, label %if.then31.if.end.i91_crit_edge

if.then31.if.end.i91_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i91

do.end.i:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.10) #12
  br label %if.end.i91

if.end.i91:                                       ; preds = %do.end.i, %if.then31.if.end.i91_crit_edge
  %call2.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %15, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull %max.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i91.if.end15.i_crit_edge

if.end.i91.if.end15.i_crit_edge:                  ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then4.i:                                       ; preds = %if.end.i91
  %22 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max.i, align 4
  %24 = add i32 %23, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %24)
  %25 = icmp ult i32 %24, -16
  br i1 %25, label %if.then6.i, label %if.then4.i.if.end7.i_crit_edge

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %max.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.then4.i.if.end7.i_crit_edge
  %call8.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %15, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull %min.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end7.i.if.end15.i_crit_edge

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end7.i
  %27 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min.i, align 4
  %29 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp11.not.i = icmp ult i32 %28, %30
  br i1 %cmp11.not.i, label %if.then10.i.if.end15.i_crit_edge, label %if.then12.i

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %30, -1
  %31 = ptrtoint ptr %min.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i, ptr %min.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.then10.i.if.end15.i_crit_edge, %if.end7.i.if.end15.i_crit_edge, %if.end.i91.if.end15.i_crit_edge
  %32 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool16.not.i = icmp eq i32 %33, 0
  %shl.i = shl i32 %33, 8
  %sub17.i = add i32 %shl.i, -1
  %cond.i = select i1 %tobool16.not.i, i32 0, i32 %sub17.i
  %34 = ptrtoint ptr %min.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond.i, ptr %min.i, align 4
  %35 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool18.not.i = icmp eq i32 %36, 0
  %shl20.i = shl i32 %36, 8
  %sub21.i = add i32 %shl20.i, -1
  %cond24.i = select i1 %tobool18.not.i, i32 0, i32 %sub21.i
  %37 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond24.i, ptr %max.i, align 4
  %38 = ptrtoint ptr %mr_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1073741823, ptr %mr_mask, align 4
  %39 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %mr, align 4
  %call25.i = call i32 @of_property_read_string(ptr noundef nonnull %15, ptr noundef nonnull @.str.15, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i, label %if.end15.i.if.else.i_crit_edge

if.end15.i.if.else.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  %40 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tmp.i, align 4
  %call27.i = call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(9) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mr, align 4
  %or.i = or i32 %43, 4096
  store i32 %or.i, ptr %mr, align 4
  %44 = ptrtoint ptr %mr_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mr_mask, align 4
  %and.i = and i32 %45, -16385
  store i32 %and.i, ptr %mr_mask, align 4
  br label %if.end34.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end15.i.if.else.i_crit_edge
  %46 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mr, align 4
  %or33.i = or i32 %47, 8192
  store i32 %or33.i, ptr %mr, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.then29.i
  %call35.i = call i32 @of_property_read_string(ptr noundef nonnull %15, ptr noundef nonnull @.str.17, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true37.i, label %if.end34.i.if.end43.i_crit_edge

if.end34.i.if.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

land.lhs.true37.i:                                ; preds = %if.end34.i
  %48 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tmp.i, align 4
  %call38.i = call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(5) @.str.18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %land.lhs.true37.i.if.end43.i_crit_edge

land.lhs.true37.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then40.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mr, align 4
  %or42.i = or i32 %51, 16384
  store i32 %or42.i, ptr %mr, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %land.lhs.true37.i.if.end43.i_crit_edge, %if.end34.i.if.end43.i_crit_edge
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.19, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end43.i.if.end50.i_crit_edge, label %if.then45.i

if.end43.i.if.end50.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mr, align 4
  %or47.i = or i32 %53, 32768
  store i32 %or47.i, ptr %mr, align 4
  %54 = ptrtoint ptr %mr_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mr_mask, align 4
  %and49.i = and i32 %55, 32768
  store i32 %and49.i, ptr %mr_mask, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i, %if.end43.i.if.end50.i_crit_edge
  %call.i1.i = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.20, ptr noundef null) #9
  %tobool.i2.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.i2.not.i, label %if.end50.i.if.end55.i_crit_edge, label %if.then52.i

if.end50.i.if.end55.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.then52.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mr, align 4
  %or54.i = or i32 %57, 536870912
  store i32 %or54.i, ptr %mr, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %if.end50.i.if.end55.i_crit_edge
  %call.i3.i = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.21, ptr noundef null) #9
  %tobool.i4.not.i = icmp eq ptr %call.i3.i, null
  br i1 %tobool.i4.not.i, label %if.end55.i.of_at91wdt_init.exit_crit_edge, label %if.then57.i

if.end55.i.of_at91wdt_init.exit_crit_edge:        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_at91wdt_init.exit

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mr, align 4
  %or59.i = or i32 %59, 268435456
  store i32 %or59.i, ptr %mr, align 4
  br label %of_at91wdt_init.exit

of_at91wdt_init.exit:                             ; preds = %if.then57.i, %if.end55.i.of_at91wdt_init.exit_crit_edge
  %60 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max.i, align 4
  %62 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %min.i, align 4
  %sub61.i = sub i32 %61, %63
  %shl62.i = shl i32 %sub61.i, 16
  %64 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mr, align 4
  %or63.i = or i32 %65, %61
  %or65.i = or i32 %or63.i, %shl62.i
  store i32 %or65.i, ptr %mr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.i) #9
  br label %if.end38

if.end38:                                         ; preds = %of_at91wdt_init.exit, %if.end28.if.end38_crit_edge
  %66 = ptrtoint ptr %mr_mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mr_mask, align 4
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 4
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !122
  %71 = call i32 @llvm.bswap.i32(i32 %70) #9
  %72 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mr, align 4
  %74 = xor i32 %71, %73
  %75 = and i32 %74, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.not.i = icmp ne i32 %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13631681, i32 %70)
  %cmp4.i = icmp eq i32 %70, -13631681
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %if.then5.i, label %if.end38.if.end14.i_crit_edge

if.end38.if.end14.i_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then5.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %76 = call i32 @llvm.bswap.i32(i32 %73) #9
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr8.i = getelementptr i8, ptr %78, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %76) #9, !srcloc !123
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr11.i = getelementptr i8, ptr %80, i32 4
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !122
  %82 = call i32 @llvm.bswap.i32(i32 %81) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then5.i, %if.end38.if.end14.i_crit_edge
  %tmp.0.i = phi i32 [ %82, %if.then5.i ], [ %71, %if.end38.if.end14.i_crit_edge ]
  %and15.i = and i32 %tmp.0.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not.i94 = icmp eq i32 %and15.i, 0
  br i1 %tobool.not.i94, label %if.end22.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  %83 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mr, align 4
  %and18.i = and i32 %84, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %do.end.i95, label %if.then16.i.if.end42_crit_edge

if.then16.i.if.end42_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end.i95:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  br label %err_clk

if.end22.i:                                       ; preds = %if.end14.i
  %and23.i = and i32 %tmp.0.i, 4095
  %and24.i = lshr i32 %tmp.0.i, 16
  %shr.i = and i32 %and24.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and23.i, i32 %shr.i)
  %cmp25.i = icmp ugt i32 %and23.i, %shr.i
  %sub.i96 = sub nsw i32 %and23.i, %shr.i
  %85 = mul nsw i32 %sub.i96, 100
  %add27.i = add nsw i32 %85, 355
  %shr28.i = lshr i32 %add27.i, 8
  %min_heartbeat.0.i = select i1 %cmp25.i, i32 %shr28.i, i32 1
  %86 = mul nuw nsw i32 %and23.i, 100
  %mul31.i = add nuw nsw i32 %86, 100
  %shr32.i = lshr i32 %mul31.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 156, i32 %86)
  %tobool33.not.i = icmp ult i32 %86, 156
  br i1 %tobool33.not.i, label %do.end37.i, label %if.end38.i

do.end37.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  br label %err_clk

if.end38.i:                                       ; preds = %if.end22.i
  %div173.i = lshr i32 %mul31.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div173.i, i32 %min_heartbeat.0.i)
  %cmp39.not.i = icmp ult i32 %div173.i, %min_heartbeat.0.i
  br i1 %cmp39.not.i, label %if.else.i98, label %if.then40.i97

if.then40.i97:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  %heartbeat.i = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 6
  %87 = ptrtoint ptr %heartbeat.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %div173.i, ptr %heartbeat.i, align 4
  br label %if.end50.i99

if.else.i98:                                      ; preds = %if.end38.i
  %div42174.i = lshr i32 %mul31.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %div42174.i, i32 %min_heartbeat.0.i)
  %cmp43.not.i = icmp ult i32 %div42174.i, %min_heartbeat.0.i
  %heartbeat48.i = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 6
  br i1 %cmp43.not.i, label %if.else47.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %heartbeat48.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %div42174.i, ptr %heartbeat48.i, align 4
  br label %if.end50.i99

if.else47.i:                                      ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %heartbeat48.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %min_heartbeat.0.i, ptr %heartbeat48.i, align 4
  br label %if.end50.i99

if.end50.i99:                                     ; preds = %if.else47.i, %if.then44.i, %if.then40.i97
  %add51.i = add nuw nsw i32 %min_heartbeat.0.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr32.i, i32 %add51.i)
  %cmp52.i = icmp ult i32 %shr32.i, %add51.i
  br i1 %cmp52.i, label %do.end56.i, label %if.end50.i99.if.end57.i_crit_edge

if.end50.i99.if.end57.i_crit_edge:                ; preds = %if.end50.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

do.end56.i:                                       ; preds = %if.end50.i99
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28) #12
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end56.i, %if.end50.i99.if.end57.i_crit_edge
  %and58.i = and i32 %tmp.0.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end57.i.if.end67.i_crit_edge, label %land.lhs.true.i101

if.end57.i.if.end67.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

land.lhs.true.i101:                               ; preds = %if.end57.i
  %irq.i100 = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 8
  %90 = ptrtoint ptr %irq.i100 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool60.not.i = icmp eq i32 %91, 0
  br i1 %tobool60.not.i, label %land.lhs.true.i101.if.end67.i_crit_edge, label %if.then61.i

land.lhs.true.i101.if.end67.i_crit_edge:          ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.then61.i:                                      ; preds = %land.lhs.true.i101
  %92 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev, align 8
  %call.i.i102 = call i32 @request_threaded_irq(i32 noundef %91, ptr noundef nonnull @wdt_interrupt, ptr noundef null, i32 noundef 20608, ptr noundef %93, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool64.not.i = icmp eq i32 %call.i.i102, 0
  br i1 %tobool64.not.i, label %if.then61.i.if.end67.i_crit_edge, label %if.then61.i.err_clk_crit_edge

if.then61.i.err_clk_crit_edge:                    ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk

if.then61.i.if.end67.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then61.i.if.end67.i_crit_edge, %land.lhs.true.i101.if.end67.i_crit_edge, %if.end57.i.if.end67.i_crit_edge
  %94 = ptrtoint ptr %mr_mask to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mr_mask, align 4
  %and69.i = and i32 %95, %tmp.0.i
  %96 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mr, align 4
  %and72.i = and i32 %97, %95
  call void @__sanitizer_cov_trace_cmp4(i32 %and69.i, i32 %and72.i)
  %cmp73.not.i = icmp eq i32 %and69.i, %and72.i
  br i1 %cmp73.not.i, label %if.end67.i.do.body84.i_crit_edge, label %do.end77.i

if.end67.i.do.body84.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body84.i

do.end77.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %and69.i, i32 noundef %and72.i) #12
  br label %do.body84.i

do.body84.i:                                      ; preds = %do.end77.i, %if.end67.i.do.body84.i_crit_edge
  %timer.i = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 3
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @at91_ping, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @at91_wdt_init.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %add88.i = add i32 %98, %min_heartbeat.0.i
  %call89.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add88.i) #9
  %call90.i = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %do.body84.i.if.end95.i_crit_edge, label %if.then92.i

do.body84.i.if.end95.i_crit_edge:                 ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

if.then92.i:                                      ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = load i32, ptr @heartbeat, align 4
  %call94.i = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %99, ptr noundef %dev) #9
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then92.i, %do.body84.i.if.end95.i_crit_edge
  %100 = ptrtoint ptr %nowayout to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %nowayout, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool97.not.i = icmp eq i8 %101, 0
  br i1 %tobool97.not.i, label %if.end95.i.watchdog_set_nowayout.exit.i_crit_edge, label %if.then.i.i

if.end95.i.watchdog_set_nowayout.exit.i_crit_edge: ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %watchdog_set_nowayout.exit.i

if.then.i.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  %status.i.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i.i) #9
  br label %watchdog_set_nowayout.exit.i

watchdog_set_nowayout.exit.i:                     ; preds = %if.then.i.i, %if.end95.i.watchdog_set_nowayout.exit.i_crit_edge
  %call99.i = call i32 @watchdog_register_device(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %if.end102.i, label %out_stop_timer.i

if.end102.i:                                      ; preds = %watchdog_set_nowayout.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %103 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %timeout, align 4
  %mul104.i = mul i32 %104, 100
  %add105.i = add i32 %mul104.i, %102
  %next_heartbeat.i = getelementptr inbounds %struct.at91wdt, ptr %call.i, i32 0, i32 2
  %105 = ptrtoint ptr %next_heartbeat.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add105.i, ptr %next_heartbeat.i, align 4
  br label %if.end42

out_stop_timer.i:                                 ; preds = %watchdog_set_nowayout.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call107.i = call i32 @del_timer(ptr noundef %timer.i) #9
  br label %err_clk

if.end42:                                         ; preds = %if.end102.i, %if.then16.i.if.end42_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %106 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %107 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %timeout, align 4
  %109 = ptrtoint ptr %nowayout to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %nowayout, align 4, !range !120
  %111 = zext i8 %110 to i32
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %108, i32 noundef %111) #12
  br label %cleanup

err_clk:                                          ; preds = %out_stop_timer.i, %if.then61.i.err_clk_crit_edge, %do.end37.i, %do.end.i95
  %retval.0.i103.ph = phi i32 [ %call.i.i102, %if.then61.i.err_clk_crit_edge ], [ -22, %do.end37.i ], [ %call99.i, %out_stop_timer.i ], [ -22, %do.end.i95 ]
  %112 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sclk, align 4
  call void @clk_disable(ptr noundef %113) #9
  call void @clk_unprepare(ptr noundef %113) #9
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end42, %do.end, %if.then19, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then11 ], [ %13, %if.then19 ], [ %retval.0.i.ph, %do.end ], [ %retval.0.i103.ph, %err_clk ], [ 0, %if.end42 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at91_wdt_start(ptr nocapture noundef %wdd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %1 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout, align 4
  %mul = mul i32 %2, 100
  %add = add i32 %mul, %0
  %next_heartbeat = getelementptr inbounds %struct.at91wdt, ptr %wdd, i32 0, i32 2
  %3 = ptrtoint ptr %next_heartbeat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %next_heartbeat, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at91_wdt_stop(ptr nocapture noundef readnone %wdd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at91_wdt_set_timeout(ptr nocapture noundef %wdd, i32 noundef %new_timeout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_timeout, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %new_timeout, 100
  %add.i = add i32 %1, %mul.i
  %next_heartbeat.i = getelementptr inbounds %struct.at91wdt, ptr %wdd, i32 0, i32 2
  %2 = ptrtoint ptr %next_heartbeat.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add.i, ptr %next_heartbeat.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.at91wdt, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #12
  tail call void @emergency_restart() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_ping(ptr noundef %t) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %next_heartbeat = getelementptr i8, ptr %t, i32 -4
  %1 = ptrtoint ptr %next_heartbeat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %next_heartbeat, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %status.i = getelementptr i8, ptr %t, i32 -20
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then_crit_edge, label %do.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %base.i = getelementptr i8, ptr %t, i32 -8
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 16777381) #9, !srcloc !123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %heartbeat = getelementptr i8, ptr %t, i32 56
  %8 = ptrtoint ptr %heartbeat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %heartbeat, align 4
  %add = add i32 %9, %7
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__param_heartbeat, !1, !"__param_heartbeat", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 71, i32 1}
!2 = !{ptr @__UNIQUE_ID_heartbeattype191, !1, !"__UNIQUE_ID_heartbeattype191", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_heartbeat192, !4, !"__UNIQUE_ID_heartbeat192", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 72, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 76, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype193, !6, !"__UNIQUE_ID_nowayouttype193", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout194, !9, !"__UNIQUE_ID_nowayout194", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 77, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 390, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @at91wdt_remove._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @at91wdt_remove._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_at91sam9_wdt__195_414_at91wdt_driver_init6, !17, !"__initcall__kmod_at91sam9_wdt__195_414_at91wdt_driver_init6", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 414, i32 1}
!18 = !{ptr @__exitcall_at91wdt_driver_exit, !17, !"__exitcall_at91wdt_driver_exit", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_author196, !20, !"__UNIQUE_ID_author196", i1 false, i1 false}
!20 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 416, i32 1}
!21 = !{ptr @__UNIQUE_ID_description197, !22, !"__UNIQUE_ID_description197", i1 false, i1 false}
!22 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 417, i32 1}
!23 = !{ptr @__UNIQUE_ID_file198, !24, !"__UNIQUE_ID_file198", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 418, i32 1}
!25 = !{ptr @__UNIQUE_ID_license199, !24, !"__UNIQUE_ID_license199", i1 false, i1 false}
!26 = !{ptr @heartbeat, !27, !"heartbeat", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 70, i32 12}
!28 = !{ptr @__param_str_heartbeat, !1, !"__param_str_heartbeat", i1 false, i1 false}
!29 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!30 = !{ptr @nowayout, !31, !"nowayout", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 75, i32 13}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 358, i32 3}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @at91wdt_probe._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @at91wdt_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 374, i32 2}
!41 = !{ptr @at91wdt_probe._entry.7, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @at91wdt_probe._entry_ptr.9, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @at91_wdt_info, !44, !"at91_wdt_info", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 252, i32 35}
!45 = !{ptr @at91_wdt_ops, !46, !"at91_wdt_ops", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 258, i32 34}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 275, i32 3}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @of_at91wdt_init._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @of_at91wdt_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 277, i32 38}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 282, i32 39}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 294, i32 35}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 295, i32 19}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 302, i32 35}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 303, i32 19}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 306, i32 32}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 311, i32 32}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 314, i32 32}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 174, i32 3}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @at91_wdt_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @at91_wdt_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 186, i32 3}
!78 = !{ptr @at91_wdt_init._entry.24, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @at91_wdt_init._entry_ptr.26, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 205, i32 3}
!82 = !{ptr @at91_wdt_init._entry.27, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @at91_wdt_init._entry_ptr.29, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 218, i32 3}
!86 = !{ptr @at91_wdt_init._entry.30, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @at91_wdt_init._entry_ptr.32, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @at91_wdt_init.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 222, i32 2}
!90 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 101, i32 3}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @wdt_interrupt._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @wdt_interrupt._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 103, i32 3}
!98 = !{ptr @wdt_interrupt._entry.36, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @wdt_interrupt._entry_ptr.38, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 128, i32 3}
!102 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @at91_ping._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @at91_ping._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 409, i32 11}
!107 = !{ptr @at91wdt_driver, !108, !"at91wdt_driver", i1 false, i1 false}
!108 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 406, i32 31}
!109 = !{ptr @at91_wdt_dt_ids, !110, !"at91_wdt_dt_ids", i1 false, i1 false}
!110 = !{!"../drivers/watchdog/at91sam9_wdt.c", i32 398, i32 34}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i8 0, i8 2}
!121 = !{!"auto-init"}
!122 = !{i64 4238700}
!123 = !{i64 4238282}
