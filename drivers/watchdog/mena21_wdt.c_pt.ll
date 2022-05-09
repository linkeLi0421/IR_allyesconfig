; ModuleID = '/llk/IR_all_yes/drivers/watchdog/mena21_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/mena21_wdt.c"
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
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.a21_wdt_drv = type { %struct.watchdog_device, [6 x ptr] }

@__param_str_nowayout = internal constant [20 x i8] c"mena21_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype187 = internal constant [34 x i8] c"mena21_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout188 = internal constant [77 x i8] c"mena21_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_mena21_wdt__189_223_a21_wdt_driver_init6 = internal global ptr @a21_wdt_driver_init, section ".initcall6.init", align 4
@a21_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @a21_wdt_probe, ptr null, ptr @a21_wdt_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @a21_wdt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_a21_wdt_driver_exit = internal global ptr @a21_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author190 = internal constant [39 x i8] c"mena21_wdt.author=MEN Mikro Elektronik\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [40 x i8] c"mena21_wdt.description=MEN A21 Watchdog\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [44 x i8] c"mena21_wdt.file=drivers/watchdog/mena21_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [23 x i8] c"mena21_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias194 = internal constant [39 x i8] c"mena21_wdt.alias=platform:a21-watchdog\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a21-watchdog\00", [19 x i8] zeroinitializer }, align 32
@a21_wdt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"men,a021-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@a21_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"gpios DT property wrong, got %d want %d\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"a21_wdt_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/mena21_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@a21_wdt_probe._entry_ptr = internal global ptr @a21_wdt_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MEN A21 Watchdog\00", [47 x i8] zeroinitializer }, align 32
@a21_wdt = internal global { %struct.watchdog_device, [52 x i8] } { %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @a21_wdt_info, ptr @a21_wdt_ops, ptr null, i32 0, i32 0, i32 0, i32 1, i32 30, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@a21_wdt_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 196, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MEN A21 watchdog timer driver enabled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@a21_wdt_probe._entry_ptr.10 = internal global ptr @a21_wdt_probe._entry.7, section ".printk_index", align 4
@a21_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"MEN A21 Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@a21_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @a21_wdt_start, ptr @a21_wdt_stop, ptr @a21_wdt_ping, ptr null, ptr @a21_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@a21_wdt_set_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Only 1 and 30 allowed as timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"a21_wdt_set_timeout\00", [44 x i8] zeroinitializer }, align 32
@a21_wdt_set_timeout._entry_ptr = internal global ptr @a21_wdt_set_timeout._entry, section ".printk_index", align 4
@a21_wdt_set_timeout._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Transition from fast to slow mode not allowed\0A\00", [49 x i8] zeroinitializer }, align 32
@a21_wdt_set_timeout._entry_ptr.15 = internal global ptr @a21_wdt_set_timeout._entry.13, section ".printk_index", align 4
@switch.table.a21_wdt_probe = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 4, i32 4, i32 32, i32 16, i32 4, i32 8], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 30]
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 37, i32 13 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"a21_wdt_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 214, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 218, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"a21_wdt_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 208, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 143, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 160, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"a21_wdt\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 121, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 196, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"a21_wdt_info\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 108, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"a21_wdt_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 113, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 88, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [33 x i8] c"../drivers/watchdog/mena21_wdt.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 93, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"switch.table.a21_wdt_probe\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias194, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__UNIQUE_ID_nowayout188, ptr @__UNIQUE_ID_nowayouttype187, ptr @__exitcall_a21_wdt_driver_exit, ptr @__initcall__kmod_mena21_wdt__189_223_a21_wdt_driver_init6, ptr @__param_nowayout, ptr @a21_wdt_driver_exit, ptr @a21_wdt_probe._entry, ptr @a21_wdt_probe._entry.7, ptr @a21_wdt_probe._entry_ptr, ptr @a21_wdt_probe._entry_ptr.10, ptr @a21_wdt_set_timeout._entry, ptr @a21_wdt_set_timeout._entry.13, ptr @a21_wdt_set_timeout._entry_ptr, ptr @a21_wdt_set_timeout._entry_ptr.15, ptr @nowayout, ptr @a21_wdt_driver, ptr @.str, ptr @a21_wdt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @a21_wdt, ptr @.str.8, ptr @.str.9, ptr @a21_wdt_info, ptr @a21_wdt_ops, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @switch.table.a21_wdt_probe], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a21_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a21_wdt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a21_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a21_wdt to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a21_wdt_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a21_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a21_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a21_wdt_set_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a21_wdt_set_timeout._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.a21_wdt_probe to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @a21_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @a21_wdt_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @a21_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @a21_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a21_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup58

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @gpiod_count(ptr noundef %dev1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 6
  br i1 %cmp.not, label %for.body, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call2, i32 noundef 6) #7
  br label %cleanup58

