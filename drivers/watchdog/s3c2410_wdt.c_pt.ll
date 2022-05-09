; ModuleID = '/llk/IR_all_yes/drivers/watchdog/s3c2410_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/s3c2410_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.s3c2410_wdt_variant = type { i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s3c2410_wdt = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, %struct.watchdog_device, %struct.notifier_block, ptr, ptr }

@__param_str_tmr_margin = internal constant [23 x i8] c"s3c2410_wdt.tmr_margin\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tmr_margin = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tmr_margin = internal constant %struct.kernel_param { ptr @__param_str_tmr_margin, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @tmr_margin } }, section "__param", align 4
@__UNIQUE_ID_tmr_margintype203 = internal constant [36 x i8] c"s3c2410_wdt.parmtype=tmr_margin:int\00", section ".modinfo", align 1
@__param_str_tmr_atboot = internal constant [23 x i8] c"s3c2410_wdt.tmr_atboot\00", align 1
@tmr_atboot = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tmr_atboot = internal constant %struct.kernel_param { ptr @__param_str_tmr_atboot, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @tmr_atboot } }, section "__param", align 4
@__UNIQUE_ID_tmr_atboottype204 = internal constant [36 x i8] c"s3c2410_wdt.parmtype=tmr_atboot:int\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"s3c2410_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype205 = internal constant [35 x i8] c"s3c2410_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__param_str_soft_noboot = internal constant [24 x i8] c"s3c2410_wdt.soft_noboot\00", align 1
@soft_noboot = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_soft_noboot = internal constant %struct.kernel_param { ptr @__param_str_soft_noboot, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @soft_noboot } }, section "__param", align 4
@__UNIQUE_ID_soft_noboottype206 = internal constant [37 x i8] c"s3c2410_wdt.parmtype=soft_noboot:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tmr_margin207 = internal constant [75 x i8] c"s3c2410_wdt.parm=tmr_margin:Watchdog tmr_margin in seconds. (default=(15))\00", section ".modinfo", align 1
@__UNIQUE_ID_tmr_atboot208 = internal constant [86 x i8] c"s3c2410_wdt.parm=tmr_atboot:Watchdog is started at boot time if set to 1, default=(0)\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout209 = internal constant [78 x i8] c"s3c2410_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__UNIQUE_ID_soft_noboot210 = internal constant [98 x i8] c"s3c2410_wdt.parm=soft_noboot:Watchdog action, set to 1 to ignore reboots, 0 to reboot (default 0)\00", section ".modinfo", align 1
@__initcall__kmod_s3c2410_wdt__214_905_s3c2410wdt_driver_init6 = internal global ptr @s3c2410wdt_driver_init, section ".initcall6.init", align 4
@s3c2410wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c2410wdt_probe, ptr @s3c2410wdt_remove, ptr @s3c2410wdt_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c2410_wdt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c2410wdt_pm_ops, ptr null, ptr null }, ptr @s3c2410_wdt_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s3c2410wdt_driver_exit = internal global ptr @s3c2410wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author215 = internal constant [92 x i8] c"s3c2410_wdt.author=Ben Dooks <ben@simtec.co.uk>, Dimitry Andric <dimitry.andric@tomtom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description216 = internal constant [55 x i8] c"s3c2410_wdt.description=S3C2410 Watchdog Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file217 = internal constant [46 x i8] c"s3c2410_wdt.file=drivers/watchdog/s3c2410_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license218 = internal constant [24 x i8] c"s3c2410_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c2410-wdt\00", [20 x i8] zeroinitializer }, align 32
@s3c2410_wdt_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_s3c2410 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_s3c6410 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_exynos5250 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_exynos5420 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_exynos7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos850-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_exynos850_cl0 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@s3c2410wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s3c2410wdt_suspend, ptr @s3c2410wdt_resume, ptr @s3c2410wdt_suspend, ptr @s3c2410wdt_resume, ptr @s3c2410wdt_suspend, ptr @s3c2410wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3c2410_wdt_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2410-wdt\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @drv_data_s3c2410 to i32) }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&wdt->lock\00", [21 x i8] zeroinitializer }, align 32
@s3c2410_wdd = internal constant { %struct.watchdog_device, [52 x i8] } { %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @s3c2410_wdt_ident, ptr @s3c2410wdt_ops, ptr null, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,syscon-phandle\00", [41 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 684, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"syscon regmap lookup failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c2410wdt_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/s3c2410_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry_ptr = internal global ptr @s3c2410wdt_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 700, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find bus clock\0A\00", [38 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry_ptr.11 = internal global ptr @s3c2410wdt_probe._entry.9, section ".printk_index", align 4
@s3c2410wdt_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 706, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable bus clock\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry_ptr.14 = internal global ptr @s3c2410wdt_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"watchdog_src\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get source clock\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 724, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable source clock\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry_ptr.19 = internal global ptr @s3c2410wdt_probe._entry.17, section ".printk_index", align 4
@s3c2410wdt_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 733, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register cpufreq\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry_ptr.22 = internal global ptr @s3c2410wdt_probe._entry.20, section ".printk_index", align 4
@s3c2410wdt_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 750, ptr @.str.25, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tmr_margin value out of range, default %d used\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry_ptr.26 = internal global ptr @s3c2410wdt_probe._entry.23, section ".printk_index", align 4
@s3c2410wdt_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 752, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to use default timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry_ptr.29 = internal global ptr @s3c2410wdt_probe._entry.27, section ".printk_index", align 4
@s3c2410wdt_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 760, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to install irq (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry_ptr.32 = internal global ptr @s3c2410wdt_probe._entry.30, section ".printk_index", align 4
@s3c2410wdt_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.4, ptr @.str.5, i32 778, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"starting watchdog timer\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry_ptr.36 = internal global ptr @s3c2410wdt_probe._entry.33, section ".printk_index", align 4
@s3c2410wdt_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.5, i32 802, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"watchdog %sactive, reset %sabled, irq %sabled\0A\00", [49 x i8] zeroinitializer }, align 32
@s3c2410wdt_probe._entry_ptr.39 = internal global ptr @s3c2410wdt_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@s3c2410_wdt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"S3C2410 Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@s3c2410wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @s3c2410wdt_start, ptr @s3c2410wdt_stop, ptr @s3c2410wdt_keepalive, ptr null, ptr @s3c2410wdt_set_heartbeat, ptr null, ptr null, ptr @s3c2410wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@drv_data_exynos850_cl0 = internal constant { %struct.s3c2410_wdt_variant, [60 x i8] } { %struct.s3c2410_wdt_variant { i32 0, i32 4676, i8 1, i32 2, i32 1028, i32 24, i32 4640, i32 7, i32 23 }, [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung,cluster-index\00", [42 x i8] zeroinitializer }, align 32
@s3c2410_get_wdt_drv_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 641, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get cluster index\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s3c2410_get_wdt_drv_data\00", [39 x i8] zeroinitializer }, align 32
@s3c2410_get_wdt_drv_data._entry_ptr = internal global ptr @s3c2410_get_wdt_drv_data._entry, section ".printk_index", align 4
@drv_data_exynos850_cl1 = internal constant { %struct.s3c2410_wdt_variant, [60 x i8] } { %struct.s3c2410_wdt_variant { i32 0, i32 5700, i8 1, i32 2, i32 1028, i32 23, i32 5664, i32 7, i32 23 }, [60 x i8] zeroinitializer }, align 32
@s3c2410_get_wdt_drv_data._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.5, i32 651, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wrong cluster index: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@s3c2410_get_wdt_drv_data._entry_ptr.49 = internal global ptr @s3c2410_get_wdt_drv_data._entry.47, section ".printk_index", align 4
@s3c2410wdt_set_heartbeat.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.5, ptr @.str.52, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c2410_wdt\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s3c2410wdt_set_heartbeat\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Heartbeat: count=%d, timeout=%d, freq=%lu\0A\00", [53 x i8] zeroinitializer }, align 32
@s3c2410wdt_set_heartbeat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.5, i32 448, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"timeout %d too big\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c2410wdt_set_heartbeat._entry_ptr = internal global ptr @s3c2410wdt_set_heartbeat._entry, section ".printk_index", align 4
@s3c2410wdt_set_heartbeat.__UNIQUE_ID_ddebug213 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.5, ptr @.str.54, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Heartbeat: timeout=%d, divisor=%d, count=%d (%08x)\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c2410wdt_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 525, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"watchdog timer expired (irq)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2410wdt_irq\00", [17 x i8] zeroinitializer }, align 32
@s3c2410wdt_irq._entry_ptr = internal global ptr @s3c2410wdt_irq._entry, section ".printk_index", align 4
@s3c2410wdt_get_bootstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.5, i32 612, ptr @.str.25, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't get RST_STAT register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c2410wdt_get_bootstatus\00", [38 x i8] zeroinitializer }, align 32
@s3c2410wdt_get_bootstatus._entry_ptr = internal global ptr @s3c2410wdt_get_bootstatus._entry, section ".printk_index", align 4
@s3c2410wdt_start.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c2410wdt_start\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Starting watchdog: count=0x%08x, wtcon=%08lx\0A\00", [50 x i8] zeroinitializer }, align 32
@s3c2410wdt_disable_wdt_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 295, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to update reg(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s3c2410wdt_disable_wdt_reset\00", [35 x i8] zeroinitializer }, align 32
@s3c2410wdt_disable_wdt_reset._entry_ptr = internal global ptr @s3c2410wdt_disable_wdt_reset._entry, section ".printk_index", align 4
@s3c2410wdt_mask_wdt_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.63, ptr @.str.5, i32 310, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c2410wdt_mask_wdt_reset\00", [38 x i8] zeroinitializer }, align 32
@s3c2410wdt_mask_wdt_reset._entry_ptr = internal global ptr @s3c2410wdt_mask_wdt_reset._entry, section ".printk_index", align 4
@s3c2410wdt_enable_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.64, ptr @.str.5, i32 324, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c2410wdt_enable_counter\00", [38 x i8] zeroinitializer }, align 32
@s3c2410wdt_enable_counter._entry_ptr = internal global ptr @s3c2410wdt_enable_counter._entry, section ".printk_index", align 4
@drv_data_s3c2410 = internal constant { %struct.s3c2410_wdt_variant, [60 x i8] } zeroinitializer, align 32
@drv_data_s3c6410 = internal constant { %struct.s3c2410_wdt_variant, [60 x i8] } { %struct.s3c2410_wdt_variant { i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 }, [60 x i8] zeroinitializer }, align 32
@drv_data_exynos5250 = internal constant { %struct.s3c2410_wdt_variant, [60 x i8] } { %struct.s3c2410_wdt_variant { i32 1032, i32 1036, i8 0, i32 20, i32 1028, i32 20, i32 0, i32 0, i32 15 }, [60 x i8] zeroinitializer }, align 32
@drv_data_exynos5420 = internal constant { %struct.s3c2410_wdt_variant, [60 x i8] } { %struct.s3c2410_wdt_variant { i32 1032, i32 1036, i8 0, i32 0, i32 1028, i32 9, i32 0, i32 0, i32 15 }, [60 x i8] zeroinitializer }, align 32
@drv_data_exynos7 = internal constant { %struct.s3c2410_wdt_variant, [60 x i8] } { %struct.s3c2410_wdt_variant { i32 1032, i32 1036, i8 0, i32 23, i32 1028, i32 23, i32 0, i32 0, i32 15 }, [60 x i8] zeroinitializer }, align 32
@s3c2410wdt_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 884, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"watchdog %sabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c2410wdt_resume\00", [46 x i8] zeroinitializer }, align 32
@s3c2410wdt_resume._entry_ptr = internal global ptr @s3c2410wdt_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"tmr_margin\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 113, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"tmr_atboot\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 114, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 112, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"soft_noboot\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 115, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"s3c2410wdt_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 893, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 899, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"s3c2410_wdt_match\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 239, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"s3c2410wdt_pm_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 890, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"s3c2410_wdt_ids\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 257, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 673, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"s3c2410_wdd\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 513, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 682, i32 7 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 684, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 698, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 700, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 706, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 714, i32 44 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 717, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 724, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 733, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 749, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 752, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 760, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 778, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 799, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [18 x i8] c"s3c2410_wdt_ident\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 498, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"s3c2410wdt_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 504, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"drv_data_exynos850_cl0\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 215, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 639, i32 9 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 641, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant [23 x i8] c"drv_data_exynos850_cl1\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 227, i32 41 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 651, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 436, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 448, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 453, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 525, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 612, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 405, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 295, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 310, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 324, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"drv_data_s3c2410\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 176, i32 41 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"drv_data_s3c6410\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 181, i32 41 }
@___asan_gen_.304 = private unnamed_addr constant [20 x i8] c"drv_data_exynos5250\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 185, i32 41 }
@___asan_gen_.307 = private unnamed_addr constant [20 x i8] c"drv_data_exynos5420\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 195, i32 41 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"drv_data_exynos7\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 205, i32 41 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [34 x i8] c"../drivers/watchdog/s3c2410_wdt.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 883, i32 2 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author215, ptr @__UNIQUE_ID_description216, ptr @__UNIQUE_ID_file217, ptr @__UNIQUE_ID_license218, ptr @__UNIQUE_ID_nowayout209, ptr @__UNIQUE_ID_nowayouttype205, ptr @__UNIQUE_ID_soft_noboot210, ptr @__UNIQUE_ID_soft_noboottype206, ptr @__UNIQUE_ID_tmr_atboot208, ptr @__UNIQUE_ID_tmr_atboottype204, ptr @__UNIQUE_ID_tmr_margin207, ptr @__UNIQUE_ID_tmr_margintype203, ptr @__exitcall_s3c2410wdt_driver_exit, ptr @__initcall__kmod_s3c2410_wdt__214_905_s3c2410wdt_driver_init6, ptr @__param_nowayout, ptr @__param_soft_noboot, ptr @__param_tmr_atboot, ptr @__param_tmr_margin, ptr @s3c2410_get_wdt_drv_data._entry, ptr @s3c2410_get_wdt_drv_data._entry.47, ptr @s3c2410_get_wdt_drv_data._entry_ptr, ptr @s3c2410_get_wdt_drv_data._entry_ptr.49, ptr @s3c2410wdt_disable_wdt_reset._entry, ptr @s3c2410wdt_disable_wdt_reset._entry_ptr, ptr @s3c2410wdt_driver_exit, ptr @s3c2410wdt_enable_counter._entry, ptr @s3c2410wdt_enable_counter._entry_ptr, ptr @s3c2410wdt_get_bootstatus._entry, ptr @s3c2410wdt_get_bootstatus._entry_ptr, ptr @s3c2410wdt_irq._entry, ptr @s3c2410wdt_irq._entry_ptr, ptr @s3c2410wdt_mask_wdt_reset._entry, ptr @s3c2410wdt_mask_wdt_reset._entry_ptr, ptr @s3c2410wdt_probe._entry, ptr @s3c2410wdt_probe._entry.12, ptr @s3c2410wdt_probe._entry.17, ptr @s3c2410wdt_probe._entry.20, ptr @s3c2410wdt_probe._entry.23, ptr @s3c2410wdt_probe._entry.27, ptr @s3c2410wdt_probe._entry.30, ptr @s3c2410wdt_probe._entry.33, ptr @s3c2410wdt_probe._entry.37, ptr @s3c2410wdt_probe._entry.9, ptr @s3c2410wdt_probe._entry_ptr, ptr @s3c2410wdt_probe._entry_ptr.11, ptr @s3c2410wdt_probe._entry_ptr.14, ptr @s3c2410wdt_probe._entry_ptr.19, ptr @s3c2410wdt_probe._entry_ptr.22, ptr @s3c2410wdt_probe._entry_ptr.26, ptr @s3c2410wdt_probe._entry_ptr.29, ptr @s3c2410wdt_probe._entry_ptr.32, ptr @s3c2410wdt_probe._entry_ptr.36, ptr @s3c2410wdt_probe._entry_ptr.39, ptr @s3c2410wdt_resume._entry, ptr @s3c2410wdt_resume._entry_ptr, ptr @s3c2410wdt_set_heartbeat._entry, ptr @s3c2410wdt_set_heartbeat._entry_ptr, ptr @tmr_margin, ptr @tmr_atboot, ptr @nowayout, ptr @soft_noboot, ptr @s3c2410wdt_driver, ptr @.str, ptr @s3c2410_wdt_match, ptr @s3c2410wdt_pm_ops, ptr @s3c2410_wdt_ids, ptr @s3c2410wdt_probe.__key, ptr @.str.1, ptr @s3c2410_wdd, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @s3c2410_wdt_ident, ptr @s3c2410wdt_ops, ptr @drv_data_exynos850_cl0, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @drv_data_exynos850_cl1, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @drv_data_s3c2410, ptr @drv_data_s3c6410, ptr @drv_data_exynos5250, ptr @drv_data_exynos5420, ptr @drv_data_exynos7, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmr_margin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmr_atboot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_noboot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_wdt_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_wdt_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_wdd to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_wdt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_data_exynos850_cl0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_get_wdt_drv_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_data_exynos850_cl1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_get_wdt_drv_data._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_set_heartbeat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_get_bootstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_disable_wdt_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_mask_wdt_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_enable_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_data_s3c2410 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_data_s3c6410 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_data_exynos5250 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_data_exynos5420 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_data_exynos7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410wdt_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c2410wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c2410wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rst_stat.i = alloca i32, align 4
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 200, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @s3c2410wdt_probe.__key, i16 noundef signext 3) #6
  %wdt_device = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 8
  %1 = call ptr @memcpy(ptr %wdt_device, ptr @s3c2410_wdd, i32 108)
  %call.i239 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool.not.i = icmp eq ptr %call.i239, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data.i, align 4
  %6 = inttoptr i32 %5 to ptr
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %variant.0.i = phi ptr [ %call.i239, %if.end.if.end.i_crit_edge ], [ %6, %if.then.i ]
  %cmp.i = icmp eq ptr %variant.0.i, @drv_data_exynos850_cl0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.s3c2410_get_wdt_drv_data.exit_crit_edge

