; ModuleID = '/llk/IR_all_yes/drivers/watchdog/rti_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/rti_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
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
%struct.rti_wdt_device = type { ptr, i32, %struct.watchdog_device }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_rti_wdt__171_331_rti_wdt_driver_init6 = internal global ptr @rti_wdt_driver_init, section ".initcall6.init", align 4
@rti_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rti_wdt_probe, ptr @rti_wdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rti_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rti_wdt_driver_exit = internal global ptr @rti_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author172 = internal constant [45 x i8] c"rti_wdt.author=Tero Kristo <t-kristo@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [43 x i8] c"rti_wdt.description=K3 RTI Watchdog Driver\00", section ".modinfo", align 1
@__param_str_heartbeat = internal constant [18 x i8] c"rti_wdt.heartbeat\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype174 = internal constant [31 x i8] c"rti_wdt.parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat175 = internal constant [87 x i8] c"rti_wdt.parm=heartbeat:Watchdog heartbeat period in seconds from 1 to 1000, default 60\00", section ".modinfo", align 1
@__UNIQUE_ID_file176 = internal constant [38 x i8] c"rti_wdt.file=drivers/watchdog/rti_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [20 x i8] c"rti_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias178 = internal constant [31 x i8] c"rti_wdt.alias=platform:rti-wdt\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rti-wdt\00", [24 x i8] zeroinitializer }, align 32
@rti_wdt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j7-rti-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@rti_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get fck rate.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rti_wdt_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/watchdog/rti_wdt.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rti_wdt_probe._entry_ptr = internal global ptr @rti_wdt_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"runtime pm failed\0A\00", [45 x i8] zeroinitializer }, align 32
@rti_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 32768, i32 0, [32 x i8] c"K3 RTI Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@rti_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @rti_wdt_start, ptr null, ptr @rti_wdt_ping, ptr null, ptr null, ptr null, ptr @rti_wdt_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rti_wdt_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 266, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"watchdog already running, ignoring heartbeat config!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rti_wdt_probe._entry_ptr.11 = internal global ptr @rti_wdt_probe._entry.8, section ".printk_index", align 4
@rti_wdt_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad window size.\0A\00", [46 x i8] zeroinitializer }, align 32
@rti_wdt_probe._entry_ptr.14 = internal global ptr @rti_wdt_probe._entry.12, section ".printk_index", align 4
@rti_wdt_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 280, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"time_left > heartbeat? Assuming last ping just before now.\0A\00", [36 x i8] zeroinitializer }, align 32
@rti_wdt_probe._entry_ptr.17 = internal global ptr @rti_wdt_probe._entry.15, section ".printk_index", align 4
@rti_wdt_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot register watchdog device\0A\00", [63 x i8] zeroinitializer }, align 32
@rti_wdt_probe._entry_ptr.20 = internal global ptr @rti_wdt_probe._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 80, i64 1280, i64 20480, i64 327680, i64 5242880]
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"rti_wdt_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 322, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 55, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 324, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"rti_wdt_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 316, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 208, i32 43 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 215, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 231, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"rti_wdt_info\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 181, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"rti_wdt_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 186, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 266, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 274, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 280, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [30 x i8] c"../drivers/watchdog/rti_wdt.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 289, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias178, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_heartbeat175, ptr @__UNIQUE_ID_heartbeattype174, ptr @__UNIQUE_ID_license177, ptr @__exitcall_rti_wdt_driver_exit, ptr @__initcall__kmod_rti_wdt__171_331_rti_wdt_driver_init6, ptr @__param_heartbeat, ptr @rti_wdt_driver_exit, ptr @rti_wdt_probe._entry, ptr @rti_wdt_probe._entry.12, ptr @rti_wdt_probe._entry.15, ptr @rti_wdt_probe._entry.18, ptr @rti_wdt_probe._entry.8, ptr @rti_wdt_probe._entry_ptr, ptr @rti_wdt_probe._entry_ptr.11, ptr @rti_wdt_probe._entry_ptr.14, ptr @rti_wdt_probe._entry_ptr.17, ptr @rti_wdt_probe._entry_ptr.20, ptr @rti_wdt_driver, ptr @heartbeat, ptr @.str, ptr @rti_wdt_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rti_wdt_info, ptr @rti_wdt_ops, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti_wdt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti_wdt_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti_wdt_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti_wdt_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti_wdt_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rti_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rti_wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rti_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rti_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup293_crit_edge, label %if.end

