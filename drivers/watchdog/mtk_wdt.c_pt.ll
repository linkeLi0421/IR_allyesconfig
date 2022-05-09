; ModuleID = '/llk/IR_all_yes/drivers/watchdog/mtk_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/mtk_wdt.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.mtk_wdt_data = type { i32 }
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
%struct.mtk_wdt_dev = type { %struct.watchdog_device, ptr, %struct.spinlock, %struct.reset_controller_dev, i8 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_mtk_wdt__187_442_mtk_wdt_driver_init6 = internal global ptr @mtk_wdt_driver_init, section ".initcall6.init", align 4
@mtk_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_wdt_driver_exit = internal global ptr @mtk_wdt_driver_exit, section ".exitcall.exit", align 4
@__param_str_timeout = internal constant [16 x i8] c"mtk_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype188 = internal constant [30 x i8] c"mtk_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout189 = internal constant [51 x i8] c"mtk_wdt.parm=timeout:Watchdog heartbeat in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [17 x i8] c"mtk_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype190 = internal constant [31 x i8] c"mtk_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout191 = internal constant [74 x i8] c"mtk_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [38 x i8] c"mtk_wdt.file=drivers/watchdog/mtk_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [20 x i8] c"mtk_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [57 x i8] c"mtk_wdt.author=Matthias Brugger <matthias.bgg@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description195 = internal constant [51 x i8] c"mtk_wdt.description=Mediatek WatchDog Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version196 = internal constant [20 x i8] c"mtk_wdt.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk_wdt\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk-wdt\00", [24 x i8] zeroinitializer }, align 32
@mtk_wdt_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6589-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8195_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@mtk_wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_wdt_suspend, ptr @mtk_wdt_resume, ptr @mtk_wdt_suspend, ptr @mtk_wdt_resume, ptr @mtk_wdt_suspend, ptr @mtk_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wdt_bark\00", [23 x i8] zeroinitializer }, align 32
@mtk_wdt_pt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33664, i32 0, [32 x i8] c"mtk-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@mtk_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"mtk-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@mtk_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @mtk_wdt_start, ptr @mtk_wdt_stop, ptr @mtk_wdt_ping, ptr null, ptr @mtk_wdt_set_timeout, ptr @mtk_wdt_set_pretimeout, ptr null, ptr @mtk_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@mtk_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 378, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Watchdog enabled (timeout=%d sec, nowayout=%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_wdt_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/watchdog/mtk_wdt.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_wdt_probe._entry_ptr = internal global ptr @mtk_wdt_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek,disable-extrst\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@toprgu_register_reset_controller.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mtk_wdt->lock\00", [17 x i8] zeroinitializer }, align 32
@toprgu_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @toprgu_reset, ptr @toprgu_reset_assert, ptr @toprgu_reset_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@toprgu_register_reset_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 159, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"couldn't register wdt reset controller: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"toprgu_register_reset_controller\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@toprgu_register_reset_controller._entry_ptr = internal global ptr @toprgu_register_reset_controller._entry, section ".printk_index", align 4
@mt2712_data = internal constant { %struct.mtk_wdt_data, [28 x i8] } { %struct.mtk_wdt_data { i32 11 }, [28 x i8] zeroinitializer }, align 32
@mt8183_data = internal constant { %struct.mtk_wdt_data, [28 x i8] } { %struct.mtk_wdt_data { i32 19 }, [28 x i8] zeroinitializer }, align 32
@mt8192_data = internal constant { %struct.mtk_wdt_data, [28 x i8] } { %struct.mtk_wdt_data { i32 23 }, [28 x i8] zeroinitializer }, align 32
@mt8195_data = internal constant { %struct.mtk_wdt_data, [28 x i8] } { %struct.mtk_wdt_data { i32 16 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"mtk_wdt_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 433, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 61, i32 21 }
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 60, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 454, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 436, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"mtk_wdt_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 418, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"mtk_wdt_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 428, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 344, i32 59 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"mtk_wdt_pt_info\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 307, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"mtk_wdt_info\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 300, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"mtk_wdt_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 315, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 377, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 389, i32 39 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 150, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"toprgu_reset_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 138, i32 39 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 158, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"mt2712_data\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 75, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"mt8183_data\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 79, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"mt8192_data\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 83, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"mt8195_data\00", align 1
@___asan_gen_.106 = private constant [30 x i8] c"../drivers/watchdog/mtk_wdt.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 87, i32 34 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__UNIQUE_ID_nowayout191, ptr @__UNIQUE_ID_nowayouttype190, ptr @__UNIQUE_ID_timeout189, ptr @__UNIQUE_ID_timeouttype188, ptr @__UNIQUE_ID_version196, ptr @__exitcall_mtk_wdt_driver_exit, ptr @__initcall__kmod_mtk_wdt__187_442_mtk_wdt_driver_init6, ptr @__modver_attr, ptr @__param_nowayout, ptr @__param_timeout, ptr @mtk_wdt_driver_exit, ptr @mtk_wdt_probe._entry, ptr @mtk_wdt_probe._entry_ptr, ptr @toprgu_register_reset_controller._entry, ptr @toprgu_register_reset_controller._entry_ptr, ptr @mtk_wdt_driver, ptr @timeout, ptr @nowayout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mtk_wdt_dt_ids, ptr @mtk_wdt_pm_ops, ptr @.str.4, ptr @mtk_wdt_pt_info, ptr @mtk_wdt_info, ptr @mtk_wdt_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @toprgu_register_reset_controller.__key, ptr @.str.11, ptr @toprgu_reset_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mt2712_data, ptr @mt8183_data, ptr @mt8192_data, ptr @mt8195_data], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_wdt_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_wdt_pt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toprgu_register_reset_controller.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toprgu_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toprgu_register_reset_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 204, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %wdt_base = getelementptr inbounds %struct.mtk_wdt_dev, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %wdt_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %wdt_base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp sgt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %call.i102 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call9, ptr noundef nonnull @mtk_wdt_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool13.not = icmp eq i32 %call.i102, 0
  br i1 %tobool13.not, label %if.end15, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mtk_wdt_pt_info, ptr %info, align 4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %pretimeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 15, ptr %pretimeout, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call9)
  %cmp18 = icmp eq i32 %call9, -517
  br i1 %cmp18, label %if.else.cleanup_crit_edge, label %if.end20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %info22 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %info22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mtk_wdt_info, ptr %info22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.end15
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mtk_wdt_ops, ptr %ops, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 31, ptr %timeout, align 4
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 12
  %8 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 31000, ptr %max_hw_heartbeat_ms, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %min_timeout, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %parent, align 4
  %11 = load i32, ptr @timeout, align 4
  %call30 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %11, ptr noundef %dev1) #6
  %12 = load i8, ptr @nowayout, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool32.not = icmp eq i8 %12, 0
  br i1 %tobool32.not, label %if.end23.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end23.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #6
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end23.watchdog_set_nowayout.exit_crit_edge
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull %call.i, i32 noundef 128) #6
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i, align 4
  %14 = ptrtoint ptr %wdt_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wdt_base, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %watchdog_set_nowayout.exit.mtk_wdt_init.exit_crit_edge, label %if.then.i105