if.end.i.s3c2410_get_wdt_drv_data.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_get_wdt_drv_data.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #6
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %index.i, align 4, !annotation !197
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.44, ptr noundef nonnull %index.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45) #9
  br label %cleanup.i

if.end6.i:                                        ; preds = %if.then2.i
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end10.i [
    i32 0, label %if.end6.i.cleanup.i_crit_edge
    i32 1, label %sw.bb7.i
  ]

if.end6.i.cleanup.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

sw.bb7.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

do.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48, i32 noundef %11) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end10.i, %sw.bb7.i, %if.end6.i.cleanup.i_crit_edge, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ null, %do.end10.i ], [ @drv_data_exynos850_cl1, %sw.bb7.i ], [ @drv_data_exynos850_cl0, %if.end6.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #6
  br label %s3c2410_get_wdt_drv_data.exit

s3c2410_get_wdt_drv_data.exit:                    ; preds = %cleanup.i, %if.end.i.s3c2410_get_wdt_drv_data.exit_crit_edge
  %retval.1.i = phi ptr [ %retval.0.i, %cleanup.i ], [ %variant.0.i, %if.end.i.s3c2410_get_wdt_drv_data.exit_crit_edge ]
  %drv_data = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.1.i, ptr %drv_data, align 4
  %tobool6.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool6.not, label %s3c2410_get_wdt_drv_data.exit.cleanup_crit_edge, label %if.end8

s3c2410_get_wdt_drv_data.exit.cleanup_crit_edge:  ; preds = %s3c2410_get_wdt_drv_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %s3c2410_get_wdt_drv_data.exit
  %quirks = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %retval.1.i, i32 0, i32 8
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 4
  %and = and i32 %15, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end8.if.end22_crit_edge, label %if.then11

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then11:                                        ; preds = %if.end8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call12 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %17, ptr noundef nonnull @.str.2) #6
  %pmureg = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %pmureg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call12, ptr %pmureg, align 4
  %cmp.i240 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %do.end18, label %if.then11.if.end22_crit_edge

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end18:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  %19 = ptrtoint ptr %pmureg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pmureg, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.then11.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  %call23 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %call26 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %reg_base = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call26, ptr %reg_base, align 4
  %cmp.i241 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %call33 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #6
  %bus_clk = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call33, ptr %bus_clk, align 4
  %cmp.i242 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  %25 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus_clk, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %call.i243 = call i32 @clk_prepare(ptr noundef %call33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool.not.i244 = icmp eq i32 %call.i243, 0
  br i1 %tobool.not.i244, label %if.end.i245, label %if.end42.clk_prepare_enable.exit_crit_edge

if.end42.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i245:                                      ; preds = %if.end42
  %call1.i = call i32 @clk_enable(ptr noundef %call33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i245.if.end50_crit_edge, label %if.then3.i

if.end.i245.if.end50_crit_edge:                   ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then3.i:                                       ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call33) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end42.clk_prepare_enable.exit_crit_edge
  %retval.0.i246 = phi i32 [ %call.i243, %if.end42.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i246)
  %cmp45 = icmp slt i32 %retval.0.i246, 0
  br i1 %cmp45, label %do.end49, label %clk_prepare_enable.exit.if.end50_crit_edge

clk_prepare_enable.exit.if.end50_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end49:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end50:                                         ; preds = %clk_prepare_enable.exit.if.end50_crit_edge, %if.end.i245.if.end50_crit_edge
  %call51 = call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.15) #6
  %src_clk = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %src_clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call51, ptr %src_clk, align 4
  %cmp.i248 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.then54, label %if.end60

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call51 to i32
  %call57 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %29, ptr noundef nonnull @.str.16) #6
  %30 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src_clk, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %err_bus_clk