for.body:                                         ; preds = %if.end
  %call9 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i32 noundef 0) #4
  %arrayidx = getelementptr %struct.a21_wdt_drv, ptr %call.i, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.cleanup_crit_edge, label %if.end17

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %call20 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call9, ptr noundef nonnull @.str.6) #4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call25 = tail call i32 @gpiod_get_value(ptr noundef %2) #4
  %call28 = tail call i32 @gpiod_direction_output(ptr noundef %2, i32 noundef %call25) #4
  %call9.1 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef null, i32 noundef 1, i32 noundef 0) #4
  %arrayidx.1 = getelementptr %struct.a21_wdt_drv, ptr %call.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.1, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %call9.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end17.cleanup_crit_edge, label %if.end17.1

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17.4.cleanup_crit_edge, %if.end17.3.cleanup_crit_edge, %if.end17.2.cleanup_crit_edge, %if.end17.1.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call9.lcssa = phi ptr [ %call9, %for.body.cleanup_crit_edge ], [ %call9.1, %if.end17.cleanup_crit_edge ], [ %call9.2, %if.end17.1.cleanup_crit_edge ], [ %call9.3, %if.end17.2.cleanup_crit_edge ], [ %call9.4, %if.end17.3.cleanup_crit_edge ], [ %call9.5, %if.end17.4.cleanup_crit_edge ]
  %4 = ptrtoint ptr %call9.lcssa to i32
  br label %cleanup58

if.end17.1:                                       ; preds = %if.end17
  %call20.1 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call9.1, ptr noundef nonnull @.str.6) #4
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %call25.1 = tail call i32 @gpiod_get_value(ptr noundef %6) #4
  %call28.1 = tail call i32 @gpiod_direction_output(ptr noundef %6, i32 noundef %call25.1) #4
  %call9.2 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef null, i32 noundef 2, i32 noundef 0) #4
  %arrayidx.2 = getelementptr %struct.a21_wdt_drv, ptr %call.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.2, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %call9.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.end17.1.cleanup_crit_edge, label %if.end17.2

if.end17.1.cleanup_crit_edge:                     ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17.2:                                       ; preds = %if.end17.1
  %call20.2 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call9.2, ptr noundef nonnull @.str.6) #4
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %call25.2 = tail call i32 @gpiod_get_value(ptr noundef %9) #4
  %call28.2 = tail call i32 @gpiod_direction_output(ptr noundef %9, i32 noundef %call25.2) #4
  %call9.3 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef null, i32 noundef 3, i32 noundef 1) #4
  %arrayidx.3 = getelementptr %struct.a21_wdt_drv, ptr %call.i, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.3, ptr %arrayidx.3, align 4
  %cmp.i.3 = icmp ugt ptr %call9.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.end17.2.cleanup_crit_edge, label %if.end17.3

if.end17.2.cleanup_crit_edge:                     ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17.3:                                       ; preds = %if.end17.2
  %call20.3 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call9.3, ptr noundef nonnull @.str.6) #4
  %call9.4 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef null, i32 noundef 4, i32 noundef 1) #4
  %arrayidx.4 = getelementptr %struct.a21_wdt_drv, ptr %call.i, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.4, ptr %arrayidx.4, align 4
  %cmp.i.4 = icmp ugt ptr %call9.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %if.end17.3.cleanup_crit_edge, label %if.end17.4

