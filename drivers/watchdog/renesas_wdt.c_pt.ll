; ModuleID = '/llk/IR_all_yes/drivers/watchdog/renesas_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/renesas_wdt.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rwdt_priv = type { ptr, %struct.watchdog_device, i32, i8, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_nowayout = internal constant [21 x i8] c"renesas_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype171 = internal constant [35 x i8] c"renesas_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout172 = internal constant [78 x i8] c"renesas_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_renesas_wdt__175_343_rwdt_driver_init6 = internal global ptr @rwdt_driver_init, section ".initcall6.init", align 4
@rwdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rwdt_probe, ptr @rwdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rwdt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rwdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rwdt_driver_exit = internal global ptr @rwdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description176 = internal constant [52 x i8] c"renesas_wdt.description=Renesas WDT Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [46 x i8] c"renesas_wdt.file=drivers/watchdog/renesas_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [27 x i8] c"renesas_wdt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author179 = internal constant [59 x i8] c"renesas_wdt.author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"renesas_wdt\00", [20 x i8] zeroinitializer }, align 32
@rwdt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rwdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rwdt_suspend, ptr @rwdt_resume, ptr @rwdt_suspend, ptr @rwdt_resume, ptr @rwdt_suspend, ptr @rwdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@clk_divs = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 4, i32 16, i32 32, i32 64, i32 128, i32 1024, i32 4096], [32 x i8] zeroinitializer }, align 32
@rwdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't find suitable clock divider\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rwdt_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/renesas_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rwdt_probe._entry_ptr = internal global ptr @rwdt_probe._entry, section ".printk_index", align 4
@rwdt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33184, i32 0, [32 x i8] c"Renesas WDT Watchdog\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@rwdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @rwdt_start, ptr @rwdt_stop, ptr @rwdt_init_timeout, ptr null, ptr null, ptr null, ptr @rwdt_get_timeleft, ptr @rwdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@rwdt_quirks_match = internal constant { [4 x %struct.soc_device_attribute], [48 x i8] } { [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.9, ptr null, ptr @.str.10, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.9, ptr null, ptr @.str.11, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.12, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [48 x i8] zeroinitializer }, align 32
@setup_max_cpus = external dso_local local_unnamed_addr global i32, align 4
@rwdt_blacklisted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 202, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Watchdog blacklisted on %s %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rwdt_blacklisted\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rwdt_blacklisted._entry_ptr = internal global ptr @rwdt_blacklisted._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7790\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7791\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7792\00", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 44, i32 13 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"rwdt_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 334, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 336, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"rwdt_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 327, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"rwdt_pm_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 325, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"clk_divs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 42, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 256, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [11 x i8] c"rwdt_ident\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 160, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"rwdt_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 166, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"rwdt_quirks_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 179, i32 42 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 201, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 182, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 181, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 185, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [34 x i8] c"../drivers/watchdog/renesas_wdt.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 189, i32 13 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__UNIQUE_ID_nowayout172, ptr @__UNIQUE_ID_nowayouttype171, ptr @__exitcall_rwdt_driver_exit, ptr @__initcall__kmod_renesas_wdt__175_343_rwdt_driver_init6, ptr @__param_nowayout, ptr @rwdt_blacklisted._entry, ptr @rwdt_blacklisted._entry_ptr, ptr @rwdt_driver_exit, ptr @rwdt_probe._entry, ptr @rwdt_probe._entry_ptr, ptr @nowayout, ptr @rwdt_driver, ptr @.str, ptr @rwdt_ids, ptr @rwdt_pm_ops, ptr @clk_divs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rwdt_ident, ptr @rwdt_ops, ptr @rwdt_quirks_match, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwdt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_divs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwdt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwdt_quirks_match to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwdt_blacklisted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rwdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rwdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rwdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rwdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @soc_device_match(ptr noundef nonnull @rwdt_quirks_match) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @setup_max_cpus to i32))
  %0 = load i32, ptr @setup_max_cpus, align 4
  %data.i = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %3)
  %cmp.i = icmp ugt i32 %0, %3
  br i1 %cmp.i, label %rwdt_blacklisted.exit, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