if.end60:                                         ; preds = %if.end50
  %call.i249 = call i32 @clk_prepare(ptr noundef %call51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool.not.i250 = icmp eq i32 %call.i249, 0
  br i1 %tobool.not.i250, label %if.end.i253, label %if.end60.do.end67_crit_edge

if.end60.do.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.end.i253:                                      ; preds = %if.end60
  %call1.i251 = call i32 @clk_enable(ptr noundef %call51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i251)
  %tobool2.not.i252 = icmp eq i32 %call1.i251, 0
  br i1 %tobool2.not.i252, label %if.end68, label %if.then3.i254

if.then3.i254:                                    ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call51) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then3.i254, %if.end60.do.end67_crit_edge
  %retval.0.i255.ph = phi i32 [ %call1.i251, %if.then3.i254 ], [ %call.i249, %if.end60.do.end67_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %err_bus_clk

if.end68:                                         ; preds = %if.end.i253
  %min_timeout = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 8, i32 9
  %33 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %min_timeout, align 4
  %34 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src_clk, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end68.s3c2410wdt_max_timeout.exit_crit_edge

if.end68.s3c2410wdt_max_timeout.exit_crit_edge:   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410wdt_max_timeout.exit

cond.false.i.i:                                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus_clk, align 4
  br label %s3c2410wdt_max_timeout.exit

s3c2410wdt_max_timeout.exit:                      ; preds = %cond.false.i.i, %if.end68.s3c2410wdt_max_timeout.exit_crit_edge
  %cond.i.i = phi ptr [ %37, %cond.false.i.i ], [ %35, %if.end68.s3c2410wdt_max_timeout.exit_crit_edge ]
  %call.i.i = call i32 @clk_get_rate(ptr noundef %cond.i.i) #6
  %div14.i = lshr i32 %call.i.i, 15
  %div2.i = udiv i32 65535, %div14.i
  %max_timeout = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 8, i32 10
  %38 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div2.i, ptr %max_timeout, align 4
  %driver_data.i258 = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 8, i32 16
  %39 = ptrtoint ptr %driver_data.i258 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i258, align 4
  %40 = load i32, ptr @tmr_margin, align 4
  %call81 = call i32 @watchdog_init_timeout(ptr noundef %wdt_device, i32 noundef %40, ptr noundef %dev1) #6
  %timeout = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 8, i32 7
  %41 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %timeout, align 4
  %call84 = call i32 @s3c2410wdt_set_heartbeat(ptr noundef %wdt_device, i32 noundef %42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %s3c2410wdt_max_timeout.exit.if.end98_crit_edge, label %if.then86

s3c2410wdt_max_timeout.exit.if.end98_crit_edge:   ; preds = %s3c2410wdt_max_timeout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then86:                                        ; preds = %s3c2410wdt_max_timeout.exit
  %call88 = call i32 @s3c2410wdt_set_heartbeat(ptr noundef %wdt_device, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %do.end93, label %do.end96

do.end93:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef 15) #9
  br label %if.end98

do.end96:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #9
  br label %err_cpufreq

if.end98:                                         ; preds = %do.end93, %s3c2410wdt_max_timeout.exit.if.end98_crit_edge
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 8
  %call.i259 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call23, ptr noundef nonnull @s3c2410wdt_irq, ptr noundef null, i32 noundef 0, ptr noundef %44, ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %cmp100.not = icmp eq i32 %call.i259, 0
  br i1 %cmp100.not, label %if.end105, label %do.end104

do.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call.i259) #9
  br label %err_cpufreq

if.end105:                                        ; preds = %if.end98
  %45 = load i8, ptr @nowayout, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool107.not = icmp eq i8 %45, 0
  br i1 %tobool107.not, label %if.end105.watchdog_set_nowayout.exit_crit_edge, label %if.then.i260

if.end105.watchdog_set_nowayout.exit_crit_edge:   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_set_nowayout.exit

if.then.i260:                                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  %status.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 8, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #6
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i260, %if.end105.watchdog_set_nowayout.exit_crit_edge
  call void @watchdog_set_restart_priority(ptr noundef %wdt_device, i32 noundef 128) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rst_stat.i) #6
  %46 = ptrtoint ptr %rst_stat.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %rst_stat.i, align 4, !annotation !197
  %47 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %drv_data, align 4
  %quirks.i = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i262 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i262, label %watchdog_set_nowayout.exit.s3c2410wdt_get_bootstatus.exit_crit_edge, label %if.end.i265

