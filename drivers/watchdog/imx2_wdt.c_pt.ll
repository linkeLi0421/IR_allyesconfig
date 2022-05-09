; ModuleID = '/llk/IR_all_yes/drivers/watchdog/imx2_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/imx2_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.imx2_wdt_device = type { ptr, ptr, %struct.watchdog_device, i8, i8 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_nowayout = internal constant [18 x i8] c"imx2_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype187 = internal constant [32 x i8] c"imx2_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout188 = internal constant [75 x i8] c"imx2_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [17 x i8] c"imx2_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype189 = internal constant [31 x i8] c"imx2_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout190 = internal constant [63 x i8] c"imx2_wdt.parm=timeout:Watchdog timeout in seconds (default=60)\00", section ".modinfo", align 1
@__initcall__kmod_imx2_wdt__193_423_imx2_wdt_driver_init6 = internal global ptr @imx2_wdt_driver_init, section ".initcall6.init", align 4
@imx2_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr @imx2_wdt_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx2_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx2_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx2_wdt_driver_exit = internal global ptr @imx2_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author194 = internal constant [29 x i8] c"imx2_wdt.author=Wolfram Sang\00", section ".modinfo", align 1
@__UNIQUE_ID_description195 = internal constant [56 x i8] c"imx2_wdt.description=Watchdog driver for IMX2 and later\00", section ".modinfo", align 1
@__UNIQUE_ID_file196 = internal constant [40 x i8] c"imx2_wdt.file=drivers/watchdog/imx2_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [24 x i8] c"imx2_wdt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias198 = internal constant [33 x i8] c"imx2_wdt.alias=platform:imx2-wdt\00", section ".modinfo", align 1
@imx2_wdt_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@imx2_wdt_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"imx2_wdt:274:(&imx2_wdt_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@imx2_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx2_wdt_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/watchdog/imx2_wdt.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx2_wdt_probe._entry_ptr = internal global ptr @imx2_wdt_probe._entry, section ".printk_index", align 4
@imx2_wdt_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get Watchdog clock\0A\00", [38 x i8] zeroinitializer }, align 32
@imx2_wdt_probe._entry_ptr.8 = internal global ptr @imx2_wdt_probe._entry.6, section ".printk_index", align 4
@imx2_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"imx2+ watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@imx2_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @imx2_wdt_start, ptr null, ptr @imx2_wdt_ping, ptr null, ptr @imx2_wdt_set_timeout, ptr @imx2_wdt_set_pretimeout, ptr null, ptr @imx2_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@imx2_wdt_pretimeout_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33664, i32 0, [32 x i8] c"imx2+ watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,ext-reset-output\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx2-wdt\00", [23 x i8] zeroinitializer }, align 32
@imx2_wdt_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx2_wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx2_wdt_suspend, ptr @imx2_wdt_resume, ptr @imx2_wdt_suspend, ptr @imx2_wdt_resume, ptr @imx2_wdt_suspend, ptr @imx2_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx2_wdt_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 349, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device shutdown: Expect reboot!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx2_wdt_shutdown\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@imx2_wdt_shutdown._entry_ptr = internal global ptr @imx2_wdt_shutdown._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 71, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 76, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"imx2_wdt_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 414, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"imx2_wdt_regmap_config\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 244, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 273, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 276, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 282, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"imx2_wdt_info\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 81, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"imx2_wdt_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 235, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"imx2_wdt_pretimeout_info\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 86, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 314, i32 7 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 417, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"imx2_wdt_dt_ids\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 408, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"imx2_wdt_pm_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 405, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [31 x i8] c"../drivers/watchdog/imx2_wdt.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 349, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_alias198, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__UNIQUE_ID_nowayout188, ptr @__UNIQUE_ID_nowayouttype187, ptr @__UNIQUE_ID_timeout190, ptr @__UNIQUE_ID_timeouttype189, ptr @__exitcall_imx2_wdt_driver_exit, ptr @__initcall__kmod_imx2_wdt__193_423_imx2_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @imx2_wdt_driver_exit, ptr @imx2_wdt_probe._entry, ptr @imx2_wdt_probe._entry.6, ptr @imx2_wdt_probe._entry_ptr, ptr @imx2_wdt_probe._entry_ptr.8, ptr @imx2_wdt_shutdown._entry, ptr @imx2_wdt_shutdown._entry_ptr, ptr @nowayout, ptr @timeout, ptr @imx2_wdt_driver, ptr @imx2_wdt_probe._key, ptr @imx2_wdt_regmap_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @imx2_wdt_info, ptr @imx2_wdt_ops, ptr @imx2_wdt_pretimeout_info, ptr @.str.9, ptr @.str.10, ptr @imx2_wdt_dt_ids, ptr @imx2_wdt_pm_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_pretimeout_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx2_wdt_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx2_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @imx2_wdt_driver, ptr noundef nonnull @imx2_wdt_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx2_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx2_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx2_wdt_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !76
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @imx2_wdt_regmap_config, ptr noundef nonnull @imx2_wdt_probe._key, ptr noundef nonnull @.str) #6
  %regmap = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i117 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %call.i, align 4
  %cmp.i118 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %wdog24 = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2
  %info = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @imx2_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @imx2_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2, i32 9
  %12 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %min_timeout, align 4
  %timeout = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2, i32 7
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 60, ptr %timeout, align 4
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2, i32 12
  %14 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128000, ptr %max_hw_heartbeat_ms, align 4
  %parent = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %parent, align 4
  %call25 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp sgt i32 %call25, 0
  br i1 %cmp, label %if.then26, label %if.end23.if.end33_crit_edge

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then26:                                        ; preds = %if.end23
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then26.dev_name.exit_crit_edge