rwdt_blacklisted.exit:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %soc_id.i = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %soc_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_id.i, align 4
  %revision.i = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %revision.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef %5, ptr noundef %7) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i136 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 124, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i136, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %8 = ptrtoint ptr %call.i136 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %call.i136, align 4
  %cmp.i137 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %clk, align 4
  %cmp.i138 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i139 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call21 = tail call i32 @clk_get_rate(ptr noundef %13) #5
  %clk_rate = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 2
  %14 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call21, ptr %clk_rate, align 4
  %15 = ptrtoint ptr %call.i136 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i136, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !65
  %conv = zext i8 %17 to i32
  %and = shl nuw nsw i32 %conv, 1
  %18 = and i32 %and, 32
  %wdev = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1
  %bootstatus = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1, i32 6
  %19 = ptrtoint ptr %bootstatus to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %bootstatus, align 4
  %call.i140 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #5
  %20 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool27.not = icmp eq i32 %21, 0
  br i1 %tobool27.not, label %if.end18.out_pm_disable_crit_edge, label %for.body.preheader

if.end18.out_pm_disable_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_pm_disable

for.body.preheader:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %tobool32.not = icmp ult i32 %21, 4096
  br i1 %tobool32.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %21)
  %cmp33 = icmp ult i32 %21, 268435456
  br i1 %cmp33, label %land.lhs.true.if.end41_crit_edge, label %for.inc.7

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %21)
  %tobool32.not.1 = icmp ult i32 %21, 1024
  br i1 %tobool32.not.1, label %for.inc.1, label %for.inc.if.end41_crit_edge

for.inc.if.end41_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %21)
  %tobool32.not.2 = icmp ult i32 %21, 128
  br i1 %tobool32.not.2, label %for.inc.2, label %for.inc.1.if.end41_crit_edge

for.inc.1.if.end41_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %21)
  %tobool32.not.3 = icmp ult i32 %21, 64
  br i1 %tobool32.not.3, label %for.inc.3, label %for.inc.2.if.end41_crit_edge

for.inc.2.if.end41_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %tobool32.not.4 = icmp ult i32 %21, 32
  br i1 %tobool32.not.4, label %for.inc.4, label %for.inc.3.if.end41_crit_edge

for.inc.3.if.end41_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %21)
  %tobool32.not.5 = icmp ult i32 %21, 16
  br i1 %tobool32.not.5, label %for.inc.5, label %for.inc.4.if.end41_crit_edge

for.inc.4.if.end41_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %tobool32.not.6 = icmp ugt i32 %21, 3
  %spec.select = zext i1 %tobool32.not.6 to i8
  br label %if.end41

for.inc.7:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %out_pm_disable