watchdog_set_nowayout.exit.s3c2410wdt_get_bootstatus.exit_crit_edge: ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410wdt_get_bootstatus.exit

if.end.i265:                                      ; preds = %watchdog_set_nowayout.exit
  %pmureg.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 11
  %51 = ptrtoint ptr %pmureg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pmureg.i, align 4
  %rst_stat_reg.i = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %48, i32 0, i32 4
  %53 = ptrtoint ptr %rst_stat_reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rst_stat_reg.i, align 4
  %call.i263 = call i32 @regmap_read(ptr noundef %52, i32 noundef %54, ptr noundef nonnull %rst_stat.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool2.not.i264 = icmp eq i32 %call.i263, 0
  br i1 %tobool2.not.i264, label %if.else.i, label %do.end.i266

do.end.i266:                                      ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.57) #9
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i265
  %57 = ptrtoint ptr %rst_stat.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rst_stat.i, align 4
  %59 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %drv_data, align 4
  %rst_stat_bit.i = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %rst_stat_bit.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rst_stat_bit.i, align 4
  %shl.i = shl nuw i32 1, %62
  %and5.i = and i32 %shl.i, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i.if.end9.i_crit_edge, label %if.else.i.s3c2410wdt_get_bootstatus.exit_crit_edge

if.else.i.s3c2410wdt_get_bootstatus.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410wdt_get_bootstatus.exit

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i.if.end9.i_crit_edge, %do.end.i266
  br label %s3c2410wdt_get_bootstatus.exit