watchdog_set_nowayout.exit.mtk_wdt_init.exit_crit_edge: ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_wdt_init.exit

if.then.i105:                                     ; preds = %watchdog_set_nowayout.exit
  %status.i104 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i104) #6
  %18 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout, align 4
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1.i.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wdt_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wdt_base1.i.i, align 4
  %pretimeout.i.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %pretimeout.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pretimeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.then.i105.mtk_wdt_set_timeout.exit.i_crit_edge, label %if.then.i.i

if.then.i105.mtk_wdt_set_timeout.exit.i_crit_edge: ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_wdt_set_timeout.exit.i

if.then.i.i:                                      ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #8
  %div14.i.i = lshr i32 %19, 1
  %26 = ptrtoint ptr %pretimeout.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div14.i.i, ptr %pretimeout.i.i, align 4
  br label %mtk_wdt_set_timeout.exit.i

mtk_wdt_set_timeout.exit.i:                       ; preds = %if.then.i.i, %if.then.i105.mtk_wdt_set_timeout.exit.i_crit_edge
  %27 = ptrtoint ptr %pretimeout.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pretimeout.i.i, align 4
  %sub.i.i = sub i32 %19, %28
  %shl.i.i = shl i32 %sub.i.i, 11
  %or.i.i = or i32 %shl.i.i, 8
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #6, !srcloc !90
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1.i.i.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wdt_base1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wdt_base1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1897463808) #6, !srcloc !90
  br label %mtk_wdt_init.exit