if.end17.3.cleanup_crit_edge:                     ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17.4:                                       ; preds = %if.end17.3
  %call20.4 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call9.4, ptr noundef nonnull @.str.6) #4
  %call9.5 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef null, i32 noundef 5, i32 noundef 1) #4
  %arrayidx.5 = getelementptr %struct.a21_wdt_drv, ptr %call.i, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.5, ptr %arrayidx.5, align 4
  %cmp.i.5 = icmp ugt ptr %call9.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %if.end17.4.cleanup_crit_edge, label %if.end17.5

if.end17.4.cleanup_crit_edge:                     ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17.5:                                       ; preds = %if.end17.4
  %call20.5 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call9.5, ptr noundef nonnull @.str.6) #4
  %call30 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull @a21_wdt, i32 noundef 30, ptr noundef %dev1) #4
  %13 = load i8, ptr @nowayout, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool31.not = icmp eq i8 %13, 0
  br i1 %tobool31.not, label %if.end17.5.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end17.5.watchdog_set_nowayout.exit_crit_edge:  ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 1, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @a21_wdt, i32 0, i32 18)) #4
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end17.5.watchdog_set_nowayout.exit_crit_edge
  store ptr %call.i, ptr getelementptr inbounds (%struct.watchdog_device, ptr @a21_wdt, i32 0, i32 16), align 4
  store ptr %dev1, ptr getelementptr inbounds (%struct.watchdog_device, ptr @a21_wdt, i32 0, i32 1), align 4
  %arrayidx.i = getelementptr %struct.a21_wdt_drv, ptr %call.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %call.i98 = tail call i32 @gpiod_get_value(ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i = icmp ne i32 %call.i98, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %arrayidx2.i = getelementptr %struct.a21_wdt_drv, ptr %call.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx2.i, align 4
  %call3.i = tail call i32 @gpiod_get_value(ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  %cond5.i = select i1 %tobool4.not.i, i32 0, i32 2
  %or6.i = or i32 %cond5.i, %cond.i
  %arrayidx8.i = getelementptr %struct.a21_wdt_drv, ptr %call.i, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8.i, align 4
  %call9.i = tail call i32 @gpiod_get_value(ptr noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  %cond11.i = select i1 %tobool10.not.i, i32 0, i32 4
  %or12.i = or i32 %or6.i, %cond11.i
  %switch.tableidx = add nsw i32 %or12.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 6
  br i1 %20, label %switch.hole_check, label %watchdog_set_nowayout.exit.if.end50_crit_edge

watchdog_set_nowayout.exit.if.end50_crit_edge:    ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

switch.hole_check:                                ; preds = %watchdog_set_nowayout.exit
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 45, %switch.maskindex
  %21 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit.not = icmp eq i8 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end50_crit_edge, label %switch.lookup

switch.hole_check.if.end50_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.a21_wdt_probe, i32 0, i32 %switch.tableidx
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @a21_wdt, i32 0, i32 6), align 4
  %or38 = or i32 %23, %switch.load
  store i32 %or38, ptr getelementptr inbounds (%struct.watchdog_device, ptr @a21_wdt, i32 0, i32 6), align 4
  br label %if.end50

if.end50:                                         ; preds = %switch.lookup, %switch.hole_check.if.end50_crit_edge, %watchdog_set_nowayout.exit.if.end50_crit_edge
  %24 = call ptr @memcpy(ptr %call.i, ptr @a21_wdt, i32 108)
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call51 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull @a21_wdt) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.end57, label %if.end50.cleanup58_crit_edge

if.end50.cleanup58_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup58

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  br label %cleanup58

cleanup58:                                        ; preds = %do.end57, %if.end50.cleanup58_crit_edge, %cleanup, %do.end, %entry.cleanup58_crit_edge
  %retval.2 = phi i32 [ -19, %do.end ], [ %4, %cleanup ], [ 0, %do.end57 ], [ -12, %entry.cleanup58_crit_edge ], [ %call51, %if.end50.cleanup58_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a21_wdt_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpios = getelementptr inbounds %struct.a21_wdt_drv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a21_wdt_start(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpios = getelementptr inbounds %struct.a21_wdt_drv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a21_wdt_stop(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpios = getelementptr inbounds %struct.a21_wdt_drv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a21_wdt_ping(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.a21_wdt_drv, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a21_wdt_set_timeout(ptr nocapture noundef %wdt, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %timeout to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %timeout, label %do.end [
    i32 30, label %land.lhs.true3
    i32 1, label %entry.if.end16_crit_edge
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #7
  br label %cleanup

land.lhs.true3:                                   ; preds = %entry
  %timeout4 = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 7
  %5 = ptrtoint ptr %timeout4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timeout4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %do.end9, label %land.lhs.true3.if.end16_crit_edge

land.lhs.true3.if.end16_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

do.end9:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %parent10 = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 1
  %7 = ptrtoint ptr %parent10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true3.if.end16_crit_edge, %entry.if.end16_crit_edge
  %.sink27 = phi i32 [ %timeout, %entry.if.end16_crit_edge ], [ 0, %land.lhs.true3.if.end16_crit_edge ]
  %arrayidx15 = getelementptr %struct.a21_wdt_drv, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx15, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef %.sink27) #4
  %timeout17 = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 7
  %11 = ptrtoint ptr %timeout17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %timeout, ptr %timeout17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/mena21_wdt.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype187, !1, !"__UNIQUE_ID_nowayouttype187", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout188, !4, !"__UNIQUE_ID_nowayout188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/mena21_wdt.c", i32 39, i32 1}
!5 = !{ptr @__initcall__kmod_mena21_wdt__189_223_a21_wdt_driver_init6, !6, !"__initcall__kmod_mena21_wdt__189_223_a21_wdt_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/mena21_wdt.c", i32 223, i32 1}
!7 = !{ptr @__exitcall_a21_wdt_driver_exit, !6, !"__exitcall_a21_wdt_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author190, !9, !"__UNIQUE_ID_author190", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/mena21_wdt.c", i32 225, i32 1}
!10 = !{ptr @__UNIQUE_ID_description191, !11, !"__UNIQUE_ID_description191", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/mena21_wdt.c", i32 226, i32 1}
!12 = !{ptr @__UNIQUE_ID_file192, !13, !"__UNIQUE_ID_file192", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/mena21_wdt.c", i32 227, i32 1}
!14 = !{ptr @__UNIQUE_ID_license193, !13, !"__UNIQUE_ID_license193", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias194, !16, !"__UNIQUE_ID_alias194", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/mena21_wdt.c", i32 228, i32 1}
!17 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!18 = !{ptr @nowayout, !19, !"nowayout", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/mena21_wdt.c", i32 37, i32 13}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/mena21_wdt.c", i32 218, i32 11}
!22 = !{ptr @a21_wdt_driver, !23, !"a21_wdt_driver", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/mena21_wdt.c", i32 214, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/mena21_wdt.c", i32 143, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @a21_wdt_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @a21_wdt_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/mena21_wdt.c", i32 160, i32 42}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/mena21_wdt.c", i32 196, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @a21_wdt_probe._entry.7, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @a21_wdt_probe._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @a21_wdt, !40, !"a21_wdt", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/mena21_wdt.c", i32 121, i32 31}
!41 = !{ptr @a21_wdt_info, !42, !"a21_wdt_info", i1 false, i1 false}
!42 = !{!"../drivers/watchdog/mena21_wdt.c", i32 108, i32 35}
!43 = !{ptr @a21_wdt_ops, !44, !"a21_wdt_ops", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/mena21_wdt.c", i32 113, i32 34}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/mena21_wdt.c", i32 88, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @a21_wdt_set_timeout._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @a21_wdt_set_timeout._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/mena21_wdt.c", i32 93, i32 3}
!52 = !{ptr @a21_wdt_set_timeout._entry.13, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @a21_wdt_set_timeout._entry_ptr.15, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @a21_wdt_ids, !55, !"a21_wdt_ids", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/mena21_wdt.c", i32 208, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i8 0, i8 2}