if.then26.dev_name.exit_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then26.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %if.then26.dev_name.exit_crit_edge ]
  %call.i119 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call25, ptr noundef nonnull @imx2_wdt_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %wdog24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool29.not = icmp eq i32 %call.i119, 0
  br i1 %tobool29.not, label %if.then30, label %dev_name.exit.if.end33_crit_edge

dev_name.exit.if.end33_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @imx2_wdt_pretimeout_info, ptr %info, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %dev_name.exit.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %call.i120 = tail call i32 @clk_prepare(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i121 = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i121, label %if.end.i122, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i122:                                      ; preds = %if.end33
  %call1.i = tail call i32 @clk_enable(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %22) #6
  br label %cleanup

if.end38:                                         ; preds = %if.end.i122
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %call.i124 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @imx2_wdt_action, ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool.not.i125 = icmp eq i32 %call.i124, 0
  br i1 %tobool.not.i125, label %if.end43, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %clk_is_on = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %clk_is_on to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %clk_is_on, align 1
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call45 = call i32 @regmap_read(ptr noundef %27, i32 noundef 4, ptr noundef nonnull %val) #6
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %and = shl i32 %29, 4
  %30 = and i32 %and, 32
  %bootstatus = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2, i32 6
  %31 = ptrtoint ptr %bootstatus to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %bootstatus, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.i127 = call ptr @of_find_property(ptr noundef %33, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i127, null
  %ext_reset = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 3
  %frombool = zext i1 %tobool.i to i8
  %34 = ptrtoint ptr %ext_reset to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %ext_reset, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %wdog24, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2, i32 16
  %36 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i, align 4
  %37 = load i8, ptr @nowayout, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool48.not = icmp eq i8 %37, 0
  br i1 %tobool48.not, label %if.end43.watchdog_set_nowayout.exit_crit_edge, label %if.then.i128

if.end43.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_set_nowayout.exit

if.then.i128:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %status.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #6
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i128, %if.end43.watchdog_set_nowayout.exit_crit_edge
  call void @watchdog_set_restart_priority(ptr noundef %wdog24, i32 noundef 128) #6
  %38 = load i32, ptr @timeout, align 4
  %call49 = call i32 @watchdog_init_timeout(ptr noundef %wdog24, i32 noundef %38, ptr noundef %dev1) #6
  %status.i130 = getelementptr inbounds %struct.imx2_wdt_device, ptr %call.i, i32 0, i32 2, i32 18
  call void @_set_bit(i32 noundef 5, ptr noundef %status.i130) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call.i131 = call i32 @regmap_read(ptr noundef %41, i32 noundef 0, ptr noundef nonnull %val.i) #6
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  %and.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i132.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br i1 %tobool.i132.not, label %watchdog_set_nowayout.exit.if.end54_crit_edge, label %if.then51

watchdog_set_nowayout.exit.if.end54_crit_edge:    ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then51:                                        ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %timeout, align 4
  %46 = call i32 @llvm.umin.i32(i32 %45, i32 128) #6
  %47 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %46, 9
  %shl.i.i = add nsw i32 %mul.i.i, -256
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 0, i32 noundef 65280, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %51 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %45, ptr %timeout, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %status.i130) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %watchdog_set_nowayout.exit.if.end54_crit_edge
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call56 = call i32 @regmap_write(ptr noundef %53, i32 noundef 8, i32 noundef 0) #6
  %call57 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %wdog24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %devm_add_action_or_reset.exit, %if.then3.i, %if.end33.cleanup_crit_edge, %do.end20, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %5, %do.end ], [ %9, %do.end20 ], [ %call57, %if.end54 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i124, %devm_add_action_or_reset.exit ], [ %call1.i, %if.then3.i ], [ %call.i120, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx2_wdt_isr(i32 noundef %irq, ptr noundef %wdog_arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog_arg, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.imx2_wdt_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 6, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  tail call void @watchdog_notify_pretimeout(ptr noundef %wdog_arg) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx2_wdt_action(ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #6
  tail call void @clk_unprepare(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx2_wdt_set_timeout(ptr nocapture noundef %wdog, i32 noundef %new_timeout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %new_timeout, i32 128)
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %mul.i = shl nuw nsw i32 %0, 9
  %shl.i = add nsw i32 %mul.i, -256
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 65280, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %new_timeout, ptr %timeout, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx2_wdt_start(ptr noundef %wdog) #4 align 64 {
entry:
  %val.i9 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %regmap.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val.i) #6
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 128) #6
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %9, 9
  %shl.i.i = add nsw i32 %mul.i.i, -256
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 65280, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %timeout, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i9) #6
  %17 = ptrtoint ptr %val.i9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i9, align 4, !annotation !76
  %regmap.i10 = getelementptr inbounds %struct.imx2_wdt_device, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i10, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %val.i9) #6
  %20 = ptrtoint ptr %val.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i9, align 4
  %ext_reset.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %16, i32 0, i32 3
  %22 = ptrtoint ptr %ext_reset.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ext_reset.i, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %and.i11 = and i32 %21, -65294
  %and2.i = or i32 %and.i11, 1
  %or3.i = or i32 %21, 9
  %storemerge.i = select i1 %tobool.not.i, i32 %and2.i, i32 %or3.i
  %and4.i = and i32 %storemerge.i, -65285
  %timeout.i12 = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %24 = ptrtoint ptr %timeout.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout.i12, align 4
  %mul.i = shl i32 %25, 9
  %shl.i = add i32 %mul.i, -256
  %or5.i = or i32 %shl.i, %and4.i
  %26 = ptrtoint ptr %val.i9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or5.i, ptr %val.i9, align 4
  %27 = ptrtoint ptr %regmap.i10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i10, align 4
  %call7.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 0, i32 noundef %or5.i) #6
  %29 = ptrtoint ptr %val.i9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i9, align 4
  %or8.i = or i32 %30, 4
  store i32 %or8.i, ptr %val.i9, align 4
  %31 = ptrtoint ptr %regmap.i10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i10, align 4
  %call10.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 0, i32 noundef %or8.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i9) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 18
  call void @_set_bit(i32 noundef 3, ptr noundef %status) #6
  %33 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i, align 4
  %clk_is_on.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %clk_is_on.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %clk_is_on.i, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i14 = icmp eq i8 %36, 0
  br i1 %tobool.not.i14, label %if.end.imx2_wdt_ping.exit_crit_edge, label %if.end.i