if.end41:                                         ; preds = %for.inc.5, %for.inc.4.if.end41_crit_edge, %for.inc.3.if.end41_crit_edge, %for.inc.2.if.end41_crit_edge, %for.inc.1.if.end41_crit_edge, %for.inc.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge
  %i.0145.lcssa = phi i8 [ 7, %land.lhs.true.if.end41_crit_edge ], [ 6, %for.inc.if.end41_crit_edge ], [ 5, %for.inc.1.if.end41_crit_edge ], [ 4, %for.inc.2.if.end41_crit_edge ], [ 3, %for.inc.3.if.end41_crit_edge ], [ 2, %for.inc.4.if.end41_crit_edge ], [ %spec.select, %for.inc.5 ]
  %cks = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 3
  %22 = ptrtoint ptr %cks to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %i.0145.lcssa, ptr %cks, align 4
  %info = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rwdt_ident, ptr %info, align 4
  %ops = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @rwdt_ops, ptr %ops, align 4
  %parent = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev1, ptr %parent, align 4
  %min_timeout = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1, i32 9
  %26 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %min_timeout, align 4
  %idxprom = zext i8 %i.0145.lcssa to i32
  %arrayidx47 = getelementptr [8 x i32], ptr @clk_divs, i32 0, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx47, align 4
  %mul = shl i32 %28, 16
  %29 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clk_rate, align 4
  %div49 = udiv i32 %mul, %30
  %max_timeout = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1, i32 10
  %31 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div49, ptr %max_timeout, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %div49, i32 60)
  %timeout = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1, i32 7
  %33 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %timeout, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i136, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1, i32 16
  %35 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i136, ptr %driver_data.i, align 4
  %36 = load i8, ptr @nowayout, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool60.not = icmp eq i8 %36, 0
  br i1 %tobool60.not, label %if.end41.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end41.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end41.watchdog_set_nowayout.exit_crit_edge
  tail call void @watchdog_set_restart_priority(ptr noundef %wdev, i32 noundef 0) #5
  %status.i141 = getelementptr inbounds %struct.rwdt_priv, ptr %call.i136, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status.i141) #5
  %call64 = tail call i32 @watchdog_init_timeout(ptr noundef %wdev, i32 noundef 0, ptr noundef %dev1) #5
  %and66 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %watchdog_set_nowayout.exit.if.end72_crit_edge, label %if.then68

