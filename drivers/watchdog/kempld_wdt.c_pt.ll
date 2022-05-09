; ModuleID = '/llk/IR_all_yes/drivers/watchdog/kempld_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/kempld_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.kempld_wdt_data = type { ptr, %struct.watchdog_device, i32, [2 x %struct.kempld_wdt_stage], i8 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.kempld_wdt_stage = type { i32, i32 }
%struct.kempld_device_data = type { ptr, ptr, ptr, i32, i32, ptr, %struct.kempld_info, %struct.mutex }
%struct.kempld_info = type { i32, i32, i32, i32, i32, i32, i32, [10 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_timeout = internal constant [19 x i8] c"kempld_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype174 = internal constant [33 x i8] c"kempld_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout175 = internal constant [71 x i8] c"kempld_wdt.parm=timeout:Watchdog timeout in seconds. (>=0, default=30)\00", section ".modinfo", align 1
@__param_str_pretimeout = internal constant [22 x i8] c"kempld_wdt.pretimeout\00", align 1
@pretimeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pretimeout = internal constant %struct.kernel_param { ptr @__param_str_pretimeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @pretimeout } }, section "__param", align 4
@__UNIQUE_ID_pretimeouttype176 = internal constant [36 x i8] c"kempld_wdt.parmtype=pretimeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pretimeout177 = internal constant [76 x i8] c"kempld_wdt.parm=pretimeout:Watchdog pretimeout in seconds. (>=0, default=0)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [20 x i8] c"kempld_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype178 = internal constant [34 x i8] c"kempld_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout179 = internal constant [77 x i8] c"kempld_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_kempld_wdt__180_548_kempld_wdt_driver_init6 = internal global ptr @kempld_wdt_driver_init, section ".initcall6.init", align 4
@kempld_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kempld_wdt_probe, ptr null, ptr null, ptr @kempld_wdt_suspend, ptr @kempld_wdt_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kempld_wdt_driver_exit = internal global ptr @kempld_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description181 = internal constant [47 x i8] c"kempld_wdt.description=KEM PLD Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author182 = internal constant [64 x i8] c"kempld_wdt.author=Michael Brunner <michael.brunner@kontron.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file183 = internal constant [44 x i8] c"kempld_wdt.file=drivers/watchdog/kempld_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license184 = internal constant [23 x i8] c"kempld_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kempld-wdt\00", [21 x i8] zeroinitializer }, align 32
@kempld_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 462, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Forcing nowayout - watchdog lock enabled!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kempld_wdt_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/kempld_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kempld_wdt_probe._entry_ptr = internal global ptr @kempld_wdt_probe._entry, section ".printk_index", align 4
@kempld_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33664, i32 0, [32 x i8] c"KEMPLD Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@kempld_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @kempld_wdt_start, ptr @kempld_wdt_stop, ptr @kempld_wdt_keepalive, ptr null, ptr @kempld_wdt_set_timeout, ptr null, ptr null, ptr null, ptr @kempld_wdt_ioctl }, [56 x i8] zeroinitializer }, align 32
@kempld_wdt_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 483, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Watchdog was already enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@kempld_wdt_probe._entry_ptr.9 = internal global ptr @kempld_wdt_probe._entry.6, section ".printk_index", align 4
@kempld_wdt_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 493, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Watchdog registered with %ds timeout\0A\00", [58 x i8] zeroinitializer }, align 32
@kempld_wdt_probe._entry_ptr.12 = internal global ptr @kempld_wdt_probe._entry.10, section ".printk_index", align 4
@kempld_prescaler = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2097151, i32 131071, i32 4095, i32 0], [16 x i8] zeroinitializer }, align 32
@kempld_wdt_get_timeout.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2147768073, i64 3221509896]
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 86, i32 21 }
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"pretimeout\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 92, i32 21 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 98, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"kempld_wdt_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 539, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 541, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 461, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"kempld_wdt_info\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 419, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"kempld_wdt_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 427, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 483, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 493, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"kempld_prescaler\00", align 1
@___asan_gen_.68 = private constant [33 x i8] c"../drivers/watchdog/kempld_wdt.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 61, i32 18 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author182, ptr @__UNIQUE_ID_description181, ptr @__UNIQUE_ID_file183, ptr @__UNIQUE_ID_license184, ptr @__UNIQUE_ID_nowayout179, ptr @__UNIQUE_ID_nowayouttype178, ptr @__UNIQUE_ID_pretimeout177, ptr @__UNIQUE_ID_pretimeouttype176, ptr @__UNIQUE_ID_timeout175, ptr @__UNIQUE_ID_timeouttype174, ptr @__exitcall_kempld_wdt_driver_exit, ptr @__initcall__kmod_kempld_wdt__180_548_kempld_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_pretimeout, ptr @__param_timeout, ptr @kempld_wdt_driver_exit, ptr @kempld_wdt_probe._entry, ptr @kempld_wdt_probe._entry.10, ptr @kempld_wdt_probe._entry.6, ptr @kempld_wdt_probe._entry_ptr, ptr @kempld_wdt_probe._entry_ptr.12, ptr @kempld_wdt_probe._entry_ptr.9, ptr @timeout, ptr @pretimeout, ptr @nowayout, ptr @kempld_wdt_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @kempld_wdt_info, ptr @kempld_wdt_ops, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @kempld_prescaler], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretimeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_wdt_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_wdt_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_prescaler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kempld_wdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kempld_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @kempld_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 136, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %wdd5 = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1
  %parent6 = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent6, align 4
  tail call void @kempld_get_mutex(ptr noundef %3) #5
  %call7 = tail call zeroext i8 @kempld_read8(ptr noundef %3, i8 noundef zeroext 23) #5
  tail call void @kempld_release_mutex(ptr noundef %3) #5
  %conv = zext i8 %call7 to i32
  %and = and i32 %conv, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %.pr = load i8, ptr @nowayout, align 1
  br i1 %tobool8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool10.not = icmp eq i8 %.pr, 0
  br i1 %tobool10.not, label %do.end, label %if.then9.if.end13.thread_crit_edge

