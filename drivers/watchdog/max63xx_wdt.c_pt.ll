; ModuleID = '/llk/IR_all_yes/drivers/watchdog/max63xx_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/max63xx_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.max63xx_timeout = type { i8, i8, i8 }
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
%struct.max63xx_wdt = type { %struct.watchdog_device, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_max63xx_wdt__183_282_max63xx_wdt_driver_init6 = internal global ptr @max63xx_wdt_driver_init, section ".initcall6.init", align 4
@max63xx_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max63xx_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max63xx_dt_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max63xx_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max63xx_wdt_driver_exit = internal global ptr @max63xx_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [54 x i8] c"max63xx_wdt.author=Marc Zyngier <maz@misterjones.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [48 x i8] c"max63xx_wdt.description=max63xx Watchdog Driver\00", section ".modinfo", align 1
@__param_str_heartbeat = internal constant [22 x i8] c"max63xx_wdt.heartbeat\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype186 = internal constant [35 x i8] c"max63xx_wdt.parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat187 = internal constant [89 x i8] c"max63xx_wdt.parm=heartbeat:Watchdog heartbeat period in seconds from 1 to 60, default 60\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"max63xx_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype188 = internal constant [35 x i8] c"max63xx_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout189 = internal constant [78 x i8] c"max63xx_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__param_str_nodelay = internal constant [20 x i8] c"max63xx_wdt.nodelay\00", align 1
@nodelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nodelay = internal constant %struct.kernel_param { ptr @__param_str_nodelay, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nodelay } }, section "__param", align 4
@__UNIQUE_ID_nodelaytype190 = internal constant [33 x i8] c"max63xx_wdt.parmtype=nodelay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nodelay191 = internal constant [113 x i8] c"max63xx_wdt.parm=nodelay:Force selection of a timeout setting without initial delay (max6373/74 only, default=0)\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [46 x i8] c"max63xx_wdt.file=drivers/watchdog/max63xx_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [27 x i8] c"max63xx_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max63xx_wdt\00", [20 x i8] zeroinitializer }, align 32
@max63xx_dt_id_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6369\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max6369_table }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6370\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max6369_table }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6371\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max6371_table }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6372\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max6371_table }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6373\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max6373_table }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6374\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max6373_table }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@max63xx_id_table = internal constant { [7 x %struct.platform_device_id], [56 x i8] } { [7 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max6369_wdt\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max6369_table to i32) }, %struct.platform_device_id { [20 x i8] c"max6370_wdt\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max6369_table to i32) }, %struct.platform_device_id { [20 x i8] c"max6371_wdt\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max6371_table to i32) }, %struct.platform_device_id { [20 x i8] c"max6372_wdt\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max6371_table to i32) }, %struct.platform_device_id { [20 x i8] c"max6373_wdt\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max6373_table to i32) }, %struct.platform_device_id { [20 x i8] c"max6374_wdt\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max6373_table to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max63xx_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to satisfy %ds heartbeat request\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max63xx_wdt_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/max63xx_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max63xx_wdt_probe._entry_ptr = internal global ptr @max63xx_wdt_probe._entry, section ".printk_index", align 4
@max63xx_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33024, i32 0, [32 x i8] c"max63xx Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@max63xx_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @max63xx_wdt_start, ptr @max63xx_wdt_stop, ptr @max63xx_wdt_ping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max63xx_wdt_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 247, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"using %ds heartbeat with %ds initial delay\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max63xx_wdt_probe._entry_ptr.9 = internal global ptr @max63xx_wdt_probe._entry.6, section ".printk_index", align 4
@max63xx_mmap_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&wdt->lock\00", [21 x i8] zeroinitializer }, align 32
@max6369_table = internal constant { [4 x %struct.max63xx_timeout], [20 x i8] } { [4 x %struct.max63xx_timeout] [%struct.max63xx_timeout { i8 5, i8 1, i8 1 }, %struct.max63xx_timeout { i8 6, i8 10, i8 10 }, %struct.max63xx_timeout { i8 7, i8 60, i8 60 }, %struct.max63xx_timeout zeroinitializer], [20 x i8] zeroinitializer }, align 32
@max6371_table = internal constant { [3 x %struct.max63xx_timeout], [23 x i8] } { [3 x %struct.max63xx_timeout] [%struct.max63xx_timeout { i8 6, i8 60, i8 3 }, %struct.max63xx_timeout { i8 7, i8 60, i8 60 }, %struct.max63xx_timeout zeroinitializer], [23 x i8] zeroinitializer }, align 32
@max6373_table = internal constant { [6 x %struct.max63xx_timeout], [46 x i8] } { [6 x %struct.max63xx_timeout] [%struct.max63xx_timeout { i8 2, i8 60, i8 1 }, %struct.max63xx_timeout { i8 5, i8 0, i8 1 }, %struct.max63xx_timeout { i8 1, i8 3, i8 3 }, %struct.max63xx_timeout { i8 7, i8 60, i8 10 }, %struct.max63xx_timeout { i8 6, i8 0, i8 10 }, %struct.max63xx_timeout zeroinitializer], [46 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"max63xx_wdt_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 273, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 34, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 35, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [8 x i8] c"nodelay\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 46, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 277, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"max63xx_dt_id_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 262, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"max63xx_id_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 251, i32 40 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 223, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"max63xx_wdt_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 156, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"max63xx_wdt_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 149, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 246, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 195, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"max6369_table\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 81, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"max6371_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 88, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"max6373_table\00", align 1
@___asan_gen_.78 = private constant [34 x i8] c"../drivers/watchdog/max63xx_wdt.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 94, i32 37 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_heartbeat187, ptr @__UNIQUE_ID_heartbeattype186, ptr @__UNIQUE_ID_license193, ptr @__UNIQUE_ID_nodelay191, ptr @__UNIQUE_ID_nodelaytype190, ptr @__UNIQUE_ID_nowayout189, ptr @__UNIQUE_ID_nowayouttype188, ptr @__exitcall_max63xx_wdt_driver_exit, ptr @__initcall__kmod_max63xx_wdt__183_282_max63xx_wdt_driver_init6, ptr @__param_heartbeat, ptr @__param_nodelay, ptr @__param_nowayout, ptr @max63xx_wdt_driver_exit, ptr @max63xx_wdt_probe._entry, ptr @max63xx_wdt_probe._entry.6, ptr @max63xx_wdt_probe._entry_ptr, ptr @max63xx_wdt_probe._entry_ptr.9, ptr @max63xx_wdt_driver, ptr @heartbeat, ptr @nowayout, ptr @nodelay, ptr @.str, ptr @max63xx_dt_id_table, ptr @max63xx_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max63xx_wdt_info, ptr @max63xx_wdt_ops, ptr @.str.7, ptr @.str.8, ptr @max63xx_mmap_init.__key, ptr @.str.10, ptr @max6369_table, ptr @max6371_table, ptr @max6373_table], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max63xx_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max63xx_dt_id_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max63xx_id_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max63xx_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max63xx_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max63xx_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max63xx_wdt_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max63xx_mmap_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6369_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6371_table to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6373_table to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max63xx_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max63xx_wdt_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max63xx_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @max63xx_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max63xx_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 168, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev1) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %4 = inttoptr i32 %3 to ptr
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %table.0 = phi ptr [ %call2, %if.end.if.end5_crit_edge ], [ %4, %if.then4 ]
  %5 = load i32, ptr @heartbeat, align 4
  %6 = add i32 %5, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -60, i32 %6)
  %7 = icmp ult i32 %6, -60
  br i1 %7, label %if.then7, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  store i32 60, ptr @heartbeat, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %8 = load i32, ptr @heartbeat, align 4
  %twd17.i = getelementptr inbounds %struct.max63xx_timeout, ptr %table.0, i32 0, i32 2
  %9 = ptrtoint ptr %twd17.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %twd17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not18.i = icmp eq i8 %10, 0
  br i1 %tobool.not18.i, label %if.end8.max63xx_select_timeout.exit.thread_crit_edge, label %if.end8.while.body.i_crit_edge

if.end8.while.body.i_crit_edge:                   ; preds = %if.end8
  br label %while.body.i

if.end8.max63xx_select_timeout.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %max63xx_select_timeout.exit.thread

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %if.end8.while.body.i_crit_edge
  %11 = phi i8 [ %16, %if.end11.i.while.body.i_crit_edge ], [ %10, %if.end8.while.body.i_crit_edge ]
  %table.addr.019.i = phi ptr [ %incdec.ptr.i, %if.end11.i.while.body.i_crit_edge ], [ %table.0, %if.end8.while.body.i_crit_edge ]
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i)
  %cmp.not.i = icmp sgt i32 %8, %conv.i
  br i1 %cmp.not.i, label %while.body.i.if.end11.i_crit_edge, label %if.then.i

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.then.i:                                        ; preds = %while.body.i
  %12 = load i32, ptr @nodelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.not.i, label %if.then.i.max63xx_select_timeout.exit_crit_edge, label %land.lhs.true.i

if.then.i.max63xx_select_timeout.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %max63xx_select_timeout.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %tdelay.i = getelementptr inbounds %struct.max63xx_timeout, ptr %table.addr.019.i, i32 0, i32 1
  %13 = ptrtoint ptr %tdelay.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tdelay.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp5.i = icmp eq i8 %14, 0
  br i1 %cmp5.i, label %land.lhs.true.i.max63xx_select_timeout.exit_crit_edge, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

land.lhs.true.i.max63xx_select_timeout.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %max63xx_select_timeout.exit

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %while.body.i.if.end11.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.max63xx_timeout, ptr %table.addr.019.i, i32 1
  %twd.i = getelementptr %struct.max63xx_timeout, ptr %table.addr.019.i, i32 1, i32 2
  %15 = ptrtoint ptr %twd.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %twd.i, align 1
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end11.i.max63xx_select_timeout.exit.thread_crit_edge, label %if.end11.i.while.body.i_crit_edge

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end11.i.max63xx_select_timeout.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %max63xx_select_timeout.exit.thread

max63xx_select_timeout.exit.thread:               ; preds = %if.end11.i.max63xx_select_timeout.exit.thread_crit_edge, %if.end8.max63xx_select_timeout.exit.thread_crit_edge
  %timeout75 = getelementptr inbounds %struct.max63xx_wdt, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %timeout75 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %timeout75, align 4
  br label %do.end

max63xx_select_timeout.exit:                      ; preds = %land.lhs.true.i.max63xx_select_timeout.exit_crit_edge, %if.then.i.max63xx_select_timeout.exit_crit_edge
  %timeout = getelementptr inbounds %struct.max63xx_wdt, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %table.addr.019.i, ptr %timeout, align 4
  %tobool11.not = icmp eq ptr %table.addr.019.i, null
  br i1 %tobool11.not, label %max63xx_select_timeout.exit.do.end_crit_edge, label %if.end13

max63xx_select_timeout.exit.do.end_crit_edge:     ; preds = %max63xx_select_timeout.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %max63xx_select_timeout.exit.do.end_crit_edge, %max63xx_select_timeout.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %8) #7
  br label %cleanup