watchdog_set_nowayout.exit.if.end72_crit_edge:    ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then68:                                        ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call70 = tail call i32 @rwdt_start(ptr noundef %wdev)
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i141) #5
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %watchdog_set_nowayout.exit.if.end72_crit_edge
  %call74 = tail call i32 @watchdog_register_device(ptr noundef %wdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end72.out_pm_disable_crit_edge, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end72.out_pm_disable_crit_edge:                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_pm_disable

out_pm_disable:                                   ; preds = %if.end72.out_pm_disable_crit_edge, %for.inc.7, %if.end18.out_pm_disable_crit_edge
  %ret.0 = phi i32 [ -34, %for.inc.7 ], [ %call74, %if.end72.out_pm_disable_crit_edge ], [ -2, %if.end18.out_pm_disable_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %out_pm_disable, %if.end72.cleanup_crit_edge, %if.then15, %if.then8, %if.end.cleanup_crit_edge, %rwdt_blacklisted.exit
  %retval.0 = phi i32 [ %9, %if.then8 ], [ %11, %if.then15 ], [ %ret.0, %out_pm_disable ], [ -19, %rwdt_blacklisted.exit ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwdt_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wdev = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 1
  tail call void @watchdog_unregister_device(ptr noundef %wdev) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwdt_start(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !65
  %7 = and i8 %6, 127
  %conv4 = zext i8 %7 to i32
  %val.addr.0.i = or i32 %conv4, -1515870976
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.i) #5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !67
  %clk_rate.i = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_rate.i, align 4
  %sub.i = add i32 %12, 1999999
  %div.i = udiv i32 %sub.i, %12
  %mul2.i = shl i32 %div.i, 1
  tail call void @usleep_range_state(i32 noundef %div.i, i32 noundef %mul2.i, i32 noundef 2) #5
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i, align 4
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 7
  %15 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeout.i, align 4
  %clk_rate.i32 = getelementptr inbounds %struct.rwdt_priv, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %clk_rate.i32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_rate.i32, align 4
  %mul.i = mul i32 %18, %16
  %cks.i = getelementptr inbounds %struct.rwdt_priv, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %cks.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cks.i, align 4
  %idxprom.i = zext i8 %20 to i32
  %arrayidx.i = getelementptr [8 x i32], ptr @clk_divs, i32 0, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %mul.i, -1
  %sub.i33 = add i32 %add.i, %22
  %div.i34 = udiv i32 %sub.i33, %22
  %sub4.i = sub i32 65536, %div.i34
  %val.addr.0.i.i = or i32 %sub4.i, 1515847680
  %23 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.i.i) #5
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #5, !srcloc !67
  %cks = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %cks to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cks, align 4
  %conv6 = zext i8 %27 to i32
  %val.addr.0.i35 = or i32 %conv6, -1515870976
  %28 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.i35) #5
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i36 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %28) #5, !srcloc !67
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i37 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 10855845) #5, !srcloc !67
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr940 = getelementptr i8, ptr %34, i32 4
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr940) #5, !srcloc !65
  %36 = and i8 %35, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not41 = icmp eq i8 %36, 0
  br i1 %tobool.not41, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !69
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr9 = getelementptr i8, ptr %38, i32 4
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #5, !srcloc !65
  %40 = and i8 %39, 32
  %tobool.not = icmp eq i8 %40, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %41 = ptrtoint ptr %cks to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cks, align 4
  %or = zext i8 %42 to i32
  %val.addr.0.i38 = or i32 %or, -1515870848
  %43 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.i38) #5
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %add.ptr.i39 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %43) #5, !srcloc !67
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwdt_stop(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cks = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cks to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cks, align 4
  %conv = zext i8 %3 to i32
  %val.addr.0.i = or i32 %conv, -1515870976
  %4 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.i) #5
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !67
  %clk_rate.i = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_rate.i, align 4
  %sub.i = add i32 %8, 2999999
  %div.i = udiv i32 %sub.i, %8
  %mul2.i = shl i32 %div.i, 1
  tail call void @usleep_range_state(i32 noundef %div.i, i32 noundef %mul2.i, i32 noundef 2) #5
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwdt_init_timeout(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  %clk_rate = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_rate, align 4
  %mul = mul i32 %5, %3
  %cks = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cks to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cks, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [8 x i32], ptr @clk_divs, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %mul, -1
  %sub = add i32 %add, %9
  %div = udiv i32 %sub, %9
  %sub4 = sub i32 65536, %div
  %val.addr.0.i = or i32 %sub4, 1515847680
  %10 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.i) #5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !67
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwdt_get_timeleft(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #5, !srcloc !70
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %sub = sub nuw nsw i32 65536, %conv
  %cks = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cks to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cks, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [8 x i32], ptr @clk_divs, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %sub, %9
  %clk_rate = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_rate, align 4
  %div = udiv i32 %mul, %11
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwdt_restart(ptr nocapture noundef readonly %wdev, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !65
  %7 = and i8 %6, 127
  %conv4 = zext i8 %7 to i32
  %val.addr.0.i = or i32 %conv4, -1515870976
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.i) #5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !67
  %clk_rate = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_rate, align 4
  %sub = add i32 %12, 1999999
  %div = udiv i32 %sub, %12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %div) #5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -42406) #5, !srcloc !67
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i124 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 10855845) #5, !srcloc !67
  %call25 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call25, 100000
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr29126 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29126) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %21 = and i8 %20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not127 = icmp eq i8 %21, 0
  br i1 %tobool.not127, label %clk_prepare_enable.exit.for.end_crit_edge, label %clk_prepare_enable.exit.land.lhs.true_crit_edge

clk_prepare_enable.exit.land.lhs.true_crit_edge:  ; preds = %clk_prepare_enable.exit
  br label %land.lhs.true

clk_prepare_enable.exit.for.end_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false55.land.lhs.true_crit_edge, %clk_prepare_enable.exit.land.lhs.true_crit_edge
  %call36 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call36, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call36, %add.i
  br i1 %cmp3.i, label %if.then40, label %cond.false55

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr44 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr44) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  br label %for.end

cond.false55:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #5
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr29 = getelementptr i8, ptr %27, i32 4
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %29 = and i8 %28, 32
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %cond.false55.for.end_crit_edge, label %cond.false55.land.lhs.true_crit_edge

cond.false55.land.lhs.true_crit_edge:             ; preds = %cond.false55
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