entry.cleanup293_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup293

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call2 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %0, ptr noundef nonnull @.str.1) #6
  br label %cleanup293

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @clk_get_rate(ptr noundef %call2) #6
  %freq = getelementptr inbounds %struct.rti_wdt_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call8, ptr %freq, align 4
  tail call void @clk_put(ptr noundef %call2) #6
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup293

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %3)
  %cmp = icmp ult i32 %3, 32768
  br i1 %cmp, label %if.then14, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul nuw nsw i32 %3, 9
  %div = udiv i32 %mul, 10
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %freq, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i436 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i436)
  %tobool19.not = icmp eq i32 %call.i436, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !69
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then20.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then20.pm_runtime_put_noidle.exit_crit_edge:   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !70
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then20.pm_runtime_put_noidle.exit_crit_edge
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i436, ptr noundef nonnull @.str.7) #6
  br label %cleanup293

if.end22:                                         ; preds = %if.end17
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %wdd23 = getelementptr inbounds %struct.rti_wdt_device, ptr %call.i, i32 0, i32 2
  %info = getelementptr inbounds %struct.rti_wdt_device, ptr %call.i, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rti_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.rti_wdt_device, ptr %call.i, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rti_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.rti_wdt_device, ptr %call.i, i32 0, i32 2, i32 9
  %9 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %min_timeout, align 4
  %10 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %freq, align 4
  %div25 = udiv i32 33546240, %11
  %mul26 = mul i32 %div25, 1000
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.rti_wdt_device, ptr %call.i, i32 0, i32 2, i32 12
  %12 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul26, ptr %max_hw_heartbeat_ms, align 4
  %parent = getelementptr inbounds %struct.rti_wdt_device, ptr %call.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.rti_wdt_device, ptr %call.i, i32 0, i32 2, i32 16
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.rti_wdt_device, ptr %call.i, i32 0, i32 2, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #6
  tail call void @watchdog_set_restart_priority(ptr noundef %wdd23, i32 noundef 128) #6
  %call27 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call27, ptr %call.i, align 4
  %cmp.i437 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i437, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call27 to i32
  br label %err_iomap

if.end33:                                         ; preds = %if.end22
  %add.ptr = getelementptr i8, ptr %call27, i32 144
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -631667287, i32 %17)
  %cmp37 = icmp eq i32 %17, -631667287
  br i1 %cmp37, label %if.then38, label %if.end33.if.end277_crit_edge

if.end33.if.end277_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277

if.then38:                                        ; preds = %if.end33
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #6
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 152
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !71
  %23 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then38.rti_wdt_get_timeleft_ms.exit_crit_edge

if.then38.rti_wdt_get_timeleft_ms.exit_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %rti_wdt_get_timeleft_ms.exit

if.end.i:                                         ; preds = %if.then38
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %add.ptr4.i = getelementptr i8, ptr %25, i32 160
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !71
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %conv.i = zext i32 %27 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %freq.i = getelementptr inbounds %struct.rti_wdt_device, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp179.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp179.i, label %if.then183.i, label %if.else189.i, !prof !73

if.then183.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv184.i = trunc i64 %mul.i to i32
  %div187.i = udiv i32 %conv184.i, %29
  br label %rti_wdt_get_timeleft_ms.exit

if.else189.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %mul.i) #10, !srcloc !74
  %asmresult1.i.i = extractvalue { i64, i64 } %30, 1
  %extract.t304.i = trunc i64 %asmresult1.i.i to i32
  br label %rti_wdt_get_timeleft_ms.exit