s3c2410wdt_get_bootstatus.exit:                   ; preds = %if.end9.i, %if.else.i.s3c2410wdt_get_bootstatus.exit_crit_edge, %watchdog_set_nowayout.exit.s3c2410wdt_get_bootstatus.exit_crit_edge
  %retval.0.i267 = phi i32 [ 0, %if.end9.i ], [ 0, %watchdog_set_nowayout.exit.s3c2410wdt_get_bootstatus.exit_crit_edge ], [ 32, %if.else.i.s3c2410wdt_get_bootstatus.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rst_stat.i) #6
  %bootstatus = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 8, i32 6
  %63 = ptrtoint ptr %bootstatus to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %retval.0.i267, ptr %bootstatus, align 4
  %parent = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %dev1, ptr %parent, align 4
  %65 = load i32, ptr @tmr_atboot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool112.not = icmp eq i32 %65, 0
  br i1 %tobool112.not, label %if.else120, label %do.end116

do.end116:                                        ; preds = %s3c2410wdt_get_bootstatus.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.34) #9
  %call118 = call i32 @s3c2410wdt_start(ptr noundef %wdt_device)
  %status = getelementptr inbounds %struct.s3c2410_wdt, ptr %call.i, i32 0, i32 8, i32 18
  call void @_set_bit(i32 noundef 3, ptr noundef %status) #6
  br label %if.end123

if.else120:                                       ; preds = %s3c2410wdt_get_bootstatus.exit
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %driver_data.i258 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_data.i258, align 4
  %lock.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %67, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %reg_base.i.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_base.i.i, align 4
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %71 = and i32 %70, -553648129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  call void @arm_heavy_mb() #6
  %72 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_base.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #6, !srcloc !202
  call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %if.end123

if.end123:                                        ; preds = %if.else120, %do.end116
  %call125 = call i32 @watchdog_register_device(ptr noundef %wdt_device) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %if.end123.err_cpufreq_crit_edge

if.end123.err_cpufreq_crit_edge:                  ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cpufreq

if.end128:                                        ; preds = %if.end123
  %call129 = call fastcc i32 @s3c2410wdt_enable(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %err_unregister, label %if.end132

if.end132:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i269 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %74 = ptrtoint ptr %driver_data.i.i269 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i, ptr %driver_data.i.i269, align 4
  %75 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_base, align 4
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #6, !srcloc !199
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  %and139 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  %cond = select i1 %tobool140.not, ptr @.str.41, ptr @.str.40
  %and141 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  %cond143 = select i1 %tobool142.not, ptr @.str.43, ptr @.str.42
  %and144 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  %cond146 = select i1 %tobool145.not, ptr @.str.43, ptr @.str.42
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond, ptr noundef nonnull %cond143, ptr noundef nonnull %cond146) #9
  br label %cleanup

err_unregister:                                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  call void @watchdog_unregister_device(ptr noundef %wdt_device) #6
  br label %err_cpufreq

err_cpufreq:                                      ; preds = %err_unregister, %if.end123.err_cpufreq_crit_edge, %do.end104, %do.end96
  %ret.0 = phi i32 [ %call.i259, %do.end104 ], [ %call125, %if.end123.err_cpufreq_crit_edge ], [ %call129, %err_unregister ], [ %call88, %do.end96 ]
  %79 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %src_clk, align 4
  call void @clk_disable(ptr noundef %80) #6
  call void @clk_unprepare(ptr noundef %80) #6
  br label %err_bus_clk

err_bus_clk:                                      ; preds = %err_cpufreq, %do.end67, %if.then54
  %ret.2 = phi i32 [ %32, %if.then54 ], [ %retval.0.i255.ph, %do.end67 ], [ %ret.0, %err_cpufreq ]
  %81 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus_clk, align 4
  call void @clk_disable(ptr noundef %82) #6
  call void @clk_unprepare(ptr noundef %82) #6
  br label %cleanup