if.end13:                                         ; preds = %max63xx_select_timeout.exit
  %call.i70 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %base.i = getelementptr inbounds %struct.max63xx_wdt, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i70, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %max63xx_mmap_init.exit, label %max63xx_mmap_init.exit.thread

max63xx_mmap_init.exit.thread:                    ; preds = %if.end13
  %lock.i = getelementptr inbounds %struct.max63xx_wdt, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @max63xx_mmap_init.__key, i16 noundef signext 3) #4
  %ping.i = getelementptr inbounds %struct.max63xx_wdt, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %ping.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @max63xx_mmap_ping, ptr %ping.i, align 4
  %set.i = getelementptr inbounds %struct.max63xx_wdt, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @max63xx_mmap_set, ptr %set.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev1, ptr %parent, align 4
  %25 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %timeout, align 4
  %twd = getelementptr inbounds %struct.max63xx_timeout, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %twd to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %twd, align 1
  %conv = zext i8 %28 to i32
  %timeout22 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %timeout22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %timeout22, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @max63xx_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @max63xx_wdt_ops, ptr %ops, align 4
  %32 = load i8, ptr @nowayout, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool26.not = icmp eq i8 %32, 0
  br i1 %tobool26.not, label %max63xx_mmap_init.exit.thread.watchdog_set_nowayout.exit_crit_edge, label %if.then.i73

