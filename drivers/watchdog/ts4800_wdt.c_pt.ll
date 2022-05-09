; ModuleID = '/llk/IR_all_yes/drivers/watchdog/ts4800_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/ts4800_wdt.c"
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
%struct.anon.43 = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.ts4800_wdt = type { %struct.watchdog_device, ptr, i32, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_nowayout = internal constant [20 x i8] c"ts4800_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype170 = internal constant [34 x i8] c"ts4800_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout171 = internal constant [77 x i8] c"ts4800_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_ts4800_wdt__172_199_ts4800_wdt_driver_init6 = internal global ptr @ts4800_wdt_driver_init, section ".initcall6.init", align 4
@ts4800_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ts4800_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ts4800_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ts4800_wdt_driver_exit = internal global ptr @ts4800_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [69 x i8] c"ts4800_wdt.author=Damien Riegel <damien.riegel@savoirfairelinux.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [44 x i8] c"ts4800_wdt.file=drivers/watchdog/ts4800_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [26 x i8] c"ts4800_wdt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias176 = internal constant [37 x i8] c"ts4800_wdt.alias=platform:ts4800_wdt\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ts4800_wdt\00", [21 x i8] zeroinitializer }, align 32
@ts4800_wdt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"technologic,ts4800-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@ts4800_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 121, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no syscon property\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ts4800_wdt_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/ts4800_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ts4800_wdt_probe._entry_ptr = internal global ptr @ts4800_wdt_probe._entry, section ".printk_index", align 4
@ts4800_wdt_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no offset in syscon\0A\00", [43 x i8] zeroinitializer }, align 32
@ts4800_wdt_probe._entry_ptr.9 = internal global ptr @ts4800_wdt_probe._entry.7, section ".printk_index", align 4
@ts4800_wdt_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get parent's regmap\0A\00", [36 x i8] zeroinitializer }, align 32
@ts4800_wdt_probe._entry_ptr.12 = internal global ptr @ts4800_wdt_probe._entry.10, section ".printk_index", align 4
@ts4800_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"TS-4800 Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@ts4800_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @ts4800_wdt_start, ptr @ts4800_wdt_stop, ptr null, ptr null, ptr @ts4800_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ts4800_wdt_map = internal constant { [2 x %struct.anon.43], [16 x i8] } { [2 x %struct.anon.43] [%struct.anon.43 { i32 2, i32 1 }, %struct.anon.43 { i32 10, i32 2 }], [16 x i8] zeroinitializer }, align 32
@ts4800_wdt_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 180, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"initialized (timeout = %d sec, nowayout = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ts4800_wdt_probe._entry_ptr.16 = internal global ptr @ts4800_wdt_probe._entry.13, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 19, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"ts4800_wdt_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 191, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 194, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"ts4800_wdt_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 185, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 119, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 121, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 127, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 141, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"ts4800_wdt_info\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 104, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"ts4800_wdt_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 97, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"ts4800_wdt_map\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 52, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [33 x i8] c"../drivers/watchdog/ts4800_wdt.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 179, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias176, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__UNIQUE_ID_nowayout171, ptr @__UNIQUE_ID_nowayouttype170, ptr @__exitcall_ts4800_wdt_driver_exit, ptr @__initcall__kmod_ts4800_wdt__172_199_ts4800_wdt_driver_init6, ptr @__param_nowayout, ptr @ts4800_wdt_driver_exit, ptr @ts4800_wdt_probe._entry, ptr @ts4800_wdt_probe._entry.10, ptr @ts4800_wdt_probe._entry.13, ptr @ts4800_wdt_probe._entry.7, ptr @ts4800_wdt_probe._entry_ptr, ptr @ts4800_wdt_probe._entry_ptr.12, ptr @ts4800_wdt_probe._entry_ptr.16, ptr @ts4800_wdt_probe._entry_ptr.9, ptr @nowayout, ptr @ts4800_wdt_driver, ptr @.str, ptr @ts4800_wdt_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @ts4800_wdt_info, ptr @ts4800_wdt_ops, ptr @ts4800_wdt_map, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_wdt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_wdt_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_wdt_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_wdt_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_wdt_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ts4800_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ts4800_wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ts4800_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ts4800_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts4800_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call2 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i85 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i85, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %feed_offset = getelementptr inbounds %struct.ts4800_wdt, ptr %call.i85, i32 0, i32 2
  %8 = ptrtoint ptr %feed_offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %feed_offset, align 4
  %call12 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %5) #6
  %regmap = getelementptr inbounds %struct.ts4800_wdt, ptr %call.i85, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %regmap, align 4
  call void @of_node_put(ptr noundef nonnull %5) #6
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i85, i32 0, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %parent, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i85, i32 0, i32 3
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ts4800_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i85, i32 0, i32 4
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ts4800_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i85, i32 0, i32 9
  %16 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i85, i32 0, i32 10
  %17 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 10, ptr %max_timeout, align 4
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i85, i32 0, i32 16
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i85, ptr %driver_data.i, align 4
  %19 = load i8, ptr @nowayout, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not = icmp eq i8 %19, 0
  br i1 %tobool23.not, label %if.end21.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end21.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i85, i32 0, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #6
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end21.watchdog_set_nowayout.exit_crit_edge
  %call24 = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i85, i32 noundef 0, ptr noundef %dev1) #6
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i85, i32 0, i32 7
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool25.not = icmp eq i32 %21, 0
  br i1 %tobool25.not, label %if.then26, label %watchdog_set_nowayout.exit.if.end29_crit_edge

