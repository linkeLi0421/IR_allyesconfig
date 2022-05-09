; ModuleID = '/llk/IR_all_yes/drivers/watchdog/arm_smc_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/arm_smc_wdt.c"
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
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
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
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_arm_smc_wdt__170_176_smcwd_driver_init6 = internal global ptr @smcwd_driver_init, section ".initcall6.init", align 4
@smcwd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @smcwd_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @smcwd_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_smcwd_driver_exit = internal global ptr @smcwd_driver_exit, section ".exitcall.exit", align 4
@__param_str_timeout = internal constant [20 x i8] c"arm_smc_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype171 = internal constant [34 x i8] c"arm_smc_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout172 = internal constant [55 x i8] c"arm_smc_wdt.parm=timeout:Watchdog heartbeat in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"arm_smc_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype173 = internal constant [35 x i8] c"arm_smc_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout174 = internal constant [78 x i8] c"arm_smc_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [46 x i8] c"arm_smc_wdt.file=drivers/watchdog/arm_smc_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [24 x i8] c"arm_smc_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [56 x i8] c"arm_smc_wdt.author=Julius Werner <jwerner@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description178 = internal constant [64 x i8] c"arm_smc_wdt.description=ARM Secure Monitor Call Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version179 = internal constant [24 x i8] c"arm_smc_wdt.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm_smc_wdt\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@smcwd_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,smc-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arm,smc-id\00", [21 x i8] zeroinitializer }, align 32
@smcwd_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"arm_smc_wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@smcwd_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @smcwd_start, ptr @smcwd_stop, ptr @smcwd_ping, ptr null, ptr @smcwd_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@smcwd_timeleft_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @smcwd_start, ptr @smcwd_stop, ptr @smcwd_ping, ptr null, ptr @smcwd_set_timeout, ptr null, ptr @smcwd_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@smcwd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 157, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Watchdog registered (timeout=%d sec, nowayout=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smcwd_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/arm_smc_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smcwd_probe._entry_ptr = internal global ptr @smcwd_probe._entry, section ".printk_index", align 4
@switch.table.smcwd_start = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -22, i32 -19, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.smcwd_stop = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -22, i32 -19, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.smcwd_ping = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -22, i32 -19, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"smcwd_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 168, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 32, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 31, i32 13 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 188, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"smcwd_dt_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 162, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 123, i32 46 }
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"smcwd_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 89, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"smcwd_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 96, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"smcwd_timeleft_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 103, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [34 x i8] c"../drivers/watchdog/arm_smc_wdt.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 155, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"switch.table.smcwd_start\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [24 x i8] c"switch.table.smcwd_stop\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"switch.table.smcwd_ping\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__UNIQUE_ID_nowayout174, ptr @__UNIQUE_ID_nowayouttype173, ptr @__UNIQUE_ID_timeout172, ptr @__UNIQUE_ID_timeouttype171, ptr @__UNIQUE_ID_version179, ptr @__exitcall_smcwd_driver_exit, ptr @__initcall__kmod_arm_smc_wdt__170_176_smcwd_driver_init6, ptr @__modver_attr, ptr @__param_nowayout, ptr @__param_timeout, ptr @smcwd_driver_exit, ptr @smcwd_probe._entry, ptr @smcwd_probe._entry_ptr, ptr @smcwd_driver, ptr @timeout, ptr @nowayout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @smcwd_dt_ids, ptr @.str.3, ptr @smcwd_info, ptr @smcwd_ops, ptr @smcwd_timeleft_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.smcwd_start, ptr @switch.table.smcwd_stop, ptr @switch.table.smcwd_ping], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcwd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcwd_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcwd_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcwd_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcwd_timeleft_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcwd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smcwd_start to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smcwd_stop to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smcwd_ping to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smcwd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @smcwd_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smcwd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @smcwd_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smcwd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %local_res.i.i = alloca %struct.arm_smccc_res, align 4
  %local_res.i66 = alloca %struct.arm_smccc_res, align 4
  %res = alloca %struct.arm_smccc_res, align 4
  %smc_func_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #5
  %0 = getelementptr inbounds %struct.arm_smccc_res, ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds %struct.arm_smccc_res, ptr %res, i32 0, i32 2
  %2 = call ptr @memset(ptr %res, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_func_id) #5
  %3 = ptrtoint ptr %smc_func_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %smc_func_id, align 4, !annotation !61
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %smc_func_id, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %smc_func_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2113913594, ptr %smc_func_id, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %smc_func_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smc_func_id, align 4
  %10 = inttoptr i32 %9 to ptr
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %driver_data.i, align 4
  call void @__arm_smccc_smc(i32 noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #5
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.then10.i [
    i32 -1, label %if.end5.cleanup_crit_edge
    i32 -2, label %if.then6.i
    i32 0, label %if.end8
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @smcwd_info, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_res.i66) #5
  %16 = call ptr @memset(ptr %local_res.i66, i32 255, i32 16)
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__arm_smccc_smc(i32 noundef %19, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %local_res.i66, ptr noundef null) #5
  %20 = ptrtoint ptr %local_res.i66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %local_res.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cond = icmp eq i32 %21, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_res.i66) #5
  %smcwd_timeleft_ops.smcwd_ops = select i1 %cond, ptr @smcwd_timeleft_ops, ptr @smcwd_ops
  %22 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %smcwd_timeleft_ops.smcwd_ops, ptr %22, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %max_timeout, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %0, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %min_timeout, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %parent, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  call void @_set_bit(i32 noundef 2, ptr noundef %status.i) #5
  call void @_set_bit(i32 noundef 4, ptr noundef %status.i) #5
  %32 = load i8, ptr @nowayout, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool16.not = icmp eq i8 %32, 0
  br i1 %tobool16.not, label %if.end8.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end8.watchdog_set_nowayout.exit_crit_edge:     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end8.watchdog_set_nowayout.exit_crit_edge
  %33 = load i32, ptr @timeout, align 4
  %call18 = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %33, ptr noundef %dev) #5
  %34 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timeout, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_res.i.i) #5
  %36 = call ptr @memset(ptr %local_res.i.i, i32 255, i32 16)
  %37 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__arm_smccc_smc(i32 noundef %39, i32 noundef 1, i32 noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %local_res.i.i, ptr noundef null) #5
  %40 = ptrtoint ptr %local_res.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %local_res.i.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %41, label %if.then10.i.i [
    i32 -1, label %watchdog_set_nowayout.exit.smcwd_set_timeout.exit_crit_edge
    i32 -2, label %if.then6.i.i
    i32 0, label %if.end23
  ]