cond.false55.for.end_crit_edge:                   ; preds = %cond.false55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cond.false55.for.end_crit_edge, %if.then40, %clk_prepare_enable.exit.for.end_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i125 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 -2136627803) #5, !srcloc !67
  %32 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clk_rate, align 4
  %sub67 = add i32 %33, 1999999
  %div69 = udiv i32 %sub67, %33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %div69) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cks.i = getelementptr inbounds %struct.rwdt_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cks.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cks.i, align 4
  %conv.i = zext i8 %7 to i32
  %val.addr.0.i.i = or i32 %conv.i, -1515870976
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.i.i) #5
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #5, !srcloc !67
  %clk_rate.i.i = getelementptr inbounds %struct.rwdt_priv, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %clk_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_rate.i.i, align 4
  %sub.i.i = add i32 %12, 2999999
  %div.i.i = udiv i32 %sub.i.i, %12
  %mul2.i.i = shl i32 %div.i.i, 1
  tail call void @usleep_range_state(i32 noundef %div.i.i, i32 noundef %mul2.i.i, i32 noundef 2) #5
  %parent.i = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwdt_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wdev = getelementptr inbounds %struct.rwdt_priv, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @rwdt_start(ptr noundef %wdev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/renesas_wdt.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype171, !1, !"__UNIQUE_ID_nowayouttype171", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout172, !4, !"__UNIQUE_ID_nowayout172", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/renesas_wdt.c", i32 46, i32 1}
!5 = !{ptr @__initcall__kmod_renesas_wdt__175_343_rwdt_driver_init6, !6, !"__initcall__kmod_renesas_wdt__175_343_rwdt_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/renesas_wdt.c", i32 343, i32 1}
!7 = !{ptr @__exitcall_rwdt_driver_exit, !6, !"__exitcall_rwdt_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description176, !9, !"__UNIQUE_ID_description176", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/renesas_wdt.c", i32 345, i32 1}
!10 = !{ptr @__UNIQUE_ID_file177, !11, !"__UNIQUE_ID_file177", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/renesas_wdt.c", i32 346, i32 1}
!12 = !{ptr @__UNIQUE_ID_license178, !11, !"__UNIQUE_ID_license178", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author179, !14, !"__UNIQUE_ID_author179", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/renesas_wdt.c", i32 347, i32 1}
!15 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!16 = !{ptr @nowayout, !17, !"nowayout", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/renesas_wdt.c", i32 44, i32 13}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/renesas_wdt.c", i32 336, i32 11}
!20 = !{ptr @rwdt_driver, !21, !"rwdt_driver", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/renesas_wdt.c", i32 334, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/renesas_wdt.c", i32 256, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rwdt_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rwdt_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/renesas_wdt.c", i32 201, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rwdt_blacklisted._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @rwdt_blacklisted._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/renesas_wdt.c", i32 182, i32 15}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/renesas_wdt.c", i32 181, i32 13}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/renesas_wdt.c", i32 185, i32 13}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/renesas_wdt.c", i32 189, i32 13}
!44 = !{ptr @rwdt_quirks_match, !45, !"rwdt_quirks_match", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/renesas_wdt.c", i32 179, i32 42}
!46 = !{ptr @clk_divs, !47, !"clk_divs", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/renesas_wdt.c", i32 42, i32 27}
!48 = !{ptr @rwdt_ident, !49, !"rwdt_ident", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/renesas_wdt.c", i32 160, i32 35}
!50 = !{ptr @rwdt_ops, !51, !"rwdt_ops", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/renesas_wdt.c", i32 166, i32 34}
!52 = !{ptr @rwdt_ids, !53, !"rwdt_ids", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/renesas_wdt.c", i32 327, i32 34}
!54 = !{ptr @rwdt_pm_ops, !55, !"rwdt_pm_ops", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/renesas_wdt.c", i32 325, i32 8}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 3076479}
!66 = !{i8 0, i8 2}
!67 = !{i64 3076281}
!68 = !{i64 2152561304}
!69 = !{i64 2152561146}
!70 = !{i64 3075861}
!71 = !{i64 2152564722}
!72 = !{i64 2152564948}