rti_wdt_get_timeleft_ms.exit:                     ; preds = %if.else189.i, %if.then183.i, %if.then38.rti_wdt_get_timeleft_ms.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then38.rti_wdt_get_timeleft_ms.exit_crit_edge ], [ %div187.i, %if.then183.i ], [ %extract.t304.i, %if.else189.i ]
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %add.ptr43 = getelementptr i8, ptr %32, i32 148
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #6, !srcloc !71
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %conv = zext i32 %34 to i64
  %mul47 = mul nuw nsw i64 %conv, 8192000
  %35 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul47)
  %cmp223 = icmp ult i64 %mul47, 4294967296
  br i1 %cmp223, label %if.then227, label %if.else233, !prof !73

if.then227:                                       ; preds = %rti_wdt_get_timeleft_ms.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv228 = trunc i64 %mul47 to i32
  %div231 = udiv i32 %conv228, %36
  %conv232 = zext i32 %div231 to i64
  br label %if.end237

if.else233:                                       ; preds = %rti_wdt_get_timeleft_ms.exit
  call void @__sanitizer_cov_trace_pc() #8
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %mul47) #10, !srcloc !74
  %asmresult1.i = extractvalue { i64, i64 } %37, 1
  br label %if.end237

if.end237:                                        ; preds = %if.else233, %if.then227
  %heartbeat_ms.0 = phi i64 [ %conv232, %if.then227 ], [ %asmresult1.i, %if.else233 ]
  %38 = load i32, ptr @heartbeat, align 4
  %mul239 = mul i32 %38, 1000
  %conv240 = sext i32 %mul239 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %heartbeat_ms.0, i64 %conv240)
  %cmp241.not = icmp eq i64 %heartbeat_ms.0, %conv240
  br i1 %cmp241.not, label %if.end237.if.end247_crit_edge, label %do.end246

if.end237.if.end247_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247

do.end246:                                        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %if.end247

if.end247:                                        ; preds = %do.end246, %if.end237.if.end247_crit_edge
  %conv248 = trunc i64 %heartbeat_ms.0 to i32
  %div249 = sdiv i32 %conv248, 1000
  store i32 %div249, ptr @heartbeat, align 4
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %add.ptr253 = getelementptr i8, ptr %40, i32 168
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #6, !srcloc !71
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %cleanup [
    i32 80, label %if.end247.if.end263_crit_edge
    i32 1280, label %sw.bb1.i
    i32 20480, label %sw.bb4.i
    i32 327680, label %sw.bb7.i
    i32 5242880, label %sw.bb10.i
  ]

if.end247.if.end263_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end263

sw.bb1.i:                                         ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end263

sw.bb4.i:                                         ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end263

sw.bb7.i:                                         ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end263

sw.bb10.i:                                        ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end263

if.end263:                                        ; preds = %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %if.end247.if.end263_crit_edge
  %.sink17.i = phi i32 [ 750, %sw.bb1.i ], [ 875, %sw.bb4.i ], [ 935, %sw.bb7.i ], [ 969, %sw.bb10.i ], [ 500, %if.end247.if.end263_crit_edge ]
  %44 = load i32, ptr @heartbeat, align 4
  %mul.i441 = mul i32 %44, %.sink17.i
  %min_hw_heartbeat_ms.i = getelementptr inbounds %struct.rti_wdt_device, ptr %call.i, i32 0, i32 2, i32 11
  %45 = ptrtoint ptr %min_hw_heartbeat_ms.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul.i441, ptr %min_hw_heartbeat_ms.i, align 4
  %conv264 = zext i32 %retval.0.i to i64
  %conv266 = sub i32 %conv248, %retval.0.i
  call void @__sanitizer_cov_trace_cmp8(i64 %heartbeat_ms.0, i64 %conv264)
  %cmp268 = icmp ult i64 %heartbeat_ms.0, %conv264
  br i1 %cmp268, label %do.end273, label %if.end263.if.end277_crit_edge

