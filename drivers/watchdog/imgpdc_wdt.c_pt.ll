; ModuleID = '/llk/IR_all_yes/drivers/watchdog/imgpdc_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/imgpdc_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.pdc_wdt_dev = type { %struct.watchdog_device, ptr, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_heartbeat = internal constant [21 x i8] c"imgpdc_wdt.heartbeat\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype183 = internal constant [34 x i8] c"imgpdc_wdt.parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat184 = internal constant [70 x i8] c"imgpdc_wdt.parm=heartbeat:Watchdog heartbeats in seconds (default=64)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [20 x i8] c"imgpdc_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype185 = internal constant [34 x i8] c"imgpdc_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout186 = internal constant [77 x i8] c"imgpdc_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_imgpdc_wdt__187_311_pdc_wdt_driver_init6 = internal global ptr @pdc_wdt_driver_init, section ".initcall6.init", align 4
@pdc_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pdc_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pdc_wdt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pdc_wdt_driver_exit = internal global ptr @pdc_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [57 x i8] c"imgpdc_wdt.author=Jude Abraham <Jude.Abraham@imgtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [63 x i8] c"imgpdc_wdt.author=Naidu Tellapati <Naidu.Tellapati@imgtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [74 x i8] c"imgpdc_wdt.description=Imagination Technologies PDC Watchdog Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [44 x i8] c"imgpdc_wdt.file=drivers/watchdog/imgpdc_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [26 x i8] c"imgpdc_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imgpdc-wdt\00", [21 x i8] zeroinitializer }, align 32
@pdc_wdt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,pdc-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get the sys clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdc_wdt_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/imgpdc_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr = internal global ptr @pdc_wdt_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wdt\00", [28 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get the wdt clock\0A\00", [35 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr.10 = internal global ptr @pdc_wdt_probe._entry.8, section ".printk_index", align 4
@pdc_wdt_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 213, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not prepare or enable sys clock\0A\00", [57 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr.13 = internal global ptr @pdc_wdt_probe._entry.11, section ".printk_index", align 4
@pdc_wdt_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 223, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not prepare or enable wdt clock\0A\00", [57 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr.16 = internal global ptr @pdc_wdt_probe._entry.14, section ".printk_index", align 4
@pdc_wdt_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 234, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr.19 = internal global ptr @pdc_wdt_probe._entry.17, section ".printk_index", align 4
@pdc_wdt_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 239, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid clock rate\0A\00", [44 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr.22 = internal global ptr @pdc_wdt_probe._entry.20, section ".printk_index", align 4
@pdc_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"IMG PDC Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@pdc_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @pdc_wdt_start, ptr @pdc_wdt_stop, ptr @pdc_wdt_keepalive, ptr null, ptr @pdc_wdt_set_timeout, ptr null, ptr null, ptr @pdc_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 269, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"watchdog module last reset due to timeout\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr.26 = internal global ptr @pdc_wdt_probe._entry.23, section ".printk_index", align 4
@pdc_wdt_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 273, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"watchdog module last reset due to hard reset\0A\00", [50 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr.29 = internal global ptr @pdc_wdt_probe._entry.27, section ".printk_index", align 4
@pdc_wdt_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 277, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"watchdog module last reset due to soft reset\0A\00", [50 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr.32 = internal global ptr @pdc_wdt_probe._entry.30, section ".printk_index", align 4
@pdc_wdt_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 281, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"watchdog module last reset due to user reset\0A\00", [50 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr.35 = internal global ptr @pdc_wdt_probe._entry.33, section ".printk_index", align 4
@pdc_wdt_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 284, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"contains an illegal status code (%08x)\0A\00", [56 x i8] zeroinitializer }, align 32
@pdc_wdt_probe._entry_ptr.38 = internal global ptr @pdc_wdt_probe._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 72, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 77, i32 13 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"pdc_wdt_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 304, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 306, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"pdc_wdt_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 298, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 199, i32 39 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 201, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 205, i32 39 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 207, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 213, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 223, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 234, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 239, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"pdc_wdt_info\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 162, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"pdc_wdt_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 169, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 269, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 272, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 276, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 280, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [33 x i8] c"../drivers/watchdog/imgpdc_wdt.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 284, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_heartbeat184, ptr @__UNIQUE_ID_heartbeattype183, ptr @__UNIQUE_ID_license192, ptr @__UNIQUE_ID_nowayout186, ptr @__UNIQUE_ID_nowayouttype185, ptr @__exitcall_pdc_wdt_driver_exit, ptr @__initcall__kmod_imgpdc_wdt__187_311_pdc_wdt_driver_init6, ptr @__param_heartbeat, ptr @__param_nowayout, ptr @pdc_wdt_driver_exit, ptr @pdc_wdt_probe._entry, ptr @pdc_wdt_probe._entry.11, ptr @pdc_wdt_probe._entry.14, ptr @pdc_wdt_probe._entry.17, ptr @pdc_wdt_probe._entry.20, ptr @pdc_wdt_probe._entry.23, ptr @pdc_wdt_probe._entry.27, ptr @pdc_wdt_probe._entry.30, ptr @pdc_wdt_probe._entry.33, ptr @pdc_wdt_probe._entry.36, ptr @pdc_wdt_probe._entry.8, ptr @pdc_wdt_probe._entry_ptr, ptr @pdc_wdt_probe._entry_ptr.10, ptr @pdc_wdt_probe._entry_ptr.13, ptr @pdc_wdt_probe._entry_ptr.16, ptr @pdc_wdt_probe._entry_ptr.19, ptr @pdc_wdt_probe._entry_ptr.22, ptr @pdc_wdt_probe._entry_ptr.26, ptr @pdc_wdt_probe._entry_ptr.29, ptr @pdc_wdt_probe._entry_ptr.32, ptr @pdc_wdt_probe._entry_ptr.35, ptr @pdc_wdt_probe._entry_ptr.38, ptr @heartbeat, ptr @nowayout, ptr @pdc_wdt_driver, ptr @.str, ptr @pdc_wdt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @pdc_wdt_info, ptr @pdc_wdt_ops, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_wdt_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pdc_wdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pdc_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pdc_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.pdc_wdt_dev, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %sys_clk = getelementptr inbounds %struct.pdc_wdt_dev, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %sys_clk, align 4
  %cmp.i529 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i529, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %3 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sys_clk, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #5
  %wdt_clk = getelementptr inbounds %struct.pdc_wdt_dev, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %wdt_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call16, ptr %wdt_clk, align 4
  %cmp.i530 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i530, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %7 = ptrtoint ptr %wdt_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdt_clk, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_clk, align 4
  %call.i531 = tail call i32 @clk_prepare(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i531)
  %tobool.not.i = icmp eq i32 %call.i531, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.do.end32_crit_edge

if.end25.do.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.end.i:                                         ; preds = %if.end25
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end33, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then3.i, %if.end25.do.end32_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i531, %if.end25.do.end32_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end.i
  %12 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sys_clk, align 4
  %call.i532 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @pdc_clk_disable_unprepare, ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i532)
  %tobool.not.i533 = icmp eq i32 %call.i532, 0
  br i1 %tobool.not.i533, label %if.end38, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %14 = ptrtoint ptr %wdt_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wdt_clk, align 4
  %call.i535 = tail call i32 @clk_prepare(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i535)
  %tobool.not.i536 = icmp eq i32 %call.i535, 0
  br i1 %tobool.not.i536, label %if.end.i539, label %if.end38.do.end45_crit_edge

if.end38.do.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

if.end.i539:                                      ; preds = %if.end38
  %call1.i537 = tail call i32 @clk_enable(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i537)
  %tobool2.not.i538 = icmp eq i32 %call1.i537, 0
  br i1 %tobool2.not.i538, label %if.end46, label %if.then3.i540

if.then3.i540:                                    ; preds = %if.end.i539
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %15) #5
  br label %do.end45

do.end45:                                         ; preds = %if.then3.i540, %if.end38.do.end45_crit_edge
  %retval.0.i541.ph = phi i32 [ %call1.i537, %if.then3.i540 ], [ %call.i535, %if.end38.do.end45_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end.i539
  %16 = ptrtoint ptr %wdt_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wdt_clk, align 4
  %call.i543 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @pdc_clk_disable_unprepare, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i543)
  %tobool.not.i544 = icmp eq i32 %call.i543, 0
  br i1 %tobool.not.i544, label %if.end51, label %devm_add_action_or_reset.exit547

devm_add_action_or_reset.exit547:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %17) #5
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %18 = ptrtoint ptr %wdt_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wdt_clk, align 4
  %call53 = tail call i32 @clk_get_rate(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp = icmp eq i32 %call53, 0
  br i1 %cmp, label %do.end57, label %cond.false76

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %cleanup

cond.false76:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call53)
  %cmp.i548.not = icmp eq i32 %call53, 1
  %. = select i1 %cmp.i548.not, i32 2, i32 1
  %min_timeout124 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %min_timeout124 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %., ptr %min_timeout124, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pdc_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pdc_wdt_ops, ptr %ops, align 4
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call53, i64 4294967296) #9, !srcloc !100
  %asmresult1.i = extractvalue { i64, i64 } %23, 1
  %extract.t617 = trunc i64 %asmresult1.i to i32
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %24 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %extract.t617, ptr %max_timeout, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 64, ptr %timeout, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev1, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %27 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i, align 4
  %28 = load i32, ptr @heartbeat, align 4
  %call329 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %28, ptr noundef %dev1) #5
  %call331 = tail call i32 @pdc_wdt_stop(ptr noundef nonnull %call.i)
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !101
  %32 = lshr i32 %31, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %and336 = and i32 %32, 7
  %33 = zext i32 %and336 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and336, label %do.end357 [
    i32 2, label %cond.false76.sw.bb_crit_edge
    i32 1, label %cond.false76.sw.bb_crit_edge619
    i32 0, label %do.end346
    i32 3, label %do.end350
    i32 4, label %do.end354
  ]

