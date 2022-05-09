; ModuleID = '/llk/IR_all_yes/drivers/watchdog/at91rm9200_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/at91rm9200_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_wdt_time = internal constant [24 x i8] c"at91rm9200_wdt.wdt_time\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wdt_time = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_wdt_time = internal constant %struct.kernel_param { ptr @__param_str_wdt_time, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @wdt_time } }, section "__param", align 4
@__UNIQUE_ID_wdt_timetype210 = internal constant [37 x i8] c"at91rm9200_wdt.parmtype=wdt_time:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wdt_time211 = internal constant [67 x i8] c"at91rm9200_wdt.parm=wdt_time:Watchdog time in seconds. (default=5)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [24 x i8] c"at91rm9200_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype212 = internal constant [38 x i8] c"at91rm9200_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout213 = internal constant [81 x i8] c"at91rm9200_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@at91wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @at91wdt_probe, ptr @at91wdt_remove, ptr @at91wdt_shutdown, ptr @at91wdt_suspend, ptr @at91wdt_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_at91rm9200_wdt__214_337_at91_wdt_init6 = internal global ptr @at91_wdt_init, section ".initcall6.init", align 4
@__exitcall_at91_wdt_exit = internal global ptr @at91_wdt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author215 = internal constant [36 x i8] c"at91rm9200_wdt.author=Andrew Victor\00", section ".modinfo", align 1
@__UNIQUE_ID_description216 = internal constant [64 x i8] c"at91rm9200_wdt.description=Watchdog driver for Atmel AT91RM9200\00", section ".modinfo", align 1
@__UNIQUE_ID_file217 = internal constant [52 x i8] c"at91rm9200_wdt.file=drivers/watchdog/at91rm9200_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license218 = internal constant [27 x i8] c"at91rm9200_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias219 = internal constant [48 x i8] c"at91rm9200_wdt.alias=platform:atmel_st_watchdog\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_st_watchdog\00", [46 x i8] zeroinitializer }, align 32
@at91_wdt_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@at91wdt_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.15, ptr @at91wdt_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@at91wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no parent\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91wdt_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/watchdog/at91rm9200_wdt.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91wdt_probe._entry_ptr = internal global ptr @at91wdt_probe._entry, section ".printk_index", align 4
@regmap_st = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@at91rm9200_restart_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @at91rm9200_restart, ptr null, i32 192 }, [20 x i8] zeroinitializer }, align 32
@at91wdt_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 254, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register restart handler\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@at91wdt_probe._entry_ptr.9 = internal global ptr @at91wdt_probe._entry.6, section ".printk_index", align 4
@at91wdt_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016at91rm9200_wdt: AT91 Watchdog Timer enabled (%d seconds%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@at91wdt_probe._entry_ptr.12 = internal global ptr @at91wdt_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", nowayout\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@at91wdt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @at91_wdt_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_wdt_ioctl, ptr null, ptr null, i32 0, ptr @at91_wdt_open, ptr null, ptr @at91_wdt_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@at91_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 32896, i32 0, [32 x i8] c"at91 watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@at91wdt_busy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@at91rm9200_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\010at91rm9200_wdt: Unable to restart system\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91rm9200_restart\00", [45 x i8] zeroinitializer }, align 32
@at91rm9200_restart._entry_ptr = internal global ptr @at91rm9200_restart._entry, section ".printk_index", align 4
@at91wdt_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 268, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to unregister restart handler\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91wdt_remove\00", [17 x i8] zeroinitializer }, align 32
@at91wdt_remove._entry_ptr = internal global ptr @at91wdt_remove._entry, section ".printk_index", align 4
@at91_wdt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016at91rm9200_wdt: wdt_time value must be 1 <= wdt_time <= 256, using %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91_wdt_init\00", [18 x i8] zeroinitializer }, align 32
@at91_wdt_init._entry_ptr = internal global ptr @at91_wdt_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2147768065, i64 2147768066, i64 2147768068, i64 2147768069, i64 2147768071, i64 2150127360, i64 3221509894]
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"wdt_time\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 35, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 36, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"at91wdt_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 307, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 314, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"at91_wdt_dt_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 301, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"at91wdt_miscdev\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 222, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 240, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"regmap_st\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 37, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"at91rm9200_restart_nb\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 71, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 254, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 256, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 224, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"at91wdt_fops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 212, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"at91_wdt_info\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 151, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 174, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"at91wdt_busy\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 51, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 67, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 268, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [37 x i8] c"../drivers/watchdog/at91rm9200_wdt.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 325, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias219, ptr @__UNIQUE_ID_author215, ptr @__UNIQUE_ID_description216, ptr @__UNIQUE_ID_file217, ptr @__UNIQUE_ID_license218, ptr @__UNIQUE_ID_nowayout213, ptr @__UNIQUE_ID_nowayouttype212, ptr @__UNIQUE_ID_wdt_time211, ptr @__UNIQUE_ID_wdt_timetype210, ptr @__exitcall_at91_wdt_exit, ptr @__initcall__kmod_at91rm9200_wdt__214_337_at91_wdt_init6, ptr @__param_nowayout, ptr @__param_wdt_time, ptr @at91_wdt_exit, ptr @at91_wdt_init._entry, ptr @at91_wdt_init._entry_ptr, ptr @at91rm9200_restart._entry, ptr @at91rm9200_restart._entry_ptr, ptr @at91wdt_probe._entry, ptr @at91wdt_probe._entry.10, ptr @at91wdt_probe._entry.6, ptr @at91wdt_probe._entry_ptr, ptr @at91wdt_probe._entry_ptr.12, ptr @at91wdt_probe._entry_ptr.9, ptr @at91wdt_remove._entry, ptr @at91wdt_remove._entry_ptr, ptr @wdt_time, ptr @nowayout, ptr @at91wdt_driver, ptr @.str, ptr @at91_wdt_dt_ids, ptr @at91wdt_miscdev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @regmap_st, ptr @at91rm9200_restart_nb, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @at91wdt_fops, ptr @at91_wdt_info, ptr @.str.18, ptr @at91wdt_busy, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_st to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_restart_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_busy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91wdt_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_wdt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91_wdt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_wdt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @wdt_time, align 4
  %1 = add i32 %0, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %1)
  %2 = icmp ult i32 %1, -256
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i32 5, ptr @wdt_time, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91wdt_driver, ptr noundef null) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @at91wdt_miscdev, i32 0, i32 4), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %dev1, ptr getelementptr inbounds (%struct.miscdevice, ptr @at91wdt_miscdev, i32 0, i32 4), align 4
  %parent3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent3, align 8
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_node_to_regmap(ptr noundef %4) #6
  store ptr %call, ptr @regmap_st, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @misc_register(ptr noundef nonnull @at91wdt_miscdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @register_restart_handler(ptr noundef nonnull @at91rm9200_restart_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.do.end23_crit_edge, label %do.end19

if.end13.do.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %do.end23

do.end23:                                         ; preds = %do.end19, %if.end13.do.end23_crit_edge
  %5 = load i32, ptr @wdt_time, align 4
  %6 = load i8, ptr @nowayout, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool24.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool24.not, ptr @.str.14, ptr @.str.13
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %5, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end23 ], [ -19, %do.end ], [ -16, %entry.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91wdt_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_restart_handler(ptr noundef nonnull @at91rm9200_restart_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.21) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @misc_deregister(ptr noundef nonnull @at91wdt_miscdev) #6
  store ptr null, ptr getelementptr inbounds (%struct.miscdevice, ptr @at91wdt_miscdev, i32 0, i32 4), align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91wdt_shutdown(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @regmap_st, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 8, i32 noundef 131072) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91wdt_suspend(ptr nocapture noundef readnone %pdev, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @regmap_st, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 8, i32 noundef 131072) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91wdt_resume(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @at91wdt_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr @regmap_st, align 4
  %2 = load i32, ptr @wdt_time, align 4
  %3 = shl i32 %2, 8
  %and.i = and i32 %3, 65280
  %or.i = or i32 %and.i, 196608
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 8, i32 noundef %or.i) #6
  %4 = load ptr, ptr @regmap_st, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 0, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_wdt_write(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %data, i32 noundef returned %len, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @regmap_st, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 0, i32 noundef 1) #6
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_wdt_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2144839936, label %sw.bb
    i32 -2147199231, label %entry.sw.bb1_crit_edge
    i32 -2147199230, label %entry.sw.bb1_crit_edge108
    i32 -2147199228, label %sw.bb4
    i32 -2147199227, label %sw.bb23
    i32 -1073457402, label %sw.bb24
    i32 -2147199225, label %sw.bb59
  ]

entry.sw.bb1_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %sw.bb.cleanup_crit_edge, label %if.end.i.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #10, !srcloc !101
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @at91_wdt_info, i32 noundef 40) #6
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @at91_wdt_info, i32 noundef 40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge108
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 172) #6
  %3 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !102
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %6 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 0, i32 -1226833921) #6, !srcloc !105
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #6
  %7 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i84 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i84 to ptr
  %cpu_domain.i.i85 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i85) #5, !srcloc !102
  %and.i86 = and i32 %9, -13
  %or.i87 = or i32 %and.i86, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i87) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #6, !srcloc !106
  %asmresult = extractvalue { i32, i32 } %10, 0
  %asmresult13 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool15.not = icmp eq i32 %asmresult, 0
  br i1 %tobool15.not, label %if.end, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb4
  %and = and i32 %asmresult13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end.if.end18_crit_edge, label %if.then17

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = load ptr, ptr @regmap_st, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 8, i32 noundef 131072) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end.if.end18_crit_edge
  %and19 = and i32 %asmresult13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %12 = load ptr, ptr @regmap_st, align 4
  %13 = load i32, ptr @wdt_time, align 4
  %14 = shl i32 %13, 8
  %and.i100 = and i32 %14, 65280
  %or.i101 = or i32 %and.i100, 196608
  %call.i102 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 8, i32 noundef %or.i101) #6
  %15 = load ptr, ptr @regmap_st, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 0, i32 noundef 1) #6
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = load ptr, ptr @regmap_st, align 4
  %call.i103 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 0, i32 noundef 1) #6
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 185) #6
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i88 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i88 to ptr
  %cpu_domain.i.i89 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i89) #5, !srcloc !102
  %and.i90 = and i32 %19, -13
  %or.i91 = or i32 %and.i90, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i91) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %20 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #6, !srcloc !107
  %asmresult34 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult34)
  %tobool37.not = icmp eq i32 %asmresult34, 0
  br i1 %tobool37.not, label %if.end39, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %sw.bb24
  %asmresult35 = extractvalue { i32, i32 } %20, 1
  %21 = add i32 %asmresult35, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %21)
  %22 = icmp ult i32 %21, -256
  br i1 %22, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %asmresult35, ptr @wdt_time, align 4
  tail call fastcc void @at91_wdt_start()
  %23 = load i32, ptr @wdt_time, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 192) #6
  %24 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i92 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i92 to ptr
  %cpu_domain.i.i93 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i93) #5, !srcloc !102
  %and.i94 = and i32 %26, -13
  %or.i95 = or i32 %and.i94, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i95) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %27 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %23, i32 -1226833921) #6, !srcloc !108
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %28 = load i32, ptr @wdt_time, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 194) #6
  %29 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i96 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i96 to ptr
  %cpu_domain.i.i97 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i97) #5, !srcloc !102
  %and.i98 = and i32 %31, -13
  %or.i99 = or i32 %and.i98, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i99) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %28, i32 -1226833921) #6, !srcloc !109
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %sw.bb59, %if.end43, %if.end39.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %sw.bb23, %if.then21, %if.end18.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb1, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %sw.bb59 ], [ %27, %if.end43 ], [ 0, %sw.bb23 ], [ %6, %sw.bb1 ], [ -14, %sw.bb4.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end18.cleanup_crit_edge ], [ -14, %sw.bb24.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end39.cleanup_crit_edge ], [ -14, %sw.bb.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_wdt_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @at91wdt_busy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @regmap_st, align 4
  %1 = load i32, ptr @wdt_time, align 4
  %2 = shl i32 %1, 8
  %and.i = and i32 %2, 65280
  %or.i = or i32 %and.i, 196608
  %call.i = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 8, i32 noundef %or.i) #6
  %3 = load ptr, ptr @regmap_st, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 1) #6
  %call1 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_wdt_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @nowayout, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr @regmap_st, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 8, i32 noundef 131072) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @at91wdt_busy) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_wdt_start() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @regmap_st, align 4
  %1 = load i32, ptr @wdt_time, align 4
  %2 = shl i32 %1, 8
  %and = and i32 %2, 65280
  %or = or i32 %and, 196608
  %call = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 8, i32 noundef %or) #6
  %3 = load ptr, ptr @regmap_st, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91rm9200_restart(ptr nocapture noundef readnone %this, i32 noundef %mode, ptr nocapture noundef readnone %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @regmap_st, align 4
  %call = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 8, i32 noundef 196609) #6
  %1 = load ptr, ptr @regmap_st, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 0, i32 noundef 1) #6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.03 = phi i32 [ 2000, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.03, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !87, !88, !89}