if.end263.if.end277_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277

do.end273:                                        ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  br label %if.end277

cleanup:                                          ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %err_iomap

if.end277:                                        ; preds = %do.end273, %if.end263.if.end277_crit_edge, %if.end33.if.end277_crit_edge
  %last_ping.2 = phi i32 [ 0, %if.end33.if.end277_crit_edge ], [ %conv266, %if.end263.if.end277_crit_edge ], [ 0, %do.end273 ]
  %46 = load i32, ptr @heartbeat, align 4
  %call278 = tail call i32 @watchdog_init_timeout(ptr noundef %wdd23, i32 noundef %46, ptr noundef %dev1) #6
  %call279 = tail call i32 @watchdog_register_device(ptr noundef %wdd23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.end285, label %do.end284

do.end284:                                        ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %err_iomap

if.end285:                                        ; preds = %if.end277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_ping.2)
  %tobool286.not = icmp eq i32 %last_ping.2, 0
  br i1 %tobool286.not, label %if.end285.cleanup293_crit_edge, label %if.then287

if.end285.cleanup293_crit_edge:                   ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup293

if.then287:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #8
  %call288 = tail call i32 @watchdog_set_last_hw_keepalive(ptr noundef %wdd23, i32 noundef %last_ping.2) #6
  br label %cleanup293

err_iomap:                                        ; preds = %do.end284, %cleanup, %if.then30
  %ret.0 = phi i32 [ %16, %if.then30 ], [ -22, %cleanup ], [ %call279, %do.end284 ]
  %call.i443 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup293

cleanup293:                                       ; preds = %err_iomap, %if.then287, %if.end285.cleanup293_crit_edge, %pm_runtime_put_noidle.exit, %do.end, %if.then4, %entry.cleanup293_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ %call21, %pm_runtime_put_noidle.exit ], [ %ret.0, %err_iomap ], [ -22, %do.end ], [ -12, %entry.cleanup293_crit_edge ], [ 0, %if.then287 ], [ 0, %if.end285.cleanup293_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti_wdt_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wdd = getelementptr inbounds %struct.rti_wdt_device, ptr %1, i32 0, i32 2
  tail call void @watchdog_unregister_device(ptr noundef %wdd) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_set_last_hw_keepalive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti_wdt_start(ptr nocapture noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  %freq = getelementptr inbounds %struct.rti_wdt_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq, align 4
  %mul = mul i32 %5, %3
  %shr = lshr i32 %mul, 13
  %6 = tail call i32 @llvm.umin.i32(i32 %shr, i32 4095)
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !77
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout, align 4
  %mul5 = mul i32 %11, 500
  %min_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 11
  %12 = ptrtoint ptr %min_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul5, ptr %min_hw_heartbeat_ms, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %14, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 167772160) #6, !srcloc !77
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr9 = getelementptr i8, ptr %16, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 1342177280) #6, !srcloc !77
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 168
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !71
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr14 = getelementptr i8, ptr %21, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -631667287) #6, !srcloc !77
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 451215360) #6, !srcloc !77
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 1554186240) #6, !srcloc !77
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti_wdt_get_timeleft(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 152
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !71
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.rti_wdt_get_timeleft_ms.exit_crit_edge

entry.rti_wdt_get_timeleft_ms.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rti_wdt_get_timeleft_ms.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 160
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !71
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %conv.i = zext i32 %9 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %freq.i = getelementptr inbounds %struct.rti_wdt_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp179.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp179.i, label %if.then183.i, label %if.else189.i, !prof !73

if.then183.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv184.i = trunc i64 %mul.i to i32
  %div187.i = udiv i32 %conv184.i, %11
  br label %rti_wdt_get_timeleft_ms.exit

if.else189.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %mul.i) #10, !srcloc !74
  %asmresult1.i.i = extractvalue { i64, i64 } %12, 1
  %extract.t304.i = trunc i64 %asmresult1.i.i to i32
  br label %rti_wdt_get_timeleft_ms.exit