mtk_wdt_init.exit:                                ; preds = %mtk_wdt_set_timeout.exit.i, %watchdog_set_nowayout.exit.mtk_wdt_init.exit_crit_edge
  %status.i106 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i106) #6
  %call38 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end, label %mtk_wdt_init.exit.cleanup_crit_edge, !prof !91

mtk_wdt_init.exit.cleanup_crit_edge:              ; preds = %mtk_wdt_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %mtk_wdt_init.exit
  %34 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timeout, align 4
  %36 = load i8, ptr @nowayout, align 1, !range !86
  %37 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %35, i32 noundef %37) #9
  %call47 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %do.end.if.end54_crit_edge, label %if.then49

do.end.if.end54_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then49:                                        ; preds = %do.end
  %38 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call47, align 4
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %41, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @toprgu_register_reset_controller.__key, i16 noundef signext 3) #6
  %rcdev.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %41, i32 0, i32 3
  %owner.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %41, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %owner.i, align 4
  %nr_resets.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %41, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %nr_resets.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %nr_resets.i, align 4
  %44 = ptrtoint ptr %rcdev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @toprgu_reset_ops, ptr %rcdev.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %45 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node.i, align 8
  %of_node5.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %41, i32 0, i32 3, i32 5
  %47 = ptrtoint ptr %of_node5.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %of_node5.i, align 4
  %call8.i = tail call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef %rcdev.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not.i, label %if.then49.if.end54_crit_edge, label %toprgu_register_reset_controller.exit

if.then49.if.end54_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

toprgu_register_reset_controller.exit:            ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call8.i) #9
  br label %cleanup