cleanup:                                          ; preds = %err_bus_clk, %if.end132, %do.end49, %do.end39, %if.then29, %if.end22.cleanup_crit_edge, %do.end18, %s3c2410_get_wdt_drv_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %do.end18 ], [ %23, %if.then29 ], [ %27, %do.end39 ], [ %retval.0.i246, %do.end49 ], [ %ret.2, %err_bus_clk ], [ 0, %if.end132 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %s3c2410_get_wdt_drv_data.exit.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @s3c2410wdt_enable(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wdt_device = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 8
  tail call void @watchdog_unregister_device(ptr noundef %wdt_device) #6
  %src_clk = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %bus_clk = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410wdt_shutdown(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @s3c2410wdt_enable(ptr noundef %1, i1 noundef zeroext false)
  %driver_data.i.i4 = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 8, i32 16
  %2 = ptrtoint ptr %driver_data.i.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i4, align 4
  %lock.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %reg_base.i.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %7 = and i32 %6, -553648129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !202
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_set_heartbeat(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %src_clk.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %src_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_clk.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.s3c2410wdt_get_freq.exit_crit_edge

entry.s3c2410wdt_get_freq.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410wdt_get_freq.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bus_clk.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_clk.i, align 4
  br label %s3c2410wdt_get_freq.exit

s3c2410wdt_get_freq.exit:                         ; preds = %cond.false.i, %entry.s3c2410wdt_get_freq.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.false.i ], [ %3, %entry.s3c2410wdt_get_freq.exit_crit_edge ]
  %call.i = tail call i32 @clk_get_rate(ptr noundef %cond.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp = icmp eq i32 %timeout, 0
  br i1 %cmp, label %s3c2410wdt_get_freq.exit.cleanup_crit_edge, label %if.end

s3c2410wdt_get_freq.exit.cleanup_crit_edge:       ; preds = %s3c2410wdt_get_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %s3c2410wdt_get_freq.exit
  %sub = add i32 %call.i, 127
  %div97 = lshr i32 %sub, 7
  %mul = mul i32 %div97, %timeout
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410wdt_set_heartbeat.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c2410wdt_set_heartbeat, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !204

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c2410wdt_set_heartbeat.__UNIQUE_ID_ddebug212, ptr noundef %7, ptr noundef nonnull @.str.52, i32 noundef %mul, i32 noundef %timeout, i32 noundef %div97) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %mul)
  %cmp7 = icmp ugt i32 %mul, 65535
  br i1 %cmp7, label %if.then8, label %do.end.do.body20_crit_edge

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

if.then8:                                         ; preds = %do.end
  %sub10 = add i32 %mul, 65534
  %div11 = udiv i32 %sub10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16842494, i32 %sub10)
  %cmp12 = icmp ugt i32 %sub10, 16842494
  br i1 %cmp12, label %do.end16, label %if.then8.do.body20_crit_edge

if.then8.do.body20_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

do.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.53, i32 noundef %timeout) #9
  br label %cleanup

do.body20:                                        ; preds = %if.then8.do.body20_crit_edge, %do.end.do.body20_crit_edge
  %divisor.0 = phi i32 [ %div11, %if.then8.do.body20_crit_edge ], [ 1, %do.end.do.body20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410wdt_set_heartbeat.__UNIQUE_ID_ddebug213, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c2410wdt_set_heartbeat, %if.then32)) #6
          to label %do.end39 [label %if.then32], !srcloc !204

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add34 = add nsw i32 %mul, -1
  %sub35 = add nsw i32 %add34, %divisor.0
  %div36 = udiv i32 %sub35, %divisor.0
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c2410wdt_set_heartbeat.__UNIQUE_ID_ddebug213, ptr noundef %11, ptr noundef nonnull @.str.54, i32 noundef %timeout, i32 noundef %divisor.0, i32 noundef %mul, i32 noundef %div36) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then32, %do.body20
  %add40 = add nsw i32 %mul, -1
  %sub41 = add nsw i32 %add40, %divisor.0
  %div42 = udiv i32 %sub41, %divisor.0
  %count43 = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %count43 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div42, ptr %count43, align 4
  %reg_base = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %16 = and i32 %15, -16711681
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %sub47 = shl nuw nsw i32 %divisor.0, 8
  %shl = add nsw i32 %sub47, -256
  %or = or i32 %17, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %div42)
  %19 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base, align 4
  %add.ptr52 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %18) #6, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !202
  %mul58 = mul i32 %div42, %divisor.0
  %div59 = udiv i32 %mul58, %div97
  %timeout60 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %24 = ptrtoint ptr %timeout60 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div59, ptr %timeout60, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %do.end16, %s3c2410wdt_get_freq.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end16 ], [ 0, %do.end39 ], [ -22, %s3c2410wdt_get_freq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_irq(i32 noundef %irqno, ptr nocapture noundef readonly %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %param, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.55) #9
  %driver_data.i.i8 = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 8, i32 16
  %4 = ptrtoint ptr %driver_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i8, align 4
  %lock.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %count.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %reg_base.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !202
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  %drv_data = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv_data, align 4
  %quirks = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %reg_base = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !202
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %reg_base.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %5 = and i32 %4, -553648129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !202
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  %11 = load i32, ptr @soft_noboot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %12 = and i32 %10, -1023410177
  %13 = or i32 %12, 939524096
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %wtcon.0.v = select i1 %tobool.not, i32 1, i32 4
  %wtcon.0 = or i32 %wtcon.0.v, %14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410wdt_start.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c2410wdt_start, %if.then11)) #6
          to label %do.body13 [label %if.then11], !srcloc !204

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %count = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c2410wdt_start.__UNIQUE_ID_ddebug211, ptr noundef %16, ptr noundef nonnull @.str.60, i32 noundef %18, i32 noundef %wtcon.0) #6
  br label %do.body13