cond.false76.sw.bb_crit_edge619:                  ; preds = %cond.false76
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

cond.false76.sw.bb_crit_edge:                     ; preds = %cond.false76
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %cond.false76.sw.bb_crit_edge, %cond.false76.sw.bb_crit_edge619
  %bootstatus = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %bootstatus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bootstatus, align 4
  %or339 = or i32 %35, 32
  store i32 %or339, ptr %bootstatus, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24) #8
  br label %sw.epilog

do.end346:                                        ; preds = %cond.false76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.28) #8
  br label %sw.epilog

do.end350:                                        ; preds = %cond.false76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31) #8
  br label %sw.epilog

do.end354:                                        ; preds = %cond.false76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.34) #8
  br label %sw.epilog

do.end357:                                        ; preds = %cond.false76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %and336) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end357, %do.end354, %do.end350, %do.end346, %sw.bb
  %36 = load i8, ptr @nowayout, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool359.not = icmp eq i8 %36, 0
  br i1 %tobool359.not, label %sw.epilog.watchdog_set_nowayout.exit_crit_edge, label %if.then.i567

sw.epilog.watchdog_set_nowayout.exit_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %watchdog_set_nowayout.exit

if.then.i567:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i567, %sw.epilog.watchdog_set_nowayout.exit_crit_edge
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull %call.i, i32 noundef 128) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %status.i569 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i569) #5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status.i569) #5
  %call364 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %watchdog_set_nowayout.exit, %do.end57, %devm_add_action_or_reset.exit547, %do.end45, %devm_add_action_or_reset.exit, %do.end32, %do.end22, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %5, %do.end ], [ %9, %do.end22 ], [ %retval.0.i.ph, %do.end32 ], [ %retval.0.i541.ph, %do.end45 ], [ -22, %do.end57 ], [ %call364, %watchdog_set_nowayout.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call.i532, %devm_add_action_or_reset.exit ], [ %call.i543, %devm_add_action_or_reset.exit547 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
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
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_wdt_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.pdc_wdt_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %5 = and i32 %4, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #5, !srcloc !106
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %base.i = getelementptr inbounds %struct.pdc_wdt_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 873647531) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -1159978685) #5, !srcloc !106
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_wdt_start(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_clk.i = getelementptr inbounds %struct.pdc_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %3) #5
  %base.i = getelementptr inbounds %struct.pdc_wdt_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout.i, align 4
  %mul.i = mul i32 %8, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i.i = icmp ugt i32 %mul.i, 1
  %sub.i65.i = add i32 %mul.i, -1
  %9 = tail call i32 @llvm.ctlz.i32(i32 %sub.i65.i, i1 false) #5, !range !110
  %sub.i.i.i = sub nsw i32 31, %9
  %cond43.i = select i1 %cmp.i.i, i32 %sub.i.i.i, i32 -1
  %10 = and i32 %6, -520093697
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %or.i = or i32 %cond43.i, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %12) #5, !srcloc !106
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  %18 = or i32 %17, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr4 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %18) #5, !srcloc !106
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_wdt_keepalive(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.pdc_wdt_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 873647531) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -1159978685) #5, !srcloc !106
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_wdt_set_timeout(ptr nocapture noundef readonly %wdt_dev, i32 noundef %new_timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_timeout, ptr %timeout, align 4
  %wdt_clk.i = getelementptr inbounds %struct.pdc_wdt_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %wdt_clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wdt_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %4) #5
  %base.i = getelementptr inbounds %struct.pdc_wdt_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  %mul.i = mul i32 %9, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i.i = icmp ugt i32 %mul.i, 1
  %sub.i65.i = add i32 %mul.i, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %sub.i65.i, i1 false) #5, !range !110
  %sub.i.i.i = sub nsw i32 31, %10
  %cond43.i = select i1 %cmp.i.i, i32 %sub.i.i.i, i32 -1
  %11 = and i32 %7, -520093697
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %or.i = or i32 %cond43.i, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %13) #5, !srcloc !106
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_wdt_restart(ptr nocapture noundef readonly %wdt_dev, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.pdc_wdt_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #5, !srcloc !106
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__param_heartbeat, !1, !"__param_heartbeat", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 73, i32 1}
!2 = !{ptr @__UNIQUE_ID_heartbeattype183, !1, !"__UNIQUE_ID_heartbeattype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_heartbeat184, !4, !"__UNIQUE_ID_heartbeat184", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 74, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 78, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype185, !6, !"__UNIQUE_ID_nowayouttype185", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout186, !9, !"__UNIQUE_ID_nowayout186", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 79, i32 1}
!10 = !{ptr @__initcall__kmod_imgpdc_wdt__187_311_pdc_wdt_driver_init6, !11, !"__initcall__kmod_imgpdc_wdt__187_311_pdc_wdt_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 311, i32 1}
!12 = !{ptr @__exitcall_pdc_wdt_driver_exit, !11, !"__exitcall_pdc_wdt_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author188, !14, !"__UNIQUE_ID_author188", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 313, i32 1}
!15 = !{ptr @__UNIQUE_ID_author189, !16, !"__UNIQUE_ID_author189", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 314, i32 1}
!17 = !{ptr @__UNIQUE_ID_description190, !18, !"__UNIQUE_ID_description190", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 315, i32 1}
!19 = !{ptr @__UNIQUE_ID_file191, !20, !"__UNIQUE_ID_file191", i1 false, i1 false}
!20 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 316, i32 1}
!21 = !{ptr @__UNIQUE_ID_license192, !20, !"__UNIQUE_ID_license192", i1 false, i1 false}
!22 = !{ptr @heartbeat, !23, !"heartbeat", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 72, i32 12}
!24 = !{ptr @__param_str_heartbeat, !1, !"__param_str_heartbeat", i1 false, i1 false}
!25 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!26 = !{ptr @nowayout, !27, !"nowayout", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 77, i32 13}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 306, i32 11}
!30 = !{ptr @pdc_wdt_driver, !31, !"pdc_wdt_driver", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 304, i32 31}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 199, i32 39}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 201, i32 3}
!36 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pdc_wdt_probe._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @pdc_wdt_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 205, i32 39}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 207, i32 3}
!46 = !{ptr @pdc_wdt_probe._entry.8, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pdc_wdt_probe._entry_ptr.10, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 213, i32 3}
!50 = !{ptr @pdc_wdt_probe._entry.11, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pdc_wdt_probe._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 223, i32 3}
!54 = !{ptr @pdc_wdt_probe._entry.14, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pdc_wdt_probe._entry_ptr.16, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 234, i32 3}
!58 = !{ptr @pdc_wdt_probe._entry.17, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pdc_wdt_probe._entry_ptr.19, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 239, i32 3}
!62 = !{ptr @pdc_wdt_probe._entry.20, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pdc_wdt_probe._entry_ptr.22, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 269, i32 3}
!66 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @pdc_wdt_probe._entry.23, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @pdc_wdt_probe._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 272, i32 3}
!71 = !{ptr @pdc_wdt_probe._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @pdc_wdt_probe._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 276, i32 3}
!75 = !{ptr @pdc_wdt_probe._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @pdc_wdt_probe._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 280, i32 3}
!79 = !{ptr @pdc_wdt_probe._entry.33, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @pdc_wdt_probe._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 284, i32 3}
!83 = !{ptr @pdc_wdt_probe._entry.36, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @pdc_wdt_probe._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @pdc_wdt_info, !86, !"pdc_wdt_info", i1 false, i1 false}
!86 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 162, i32 35}
!87 = !{ptr @pdc_wdt_ops, !88, !"pdc_wdt_ops", i1 false, i1 false}
!88 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 169, i32 34}
!89 = !{ptr @pdc_wdt_match, !90, !"pdc_wdt_match", i1 false, i1 false}
!90 = !{!"../drivers/watchdog/imgpdc_wdt.c", i32 298, i32 34}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2148637626, i64 2148637906, i64 2148638240, i64 2148638574}
!101 = !{i64 2036415}
!102 = !{i64 2152860076}
!103 = !{i8 0, i8 2}
!104 = !{i64 2152836109}
!105 = !{i64 2152836411}
!106 = !{i64 2035997}
!107 = !{i64 2152834996}
!108 = !{i64 2152835427}
!109 = !{i64 2152837072}
!110 = !{i32 0, i32 33}
!111 = !{i64 2152837976}
!112 = !{i64 2152838637}
!113 = !{i64 2152838939}
!114 = !{i64 2152839331}