if.end.imx2_wdt_ping.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx2_wdt_ping.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i15 = getelementptr inbounds %struct.imx2_wdt_device, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i15, align 4
  %call1.i16 = call i32 @regmap_write(ptr noundef %38, i32 noundef 2, i32 noundef 21845) #6
  %39 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i15, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 2, i32 noundef 43690) #6
  br label %imx2_wdt_ping.exit

imx2_wdt_ping.exit:                               ; preds = %if.end.i, %if.end.imx2_wdt_ping.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx2_wdt_ping(ptr nocapture noundef readonly %wdog) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_is_on = getelementptr inbounds %struct.imx2_wdt_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_is_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clk_is_on, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.imx2_wdt_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2, i32 noundef 21845) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 2, i32 noundef 43690) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx2_wdt_set_pretimeout(ptr nocapture noundef %wdog, i32 noundef %new_pretimeout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %new_pretimeout)
  %cmp = icmp ugt i32 %new_pretimeout, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 8
  %2 = ptrtoint ptr %pretimeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_pretimeout, ptr %pretimeout, align 4
  %regmap = getelementptr inbounds %struct.imx2_wdt_device, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 %new_pretimeout, 1
  %or = or i32 %shl, 32768
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 6, i32 noundef 33023, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx2_wdt_restart(ptr nocapture noundef readonly %wdog, i32 noundef %action, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ext_reset = getelementptr inbounds %struct.imx2_wdt_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ext_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ext_reset, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %. = select i1 %tobool.not, i32 36, i32 20
  %regmap = getelementptr inbounds %struct.imx2_wdt_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef %.) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef %.) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef %.) #6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.015 = phi i32 [ 500, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.015, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx2_wdt_shutdown(ptr noundef %pdev) #4 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %regmap.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 65280, i32 noundef 65280, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %timeout.i, align 4
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %clk_is_on.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %clk_is_on.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %clk_is_on.i, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.then.imx2_wdt_ping.exit_crit_edge, label %if.end.i