do.body13:                                        ; preds = %if.then11, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  tail call void @arm_heavy_mb() #6
  %count16 = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %count16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count16, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 4
  %add.ptr18 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %21) #6, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %count16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count16, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i, align 4
  %add.ptr24 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %26) #6, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %wtcon.0)
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #6, !srcloc !202
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %reg_base.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %5 = and i32 %4, -553648129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !202
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c2410wdt_enable(ptr nocapture noundef readonly %wdt, i1 noundef zeroext %en) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr inbounds %struct.s3c2410_wdt, ptr %wdt, i32 0, i32 10
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %quirks = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %mask_bit.i = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mask_bit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask_bit.i, align 4
  %shl.i = shl nuw i32 1, %5
  %spec.select.i = select i1 %en, i32 0, i32 %shl.i
  %pmureg.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %wdt, i32 0, i32 11
  %6 = ptrtoint ptr %pmureg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmureg.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %shl.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %10 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drv_data, align 4
  %quirks5 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %quirks5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks5, align 4
  %and6 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end3.if.end15_crit_edge, label %if.then8

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then8:                                         ; preds = %if.end3
  %lnot10 = xor i1 %en, true
  %mask_bit.i40 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %mask_bit.i40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask_bit.i40, align 4
  %shl.i41 = shl nuw i32 1, %15
  %mask_reset_inv.i = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %mask_reset_inv.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mask_reset_inv.i, align 4, !range !198
  %18 = zext i1 %lnot10 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %18)
  %tobool6.not.i = icmp eq i8 %17, %18
  %spec.select.i42 = select i1 %tobool6.not.i, i32 0, i32 %shl.i41
  %pmureg.i43 = getelementptr inbounds %struct.s3c2410_wdt, ptr %wdt, i32 0, i32 11
  %19 = ptrtoint ptr %pmureg.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pmureg.i43, align 4
  %mask_reset_reg.i = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %mask_reset_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask_reset_reg.i, align 4
  %call.i.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %22, i32 noundef %shl.i41, i32 noundef %spec.select.i42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %cmp.i45 = icmp slt i32 %call.i.i44, 0
  br i1 %cmp.i45, label %if.then8.cleanup.sink.split_crit_edge, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end3.if.end15_crit_edge
  %23 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drv_data, align 4
  %quirks17 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %quirks17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quirks17, align 4
  %and18 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end15.cleanup_crit_edge, label %if.then20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.end15
  %cnt_en_bit.i = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %24, i32 0, i32 7
  %27 = ptrtoint ptr %cnt_en_bit.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cnt_en_bit.i, align 4
  %shl.i48 = shl nuw i32 1, %28
  %spec.select.i49 = select i1 %en, i32 %shl.i48, i32 0
  %pmureg.i50 = getelementptr inbounds %struct.s3c2410_wdt, ptr %wdt, i32 0, i32 11
  %29 = ptrtoint ptr %pmureg.i50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pmureg.i50, align 4
  %cnt_en_reg.i = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %24, i32 0, i32 6
  %31 = ptrtoint ptr %cnt_en_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cnt_en_reg.i, align 4
  %call.i.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %32, i32 noundef %shl.i48, i32 noundef %spec.select.i49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp.i52 = icmp slt i32 %call.i.i51, 0
  br i1 %cmp.i52, label %if.then20.cleanup.sink.split_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20.cleanup.sink.split_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then20.cleanup.sink.split_crit_edge, %if.then8.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %call.i.i51.sink = phi i32 [ %call.i.i, %if.then.cleanup.sink.split_crit_edge ], [ %call.i.i44, %if.then8.cleanup.sink.split_crit_edge ], [ %call.i.i51, %if.then20.cleanup.sink.split_crit_edge ]
  %33 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wdt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.61, i32 noundef %call.i.i51.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then20.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then20.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ %call.i.i51.sink, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_keepalive(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %count = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %reg_base = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !202
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_restart(ptr nocapture noundef readonly %wdd, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_base = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  tail call void @arm_heavy_mb() #6
  %add.ptr4 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -2147483648) #6, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %add.ptr8 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -2147483648) #6, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 555745280) #6, !srcloc !202
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.016 = phi i32 [ 500, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.016, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_base = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !199
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %wtcon_save = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %wtcon_save to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %wtcon_save, align 4
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !199
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  %wtdat_save = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %wtdat_save to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %wtdat_save, align 4
  %call10 = tail call fastcc i32 @s3c2410wdt_enable(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 8, i32 16
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %13, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %reg_base.i.i = getelementptr inbounds %struct.s3c2410_wdt, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %17 = and i32 %16, -553648129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #6, !srcloc !202
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call10, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  %wtdat_save = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %wtdat_save to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wtdat_save, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %reg_base = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %wtdat_save to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wtdat_save, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #6, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %wtcon_save = getelementptr inbounds %struct.s3c2410_wdt, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %wtcon_save to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wtcon_save, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !202
  %call12 = tail call fastcc i32 @s3c2410wdt_enable(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %wtcon_save to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wtcon_save, align 4
  %and = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end15 ], [ %call12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !46, !48, !49, !51, !53, !54, !55, !56, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !105, !106, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !185, !186}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @__param_tmr_margin, !1, !"__param_tmr_margin", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 117, i32 1}
!2 = !{ptr @__UNIQUE_ID_tmr_margintype203, !1, !"__UNIQUE_ID_tmr_margintype203", i1 false, i1 false}
!3 = !{ptr @__param_tmr_atboot, !4, !"__param_tmr_atboot", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 118, i32 1}
!5 = !{ptr @__UNIQUE_ID_tmr_atboottype204, !4, !"__UNIQUE_ID_tmr_atboottype204", i1 false, i1 false}
!6 = !{ptr @__param_nowayout, !7, !"__param_nowayout", i1 false, i1 false}
!7 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 119, i32 1}
!8 = !{ptr @__UNIQUE_ID_nowayouttype205, !7, !"__UNIQUE_ID_nowayouttype205", i1 false, i1 false}
!9 = !{ptr @__param_soft_noboot, !10, !"__param_soft_noboot", i1 false, i1 false}
!10 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 120, i32 1}
!11 = !{ptr @__UNIQUE_ID_soft_noboottype206, !10, !"__UNIQUE_ID_soft_noboottype206", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_tmr_margin207, !13, !"__UNIQUE_ID_tmr_margin207", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 122, i32 1}
!14 = !{ptr @__UNIQUE_ID_tmr_atboot208, !15, !"__UNIQUE_ID_tmr_atboot208", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 124, i32 1}
!16 = !{ptr @__UNIQUE_ID_nowayout209, !17, !"__UNIQUE_ID_nowayout209", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 127, i32 1}
!18 = !{ptr @__UNIQUE_ID_soft_noboot210, !19, !"__UNIQUE_ID_soft_noboot210", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 129, i32 1}
!20 = !{ptr @__initcall__kmod_s3c2410_wdt__214_905_s3c2410wdt_driver_init6, !21, !"__initcall__kmod_s3c2410_wdt__214_905_s3c2410wdt_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 905, i32 1}
!22 = !{ptr @__exitcall_s3c2410wdt_driver_exit, !21, !"__exitcall_s3c2410wdt_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author215, !24, !"__UNIQUE_ID_author215", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 907, i32 1}
!25 = !{ptr @__UNIQUE_ID_description216, !26, !"__UNIQUE_ID_description216", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 908, i32 1}
!27 = !{ptr @__UNIQUE_ID_file217, !28, !"__UNIQUE_ID_file217", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 909, i32 1}
!29 = !{ptr @__UNIQUE_ID_license218, !28, !"__UNIQUE_ID_license218", i1 false, i1 false}
!30 = !{ptr @tmr_margin, !31, !"tmr_margin", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 113, i32 12}
!32 = !{ptr @soft_noboot, !33, !"soft_noboot", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 115, i32 12}
!34 = !{ptr @__param_str_tmr_margin, !1, !"__param_str_tmr_margin", i1 false, i1 false}
!35 = !{ptr @__param_str_tmr_atboot, !4, !"__param_str_tmr_atboot", i1 false, i1 false}
!36 = !{ptr @tmr_atboot, !37, !"tmr_atboot", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 114, i32 12}
!38 = !{ptr @__param_str_nowayout, !7, !"__param_str_nowayout", i1 false, i1 false}
!39 = !{ptr @nowayout, !40, !"nowayout", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 112, i32 13}
!41 = !{ptr @__param_str_soft_noboot, !10, !"__param_str_soft_noboot", i1 false, i1 false}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 899, i32 11}
!44 = !{ptr @s3c2410wdt_driver, !45, !"s3c2410wdt_driver", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 893, i32 31}
!46 = !{ptr @s3c2410wdt_probe.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 673, i32 2}
!48 = !{ptr @.str.1, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.2, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 682, i32 7}
!51 = !{ptr @.str.3, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 684, i32 4}
!53 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @s3c2410wdt_probe._entry, !52, !"_entry", i1 false, i1 false}
!58 = !{ptr @s3c2410wdt_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 698, i32 35}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 700, i32 3}
!63 = !{ptr @s3c2410wdt_probe._entry.9, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @s3c2410wdt_probe._entry_ptr.11, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 706, i32 3}
!67 = !{ptr @s3c2410wdt_probe._entry.12, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @s3c2410wdt_probe._entry_ptr.14, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 714, i32 44}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 717, i32 10}
!73 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 724, i32 3}
!75 = !{ptr @s3c2410wdt_probe._entry.17, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @s3c2410wdt_probe._entry_ptr.19, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 733, i32 3}
!79 = !{ptr @s3c2410wdt_probe._entry.20, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @s3c2410wdt_probe._entry_ptr.22, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 749, i32 4}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @s3c2410wdt_probe._entry.23, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @s3c2410wdt_probe._entry_ptr.26, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 752, i32 4}
!88 = !{ptr @s3c2410wdt_probe._entry.27, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @s3c2410wdt_probe._entry_ptr.29, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 760, i32 3}
!92 = !{ptr @s3c2410wdt_probe._entry.30, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @s3c2410wdt_probe._entry_ptr.32, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 778, i32 3}
!96 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @s3c2410wdt_probe._entry.33, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @s3c2410wdt_probe._entry_ptr.36, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 799, i32 2}
!101 = !{ptr @s3c2410wdt_probe._entry.37, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @s3c2410wdt_probe._entry_ptr.39, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @s3c2410_wdd, !108, !"s3c2410_wdd", i1 false, i1 false}
!108 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 513, i32 37}
!109 = !{ptr @s3c2410_wdt_ident, !110, !"s3c2410_wdt_ident", i1 false, i1 false}
!110 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 498, i32 35}
!111 = !{ptr @s3c2410wdt_ops, !112, !"s3c2410wdt_ops", i1 false, i1 false}
!112 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 504, i32 34}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 639, i32 9}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 641, i32 4}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @s3c2410_get_wdt_drv_data._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @s3c2410_get_wdt_drv_data._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 651, i32 4}
!122 = !{ptr @s3c2410_get_wdt_drv_data._entry.47, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @s3c2410_get_wdt_drv_data._entry_ptr.49, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @drv_data_exynos850_cl0, !125, !"drv_data_exynos850_cl0", i1 false, i1 false}
!125 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 215, i32 41}
!126 = !{ptr @drv_data_exynos850_cl1, !127, !"drv_data_exynos850_cl1", i1 false, i1 false}
!127 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 227, i32 41}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 436, i32 2}
!130 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @s3c2410wdt_set_heartbeat.__UNIQUE_ID_ddebug212, !129, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 448, i32 4}
!135 = !{ptr @s3c2410wdt_set_heartbeat._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @s3c2410wdt_set_heartbeat._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 453, i32 2}
!139 = !{ptr @s3c2410wdt_set_heartbeat.__UNIQUE_ID_ddebug213, !138, !"__UNIQUE_ID_ddebug213", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 525, i32 2}
!142 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @s3c2410wdt_irq._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @s3c2410wdt_irq._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 612, i32 3}
!147 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @s3c2410wdt_get_bootstatus._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @s3c2410wdt_get_bootstatus._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 405, i32 2}
!152 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @s3c2410wdt_start.__UNIQUE_ID_ddebug211, !151, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 295, i32 3}
!156 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @s3c2410wdt_disable_wdt_reset._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @s3c2410wdt_disable_wdt_reset._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 310, i32 3}
!161 = !{ptr @s3c2410wdt_mask_wdt_reset._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @s3c2410wdt_mask_wdt_reset._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 324, i32 3}
!165 = !{ptr @s3c2410wdt_enable_counter._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @s3c2410wdt_enable_counter._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @s3c2410_wdt_match, !168, !"s3c2410_wdt_match", i1 false, i1 false}
!168 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 239, i32 34}
!169 = !{ptr @drv_data_s3c2410, !170, !"drv_data_s3c2410", i1 false, i1 false}
!170 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 176, i32 41}
!171 = !{ptr @drv_data_s3c6410, !172, !"drv_data_s3c6410", i1 false, i1 false}
!172 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 181, i32 41}
!173 = !{ptr @drv_data_exynos5250, !174, !"drv_data_exynos5250", i1 false, i1 false}
!174 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 185, i32 41}
!175 = !{ptr @drv_data_exynos5420, !176, !"drv_data_exynos5420", i1 false, i1 false}
!176 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 195, i32 41}
!177 = !{ptr @drv_data_exynos7, !178, !"drv_data_exynos7", i1 false, i1 false}
!178 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 205, i32 41}
!179 = !{ptr @s3c2410wdt_pm_ops, !180, !"s3c2410wdt_pm_ops", i1 false, i1 false}
!180 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 890, i32 8}
!181 = !{ptr @.str.65, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 883, i32 2}
!183 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @s3c2410wdt_resume._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @s3c2410wdt_resume._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @s3c2410_wdt_ids, !187, !"s3c2410_wdt_ids", i1 false, i1 false}
!187 = !{!"../drivers/watchdog/s3c2410_wdt.c", i32 257, i32 40}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{!"auto-init"}
!198 = !{i8 0, i8 2}
!199 = !{i64 4919395}
!200 = !{i64 2153500434}
!201 = !{i64 2153500676}
!202 = !{i64 4918977}
!203 = !{i64 2153541336}
!204 = !{i64 2148976428, i64 2148976433, i64 2148976446, i64 2148976490, i64 2148976524, i64 2148976545}
!205 = !{i64 2153513470}
!206 = !{i64 2153513727}
!207 = !{i64 2153514135}
!208 = !{i64 2153499732}
!209 = !{i64 2153519399}
!210 = !{i64 2153501363}
!211 = !{i64 2153504173}
!212 = !{i64 2153504601}
!213 = !{i64 2153505024}
!214 = !{i64 2153514534}
!215 = !{i64 2153514919}
!216 = !{i64 2153515313}
!217 = !{i64 2153515794}
!218 = !{i64 2153548005}
!219 = !{i64 2153548508}
!220 = !{i64 2153548742}
!221 = !{i64 2153549190}
!222 = !{i64 2153549638}