if.then9.if.end13.thread_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.thread

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %if.end13.thread

if.end13.thread:                                  ; preds = %do.end, %if.then9.if.end13.thread_crit_edge
  store i8 1, ptr @nowayout, align 1
  %info75 = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %info75 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kempld_wdt_info, ptr %info75, align 4
  %ops76 = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %ops76 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @kempld_wdt_ops, ptr %ops76, align 4
  %driver_data.i7177 = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1, i32 16
  %8 = ptrtoint ptr %driver_data.i7177 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i7177, align 4
  br label %if.then.i

if.end13:                                         ; preds = %if.end
  %info = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @kempld_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kempld_wdt_ops, ptr %ops, align 4
  %driver_data.i71 = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1, i32 16
  %11 = ptrtoint ptr %driver_data.i71 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool14.not = icmp eq i8 %.pr, 0
  br i1 %tobool14.not, label %if.end13.watchdog_set_nowayout.exit_crit_edge, label %if.end13.if.then.i_crit_edge

if.end13.if.then.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end13.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end13.if.then.i_crit_edge, %if.end13.thread
  %driver_data.i7180 = phi ptr [ %driver_data.i7177, %if.end13.thread ], [ %driver_data.i71, %if.end13.if.then.i_crit_edge ]
  %status.i = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end13.watchdog_set_nowayout.exit_crit_edge
  %driver_data.i7179 = phi ptr [ %driver_data.i71, %if.end13.watchdog_set_nowayout.exit_crit_edge ], [ %driver_data.i7180, %if.then.i ]
  %12 = ptrtoint ptr %driver_data.i7179 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i7179, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %stage.i = getelementptr inbounds %struct.kempld_wdt_data, ptr %13, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.kempld_wdt_data, ptr %13, i32 0, i32 3, i32 1
  %mask4.i = getelementptr %struct.kempld_wdt_data, ptr %13, i32 0, i32 3, i32 1, i32 1
  %16 = ptrtoint ptr %mask4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mask4.i, align 4
  %mask5.i = getelementptr inbounds %struct.kempld_wdt_data, ptr %13, i32 0, i32 3, i32 0, i32 1
  %17 = ptrtoint ptr %mask5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mask5.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.then29.i.for.body.i_crit_edge, %watchdog_set_nowayout.exit
  %i.093.i = phi i32 [ 0, %watchdog_set_nowayout.exit ], [ %inc42.i, %if.then29.i.for.body.i_crit_edge ]
  tail call void @kempld_get_mutex(ptr noundef %15) #5
  %i.093.i.tr = trunc i32 %i.093.i to i8
  %18 = shl i8 %i.093.i.tr, 2
  %conv12.i = add i8 %18, 27
  %call13.i = tail call zeroext i8 @kempld_read8(ptr noundef %15, i8 noundef zeroext %conv12.i) #5
  tail call void @kempld_write8(ptr noundef %15, i8 noundef zeroext %conv12.i, i8 noundef zeroext 0) #5
  %call20.i = tail call zeroext i8 @kempld_read8(ptr noundef %15, i8 noundef zeroext %conv12.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20.i)
  %cmp22.not.i = icmp eq i8 %call20.i, 0
  br i1 %cmp22.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @kempld_write8(ptr noundef %15, i8 noundef zeroext %conv12.i, i8 noundef zeroext %call13.i) #5
  %conv12.1.i = add i8 %18, 28
  %call13.1.i = tail call zeroext i8 @kempld_read8(ptr noundef %15, i8 noundef zeroext %conv12.1.i) #5
  tail call void @kempld_write8(ptr noundef %15, i8 noundef zeroext %conv12.1.i, i8 noundef zeroext 0) #5
  %call20.1.i = tail call zeroext i8 @kempld_read8(ptr noundef %15, i8 noundef zeroext %conv12.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20.1.i)
  %cmp22.not.1.i = icmp eq i8 %call20.1.i, 0
  br i1 %cmp22.not.1.i, label %if.end.1.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @kempld_write8(ptr noundef %15, i8 noundef zeroext %conv12.1.i, i8 noundef zeroext %call13.1.i) #5
  %conv12.2.i = add i8 %18, 29
  %call13.2.i = tail call zeroext i8 @kempld_read8(ptr noundef %15, i8 noundef zeroext %conv12.2.i) #5
  tail call void @kempld_write8(ptr noundef %15, i8 noundef zeroext %conv12.2.i, i8 noundef zeroext 0) #5
  %call20.2.i = tail call zeroext i8 @kempld_read8(ptr noundef %15, i8 noundef zeroext %conv12.2.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20.2.i)
  %cmp22.not.2.i = icmp eq i8 %call20.2.i, 0
  br i1 %cmp22.not.2.i, label %if.end.2.i, label %if.end.1.i.for.end.i_crit_edge