!llvm.named.register.sp = !{!90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__param_wdt_time, !1, !"__param_wdt_time", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_wdt_timetype210, !1, !"__UNIQUE_ID_wdt_timetype210", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_wdt_time211, !4, !"__UNIQUE_ID_wdt_time211", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 40, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 44, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype212, !6, !"__UNIQUE_ID_nowayouttype212", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout213, !9, !"__UNIQUE_ID_nowayout213", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 45, i32 1}
!10 = !{ptr @__initcall__kmod_at91rm9200_wdt__214_337_at91_wdt_init6, !11, !"__initcall__kmod_at91rm9200_wdt__214_337_at91_wdt_init6", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 337, i32 1}
!12 = !{ptr @__exitcall_at91_wdt_exit, !13, !"__exitcall_at91_wdt_exit", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 338, i32 1}
!14 = !{ptr @__UNIQUE_ID_author215, !15, !"__UNIQUE_ID_author215", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 340, i32 1}
!16 = !{ptr @__UNIQUE_ID_description216, !17, !"__UNIQUE_ID_description216", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 341, i32 1}
!18 = !{ptr @__UNIQUE_ID_file217, !19, !"__UNIQUE_ID_file217", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 342, i32 1}
!20 = !{ptr @__UNIQUE_ID_license218, !19, !"__UNIQUE_ID_license218", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias219, !22, !"__UNIQUE_ID_alias219", i1 false, i1 false}
!22 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 343, i32 1}
!23 = !{ptr @__param_str_wdt_time, !1, !"__param_str_wdt_time", i1 false, i1 false}
!24 = !{ptr @wdt_time, !25, !"wdt_time", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 35, i32 12}
!26 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!27 = !{ptr @nowayout, !28, !"nowayout", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 36, i32 13}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 314, i32 11}
!31 = !{ptr @at91wdt_driver, !32, !"at91wdt_driver", i1 false, i1 false}
!32 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 307, i32 31}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 240, i32 3}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @at91wdt_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @at91wdt_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 254, i32 3}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @at91wdt_probe._entry.6, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @at91wdt_probe._entry_ptr.9, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 256, i32 2}
!48 = !{ptr @at91wdt_probe._entry.10, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @at91wdt_probe._entry_ptr.12, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 224, i32 11}
!54 = !{ptr @at91wdt_miscdev, !55, !"at91wdt_miscdev", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 222, i32 26}
!56 = !{ptr @at91wdt_fops, !57, !"at91wdt_fops", i1 false, i1 false}
!57 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 212, i32 37}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!60 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!65 = !{ptr @at91_wdt_info, !66, !"at91_wdt_info", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 151, i32 35}
!67 = !{ptr @at91wdt_busy, !68, !"at91wdt_busy", i1 false, i1 false}
!68 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 51, i32 22}
!69 = !{ptr @regmap_st, !70, !"regmap_st", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 37, i32 23}
!71 = !{ptr @at91rm9200_restart_nb, !72, !"at91rm9200_restart_nb", i1 false, i1 false}
!72 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 71, i32 30}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 67, i32 2}
!75 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @at91rm9200_restart._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @at91rm9200_restart._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 268, i32 3}
!80 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @at91wdt_remove._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @at91wdt_remove._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @at91_wdt_dt_ids, !84, !"at91_wdt_dt_ids", i1 false, i1 false}
!84 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 301, i32 34}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/watchdog/at91rm9200_wdt.c", i32 325, i32 3}
!87 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @at91_wdt_init._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @at91_wdt_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{!"sp"}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i8 0, i8 2}
!101 = !{i64 2152179116, i64 2152179141}
!102 = !{i64 4673990}
!103 = !{i64 4674187}
!104 = !{i64 2152159420}
!105 = !{i64 2153364565, i64 2153364845, i64 2153365179, i64 2153365513}
!106 = !{i64 2153376798, i64 2153377078, i64 2153377412, i64 2153377746}
!107 = !{i64 2153390463, i64 2153390743, i64 2153391077, i64 2153391411}
!108 = !{i64 2153399933, i64 2153400213, i64 2153400547, i64 2153400881}
!109 = !{i64 2153409426, i64 2153409706, i64 2153410040, i64 2153410374}