if.end54:                                         ; preds = %if.then49.if.end54_crit_edge, %do.end.if.end54_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call.i107 = tail call ptr @of_find_property(ptr noundef %49, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i107, null
  %disable_wdt_extrst = getelementptr inbounds %struct.mtk_wdt_dev, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %50 = ptrtoint ptr %disable_wdt_extrst to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool, ptr %disable_wdt_extrst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %toprgu_register_reset_controller.exit, %mtk_wdt_init.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ 0, %if.end54 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i102, %if.then10.cleanup_crit_edge ], [ -517, %if.else.cleanup_crit_edge ], [ %call38, %mtk_wdt_init.exit.cleanup_crit_edge ], [ %call8.i, %toprgu_register_reset_controller.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_isr(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @watchdog_notify_pretimeout(ptr noundef %arg) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_start(ptr nocapture noundef %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %pretimeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 8
  %6 = ptrtoint ptr %pretimeout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pretimeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.mtk_wdt_set_timeout.exit_crit_edge, label %if.then.i

entry.mtk_wdt_set_timeout.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_wdt_set_timeout.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div14.i = lshr i32 %5, 1
  %8 = ptrtoint ptr %pretimeout.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div14.i, ptr %pretimeout.i, align 4
  br label %mtk_wdt_set_timeout.exit

mtk_wdt_set_timeout.exit:                         ; preds = %if.then.i, %entry.mtk_wdt_set_timeout.exit_crit_edge
  %9 = ptrtoint ptr %pretimeout.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pretimeout.i, align 4
  %sub.i = sub i32 %5, %10
  %shl.i = shl i32 %sub.i, 11
  %or.i = or i32 %shl.i, 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !90
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1.i.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wdt_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wdt_base1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1897463808) #6, !srcloc !90
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %17 = ptrtoint ptr %pretimeout.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pretimeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %19 = and i32 %16, -1207959553
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %masksel = select i1 %tobool.not, i32 0, i32 72
  %reg.0 = or i32 %masksel, %20
  %disable_wdt_extrst = getelementptr inbounds %struct.mtk_wdt_dev, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %disable_wdt_extrst to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %disable_wdt_extrst, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not = icmp eq i8 %22, 0
  %and8 = and i32 %reg.0, -570425350
  %reg.1 = select i1 %tobool6.not, i32 %reg.0, i32 %and8
  %or10 = or i32 %reg.1, 570425345
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or10) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %23) #6, !srcloc !90
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %5 = and i32 %4, -16777251
  %6 = or i32 %5, 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %6) #6, !srcloc !90
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_ping(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1897463808) #6, !srcloc !90
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_set_timeout(ptr nocapture noundef %wdt_dev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %timeout2 = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %4 = ptrtoint ptr %timeout2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %timeout, ptr %timeout2, align 4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 8
  %5 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pretimeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div14 = lshr i32 %timeout, 1
  %7 = ptrtoint ptr %pretimeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div14, ptr %pretimeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pretimeout, align 4
  %sub = sub i32 %timeout, %9
  %shl = shl i32 %sub, 11
  %or = or i32 %shl, 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !90
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wdt_base1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wdt_base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1897463808) #6, !srcloc !90
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_set_pretimeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !87
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  %pretimeout8 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %6 = ptrtoint ptr %pretimeout8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pretimeout8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true7.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool9.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %timeout4 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %8 = ptrtoint ptr %timeout4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout4, align 4
  %div32 = lshr i32 %9, 1
  %10 = ptrtoint ptr %pretimeout8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div32, ptr %pretimeout8, align 4
  %or = or i32 %5, 72
  br label %if.end13

land.lhs.true7.critedge:                          ; preds = %entry
  br i1 %tobool9.not, label %land.lhs.true7.critedge.cleanup_crit_edge, label %if.then10

land.lhs.true7.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %pretimeout8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pretimeout8, align 4
  %and = and i32 %5, -73
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then
  %reg.0 = phi i32 [ %and, %if.then10 ], [ %or, %if.then ]
  %or14 = or i32 %reg.0, 570425344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or14) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %12) #6, !srcloc !90
  %timeout16 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %13 = ptrtoint ptr %timeout16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout16, align 4
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wdt_base1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wdt_base1.i, align 4
  %pretimeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %19 = ptrtoint ptr %pretimeout.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pretimeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end13.mtk_wdt_set_timeout.exit_crit_edge, label %if.then.i

if.end13.mtk_wdt_set_timeout.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_wdt_set_timeout.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %div14.i = lshr i32 %14, 1
  %21 = ptrtoint ptr %pretimeout.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div14.i, ptr %pretimeout.i, align 4
  br label %mtk_wdt_set_timeout.exit