if.then.imx2_wdt_ping.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx2_wdt_ping.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i9 = getelementptr inbounds %struct.imx2_wdt_device, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i9, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %19, i32 noundef 2, i32 noundef 21845) #6
  %20 = ptrtoint ptr %regmap.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i9, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %21, i32 noundef 2, i32 noundef 43690) #6
  br label %imx2_wdt_ping.exit

imx2_wdt_ping.exit:                               ; preds = %if.end.i, %if.then.imx2_wdt_ping.exit_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %if.end

if.end:                                           ; preds = %imx2_wdt_ping.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx2_wdt_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i8 = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %driver_data.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %regmap.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %driver_data.i8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i8, align 4
  %regmap.i9 = getelementptr inbounds %struct.imx2_wdt_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i9, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 65280, i32 noundef 65280, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %13 = ptrtoint ptr %driver_data.i8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i8, align 4
  %clk_is_on.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %clk_is_on.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %clk_is_on.i, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i11 = getelementptr inbounds %struct.imx2_wdt_device, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i11, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 2, i32 noundef 21845) #6
  %19 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i11, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 2, i32 noundef 43690) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  call void @clk_disable(ptr noundef %22) #6
  call void @clk_unprepare(ptr noundef %22) #6
  %clk_is_on = getelementptr inbounds %struct.imx2_wdt_device, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %clk_is_on to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %clk_is_on, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx2_wdt_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  %val.i31 = alloca i32, align 4
  %val.i26 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i23 = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %driver_data.i23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i23, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_is_on = getelementptr inbounds %struct.imx2_wdt_device, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %clk_is_on to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %clk_is_on, align 1
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %regmap.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i24 = call i32 @regmap_read(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %val.i) #6
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i25.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br i1 %tobool.i25.not, label %if.then5, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %driver_data.i23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i26) #6
  %16 = ptrtoint ptr %val.i26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i26, align 4, !annotation !76
  %regmap.i27 = getelementptr inbounds %struct.imx2_wdt_device, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i27, align 4
  %call1.i28 = call i32 @regmap_read(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %val.i26) #6
  %19 = ptrtoint ptr %val.i26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i26, align 4
  %ext_reset.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %ext_reset.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ext_reset.i, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i29 = icmp eq i8 %22, 0
  %and.i30 = and i32 %20, -65294
  %and2.i = or i32 %and.i30, 1
  %or3.i = or i32 %20, 9
  %storemerge.i = select i1 %tobool.not.i29, i32 %and2.i, i32 %or3.i
  %and4.i = and i32 %storemerge.i, -65285
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timeout.i, align 4
  %mul.i = shl i32 %24, 9
  %shl.i = add i32 %mul.i, -256
  %or5.i = or i32 %shl.i, %and4.i
  %25 = ptrtoint ptr %val.i26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or5.i, ptr %val.i26, align 4
  %26 = ptrtoint ptr %regmap.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i27, align 4
  %call7.i = call i32 @regmap_write(ptr noundef %27, i32 noundef 0, i32 noundef %or5.i) #6
  %28 = ptrtoint ptr %val.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i26, align 4
  %or8.i = or i32 %29, 4
  store i32 %or8.i, ptr %val.i26, align 4
  %30 = ptrtoint ptr %regmap.i27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i27, align 4
  %call10.i = call i32 @regmap_write(ptr noundef %31, i32 noundef 0, i32 noundef %or8.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i26) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i31) #6
  %32 = ptrtoint ptr %val.i31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i31, align 4, !annotation !76
  %regmap.i32 = getelementptr inbounds %struct.imx2_wdt_device, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i32, align 4
  %call.i33 = call i32 @regmap_read(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %val.i31) #6
  %35 = ptrtoint ptr %val.i31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i31, align 4
  %and.i34 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.i35.not = icmp eq i32 %and.i34, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i31) #6
  br i1 %tobool.i35.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeout, align 4
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 128) #6
  %40 = ptrtoint ptr %driver_data.i23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i23, align 4
  %regmap.i.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %39, 9
  %shl.i.i = add nsw i32 %mul.i.i, -256
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 0, i32 noundef 65280, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %44 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %38, ptr %timeout, align 4
  %45 = ptrtoint ptr %driver_data.i23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i23, align 4
  %clk_is_on.i = getelementptr inbounds %struct.imx2_wdt_device, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %clk_is_on.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %clk_is_on.i, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i38 = icmp eq i8 %48, 0
  br i1 %tobool.not.i38, label %if.then8.cleanup_crit_edge, label %if.end.i41

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i41:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i39 = getelementptr inbounds %struct.imx2_wdt_device, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %regmap.i39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i39, align 4
  %call1.i40 = call i32 @regmap_write(ptr noundef %50, i32 noundef 2, i32 noundef 21845) #6
  %51 = ptrtoint ptr %regmap.i39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i39, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %52, i32 noundef 2, i32 noundef 43690) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i41, %if.then8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ 0, %if.end.i41 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/imx2_wdt.c", i32 72, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype187, !1, !"__UNIQUE_ID_nowayouttype187", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout188, !4, !"__UNIQUE_ID_nowayout188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/imx2_wdt.c", i32 73, i32 1}