watchdog_set_nowayout.exit.if.end29_crit_edge:    ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %max_timeout to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_timeout, align 4
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %timeout, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %watchdog_set_nowayout.exit.if.end29_crit_edge
  %25 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout, align 4
  %27 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp2.i = icmp ugt i32 %26, 2
  %spec.select.i = zext i1 %cmp2.i to i32
  %arrayidx3.i = getelementptr [2 x %struct.anon.43], ptr @ts4800_wdt_map, i32 0, i32 %spec.select.i
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx3.i, align 4
  %31 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %timeout, align 4
  %regval.i = getelementptr [2 x %struct.anon.43], ptr @ts4800_wdt_map, i32 0, i32 %spec.select.i, i32 1
  %32 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regval.i, align 4
  %feed_val.i = getelementptr inbounds %struct.ts4800_wdt, ptr %28, i32 0, i32 3
  %34 = ptrtoint ptr %feed_val.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %feed_val.i, align 4
  %35 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.ts4800_wdt, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i.i, align 4
  %feed_offset.i.i = getelementptr inbounds %struct.ts4800_wdt, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %feed_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %feed_offset.i.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %38, i32 noundef %40, i32 noundef 3) #6
  %call33 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i85) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i88 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %driver_data.i.i88 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i85, ptr %driver_data.i.i88, align 4
  %42 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %timeout, align 4
  %44 = load i8, ptr @nowayout, align 1, !range !63
  %45 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %43, i32 noundef %45) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end29.cleanup_crit_edge, %do.end18, %if.end7.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %call2, %do.end6 ], [ %12, %do.end18 ], [ 0, %if.end36 ], [ -19, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ %call33, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts4800_wdt_set_timeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %timeout)
  %cmp2 = icmp ugt i32 %timeout, 2
  %spec.select = zext i1 %cmp2 to i32
  %arrayidx3 = getelementptr [2 x %struct.anon.43], ptr @ts4800_wdt_map, i32 0, i32 %spec.select
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %timeout5 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %4 = ptrtoint ptr %timeout5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %timeout5, align 4
  %regval = getelementptr [2 x %struct.anon.43], ptr @ts4800_wdt_map, i32 0, i32 %spec.select, i32 1
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %feed_val = getelementptr inbounds %struct.ts4800_wdt, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %feed_val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %feed_val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts4800_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.ts4800_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %feed_offset.i = getelementptr inbounds %struct.ts4800_wdt, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %feed_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %feed_offset.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %5, i32 noundef 3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts4800_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %feed_val = getelementptr inbounds %struct.ts4800_wdt, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %feed_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feed_val, align 4
  %regmap.i = getelementptr inbounds %struct.ts4800_wdt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %feed_offset.i = getelementptr inbounds %struct.ts4800_wdt, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %feed_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %feed_offset.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype170, !1, !"__UNIQUE_ID_nowayouttype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout171, !4, !"__UNIQUE_ID_nowayout171", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 21, i32 1}
!5 = !{ptr @__initcall__kmod_ts4800_wdt__172_199_ts4800_wdt_driver_init6, !6, !"__initcall__kmod_ts4800_wdt__172_199_ts4800_wdt_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 199, i32 1}
!7 = !{ptr @__exitcall_ts4800_wdt_driver_exit, !6, !"__exitcall_ts4800_wdt_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author173, !9, !"__UNIQUE_ID_author173", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 201, i32 1}
!10 = !{ptr @__UNIQUE_ID_file174, !11, !"__UNIQUE_ID_file174", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 202, i32 1}
!12 = !{ptr @__UNIQUE_ID_license175, !11, !"__UNIQUE_ID_license175", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias176, !14, !"__UNIQUE_ID_alias176", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 203, i32 1}
!15 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!16 = !{ptr @nowayout, !17, !"nowayout", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 19, i32 13}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 194, i32 11}
!20 = !{ptr @ts4800_wdt_driver, !21, !"ts4800_wdt_driver", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 191, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 119, i32 35}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 121, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ts4800_wdt_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @ts4800_wdt_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 127, i32 3}
!34 = !{ptr @ts4800_wdt_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ts4800_wdt_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 141, i32 3}
!38 = !{ptr @ts4800_wdt_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ts4800_wdt_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 179, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ts4800_wdt_probe._entry.13, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ts4800_wdt_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ts4800_wdt_info, !46, !"ts4800_wdt_info", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 104, i32 35}
!47 = !{ptr @ts4800_wdt_ops, !48, !"ts4800_wdt_ops", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 97, i32 34}
!49 = !{ptr @ts4800_wdt_map, !50, !"ts4800_wdt_map", i1 false, i1 false}
!50 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 52, i32 3}
!51 = !{ptr @ts4800_wdt_of_match, !52, !"ts4800_wdt_of_match", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/ts4800_wdt.c", i32 185, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i8 0, i8 2}
