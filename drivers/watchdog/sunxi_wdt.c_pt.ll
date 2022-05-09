; ModuleID = '/llk/IR_all_yes/drivers/watchdog/sunxi_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/sunxi_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sunxi_wdt_reg = type { i8, i8, i8, i8, i8, i8, i32 }
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
%struct.sunxi_wdt_dev = type { %struct.watchdog_device, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_sunxi_wdt__170_300_sunxi_wdt_driver_init6 = internal global ptr @sunxi_wdt_driver_init, section ".initcall6.init", align 4
@sunxi_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sunxi_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sunxi_wdt_driver_exit = internal global ptr @sunxi_wdt_driver_exit, section ".exitcall.exit", align 4
@__param_str_timeout = internal constant [18 x i8] c"sunxi_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype171 = internal constant [32 x i8] c"sunxi_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout172 = internal constant [53 x i8] c"sunxi_wdt.parm=timeout:Watchdog heartbeat in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [19 x i8] c"sunxi_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype173 = internal constant [33 x i8] c"sunxi_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout174 = internal constant [76 x i8] c"sunxi_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [42 x i8] c"sunxi_wdt.file=drivers/watchdog/sunxi_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [22 x i8] c"sunxi_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [55 x i8] c"sunxi_wdt.author=Carlo Caione <carlo.caione@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author178 = internal constant [63 x i8] c"sunxi_wdt.author=Henrik Nordstrom <henrik@henriknordstrom.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description179 = internal constant [50 x i8] c"sunxi_wdt.description=sunxi WatchDog Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version180 = internal constant [22 x i8] c"sunxi_wdt.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi_wdt\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi-wdt\00", [22 x i8] zeroinitializer }, align 32
@sunxi_wdt_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_wdt_reg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_wdt_reg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun20i-d1-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun20i_wdt_reg }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sunxi_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"sunxi-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@sunxi_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @sunxi_wdt_start, ptr @sunxi_wdt_stop, ptr @sunxi_wdt_ping, ptr null, ptr @sunxi_wdt_set_timeout, ptr null, ptr null, ptr @sunxi_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@sunxi_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 287, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Watchdog enabled (timeout=%d sec, nowayout=%d)\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sunxi_wdt_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/watchdog/sunxi_wdt.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sunxi_wdt_probe._entry_ptr = internal global ptr @sunxi_wdt_probe._entry, section ".printk_index", align 4
@wdt_timeout_map = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 7, i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11], [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sun4i_wdt_reg = internal constant { %struct.sunxi_wdt_reg, [20 x i8] } { %struct.sunxi_wdt_reg { i8 0, i8 4, i8 4, i8 3, i8 2, i8 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sun6i_wdt_reg = internal constant { %struct.sunxi_wdt_reg, [20 x i8] } { %struct.sunxi_wdt_reg { i8 16, i8 20, i8 24, i8 4, i8 3, i8 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sun20i_wdt_reg = internal constant { %struct.sunxi_wdt_reg, [20 x i8] } { %struct.sunxi_wdt_reg { i8 16, i8 20, i8 24, i8 4, i8 3, i8 1, i32 380239872 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"sunxi_wdt_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 292, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 38, i32 21 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 37, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 313, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 295, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"sunxi_wdt_dt_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 240, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"sunxi_wdt_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 196, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"sunxi_wdt_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 203, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 286, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"wdt_timeout_map\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 68, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"sun4i_wdt_reg\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 212, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"sun6i_wdt_reg\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 221, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"sun20i_wdt_reg\00", align 1
@___asan_gen_.67 = private constant [32 x i8] c"../drivers/watchdog/sunxi_wdt.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 230, i32 35 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_author178, ptr @__UNIQUE_ID_description179, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__UNIQUE_ID_nowayout174, ptr @__UNIQUE_ID_nowayouttype173, ptr @__UNIQUE_ID_timeout172, ptr @__UNIQUE_ID_timeouttype171, ptr @__UNIQUE_ID_version180, ptr @__exitcall_sunxi_wdt_driver_exit, ptr @__initcall__kmod_sunxi_wdt__170_300_sunxi_wdt_driver_init6, ptr @__modver_attr, ptr @__param_nowayout, ptr @__param_timeout, ptr @sunxi_wdt_driver_exit, ptr @sunxi_wdt_probe._entry, ptr @sunxi_wdt_probe._entry_ptr, ptr @sunxi_wdt_driver, ptr @timeout, ptr @nowayout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sunxi_wdt_dt_ids, ptr @sunxi_wdt_info, ptr @sunxi_wdt_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @wdt_timeout_map, ptr @sun4i_wdt_reg, ptr @sun6i_wdt_reg, ptr @sun20i_wdt_reg], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_wdt_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_timeout_map to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_wdt_reg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_wdt_reg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun20i_wdt_reg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %wdt_regs = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %wdt_regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %wdt_regs, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %wdt_base = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %wdt_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %wdt_base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sunxi_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sunxi_wdt_ops, ptr %ops, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %max_timeout, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %min_timeout, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %parent, align 4
  %9 = load i32, ptr @timeout, align 4
  %call20 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %9, ptr noundef %dev1) #6
  %10 = load i8, ptr @nowayout, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool22.not = icmp eq i8 %10, 0
  br i1 %tobool22.not, label %if.end13.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end13.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #6
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end13.watchdog_set_nowayout.exit_crit_edge
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull %call.i, i32 noundef 128) #6
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i, align 4
  %12 = ptrtoint ptr %wdt_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdt_base, align 4
  %14 = ptrtoint ptr %wdt_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wdt_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %wdt_key_val.i = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %wdt_key_val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wdt_key_val.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %wdt_mode.i = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %wdt_mode.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wdt_mode.i, align 2
  %conv.i = zext i8 %20 to i32
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #6, !srcloc !71
  %status.i67 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i67) #6
  %call29 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end, label %watchdog_set_nowayout.exit.cleanup_crit_edge, !prof !72

watchdog_set_nowayout.exit.cleanup_crit_edge:     ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timeout, align 4
  %23 = load i8, ptr @nowayout, align 1, !range !69
  %24 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %22, i32 noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %watchdog_set_nowayout.exit.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then10 ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call29, %watchdog_set_nowayout.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %wdt_regs = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wdt_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdt_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %wdt_key_val = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %wdt_key_val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wdt_key_val, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %wdt_mode = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %wdt_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wdt_mode, align 2
  %conv = zext i8 %10 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !71
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_start(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %wdt_regs = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wdt_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdt_regs, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout, align 4
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %wdt_base1.i = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wdt_base1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wdt_base1.i, align 4
  %wdt_regs.i = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %wdt_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdt_regs.i, align 4
  %14 = and i32 %7, 1073741823
  %15 = lshr i32 43649, %14
  %16 = and i32 %15, 1
  %spec.select.i = add i32 %16, %7
  %timeout3.i = getelementptr inbounds %struct.watchdog_device, ptr %9, i32 0, i32 7
  %17 = ptrtoint ptr %timeout3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %timeout3.i, align 4
  %wdt_mode.i = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %wdt_mode.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wdt_mode.i, align 2
  %conv.i = zext i8 %19 to i32
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %wdt_timeout_shift.i = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %13, i32 0, i32 3
  %22 = ptrtoint ptr %wdt_timeout_shift.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %wdt_timeout_shift.i, align 1
  %conv6.i = zext i8 %23 to i32
  %shl.i = shl i32 15, %conv6.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %21, %neg.i
  %arrayidx7.i = getelementptr [17 x i32], ptr @wdt_timeout_map, i32 0, i32 %spec.select.i
  %24 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7.i, align 4
  %shl10.i = shl i32 %25, %conv6.i
  %wdt_key_val.i = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %13, i32 0, i32 6
  %26 = ptrtoint ptr %wdt_key_val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wdt_key_val.i, align 4
  %or.i = or i32 %27, %shl10.i
  %or11.i = or i32 %or.i, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #6
  %29 = ptrtoint ptr %wdt_mode.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wdt_mode.i, align 2
  %conv13.i = zext i8 %30 to i32
  %add.ptr14.i = getelementptr i8, ptr %11, i32 %conv13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %28) #6, !srcloc !71
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i, align 4
  %wdt_base1.i.i = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wdt_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wdt_base1.i.i, align 4
  %wdt_regs.i.i = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %wdt_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wdt_regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  %conv.i.i = zext i8 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1357643776) #6, !srcloc !71
  %wdt_cfg = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %wdt_cfg to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %wdt_cfg, align 1
  %conv = zext i8 %40 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %wdt_reset_mask = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 4
  %43 = ptrtoint ptr %wdt_reset_mask to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %wdt_reset_mask, align 4
  %conv7 = zext i8 %44 to i32
  %neg = xor i32 %conv7, -1
  %and = and i32 %42, %neg
  %wdt_reset_val = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 5
  %45 = ptrtoint ptr %wdt_reset_val to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wdt_reset_val, align 1
  %conv8 = zext i8 %46 to i32
  %or = or i32 %and, %conv8
  %wdt_key_val = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 6
  %47 = ptrtoint ptr %wdt_key_val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wdt_key_val, align 4
  %or9 = or i32 %or, %48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %50 = ptrtoint ptr %wdt_cfg to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %wdt_cfg, align 1
  %conv11 = zext i8 %51 to i32
  %add.ptr12 = getelementptr i8, ptr %3, i32 %conv11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %49) #6, !srcloc !71
  %wdt_mode = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 2
  %52 = ptrtoint ptr %wdt_mode to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %wdt_mode, align 2
  %conv15 = zext i8 %53 to i32
  %add.ptr16 = getelementptr i8, ptr %3, i32 %conv15
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %55 = or i32 %54, 16777216
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %wdt_key_val to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wdt_key_val, align 4
  %or22 = or i32 %56, %58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %59 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %60 = ptrtoint ptr %wdt_mode to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %wdt_mode, align 2
  %conv27 = zext i8 %61 to i32
  %add.ptr28 = getelementptr i8, ptr %3, i32 %conv27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %59) #6, !srcloc !71
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_ping(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %wdt_regs = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wdt_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdt_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1357643776) #6, !srcloc !71
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_set_timeout(ptr nocapture noundef readonly %wdt_dev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %wdt_regs = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wdt_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdt_regs, align 4
  %6 = and i32 %timeout, 1073741823
  %7 = lshr i32 43649, %6
  %8 = and i32 %7, 1
  %spec.select = add i32 %8, %timeout
  %timeout3 = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %timeout3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %timeout3, align 4
  %wdt_mode = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %wdt_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wdt_mode, align 2
  %conv = zext i8 %11 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %wdt_timeout_shift = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %wdt_timeout_shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wdt_timeout_shift, align 1
  %conv6 = zext i8 %15 to i32
  %shl = shl i32 15, %conv6
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  %arrayidx7 = getelementptr [17 x i32], ptr @wdt_timeout_map, i32 0, i32 %spec.select
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7, align 4
  %shl10 = shl i32 %17, %conv6
  %wdt_key_val = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %wdt_key_val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wdt_key_val, align 4
  %or = or i32 %19, %shl10
  %or11 = or i32 %or, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %21 = ptrtoint ptr %wdt_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wdt_mode, align 2
  %conv13 = zext i8 %22 to i32
  %add.ptr14 = getelementptr i8, ptr %3, i32 %conv13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %20) #6, !srcloc !71
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1.i = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wdt_base1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wdt_base1.i, align 4
  %wdt_regs.i = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %wdt_regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wdt_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv.i = zext i8 %30 to i32
  %add.ptr.i = getelementptr i8, ptr %26, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1357643776) #6, !srcloc !71
  ret i32 0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_restart(ptr nocapture noundef readonly %wdt_dev, i32 noundef %action, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %wdt_regs = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wdt_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdt_regs, align 4
  %wdt_cfg = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wdt_cfg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wdt_cfg, align 1
  %conv = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %wdt_reset_mask = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %wdt_reset_mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wdt_reset_mask, align 4
  %conv4 = zext i8 %11 to i32
  %neg = xor i32 %conv4, -1
  %and = and i32 %9, %neg
  %wdt_reset_val = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %wdt_reset_val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wdt_reset_val, align 1
  %conv5 = zext i8 %13 to i32
  %or = or i32 %and, %conv5
  %wdt_key_val = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %wdt_key_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wdt_key_val, align 4
  %or6 = or i32 %or, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %17 = ptrtoint ptr %wdt_cfg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wdt_cfg, align 1
  %conv8 = zext i8 %18 to i32
  %add.ptr9 = getelementptr i8, ptr %3, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %16) #6, !srcloc !71
  %wdt_mode = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %wdt_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wdt_mode, align 2
  %conv12 = zext i8 %20 to i32
  %add.ptr13 = getelementptr i8, ptr %3, i32 %conv12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !73
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %wdt_timeout_shift = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %wdt_timeout_shift to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wdt_timeout_shift, align 1
  %conv17 = zext i8 %24 to i32
  %shl = shl i32 15, %conv17
  %neg18 = xor i32 %shl, -1
  %and19 = and i32 %22, %neg18
  %25 = ptrtoint ptr %wdt_key_val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wdt_key_val, align 4
  %or20 = or i32 %26, %and19
  %or22 = or i32 %or20, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %28 = ptrtoint ptr %wdt_mode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wdt_mode, align 2
  %conv27 = zext i8 %29 to i32
  %add.ptr28 = getelementptr i8, ptr %3, i32 %conv27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %27) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %5, align 4
  %conv32 = zext i8 %31 to i32
  %add.ptr33 = getelementptr i8, ptr %3, i32 %conv32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -1357643776) #6, !srcloc !71
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #6
  %37 = ptrtoint ptr %wdt_mode to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wdt_mode, align 2
  %conv39 = zext i8 %38 to i32
  %add.ptr40 = getelementptr i8, ptr %3, i32 %conv39
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %40 = or i32 %39, 16777216
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %wdt_key_val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wdt_key_val, align 4
  %or46 = or i32 %41, %43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %45 = ptrtoint ptr %wdt_mode to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wdt_mode, align 2
  %conv51 = zext i8 %46 to i32
  %add.ptr52 = getelementptr i8, ptr %3, i32 %conv51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %44) #6, !srcloc !71
  br label %while.cond
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_sunxi_wdt__170_300_sunxi_wdt_driver_init6, !1, !"__initcall__kmod_sunxi_wdt__170_300_sunxi_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 300, i32 1}
!2 = !{ptr @__exitcall_sunxi_wdt_driver_exit, !1, !"__exitcall_sunxi_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_timeout, !4, !"__param_timeout", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 302, i32 1}
!5 = !{ptr @__UNIQUE_ID_timeouttype171, !4, !"__UNIQUE_ID_timeouttype171", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_timeout172, !7, !"__UNIQUE_ID_timeout172", i1 false, i1 false}
!7 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 303, i32 1}
!8 = !{ptr @__param_nowayout, !9, !"__param_nowayout", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 305, i32 1}
!10 = !{ptr @__UNIQUE_ID_nowayouttype173, !9, !"__UNIQUE_ID_nowayouttype173", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_nowayout174, !12, !"__UNIQUE_ID_nowayout174", i1 false, i1 false}
!12 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 306, i32 1}
!13 = !{ptr @__UNIQUE_ID_file175, !14, !"__UNIQUE_ID_file175", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 309, i32 1}
!15 = !{ptr @__UNIQUE_ID_license176, !14, !"__UNIQUE_ID_license176", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author177, !17, !"__UNIQUE_ID_author177", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 310, i32 1}
!18 = !{ptr @__UNIQUE_ID_author178, !19, !"__UNIQUE_ID_author178", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 311, i32 1}
!20 = !{ptr @__UNIQUE_ID_description179, !21, !"__UNIQUE_ID_description179", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 312, i32 1}
!22 = !{ptr @__UNIQUE_ID_version180, !23, !"__UNIQUE_ID_version180", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 313, i32 1}
!24 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__modver_attr, !23, !"__modver_attr", i1 false, i1 false}
!28 = !{ptr @timeout, !29, !"timeout", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 38, i32 21}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 295, i32 12}
!32 = !{ptr @sunxi_wdt_driver, !33, !"sunxi_wdt_driver", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 292, i32 31}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 286, i32 2}
!36 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sunxi_wdt_probe._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @sunxi_wdt_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sunxi_wdt_info, !43, !"sunxi_wdt_info", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 196, i32 35}
!44 = !{ptr @sunxi_wdt_ops, !45, !"sunxi_wdt_ops", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 203, i32 34}
!46 = !{ptr @wdt_timeout_map, !47, !"wdt_timeout_map", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 68, i32 18}
!48 = !{ptr @sunxi_wdt_dt_ids, !49, !"sunxi_wdt_dt_ids", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 240, i32 34}
!50 = !{ptr @sun4i_wdt_reg, !51, !"sun4i_wdt_reg", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 212, i32 35}
!52 = !{ptr @sun6i_wdt_reg, !53, !"sun6i_wdt_reg", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 221, i32 35}
!54 = !{ptr @sun20i_wdt_reg, !55, !"sun20i_wdt_reg", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 230, i32 35}
!56 = !{ptr @__param_str_timeout, !4, !"__param_str_timeout", i1 false, i1 false}
!57 = !{ptr @__param_str_nowayout, !9, !"__param_str_nowayout", i1 false, i1 false}
!58 = !{ptr @nowayout, !59, !"nowayout", i1 false, i1 false}
!59 = !{!"../drivers/watchdog/sunxi_wdt.c", i32 37, i32 13}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{i64 2152570829}
!71 = !{i64 3075578}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 3075996}
!74 = !{i64 2152570183}
!75 = !{i64 2152570410}
!76 = !{i64 2152569413}
!77 = !{i64 2152571568}
!78 = !{i64 2152571789}
!79 = !{i64 2152572489}
!80 = !{i64 2152572720}
!81 = !{i64 2152565057}
!82 = !{i64 2152565278}
!83 = !{i64 2152565978}
!84 = !{i64 2152566214}
!85 = !{i64 2152566669}
!86 = !{i64 2152568727}
!87 = !{i64 2152568958}