watchdog_set_nowayout.exit.smcwd_set_timeout.exit_crit_edge: ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %smcwd_set_timeout.exit

if.then6.i.i:                                     ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %smcwd_set_timeout.exit

if.then10.i.i:                                    ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %smcwd_set_timeout.exit

smcwd_set_timeout.exit:                           ; preds = %if.then10.i.i, %if.then6.i.i, %watchdog_set_nowayout.exit.smcwd_set_timeout.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ -19, %watchdog_set_nowayout.exit.smcwd_set_timeout.exit_crit_edge ], [ -5, %if.then10.i.i ], [ -22, %if.then6.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_res.i.i) #5
  br label %cleanup

if.end23:                                         ; preds = %watchdog_set_nowayout.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_res.i.i) #5
  %43 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %35, ptr %timeout, align 4
  %call25 = call i32 @devm_watchdog_register_device(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.end, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %timeout, align 4
  %46 = load i8, ptr @nowayout, align 1, !range !62
  %47 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %45, i32 noundef %47) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end23.cleanup_crit_edge, %smcwd_set_timeout.exit, %if.then10.i, %if.then6.i, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph.i, %smcwd_set_timeout.exit ], [ %call25, %if.end23.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ -5, %if.then10.i ], [ -22, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_func_id) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smcwd_set_timeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  %local_res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_res.i) #5
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = call ptr @memset(ptr %local_res.i, i32 255, i32 16)
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__arm_smccc_smc(i32 noundef %3, i32 noundef 1, i32 noundef %timeout, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %local_res.i, ptr noundef null) #5
  %4 = ptrtoint ptr %local_res.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local_res.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %5, label %if.then10.i [
    i32 -1, label %entry.smcwd_call.exit.thread_crit_edge
    i32 -2, label %if.then6.i
    i32 0, label %if.then
  ]

entry.smcwd_call.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %smcwd_call.exit.thread

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %smcwd_call.exit.thread

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %smcwd_call.exit.thread

smcwd_call.exit.thread:                           ; preds = %if.then10.i, %if.then6.i, %entry.smcwd_call.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %entry.smcwd_call.exit.thread_crit_edge ], [ -5, %if.then10.i ], [ -22, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_res.i) #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_res.i) #5
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %7 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %timeout, ptr %timeout1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %smcwd_call.exit.thread
  %retval.0.i7 = phi i32 [ %retval.0.i.ph, %smcwd_call.exit.thread ], [ 0, %if.then ]
  ret i32 %retval.0.i7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smcwd_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  %local_res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_res.i) #5
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = call ptr @memset(ptr %local_res.i, i32 255, i32 16)
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__arm_smccc_smc(i32 noundef %3, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %local_res.i, ptr noundef null) #5
  %4 = ptrtoint ptr %local_res.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local_res.i, align 4
  %switch.tableidx = add i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %entry.smcwd_call.exit_crit_edge