max63xx_mmap_init.exit.thread.watchdog_set_nowayout.exit_crit_edge: ; preds = %max63xx_mmap_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %watchdog_set_nowayout.exit

max63xx_mmap_init.exit:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %call.i70 to i32
  br label %cleanup

if.then.i73:                                      ; preds = %max63xx_mmap_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #4
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i73, %max63xx_mmap_init.exit.thread.watchdog_set_nowayout.exit_crit_edge
  %call28 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.end34, label %watchdog_set_nowayout.exit.cleanup_crit_edge

watchdog_set_nowayout.exit.cleanup_crit_edge:     ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end34:                                         ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %timeout, align 4
  %twd36 = getelementptr inbounds %struct.max63xx_timeout, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %twd36 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %twd36, align 1
  %conv37 = zext i8 %37 to i32
  %tdelay = getelementptr inbounds %struct.max63xx_timeout, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %tdelay to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tdelay, align 1
  %conv39 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %conv37, i32 noundef %conv39) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %watchdog_set_nowayout.exit.cleanup_crit_edge, %max63xx_mmap_init.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end34 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %33, %max63xx_mmap_init.exit ], [ %call28, %watchdog_set_nowayout.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max63xx_mmap_ping(ptr noundef %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.max63xx_wdt, ptr %wdt, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %base = getelementptr inbounds %struct.max63xx_wdt, ptr %wdt, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #4, !srcloc !78
  %or = or i8 %2, 8
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 %or) #4, !srcloc !79
  %5 = and i8 %2, -9
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #4, !srcloc !79
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max63xx_mmap_set(ptr noundef %wdt, i8 noundef zeroext %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.max63xx_wdt, ptr %wdt, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %base = getelementptr inbounds %struct.max63xx_wdt, ptr %wdt, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #4, !srcloc !78
  %3 = and i8 %2, -8
  %4 = and i8 %set, 7
  %or13 = or i8 %3, %4
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %or13) #4, !srcloc !79
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max63xx_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %set = getelementptr inbounds %struct.max63xx_wdt, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set, align 4
  %timeout = getelementptr inbounds %struct.max63xx_wdt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timeout, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  tail call void %3(ptr noundef %1, i8 noundef zeroext %7) #4
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timeout, align 4
  %tdelay = getelementptr inbounds %struct.max63xx_timeout, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %tdelay to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tdelay, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ping = getelementptr inbounds %struct.max63xx_wdt, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %ping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ping, align 4
  tail call void %13(ptr noundef %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max63xx_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %set = getelementptr inbounds %struct.max63xx_wdt, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set, align 4
  tail call void %3(ptr noundef %1, i8 noundef zeroext 3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max63xx_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ping = getelementptr inbounds %struct.max63xx_wdt, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ping, align 4
  tail call void %3(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !65, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_max63xx_wdt__183_282_max63xx_wdt_driver_init6, !1, !"__initcall__kmod_max63xx_wdt__183_282_max63xx_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 282, i32 1}
!2 = !{ptr @__exitcall_max63xx_wdt_driver_exit, !1, !"__exitcall_max63xx_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 284, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 285, i32 1}
!7 = !{ptr @__param_heartbeat, !8, !"__param_heartbeat", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 287, i32 1}
!9 = !{ptr @__UNIQUE_ID_heartbeattype186, !8, !"__UNIQUE_ID_heartbeattype186", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_heartbeat187, !11, !"__UNIQUE_ID_heartbeat187", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 288, i32 1}
!12 = !{ptr @__param_nowayout, !13, !"__param_nowayout", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 293, i32 1}
!14 = !{ptr @__UNIQUE_ID_nowayouttype188, !13, !"__UNIQUE_ID_nowayouttype188", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_nowayout189, !16, !"__UNIQUE_ID_nowayout189", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 294, i32 1}
!17 = !{ptr @__param_nodelay, !18, !"__param_nodelay", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 297, i32 1}
!19 = !{ptr @__UNIQUE_ID_nodelaytype190, !18, !"__UNIQUE_ID_nodelaytype190", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_nodelay191, !21, !"__UNIQUE_ID_nodelay191", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 298, i32 1}
!22 = !{ptr @__UNIQUE_ID_file192, !23, !"__UNIQUE_ID_file192", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 302, i32 1}
!24 = !{ptr @__UNIQUE_ID_license193, !23, !"__UNIQUE_ID_license193", i1 false, i1 false}
!25 = !{ptr @nodelay, !26, !"nodelay", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 46, i32 12}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 277, i32 11}
!29 = !{ptr @max63xx_wdt_driver, !30, !"max63xx_wdt_driver", i1 false, i1 false}
!30 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 273, i32 31}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 223, i32 3}
!33 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @max63xx_wdt_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @max63xx_wdt_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 246, i32 2}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @max63xx_wdt_probe._entry.6, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @max63xx_wdt_probe._entry_ptr.9, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @max63xx_mmap_init.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 195, i32 2}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @max63xx_wdt_info, !48, !"max63xx_wdt_info", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 156, i32 35}
!49 = !{ptr @max63xx_wdt_ops, !50, !"max63xx_wdt_ops", i1 false, i1 false}
!50 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 149, i32 34}
!51 = !{ptr @max63xx_dt_id_table, !52, !"max63xx_dt_id_table", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 262, i32 34}
!53 = !{ptr @max6369_table, !54, !"max6369_table", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 81, i32 37}
!55 = !{ptr @max6371_table, !56, !"max6371_table", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 88, i32 37}
!57 = !{ptr @max6373_table, !58, !"max6373_table", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 94, i32 37}
!59 = !{ptr @max63xx_id_table, !60, !"max63xx_id_table", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 251, i32 40}
!61 = !{ptr @__param_str_heartbeat, !8, !"__param_str_heartbeat", i1 false, i1 false}
!62 = !{ptr @heartbeat, !63, !"heartbeat", i1 false, i1 false}
!63 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 34, i32 21}
!64 = !{ptr @__param_str_nowayout, !13, !"__param_str_nowayout", i1 false, i1 false}
!65 = !{ptr @nowayout, !66, !"nowayout", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/max63xx_wdt.c", i32 35, i32 13}
!67 = !{ptr @__param_str_nodelay, !18, !"__param_str_nodelay", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
!78 = !{i64 4843587}
!79 = !{i64 4843192}