!5 = !{ptr @__param_timeout, !6, !"__param_timeout", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/imx2_wdt.c", i32 77, i32 1}
!7 = !{ptr @__UNIQUE_ID_timeouttype189, !6, !"__UNIQUE_ID_timeouttype189", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_timeout190, !9, !"__UNIQUE_ID_timeout190", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/imx2_wdt.c", i32 78, i32 1}
!10 = !{ptr @__initcall__kmod_imx2_wdt__193_423_imx2_wdt_driver_init6, !11, !"__initcall__kmod_imx2_wdt__193_423_imx2_wdt_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/imx2_wdt.c", i32 423, i32 1}
!12 = !{ptr @__exitcall_imx2_wdt_driver_exit, !11, !"__exitcall_imx2_wdt_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author194, !14, !"__UNIQUE_ID_author194", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/imx2_wdt.c", i32 425, i32 1}
!15 = !{ptr @__UNIQUE_ID_description195, !16, !"__UNIQUE_ID_description195", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/imx2_wdt.c", i32 426, i32 1}
!17 = !{ptr @__UNIQUE_ID_file196, !18, !"__UNIQUE_ID_file196", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/imx2_wdt.c", i32 427, i32 1}
!19 = !{ptr @__UNIQUE_ID_license197, !18, !"__UNIQUE_ID_license197", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias198, !21, !"__UNIQUE_ID_alias198", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/imx2_wdt.c", i32 428, i32 1}
!22 = !{ptr @timeout, !23, !"timeout", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/imx2_wdt.c", i32 76, i32 17}
!24 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!25 = !{ptr @nowayout, !26, !"nowayout", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/imx2_wdt.c", i32 71, i32 13}
!27 = !{ptr @__param_str_timeout, !6, !"__param_str_timeout", i1 false, i1 false}
!28 = !{ptr @imx2_wdt_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/imx2_wdt.c", i32 273, i32 17}
!30 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/watchdog/imx2_wdt.c", i32 276, i32 3}
!33 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @imx2_wdt_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @imx2_wdt_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/imx2_wdt.c", i32 282, i32 3}
!41 = !{ptr @imx2_wdt_probe._entry.6, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @imx2_wdt_probe._entry_ptr.8, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/imx2_wdt.c", i32 314, i32 7}
!45 = !{ptr @imx2_wdt_regmap_config, !46, !"imx2_wdt_regmap_config", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/imx2_wdt.c", i32 244, i32 35}
!47 = !{ptr @imx2_wdt_info, !48, !"imx2_wdt_info", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/imx2_wdt.c", i32 81, i32 35}
!49 = !{ptr @imx2_wdt_ops, !50, !"imx2_wdt_ops", i1 false, i1 false}
!50 = !{!"../drivers/watchdog/imx2_wdt.c", i32 235, i32 34}
!51 = !{ptr @imx2_wdt_pretimeout_info, !52, !"imx2_wdt_pretimeout_info", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/imx2_wdt.c", i32 86, i32 35}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/imx2_wdt.c", i32 417, i32 11}
!55 = !{ptr @imx2_wdt_driver, !56, !"imx2_wdt_driver", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/imx2_wdt.c", i32 414, i32 31}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/imx2_wdt.c", i32 349, i32 3}
!59 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @imx2_wdt_shutdown._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @imx2_wdt_shutdown._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @imx2_wdt_dt_ids, !64, !"imx2_wdt_dt_ids", i1 false, i1 false}
!64 = !{!"../drivers/watchdog/imx2_wdt.c", i32 408, i32 34}
!65 = !{ptr @imx2_wdt_pm_ops, !66, !"imx2_wdt_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/imx2_wdt.c", i32 405, i32 8}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{i8 0, i8 2}