rti_wdt_get_timeleft_ms.exit:                     ; preds = %if.else189.i, %if.then183.i, %entry.rti_wdt_get_timeleft_ms.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.rti_wdt_get_timeleft_ms.exit_crit_edge ], [ %div187.i, %if.then183.i ], [ %extract.t304.i, %if.else189.i ]
  %div = udiv i32 %retval.0.i, 1000
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_rti_wdt__171_331_rti_wdt_driver_init6, !1, !"__initcall__kmod_rti_wdt__171_331_rti_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/rti_wdt.c", i32 331, i32 1}
!2 = !{ptr @__exitcall_rti_wdt_driver_exit, !1, !"__exitcall_rti_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author172, !4, !"__UNIQUE_ID_author172", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/rti_wdt.c", i32 333, i32 1}
!5 = !{ptr @__UNIQUE_ID_description173, !6, !"__UNIQUE_ID_description173", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/rti_wdt.c", i32 334, i32 1}
!7 = !{ptr @__param_heartbeat, !8, !"__param_heartbeat", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/rti_wdt.c", i32 336, i32 1}
!9 = !{ptr @__UNIQUE_ID_heartbeattype174, !8, !"__UNIQUE_ID_heartbeattype174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_heartbeat175, !11, !"__UNIQUE_ID_heartbeat175", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/rti_wdt.c", i32 337, i32 1}
!12 = !{ptr @__UNIQUE_ID_file176, !13, !"__UNIQUE_ID_file176", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/rti_wdt.c", i32 342, i32 1}
!14 = !{ptr @__UNIQUE_ID_license177, !13, !"__UNIQUE_ID_license177", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias178, !16, !"__UNIQUE_ID_alias178", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/rti_wdt.c", i32 343, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/rti_wdt.c", i32 324, i32 11}
!19 = !{ptr @rti_wdt_driver, !20, !"rti_wdt_driver", i1 false, i1 false}
!20 = !{!"../drivers/watchdog/rti_wdt.c", i32 322, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/watchdog/rti_wdt.c", i32 208, i32 43}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/rti_wdt.c", i32 215, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rti_wdt_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @rti_wdt_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/watchdog/rti_wdt.c", i32 231, i32 34}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/watchdog/rti_wdt.c", i32 266, i32 4}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rti_wdt_probe._entry.8, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rti_wdt_probe._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/rti_wdt.c", i32 274, i32 4}
!40 = !{ptr @rti_wdt_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rti_wdt_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/rti_wdt.c", i32 280, i32 4}
!44 = !{ptr @rti_wdt_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rti_wdt_probe._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/rti_wdt.c", i32 289, i32 3}
!48 = !{ptr @rti_wdt_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rti_wdt_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @rti_wdt_info, !51, !"rti_wdt_info", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/rti_wdt.c", i32 181, i32 35}
!52 = !{ptr @rti_wdt_ops, !53, !"rti_wdt_ops", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/rti_wdt.c", i32 186, i32 34}
!54 = !{ptr @rti_wdt_of_match, !55, !"rti_wdt_of_match", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/rti_wdt.c", i32 316, i32 34}
!56 = !{ptr @__param_str_heartbeat, !8, !"__param_str_heartbeat", i1 false, i1 false}
!57 = !{ptr @heartbeat, !58, !"heartbeat", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/rti_wdt.c", i32 55, i32 12}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148245826}
!69 = !{i64 730649, i64 730674, i64 730696, i64 730712, i64 730724, i64 730744, i64 730768, i64 730784, i64 730796}
!70 = !{i64 2148246014}
!71 = !{i64 4809077}
!72 = !{i64 2152471425}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2148636941, i64 2148637221, i64 2148637555, i64 2148637889}
!75 = !{i64 2152472013}
!76 = !{i64 2152479548}
!77 = !{i64 4808659}