entry.smcwd_call.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %smcwd_call.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.smcwd_start, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %smcwd_call.exit

smcwd_call.exit:                                  ; preds = %switch.lookup, %entry.smcwd_call.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -5, %entry.smcwd_call.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_res.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smcwd_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  %local_res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_res.i) #5
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = call ptr @memset(ptr %local_res.i, i32 255, i32 16)
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__arm_smccc_smc(i32 noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %local_res.i, ptr noundef null) #5
  %4 = ptrtoint ptr %local_res.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local_res.i, align 4
  %switch.tableidx = add i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %entry.smcwd_call.exit_crit_edge

entry.smcwd_call.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %smcwd_call.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.smcwd_stop, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %smcwd_call.exit

smcwd_call.exit:                                  ; preds = %switch.lookup, %entry.smcwd_call.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -5, %entry.smcwd_call.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_res.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smcwd_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  %local_res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_res.i) #5
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = call ptr @memset(ptr %local_res.i, i32 255, i32 16)
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__arm_smccc_smc(i32 noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %local_res.i, ptr noundef null) #5
  %4 = ptrtoint ptr %local_res.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local_res.i, align 4
  %switch.tableidx = add i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %entry.smcwd_call.exit_crit_edge

entry.smcwd_call.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %smcwd_call.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.smcwd_ping, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %smcwd_call.exit

smcwd_call.exit:                                  ; preds = %switch.lookup, %entry.smcwd_call.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -5, %entry.smcwd_call.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_res.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smcwd_get_timeleft(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #5
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__arm_smccc_smc(i32 noundef %3, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #5
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = getelementptr inbounds %struct.arm_smccc_res, ptr %res, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #5
  ret i32 %retval.0
}

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !46, !48, !49, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_arm_smc_wdt__170_176_smcwd_driver_init6, !1, !"__initcall__kmod_arm_smc_wdt__170_176_smcwd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 176, i32 1}
!2 = !{ptr @__exitcall_smcwd_driver_exit, !1, !"__exitcall_smcwd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_timeout, !4, !"__param_timeout", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 178, i32 1}
!5 = !{ptr @__UNIQUE_ID_timeouttype171, !4, !"__UNIQUE_ID_timeouttype171", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_timeout172, !7, !"__UNIQUE_ID_timeout172", i1 false, i1 false}
!7 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 179, i32 1}
!8 = !{ptr @__param_nowayout, !9, !"__param_nowayout", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 181, i32 1}
!10 = !{ptr @__UNIQUE_ID_nowayouttype173, !9, !"__UNIQUE_ID_nowayouttype173", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_nowayout174, !12, !"__UNIQUE_ID_nowayout174", i1 false, i1 false}
!12 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 182, i32 1}
!13 = !{ptr @__UNIQUE_ID_file175, !14, !"__UNIQUE_ID_file175", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 185, i32 1}
!15 = !{ptr @__UNIQUE_ID_license176, !14, !"__UNIQUE_ID_license176", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author177, !17, !"__UNIQUE_ID_author177", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 186, i32 1}
!18 = !{ptr @__UNIQUE_ID_description178, !19, !"__UNIQUE_ID_description178", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 187, i32 1}
!20 = !{ptr @__UNIQUE_ID_version179, !21, !"__UNIQUE_ID_version179", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 188, i32 1}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__modver_attr, !21, !"__modver_attr", i1 false, i1 false}
!26 = !{ptr @timeout, !27, !"timeout", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 32, i32 21}
!28 = !{ptr @smcwd_driver, !29, !"smcwd_driver", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 168, i32 31}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 123, i32 46}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 155, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @smcwd_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @smcwd_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @smcwd_info, !41, !"smcwd_info", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 89, i32 35}
!42 = !{ptr @smcwd_ops, !43, !"smcwd_ops", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 96, i32 34}
!44 = !{ptr @smcwd_timeleft_ops, !45, !"smcwd_timeleft_ops", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 103, i32 34}
!46 = !{ptr @smcwd_dt_ids, !47, !"smcwd_dt_ids", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 162, i32 34}
!48 = !{ptr @__param_str_timeout, !4, !"__param_str_timeout", i1 false, i1 false}
!49 = !{ptr @__param_str_nowayout, !9, !"__param_str_nowayout", i1 false, i1 false}
!50 = !{ptr @nowayout, !51, !"nowayout", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/arm_smc_wdt.c", i32 31, i32 13}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{i8 0, i8 2}