if.end.1.i.for.end.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @kempld_write8(ptr noundef %15, i8 noundef zeroext %conv12.2.i, i8 noundef zeroext %call13.2.i) #5
  %conv12.3.i = add i8 %18, 30
  %call13.3.i = tail call zeroext i8 @kempld_read8(ptr noundef %15, i8 noundef zeroext %conv12.3.i) #5
  tail call void @kempld_write8(ptr noundef %15, i8 noundef zeroext %conv12.3.i, i8 noundef zeroext 0) #5
  %call20.3.i = tail call zeroext i8 @kempld_read8(ptr noundef %15, i8 noundef zeroext %conv12.3.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20.3.i)
  %cmp22.not.3.i = icmp eq i8 %call20.3.i, 0
  br i1 %cmp22.not.3.i, label %if.end.3.i, label %if.end.2.i.for.end.i_crit_edge

if.end.2.i.for.end.i_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kempld_write8(ptr noundef %15, i8 noundef zeroext %conv12.3.i, i8 noundef zeroext %call13.3.i) #5
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.3.i, %if.end.2.i.for.end.i_crit_edge, %if.end.1.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %mask.0.lcssa.i = phi i32 [ 0, %for.body.i.for.end.i_crit_edge ], [ 255, %if.end.i.for.end.i_crit_edge ], [ 65535, %if.end.1.i.for.end.i_crit_edge ], [ 16777215, %if.end.2.i.for.end.i_crit_edge ], [ -1, %if.end.3.i ]
  tail call void @kempld_release_mutex(ptr noundef %15) #5
  %19 = ptrtoint ptr %mask5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %for.end.i
  %21 = ptrtoint ptr %mask5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mask.0.lcssa.i, ptr %mask5.i, align 4
  %22 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.093.i, ptr %stage.i, align 4
  %inc42.i = add nuw nsw i32 %i.093.i, 1
  %exitcond.not.i = icmp eq i32 %inc42.i, 3
  br i1 %exitcond.not.i, label %if.then29.i.kempld_wdt_probe_stages.exit_crit_edge, label %if.then29.i.for.body.i_crit_edge

if.then29.i.for.body.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.then29.i.kempld_wdt_probe_stages.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kempld_wdt_probe_stages.exit

if.else.i:                                        ; preds = %for.end.i
  %feature_mask.i = getelementptr inbounds %struct.kempld_device_data, ptr %15, i32 0, i32 4
  %23 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %feature_mask.i, align 4
  %and.i = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool31.not.i, label %kempld_wdt_probe_stages.exitthread-pre-split, label %if.then32.i

if.then32.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %mask4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %20, ptr %mask4.i, align 4
  %26 = ptrtoint ptr %mask5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mask.0.lcssa.i, ptr %mask5.i, align 4
  %27 = ptrtoint ptr %stage.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stage.i, align 4
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i, align 4
  store i32 %i.093.i, ptr %stage.i, align 4
  br label %kempld_wdt_probe_stages.exit