mtk_wdt_set_timeout.exit:                         ; preds = %if.then.i, %if.end13.mtk_wdt_set_timeout.exit_crit_edge
  %22 = ptrtoint ptr %pretimeout.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pretimeout.i, align 4
  %sub.i = sub i32 %14, %23
  %shl.i = shl i32 %sub.i, 11
  %or.i = or i32 %shl.i, 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #6, !srcloc !90
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1.i.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wdt_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wdt_base1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1897463808) #6, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %mtk_wdt_set_timeout.exit, %land.lhs.true7.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_restart(ptr nocapture noundef readonly %wdt_dev, i32 noundef %action, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdt_base1 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdt_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_base1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 152174592) #6, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  br label %while.cond
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toprgu_reset(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i.i = getelementptr i8, ptr %rcdev, i32 -44
  %call4.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #6
  %wdt_base.i.i = getelementptr i8, ptr %rcdev, i32 -48
  %0 = ptrtoint ptr %wdt_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdt_base.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #6, !srcloc !87
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %shl.i.i = shl nuw i32 1, %id
  %or.i.i = or i32 %shl.i.i, %3
  %or12.i.i = or i32 %or.i.i, -2013265920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i) #6
  %5 = ptrtoint ptr %wdt_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wdt_base.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 %4) #6, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call4.i.i) #6
  %call4.i.i6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #6
  %7 = ptrtoint ptr %wdt_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdt_base.i.i, align 4
  %add.ptr7.i.i8 = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i8) #6, !srcloc !87
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %10, %neg.i.i
  %or12.i.i10 = or i32 %and.i.i, -2013265920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i10) #6
  %12 = ptrtoint ptr %wdt_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdt_base.i.i, align 4
  %add.ptr17.i.i11 = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i11, i32 %11) #6, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call4.i.i6) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toprgu_reset_assert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr i8, ptr %rcdev, i32 -44
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %wdt_base.i = getelementptr i8, ptr %rcdev, i32 -48
  %0 = ptrtoint ptr %wdt_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdt_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !87
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %shl.i = shl nuw i32 1, %id
  %or.i = or i32 %shl.i, %3
  %or12.i = or i32 %or.i, -2013265920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #6
  %5 = ptrtoint ptr %wdt_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wdt_base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %4) #6, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toprgu_reset_deassert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr i8, ptr %rcdev, i32 -44
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %wdt_base.i = getelementptr i8, ptr %rcdev, i32 -48
  %0 = ptrtoint ptr %wdt_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdt_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !87
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %shl.i = shl nuw i32 1, %id
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  %or12.i = or i32 %and.i, -2013265920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #6
  %5 = ptrtoint ptr %wdt_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wdt_base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %4) #6, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %wdt_base1.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wdt_base1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wdt_base1.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %9 = and i32 %8, -16777251
  %10 = or i32 %9, 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %10) #6, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_wdt_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @mtk_wdt_start(ptr noundef %1)
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %wdt_base1.i = getelementptr inbounds %struct.mtk_wdt_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wdt_base1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wdt_base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1897463808) #6, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !46, !48, !50, !52, !53, !55, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_mtk_wdt__187_442_mtk_wdt_driver_init6, !1, !"__initcall__kmod_mtk_wdt__187_442_mtk_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/mtk_wdt.c", i32 442, i32 1}
!2 = !{ptr @__exitcall_mtk_wdt_driver_exit, !1, !"__exitcall_mtk_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_timeout, !4, !"__param_timeout", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/mtk_wdt.c", i32 444, i32 1}
!5 = !{ptr @__UNIQUE_ID_timeouttype188, !4, !"__UNIQUE_ID_timeouttype188", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_timeout189, !7, !"__UNIQUE_ID_timeout189", i1 false, i1 false}
!7 = !{!"../drivers/watchdog/mtk_wdt.c", i32 445, i32 1}
!8 = !{ptr @__param_nowayout, !9, !"__param_nowayout", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/mtk_wdt.c", i32 447, i32 1}
!10 = !{ptr @__UNIQUE_ID_nowayouttype190, !9, !"__UNIQUE_ID_nowayouttype190", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_nowayout191, !12, !"__UNIQUE_ID_nowayout191", i1 false, i1 false}
!12 = !{!"../drivers/watchdog/mtk_wdt.c", i32 448, i32 1}
!13 = !{ptr @__UNIQUE_ID_file192, !14, !"__UNIQUE_ID_file192", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/mtk_wdt.c", i32 451, i32 1}
!15 = !{ptr @__UNIQUE_ID_license193, !14, !"__UNIQUE_ID_license193", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author194, !17, !"__UNIQUE_ID_author194", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/mtk_wdt.c", i32 452, i32 1}
!18 = !{ptr @__UNIQUE_ID_description195, !19, !"__UNIQUE_ID_description195", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/mtk_wdt.c", i32 453, i32 1}
!20 = !{ptr @__UNIQUE_ID_version196, !21, !"__UNIQUE_ID_version196", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/mtk_wdt.c", i32 454, i32 1}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__modver_attr, !21, !"__modver_attr", i1 false, i1 false}
!26 = !{ptr @timeout, !27, !"timeout", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/mtk_wdt.c", i32 61, i32 21}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/mtk_wdt.c", i32 436, i32 12}
!30 = !{ptr @mtk_wdt_driver, !31, !"mtk_wdt_driver", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/mtk_wdt.c", i32 433, i32 31}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/mtk_wdt.c", i32 344, i32 59}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/mtk_wdt.c", i32 377, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mtk_wdt_probe._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @mtk_wdt_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/mtk_wdt.c", i32 389, i32 39}
!44 = !{ptr @mtk_wdt_pt_info, !45, !"mtk_wdt_pt_info", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/mtk_wdt.c", i32 307, i32 35}
!46 = !{ptr @mtk_wdt_info, !47, !"mtk_wdt_info", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/mtk_wdt.c", i32 300, i32 35}
!48 = !{ptr @mtk_wdt_ops, !49, !"mtk_wdt_ops", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/mtk_wdt.c", i32 315, i32 34}
!50 = !{ptr @toprgu_register_reset_controller.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/mtk_wdt.c", i32 150, i32 2}
!52 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/mtk_wdt.c", i32 158, i32 3}
!55 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @toprgu_register_reset_controller._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @toprgu_register_reset_controller._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @toprgu_reset_ops, !60, !"toprgu_reset_ops", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/mtk_wdt.c", i32 138, i32 39}
!61 = !{ptr @mtk_wdt_dt_ids, !62, !"mtk_wdt_dt_ids", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/mtk_wdt.c", i32 418, i32 34}
!63 = !{ptr @mt2712_data, !64, !"mt2712_data", i1 false, i1 false}
!64 = !{!"../drivers/watchdog/mtk_wdt.c", i32 75, i32 34}
!65 = !{ptr @mt8183_data, !66, !"mt8183_data", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/mtk_wdt.c", i32 79, i32 34}
!67 = !{ptr @mt8192_data, !68, !"mt8192_data", i1 false, i1 false}
!68 = !{!"../drivers/watchdog/mtk_wdt.c", i32 83, i32 34}
!69 = !{ptr @mt8195_data, !70, !"mt8195_data", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/mtk_wdt.c", i32 87, i32 34}
!71 = !{ptr @mtk_wdt_pm_ops, !72, !"mtk_wdt_pm_ops", i1 false, i1 false}
!72 = !{!"../drivers/watchdog/mtk_wdt.c", i32 428, i32 32}
!73 = !{ptr @__param_str_timeout, !4, !"__param_str_timeout", i1 false, i1 false}
!74 = !{ptr @__param_str_nowayout, !9, !"__param_str_nowayout", i1 false, i1 false}
!75 = !{ptr @nowayout, !76, !"nowayout", i1 false, i1 false}
!76 = !{!"../drivers/watchdog/mtk_wdt.c", i32 60, i32 13}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i8 0, i8 2}
!87 = !{i64 2992407}
!88 = !{i64 2153181414}
!89 = !{i64 2150534111}
!90 = !{i64 2991989}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2150532756}
!93 = !{i64 2153182004}
!94 = !{i64 2153179372}
!95 = !{i64 2153176574}
!96 = !{i64 2153176962}