kempld_wdt_probe_stages.exitthread-pre-split:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %mask5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr87 = load i32, ptr %mask5.i, align 4
  br label %kempld_wdt_probe_stages.exit

kempld_wdt_probe_stages.exit:                     ; preds = %kempld_wdt_probe_stages.exitthread-pre-split, %if.then32.i, %if.then29.i.kempld_wdt_probe_stages.exit_crit_edge
  %31 = phi i32 [ %.pr87, %kempld_wdt_probe_stages.exitthread-pre-split ], [ %mask.0.lcssa.i, %if.then32.i ], [ %mask.0.lcssa.i, %if.then29.i.kempld_wdt_probe_stages.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool45.not.i.not = icmp eq i32 %31, 0
  br i1 %tobool45.not.i.not, label %kempld_wdt_probe_stages.exit.cleanup_crit_edge, label %if.end18

kempld_wdt_probe_stages.exit.cleanup_crit_edge:   ; preds = %kempld_wdt_probe_stages.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %kempld_wdt_probe_stages.exit
  %32 = load i32, ptr @timeout, align 4
  %call19 = tail call i32 @kempld_wdt_set_timeout(ptr noundef %wdd5, i32 noundef %32)
  %33 = load i32, ptr @pretimeout, align 4
  %call20 = tail call fastcc i32 @kempld_wdt_set_pretimeout(ptr noundef %wdd5, i32 noundef %33)
  %and22 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end18.if.end28_crit_edge, label %if.then24

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @kempld_wdt_update_timeouts(ptr noundef nonnull %call.i)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end18.if.end28_crit_edge
  %driver_data.i.i72 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i72 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i72, align 4
  %status.i73 = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i73) #5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status.i73) #5
  %call29 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev, ptr noundef %wdd5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end35, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %timeout = getelementptr inbounds %struct.kempld_wdt_data, ptr %call.i, i32 0, i32 1, i32 7
  %35 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %timeout, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %36) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end28.cleanup_crit_edge, %kempld_wdt_probe_stages.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end35 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %kempld_wdt_probe_stages.exit.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_wdt_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kempld_get_mutex(ptr noundef %3) #5
  %call3 = tail call zeroext i8 @kempld_read8(ptr noundef %3, i8 noundef zeroext 23) #5
  %pm_status_store = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pm_status_store to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call3, ptr %pm_status_store, align 4
  tail call void @kempld_release_mutex(ptr noundef %3) #5
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %stage.i = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.kempld_wdt_data, ptr %1, i32 0, i32 3, i32 1
  tail call void @kempld_get_mutex(ptr noundef %6) #5
  %call.i = tail call fastcc i32 @kempld_wdt_get_timeout(ptr noundef %1, ptr noundef %arrayidx.i) #5
  %call4.i = tail call fastcc i32 @kempld_wdt_get_timeout(ptr noundef %1, ptr noundef %stage.i) #5
  tail call void @kempld_release_mutex(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %call4.i
  %7 = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select.i, ptr %7, align 4
  %add.i = add i32 %call4.i, %call.i
  %timeout7.i = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %timeout7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %timeout7.i, align 4
  %10 = ptrtoint ptr %pm_status_store to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pm_status_store, align 4
  %12 = and i8 %11, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i14 = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 1, i32 16
  %13 = ptrtoint ptr %driver_data.i.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i14, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void @kempld_get_mutex(ptr noundef %16) #5
  %call2.i = tail call zeroext i8 @kempld_read8(ptr noundef %16, i8 noundef zeroext 23) #5
  %17 = and i8 %call2.i, -17
  tail call void @kempld_write8(ptr noundef %16, i8 noundef zeroext 23, i8 noundef zeroext %17) #5
  %call4.i15 = tail call zeroext i8 @kempld_read8(ptr noundef %16, i8 noundef zeroext 23) #5
  tail call void @kempld_release_mutex(ptr noundef %16) #5
  %18 = and i8 %call4.i15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i16 = icmp eq i8 %18, 0
  %..i = select i1 %tobool.not.i16, i32 0, i32 -13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %..i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_wdt_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_status_store = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pm_status_store to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_status_store, align 4
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wdd1 = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @kempld_wdt_start(ptr noundef %wdd1)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i7 = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 1, i32 16
  %5 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i7, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @kempld_get_mutex(ptr noundef %8) #5
  %call2.i = tail call zeroext i8 @kempld_read8(ptr noundef %8, i8 noundef zeroext 23) #5
  %9 = and i8 %call2.i, -17
  tail call void @kempld_write8(ptr noundef %8, i8 noundef zeroext 23, i8 noundef zeroext %9) #5
  %call4.i = tail call zeroext i8 @kempld_read8(ptr noundef %8, i8 noundef zeroext 23) #5
  tail call void @kempld_release_mutex(ptr noundef %8) #5
  %10 = and i8 %call4.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 -13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %..i, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kempld_get_mutex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @kempld_read8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kempld_release_mutex(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_wdt_set_timeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stage = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 3
  %mask = getelementptr %struct.kempld_wdt_data, ptr %1, i32 0, i32 3, i32 1, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pretimeout = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pretimeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %spec.select = select i1 %cmp.not, i32 %timeout, i32 %5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %timeout.addr.0 = phi i32 [ %timeout, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %stage, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %mask.i = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end7

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false.i
  tail call void @kempld_get_mutex(ptr noundef %7) #5
  %10 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stage, align 4
  %12 = trunc i32 %11 to i8
  %conv.i = add i8 %12, 24
  %call.i = tail call zeroext i8 @kempld_read8(ptr noundef %7, i8 noundef zeroext %conv.i) #5
  %13 = and i8 %call.i, -16
  %stage_cfg.0.i = or i8 %13, 9
  %14 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stage, align 4
  %16 = trunc i32 %15 to i8
  %conv21.i = add i8 %16, 24
  tail call void @kempld_write8(ptr noundef %7, i8 noundef zeroext %conv21.i, i8 noundef zeroext %stage_cfg.0.i) #5
  tail call void @kempld_release_mutex(ptr noundef %7) #5
  %call8 = tail call fastcc i32 @kempld_wdt_set_stage_timeout(ptr noundef %1, ptr noundef nonnull %stage, i32 noundef %timeout.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %timeout12 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %17 = ptrtoint ptr %timeout12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %timeout.addr.0, ptr %timeout12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call8, %if.end7.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kempld_wdt_set_pretimeout(ptr nocapture noundef readonly %wdd, i32 noundef %pretimeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.kempld_wdt_data, ptr %1, i32 0, i32 3, i32 1
  %mask = getelementptr %struct.kempld_wdt_data, ptr %1, i32 0, i32 3, i32 1, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pretimeout)
  %cmp = icmp ult i32 %5, %pretimeout
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pretimeout)
  %cmp3.not = icmp eq i32 %pretimeout, 0
  %spec.select = select i1 %cmp3.not, i8 0, i8 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %if.end2.cleanup_crit_edge, label %lor.lhs.false.i

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end2
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end9

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false.i
  tail call void @kempld_get_mutex(ptr noundef %7) #5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = trunc i32 %11 to i8
  %conv.i = add i8 %12, 24
  %call.i = tail call zeroext i8 @kempld_read8(ptr noundef %7, i8 noundef zeroext %conv.i) #5
  %13 = and i8 %call.i, -16
  %stage_cfg.0.i = or i8 %13, %spec.select
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = trunc i32 %15 to i8
  %conv21.i = add i8 %16, 24
  tail call void @kempld_write8(ptr noundef %7, i8 noundef zeroext %conv21.i, i8 noundef zeroext %stage_cfg.0.i) #5
  tail call void @kempld_release_mutex(ptr noundef %7) #5
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout, align 4
  %sub = sub i32 %18, %pretimeout
  %call11 = tail call fastcc i32 @kempld_wdt_set_stage_timeout(ptr noundef %1, ptr noundef nonnull %arrayidx, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %pretimeout15 = getelementptr inbounds %struct.kempld_wdt_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %pretimeout15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %pretimeout, ptr %pretimeout15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -6, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kempld_wdt_update_timeouts(ptr nocapture noundef %wdt_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdt_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdt_data, align 4
  %stage = getelementptr inbounds %struct.kempld_wdt_data, ptr %wdt_data, i32 0, i32 3
  %arrayidx = getelementptr %struct.kempld_wdt_data, ptr %wdt_data, i32 0, i32 3, i32 1
  tail call void @kempld_get_mutex(ptr noundef %1) #5
  %call = tail call fastcc i32 @kempld_wdt_get_timeout(ptr noundef %wdt_data, ptr noundef %arrayidx)
  %call4 = tail call fastcc i32 @kempld_wdt_get_timeout(ptr noundef %wdt_data, ptr noundef %stage)
  tail call void @kempld_release_mutex(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %call4
  %2 = getelementptr inbounds %struct.kempld_wdt_data, ptr %wdt_data, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %add = add i32 %call4, %call
  %timeout7 = getelementptr inbounds %struct.kempld_wdt_data, ptr %wdt_data, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %timeout7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %timeout7, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_wdt_start(ptr nocapture noundef %wdd) #2 align 64 {
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
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %call2 = tail call i32 @kempld_wdt_set_timeout(ptr noundef %wdd, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kempld_get_mutex(ptr noundef %3) #5
  %call3 = tail call zeroext i8 @kempld_read8(ptr noundef %3, i8 noundef zeroext 23) #5
  %6 = or i8 %call3, 16
  tail call void @kempld_write8(ptr noundef %3, i8 noundef zeroext 23, i8 noundef zeroext %6) #5
  %call5 = tail call zeroext i8 @kempld_read8(ptr noundef %3, i8 noundef zeroext 23) #5
  tail call void @kempld_release_mutex(ptr noundef %3) #5
  %7 = and i8 %call5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  %. = select i1 %tobool7.not, i32 -13, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
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
  tail call void @kempld_get_mutex(ptr noundef %3) #5
  %call2 = tail call zeroext i8 @kempld_read8(ptr noundef %3, i8 noundef zeroext 23) #5
  %4 = and i8 %call2, -17
  tail call void @kempld_write8(ptr noundef %3, i8 noundef zeroext 23, i8 noundef zeroext %4) #5
  %call4 = tail call zeroext i8 @kempld_read8(ptr noundef %3, i8 noundef zeroext 23) #5
  tail call void @kempld_release_mutex(ptr noundef %3) #5
  %5 = and i8 %call4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %. = select i1 %tobool.not, i32 0, i32 -13
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_wdt_keepalive(ptr nocapture noundef readonly %wdd) #2 align 64 {
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
  tail call void @kempld_get_mutex(ptr noundef %3) #5
  tail call void @kempld_write8(ptr noundef %3, i8 noundef zeroext 22, i8 noundef zeroext 75) #5
  tail call void @kempld_release_mutex(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_wdt_ioctl(ptr nocapture noundef readonly %wdd, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = inttoptr i32 %arg to ptr
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -1073457400, label %sw.bb
    i32 -2147199223, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 349) #5
  %2 = tail call i32 @llvm.read_register.i32(metadata !63) #5
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !73
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #5, !srcloc !76
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #5, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  %call4 = tail call fastcc i32 @kempld_wdt_set_pretimeout(ptr noundef %wdd, i32 noundef %asmresult2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @kempld_get_mutex(ptr noundef %9) #5
  tail call void @kempld_write8(ptr noundef %9, i8 noundef zeroext 22, i8 noundef zeroext 75) #5
  tail call void @kempld_release_mutex(ptr noundef %9) #5
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %pretimeout = getelementptr inbounds %struct.kempld_wdt_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pretimeout, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 357) #5
  %14 = tail call i32 @llvm.read_register.i32(metadata !63) #5
  %and.i.i.i28 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i28 to ptr
  %cpu_domain.i.i29 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i29) #4, !srcloc !73
  %and.i30 = and i32 %16, -13
  %or.i31 = or i32 %and.i30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i31) #5, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  %17 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %13, i32 -1226833921) #5, !srcloc !77
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #5, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %if.end7, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %sw.bb.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ], [ %17, %sw.bb9 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kempld_write8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kempld_wdt_set_stage_timeout(ptr nocapture noundef readonly %wdt_data, ptr noundef readonly %stage, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdt_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdt_data, align 4
  %tobool.not = icmp eq ptr %stage, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end186

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end186:                                        ; preds = %entry
  %conv = zext i32 %timeout to i64
  %pld_clock = getelementptr inbounds %struct.kempld_device_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pld_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pld_clock, align 4
  %conv2 = zext i32 %3 to i64
  %mul = mul nuw i64 %conv2, %conv
  %conv19 = trunc i64 %mul to i32
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9223367638806167551, i64 %mul, i32 0) #9, !srcloc !78
  %asmresult.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9223367638806167551, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #9, !srcloc !79
  %asmresult10.i = extractvalue { i64, i32 } %5, 0
  %div166312 = lshr i64 %asmresult10.i, 20
  %conv167 = trunc i64 %div166312 to i32
  %mul168.neg = mul i32 %conv167, -2097151
  %sub169 = sub i32 0, %conv19
  call void @__sanitizer_cov_trace_cmp4(i32 %mul168.neg, i32 %sub169)
  %tobool188.not = icmp ne i32 %mul168.neg, %sub169
  %inc = zext i1 %tobool188.not to i64
  %spec.select = add nuw nsw i64 %div166312, %inc
  %mask = getelementptr inbounds %struct.kempld_wdt_stage, ptr %stage, i32 0, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %conv191 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %conv191)
  %cmp192 = icmp ugt i64 %spec.select, %conv191
  br i1 %cmp192, label %if.end186.cleanup_crit_edge, label %if.end195

if.end186.cleanup_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end195:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  %8 = trunc i64 %spec.select to i32
  %conv199 = and i32 %7, %8
  tail call void @kempld_get_mutex(ptr noundef %1) #5
  %9 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stage, align 4
  %11 = trunc i32 %10 to i8
  %conv201 = add i8 %11, 24
  %call202 = tail call zeroext i8 @kempld_read8(ptr noundef %1, i8 noundef zeroext %conv201) #5
  %12 = and i8 %call202, -49
  %13 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stage, align 4
  %15 = trunc i32 %14 to i8
  %conv211 = add i8 %15, 24
  tail call void @kempld_write8(ptr noundef %1, i8 noundef zeroext %conv211, i8 noundef zeroext %12) #5
  %16 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stage, align 4
  %.tr = trunc i32 %17 to i8
  %18 = shl i8 %.tr, 2
  %conv215 = add i8 %18, 27
  tail call void @kempld_write32(ptr noundef %1, i8 noundef zeroext %conv215, i32 noundef %conv199) #5
  tail call void @kempld_release_mutex(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end195, %if.end186.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end195 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end186.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kempld_write32(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kempld_wdt_get_timeout(ptr nocapture noundef readonly %wdt_data, ptr nocapture noundef readonly %stage) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.kempld_wdt_stage, ptr %stage, i32 0, i32 1
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %wdt_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_data, align 4
  %4 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stage, align 4
  %6 = trunc i32 %5 to i8
  %conv = add i8 %6, 24
  %call = tail call zeroext i8 @kempld_read8(ptr noundef %3, i8 noundef zeroext %conv) #5
  %7 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stage, align 4
  %.tr = trunc i32 %8 to i8
  %9 = shl i8 %.tr, 2
  %conv4 = add i8 %9, 27
  %call5 = tail call i32 @kempld_read32(ptr noundef %3, i8 noundef zeroext %conv4) #5
  %10 = lshr i8 %call, 4
  %11 = and i8 %10, 3
  %12 = zext i8 %11 to i32
  %arrayidx = getelementptr [4 x i32], ptr @kempld_prescaler, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %and10347 = and i32 %16, %call5
  %and10 = zext i32 %and10347 to i64
  %conv11 = zext i32 %14 to i64
  %mul12 = mul nuw i64 %and10, %conv11
  %pld_clock = getelementptr inbounds %struct.kempld_device_data, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %pld_clock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pld_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul12)
  %cmp186 = icmp ult i64 %mul12, 4294967296
  br i1 %cmp186, label %if.then190, label %if.else196, !prof !80

if.then190:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv191 = trunc i64 %mul12 to i32
  %conv191.frozen = freeze i32 %conv191
  %.frozen = freeze i32 %18
  %div194 = udiv i32 %conv191.frozen, %.frozen
  %19 = mul i32 %div194, %.frozen
  %rem192.decomposed = sub i32 %conv191.frozen, %19
  %conv195 = zext i32 %div194 to i64
  br label %if.end200

if.else196:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %mul12) #9, !srcloc !81
  %asmresult.i351 = extractvalue { i64, i64 } %20, 0
  %asmresult1.i = extractvalue { i64, i64 } %20, 1
  %shr.i = lshr i64 %asmresult.i351, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end200

if.end200:                                        ; preds = %if.else196, %if.then190
  %stage_timeout.0 = phi i64 [ %conv195, %if.then190 ], [ %asmresult1.i, %if.else196 ]
  %__rem.0 = phi i32 [ %rem192.decomposed, %if.then190 ], [ %conv.i, %if.else196 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0)
  %tobool202.not = icmp ne i32 %__rem.0, 0
  %inc = zext i1 %tobool202.not to i64
  %spec.select = add i64 %stage_timeout.0, %inc
  %conv205 = trunc i64 %spec.select to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %spec.select)
  %21 = icmp ult i64 %spec.select, 4294967296
  br i1 %21, label %if.end200.cleanup_crit_edge, label %land.rhs

if.end200.cleanup_crit_edge:                      ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs:                                         ; preds = %if.end200
  %.b348 = load i1, ptr @kempld_wdt_get_timeout.__already_done, align 1
  br i1 %.b348, label %land.rhs.cleanup_crit_edge, label %if.then224, !prof !80

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then224:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @kempld_wdt_get_timeout.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 194, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then224, %land.rhs.cleanup_crit_edge, %if.end200.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %conv205, %if.end200.cleanup_crit_edge ], [ %conv205, %if.then224 ], [ %conv205, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kempld_read32(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/kempld_wdt.c", i32 87, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype174, !1, !"__UNIQUE_ID_timeouttype174", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout175, !4, !"__UNIQUE_ID_timeout175", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/kempld_wdt.c", i32 88, i32 1}
!5 = !{ptr @__param_pretimeout, !6, !"__param_pretimeout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/kempld_wdt.c", i32 93, i32 1}
!7 = !{ptr @__UNIQUE_ID_pretimeouttype176, !6, !"__UNIQUE_ID_pretimeouttype176", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_pretimeout177, !9, !"__UNIQUE_ID_pretimeout177", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/kempld_wdt.c", i32 94, i32 1}
!10 = !{ptr @__param_nowayout, !11, !"__param_nowayout", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/kempld_wdt.c", i32 99, i32 1}
!12 = !{ptr @__UNIQUE_ID_nowayouttype178, !11, !"__UNIQUE_ID_nowayouttype178", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_nowayout179, !14, !"__UNIQUE_ID_nowayout179", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/kempld_wdt.c", i32 100, i32 1}
!15 = !{ptr @__initcall__kmod_kempld_wdt__180_548_kempld_wdt_driver_init6, !16, !"__initcall__kmod_kempld_wdt__180_548_kempld_wdt_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/kempld_wdt.c", i32 548, i32 1}
!17 = !{ptr @__exitcall_kempld_wdt_driver_exit, !16, !"__exitcall_kempld_wdt_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description181, !19, !"__UNIQUE_ID_description181", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/kempld_wdt.c", i32 550, i32 1}
!20 = !{ptr @__UNIQUE_ID_author182, !21, !"__UNIQUE_ID_author182", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/kempld_wdt.c", i32 551, i32 1}
!22 = !{ptr @__UNIQUE_ID_file183, !23, !"__UNIQUE_ID_file183", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/kempld_wdt.c", i32 552, i32 1}
!24 = !{ptr @__UNIQUE_ID_license184, !23, !"__UNIQUE_ID_license184", i1 false, i1 false}
!25 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!26 = !{ptr @timeout, !27, !"timeout", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/kempld_wdt.c", i32 86, i32 21}
!28 = !{ptr @__param_str_pretimeout, !6, !"__param_str_pretimeout", i1 false, i1 false}
!29 = !{ptr @pretimeout, !30, !"pretimeout", i1 false, i1 false}
!30 = !{!"../drivers/watchdog/kempld_wdt.c", i32 92, i32 21}
!31 = !{ptr @__param_str_nowayout, !11, !"__param_str_nowayout", i1 false, i1 false}
!32 = !{ptr @nowayout, !33, !"nowayout", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/kempld_wdt.c", i32 98, i32 13}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/kempld_wdt.c", i32 541, i32 11}
!36 = !{ptr @kempld_wdt_driver, !37, !"kempld_wdt_driver", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/kempld_wdt.c", i32 539, i32 31}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/kempld_wdt.c", i32 461, i32 4}
!40 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @kempld_wdt_probe._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @kempld_wdt_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/kempld_wdt.c", i32 483, i32 3}
!48 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @kempld_wdt_probe._entry.6, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @kempld_wdt_probe._entry_ptr.9, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/kempld_wdt.c", i32 493, i32 2}
!53 = !{ptr @kempld_wdt_probe._entry.10, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @kempld_wdt_probe._entry_ptr.12, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @kempld_wdt_info, !56, !"kempld_wdt_info", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/kempld_wdt.c", i32 419, i32 35}
!57 = !{ptr @kempld_wdt_ops, !58, !"kempld_wdt_ops", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/kempld_wdt.c", i32 427, i32 34}
!59 = !{ptr @kempld_prescaler, !60, !"kempld_prescaler", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/kempld_wdt.c", i32 61, i32 18}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/kempld_wdt.c", i32 194, i32 2}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 4565360}
!74 = !{i64 4565557}
!75 = !{i64 2152050790}
!76 = !{i64 2152394092, i64 2152394372, i64 2152394706, i64 2152395040}
!77 = !{i64 2152404371, i64 2152404651, i64 2152404985, i64 2152405319}
!78 = !{i64 712980, i64 713007, i64 713029, i64 713057}
!79 = !{i64 713388, i64 713415, i64 713448, i64 713469, i64 713496, i64 713522}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2148198524, i64 2148198804, i64 2148199138, i64 2148199472}
