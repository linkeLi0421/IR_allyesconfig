; ModuleID = '/llk/IR_all_yes/drivers/watchdog/dw_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/dw_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.debugfs_reg32 = type { ptr, i32 }
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
%struct.dw_wdt = type { ptr, ptr, ptr, i32, i32, [16 x %struct.dw_wdt_timeout], %struct.watchdog_device, ptr, i32, i32, ptr }
%struct.dw_wdt_timeout = type { i32, i32, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }

@__param_str_nowayout = internal constant [16 x i8] c"dw_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype227 = internal constant [30 x i8] c"dw_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout228 = internal constant [73 x i8] c"dw_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_dw_wdt__229_717_dw_wdt_driver_init6 = internal global ptr @dw_wdt_driver_init, section ".initcall6.init", align 4
@dw_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_wdt_drv_probe, ptr @dw_wdt_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_wdt_driver_exit = internal global ptr @dw_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [25 x i8] c"dw_wdt.author=Jamie Iles\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [55 x i8] c"dw_wdt.description=Synopsys DesignWare Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [36 x i8] c"dw_wdt.file=drivers/watchdog/dw_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [19 x i8] c"dw_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dw_wdt\00", [25 x i8] zeroinitializer }, align 32
@dw_wdt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dw_wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dw_wdt_suspend, ptr @dw_wdt_resume, ptr @dw_wdt_suspend, ptr @dw_wdt_resume, ptr @dw_wdt_suspend, ptr @dw_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@dw_wdt_pt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33664, i32 0, [32 x i8] c"Synopsys DesignWare Watchdog\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@dw_wdt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Synopsys DesignWare Watchdog\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@dw_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @dw_wdt_start, ptr @dw_wdt_stop, ptr @dw_wdt_ping, ptr null, ptr @dw_wdt_set_timeout, ptr @dw_wdt_set_pretimeout, ptr @dw_wdt_get_timeleft, ptr @dw_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@dw_wdt_fix_tops = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912, i32 1073741824, i32 -2147483648], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snps,watchdog-tops\00", [45 x i8] zeroinitializer }, align 32
@dw_wdt_init_timeouts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 480, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No valid TOPs array specified\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dw_wdt_init_timeouts\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/watchdog/dw_wdt.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_wdt_init_timeouts._entry_ptr = internal global ptr @dw_wdt_init_timeouts._entry, section ".printk_index", align 4
@dw_wdt_init_timeouts._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 490, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No any valid TOP detected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dw_wdt_init_timeouts._entry_ptr.12 = internal global ptr @dw_wdt_init_timeouts._entry.9, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dw_wdt_dbgfs_regs = internal constant { [12 x %struct.debugfs_reg32], [32 x i8] } { [12 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.14, i32 0 }, %struct.debugfs_reg32 { ptr @.str.15, i32 4 }, %struct.debugfs_reg32 { ptr @.str.16, i32 8 }, %struct.debugfs_reg32 { ptr @.str.17, i32 12 }, %struct.debugfs_reg32 { ptr @.str.18, i32 16 }, %struct.debugfs_reg32 { ptr @.str.19, i32 228 }, %struct.debugfs_reg32 { ptr @.str.20, i32 232 }, %struct.debugfs_reg32 { ptr @.str.21, i32 236 }, %struct.debugfs_reg32 { ptr @.str.22, i32 240 }, %struct.debugfs_reg32 { ptr @.str.23, i32 244 }, %struct.debugfs_reg32 { ptr @.str.24, i32 248 }, %struct.debugfs_reg32 { ptr @.str.25, i32 252 }], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cr\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"torr\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ccvr\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crr\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"param5\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"param4\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"param3\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"param2\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"param1\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 66, i32 13 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"dw_wdt_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 707, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 711, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"dw_wdt_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 700, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"dw_wdt_pm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 415, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 571, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 595, i32 44 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"dw_wdt_pt_ident\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 343, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"dw_wdt_ident\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 337, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"dw_wdt_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 349, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"dw_wdt_fix_tops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 57, i32 18 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 477, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 480, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 490, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"dw_wdt_dbgfs_regs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 505, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 535, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 506, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 507, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 508, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 509, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 510, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 511, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 512, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 513, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 514, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 515, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 516, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [29 x i8] c"../drivers/watchdog/dw_wdt.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 517, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__UNIQUE_ID_nowayout228, ptr @__UNIQUE_ID_nowayouttype227, ptr @__exitcall_dw_wdt_driver_exit, ptr @__initcall__kmod_dw_wdt__229_717_dw_wdt_driver_init6, ptr @__param_nowayout, ptr @dw_wdt_driver_exit, ptr @dw_wdt_init_timeouts._entry, ptr @dw_wdt_init_timeouts._entry.9, ptr @dw_wdt_init_timeouts._entry_ptr, ptr @dw_wdt_init_timeouts._entry_ptr.12, ptr @nowayout, ptr @dw_wdt_driver, ptr @.str, ptr @dw_wdt_of_match, ptr @dw_wdt_pm_ops, ptr @.str.1, ptr @.str.2, ptr @dw_wdt_pt_ident, ptr @dw_wdt_ident, ptr @dw_wdt_ops, ptr @dw_wdt_fix_tops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @dw_wdt_dbgfs_regs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_wdt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_wdt_pt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_wdt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_wdt_fix_tops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_wdt_init_timeouts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_wdt_init_timeouts._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_wdt_dbgfs_regs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_wdt_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_wdt_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 336, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %clk = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %clk, align 4
  %cmp.i163 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then12, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then12:                                        ; preds = %if.end8
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13, ptr %clk, align 4
  %cmp.i164 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %if.then17, label %if.then12.if.end21_crit_edge

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.then12.if.end21_crit_edge, %if.end8.if.end21_crit_edge
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call.i165 = tail call i32 @clk_prepare(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool.not.i = icmp eq i32 %call.i165, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end21
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end26, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %cleanup

if.end26:                                         ; preds = %if.end.i
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %call28 = tail call i32 @clk_get_rate(ptr noundef %8) #7
  %rate = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call28, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp eq i32 %call28, 0
  br i1 %cmp, label %if.end26.out_disable_clk_crit_edge, label %if.end31

if.end26.out_disable_clk_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_clk

if.end31:                                         ; preds = %if.end26
  %call32 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %pclk = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call32, ptr %pclk, align 4
  %cmp.i166 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call32 to i32
  br label %out_disable_clk

if.end38:                                         ; preds = %if.end31
  %call.i167 = tail call i32 @clk_prepare(ptr noundef %call32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool.not.i168 = icmp eq i32 %call.i167, 0
  br i1 %tobool.not.i168, label %if.end.i171, label %if.end38.out_disable_clk_crit_edge

if.end38.out_disable_clk_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_clk

if.end.i171:                                      ; preds = %if.end38
  %call1.i169 = tail call i32 @clk_enable(ptr noundef %call32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i169)
  %tobool2.not.i170 = icmp eq i32 %call1.i169, 0
  br i1 %tobool2.not.i170, label %if.end43, label %if.then3.i172

if.then3.i172:                                    ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call32) #7
  br label %out_disable_clk

if.end43:                                         ; preds = %if.end.i171
  %call.i175 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %rst = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i175, ptr %rst, align 4
  %cmp.i176 = icmp ugt ptr %call.i175, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i175 to i32
  br label %out_disable_pclk

if.end51:                                         ; preds = %if.end43
  tail call fastcc void @dw_wdt_update_mode(ptr noundef nonnull %call.i, i32 noundef 1)
  %call52 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp sgt i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end51
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %call.i177 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call52, ptr noundef nonnull @dw_wdt_irq, ptr noundef null, i32 noundef 129, ptr noundef %15, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool56.not = icmp eq i32 %call.i177, 0
  br i1 %tobool56.not, label %if.then54.if.end65_crit_edge, label %if.then54.out_disable_pclk_crit_edge

if.then54.out_disable_pclk_crit_edge:             ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_pclk

if.then54.if.end65_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call52)
  %cmp60 = icmp eq i32 %call52, -517
  br i1 %cmp60, label %if.else.out_disable_pclk_crit_edge, label %if.else.if.end65_crit_edge

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.else.out_disable_pclk_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_pclk

if.end65:                                         ; preds = %if.else.if.end65_crit_edge, %if.then54.if.end65_crit_edge
  %dw_wdt_ident.sink = phi ptr [ @dw_wdt_pt_ident, %if.then54.if.end65_crit_edge ], [ @dw_wdt_ident, %if.else.if.end65_crit_edge ]
  %info64 = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %info64 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dw_wdt_ident.sink, ptr %info64, align 4
  %17 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rst, align 4
  %call67 = tail call i32 @reset_control_deassert(ptr noundef %18) #7
  %call68 = tail call fastcc i32 @dw_wdt_init_timeouts(ptr noundef nonnull %call.i, ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end65.out_disable_clk_crit_edge

if.end65.out_disable_clk_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_clk

if.end71:                                         ; preds = %if.end65
  %wdd72 = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6
  %ops = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dw_wdt_ops, ptr %ops, align 4
  %call73 = tail call fastcc i32 @dw_wdt_get_min_timeout(ptr noundef nonnull %call.i)
  %min_timeout = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6, i32 9
  %20 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call73, ptr %min_timeout, align 4
  %sec.i = getelementptr %struct.dw_wdt, ptr %call.i, i32 0, i32 5, i32 15, i32 1
  %21 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sec.i, align 4
  %conv.i = zext i32 %22 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %msec1.i = getelementptr %struct.dw_wdt, ptr %call.i, i32 0, i32 5, i32 15, i32 2
  %23 = ptrtoint ptr %msec1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msec1.i, align 4
  %conv2.i = zext i32 %24 to i64
  %add.i = add nuw nsw i64 %mul.i, %conv2.i
  %25 = tail call i64 @llvm.umin.i64(i64 %add.i, i64 4294967295) #7
  %26 = trunc i64 %25 to i32
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6, i32 12
  %27 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %max_hw_heartbeat_ms, align 4
  %parent = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev1, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6, i32 16
  %29 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i, align 4
  %30 = load i8, ptr @nowayout, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool75.not = icmp eq i8 %30, 0
  br i1 %tobool75.not, label %if.end71.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end71.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %status.i = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #7
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end71.watchdog_set_nowayout.exit_crit_edge
  %call76 = tail call i32 @watchdog_init_timeout(ptr noundef %wdd72, i32 noundef 0, ptr noundef %dev1) #7
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool78.not = icmp eq i32 %34, 0
  br i1 %tobool78.not, label %if.else81, label %if.then79

if.then79:                                        ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = tail call fastcc i32 @dw_wdt_get_timeout(ptr noundef nonnull %call.i)
  %timeout = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6, i32 7
  %35 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call80, ptr %timeout, align 4
  %status = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #7
  br label %if.end84

if.else81:                                        ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #9
  %timeout82 = getelementptr inbounds %struct.dw_wdt, ptr %call.i, i32 0, i32 6, i32 7
  %36 = ptrtoint ptr %timeout82 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 30, ptr %timeout82, align 4
  %call83 = tail call i32 @watchdog_init_timeout(ptr noundef %wdd72, i32 noundef 0, ptr noundef %dev1) #7
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.then79
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @watchdog_set_restart_priority(ptr noundef %wdd72, i32 noundef 128) #7
  %call85 = tail call i32 @watchdog_register_device(ptr noundef %wdd72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end84.out_disable_pclk_crit_edge

if.end84.out_disable_pclk_crit_edge:              ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_pclk

if.end88:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dw_wdt_dbgfs_init(ptr noundef nonnull %call.i)
  br label %cleanup

out_disable_pclk:                                 ; preds = %if.end84.out_disable_pclk_crit_edge, %if.else.out_disable_pclk_crit_edge, %if.then54.out_disable_pclk_crit_edge, %if.then48
  %ret.0 = phi i32 [ %13, %if.then48 ], [ %call.i177, %if.then54.out_disable_pclk_crit_edge ], [ %call85, %if.end84.out_disable_pclk_crit_edge ], [ -517, %if.else.out_disable_pclk_crit_edge ]
  %38 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %39) #7
  tail call void @clk_unprepare(ptr noundef %39) #7
  br label %out_disable_clk

out_disable_clk:                                  ; preds = %out_disable_pclk, %if.end65.out_disable_clk_crit_edge, %if.then3.i172, %if.end38.out_disable_clk_crit_edge, %if.then35, %if.end26.out_disable_clk_crit_edge
  %ret.1 = phi i32 [ %11, %if.then35 ], [ %ret.0, %out_disable_pclk ], [ %call68, %if.end65.out_disable_clk_crit_edge ], [ -22, %if.end26.out_disable_clk_crit_edge ], [ %call1.i169, %if.then3.i172 ], [ %call.i167, %if.end38.out_disable_clk_crit_edge ]
  %40 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %41) #7
  tail call void @clk_unprepare(ptr noundef %41) #7
  br label %cleanup

cleanup:                                          ; preds = %out_disable_clk, %if.end88, %if.then3.i, %if.end21.cleanup_crit_edge, %if.then17, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %4, %if.then17 ], [ %ret.1, %out_disable_clk ], [ 0, %if.end88 ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i165, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_drv_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dbgfs_dir.i = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #7
  %wdd = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 6
  tail call void @watchdog_unregister_device(ptr noundef %wdd) #7
  %rst = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %pclk = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %clk = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_wdt_update_mode(ptr nocapture noundef %dw_wdt, i32 noundef %rmod) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dw_wdt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw_wdt, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rmod)
  %cmp = icmp eq i32 %rmod, 2
  %3 = and i32 %2, -33554433
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %cmp, i32 2, i32 0
  %val.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %6 = ptrtoint ptr %dw_wdt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dw_wdt, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !95
  %rmod4 = getelementptr inbounds %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 4
  %8 = ptrtoint ptr %rmod4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rmod, ptr %rmod4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devid, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wdd = getelementptr inbounds %struct.dw_wdt, ptr %devid, i32 0, i32 6
  tail call void @watchdog_notify_pretimeout(ptr noundef %wdd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_wdt_init_timeouts(ptr nocapture noundef %dw_wdt, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %of_tops = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %of_tops) #7
  %0 = call ptr @memset(ptr %of_tops, i32 255, i32 64)
  %1 = ptrtoint ptr %dw_wdt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dw_wdt, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 244
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %4 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.else:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.else.dev_of_node.exit_crit_edge, label %if.end.i

if.else.dev_of_node.exit_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %if.else.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ null, %if.else.dev_of_node.exit_crit_edge ]
  %call3 = call i32 @of_property_read_variable_u32_array(ptr noundef %retval.0.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %of_tops, i32 noundef 16, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %dev_of_node.exit.if.end7_crit_edge

dev_of_node.exit.if.end7_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end, %dev_of_node.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %tops.0 = phi ptr [ @dw_wdt_fix_tops, %do.end ], [ @dw_wdt_fix_tops, %entry.if.end7_crit_edge ], [ %of_tops, %dev_of_node.exit.if.end7_crit_edge ]
  %rate.i = getelementptr inbounds %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.end7
  %val.0358.i = phi i32 [ 0, %if.end7 ], [ %inc217.i, %for.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %tops.0, i32 %val.0358.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate.i, align 4
  %div.i = udiv i32 %8, %10
  %conv.i = zext i32 %8 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp171.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !98

if.then175.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv176.i = trunc i64 %mul.i to i32
  %div179.i = udiv i32 %conv176.i, %10
  %conv180.i = zext i32 %div179.i to i64
  br label %if.end185.i

if.else181.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %mul.i) #11, !srcloc !99
  %asmresult1.i.i = extractvalue { i64, i64 } %11, 1
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.else181.i, %if.then175.i
  %msec.0.i = phi i64 [ %conv180.i, %if.then175.i ], [ %asmresult1.i.i, %if.else181.i ]
  %conv188.i = zext i32 %div.i to i64
  %mul189.neg.i = mul nuw i64 %conv188.i, 4294966296
  %sub190.i = add i64 %msec.0.i, %mul189.neg.i
  %conv191.i = trunc i64 %sub190.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0358.i)
  %cmp194347.not.i = icmp eq i32 %val.0358.i, 0
  br i1 %cmp194347.not.i, label %if.end185.i.for.end.i_crit_edge, label %if.end185.i.for.body196.i_crit_edge

if.end185.i.for.body196.i_crit_edge:              ; preds = %if.end185.i
  br label %for.body196.i

if.end185.i.for.end.i_crit_edge:                  ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body196.i:                                    ; preds = %for.inc.i.for.body196.i_crit_edge, %if.end185.i.for.body196.i_crit_edge
  %tout.sroa.13.0354.i = phi i32 [ %tout.sroa.13.1.i, %for.inc.i.for.body196.i_crit_edge ], [ %conv191.i, %if.end185.i.for.body196.i_crit_edge ]
  %tout.sroa.7.0352.i = phi i32 [ %tout.sroa.7.1.i, %for.inc.i.for.body196.i_crit_edge ], [ %div.i, %if.end185.i.for.body196.i_crit_edge ]
  %tout.sroa.0.0351.i = phi i32 [ %tout.sroa.0.1.i, %for.inc.i.for.body196.i_crit_edge ], [ %val.0358.i, %if.end185.i.for.body196.i_crit_edge ]
  %tidx.0348.i = phi i32 [ %inc.i, %for.inc.i.for.body196.i_crit_edge ], [ 0, %if.end185.i.for.body196.i_crit_edge ]
  %arrayidx197.i = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 %tidx.0348.i
  %sec199.i = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 %tidx.0348.i, i32 1
  %12 = ptrtoint ptr %sec199.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sec199.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tout.sroa.7.0352.i, i32 %13)
  %cmp200.i = icmp ugt i32 %tout.sroa.7.0352.i, %13
  br i1 %cmp200.i, label %for.body196.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body196.i.for.inc.i_crit_edge:                ; preds = %for.body196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body196.i
  call void @__sanitizer_cov_trace_cmp4(i32 %tout.sroa.7.0352.i, i32 %13)
  %cmp204.i = icmp eq i32 %tout.sroa.7.0352.i, %13
  br i1 %cmp204.i, label %land.lhs.true206.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

land.lhs.true206.i:                               ; preds = %lor.lhs.false.i
  %msec208.i = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 %tidx.0348.i, i32 2
  %14 = ptrtoint ptr %msec208.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msec208.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tout.sroa.13.0354.i, i32 %15)
  %cmp209.not.i = icmp ult i32 %tout.sroa.13.0354.i, %15
  br i1 %cmp209.not.i, label %land.lhs.true206.i.do.body.i_crit_edge, label %land.lhs.true206.i.for.inc.i_crit_edge

land.lhs.true206.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true206.i.do.body.i_crit_edge:           ; preds = %land.lhs.true206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true206.i.do.body.i_crit_edge, %lor.lhs.false.i.do.body.i_crit_edge
  %16 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %__tmp.sroa.0.0.copyload.i = load i32, ptr %arrayidx197.i, align 4
  %__tmp.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx197.i, i32 4
  %17 = ptrtoint ptr %__tmp.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %__tmp.sroa.5.0.copyload.i = load i32, ptr %__tmp.sroa.5.0..sroa_idx.i, align 4
  %__tmp.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx197.i, i32 8
  %18 = ptrtoint ptr %__tmp.sroa.6.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %__tmp.sroa.6.0.copyload.i = load i32, ptr %__tmp.sroa.6.0..sroa_idx.i, align 4
  store i32 %tout.sroa.0.0351.i, ptr %arrayidx197.i, align 4
  store i32 %tout.sroa.7.0352.i, ptr %__tmp.sroa.5.0..sroa_idx.i, align 4
  store i32 %tout.sroa.13.0354.i, ptr %__tmp.sroa.6.0..sroa_idx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i, %land.lhs.true206.i.for.inc.i_crit_edge, %for.body196.i.for.inc.i_crit_edge
  %tout.sroa.0.1.i = phi i32 [ %tout.sroa.0.0351.i, %for.body196.i.for.inc.i_crit_edge ], [ %tout.sroa.0.0351.i, %land.lhs.true206.i.for.inc.i_crit_edge ], [ %__tmp.sroa.0.0.copyload.i, %do.body.i ]
  %tout.sroa.7.1.i = phi i32 [ %tout.sroa.7.0352.i, %for.body196.i.for.inc.i_crit_edge ], [ %tout.sroa.7.0352.i, %land.lhs.true206.i.for.inc.i_crit_edge ], [ %__tmp.sroa.5.0.copyload.i, %do.body.i ]
  %tout.sroa.13.1.i = phi i32 [ %tout.sroa.13.0354.i, %for.body196.i.for.inc.i_crit_edge ], [ %tout.sroa.13.0354.i, %land.lhs.true206.i.for.inc.i_crit_edge ], [ %__tmp.sroa.6.0.copyload.i, %do.body.i ]
  %inc.i = add nuw nsw i32 %tidx.0348.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %val.0358.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body196.i_crit_edge

for.inc.i.for.body196.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body196.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end185.i.for.end.i_crit_edge
  %tout.sroa.0.0.lcssa.i = phi i32 [ 0, %if.end185.i.for.end.i_crit_edge ], [ %tout.sroa.0.1.i, %for.inc.i.for.end.i_crit_edge ]
  %tout.sroa.7.0.lcssa.i = phi i32 [ %div.i, %if.end185.i.for.end.i_crit_edge ], [ %tout.sroa.7.1.i, %for.inc.i.for.end.i_crit_edge ]
  %tout.sroa.13.0.lcssa.i = phi i32 [ %conv191.i, %if.end185.i.for.end.i_crit_edge ], [ %tout.sroa.13.1.i, %for.inc.i.for.end.i_crit_edge ]
  %arrayidx215.i = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 %val.0358.i
  %19 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %tout.sroa.0.0.lcssa.i, ptr %arrayidx215.i, align 4
  %tout.sroa.7.0.arrayidx215.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx215.i, i32 4
  %20 = ptrtoint ptr %tout.sroa.7.0.arrayidx215.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %tout.sroa.7.0.lcssa.i, ptr %tout.sroa.7.0.arrayidx215.sroa_idx.i, align 4
  %tout.sroa.13.0.arrayidx215.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx215.i, i32 8
  %21 = ptrtoint ptr %tout.sroa.13.0.arrayidx215.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %tout.sroa.13.0.lcssa.i, ptr %tout.sroa.13.0.arrayidx215.sroa_idx.i, align 4
  %inc217.i = add nuw nsw i32 %val.0358.i, 1
  %exitcond360.not.i = icmp eq i32 %inc217.i, 16
  br i1 %exitcond360.not.i, label %dw_wdt_handle_tops.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

dw_wdt_handle_tops.exit:                          ; preds = %for.end.i
  %sec = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 15, i32 1
  %22 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not = icmp eq i32 %23, 0
  br i1 %tobool8.not, label %do.end12, label %dw_wdt_handle_tops.exit.cleanup_crit_edge

dw_wdt_handle_tops.exit.cleanup_crit_edge:        ; preds = %dw_wdt_handle_tops.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end12:                                         ; preds = %dw_wdt_handle_tops.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %dw_wdt_handle_tops.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end12 ], [ 0, %dw_wdt_handle_tops.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %of_tops) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_wdt_get_min_timeout(ptr nocapture noundef readonly %dw_wdt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sec = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 0, i32 1
  %0 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.inc, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %entry
  %sec.1 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 1, i32 1
  %2 = ptrtoint ptr %sec.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sec.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %sec.2 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 2, i32 1
  %4 = ptrtoint ptr %sec.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sec.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.2 = icmp eq i32 %5, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %sec.3 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 3, i32 1
  %6 = ptrtoint ptr %sec.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sec.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.3 = icmp eq i32 %7, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %sec.4 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 4, i32 1
  %8 = ptrtoint ptr %sec.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sec.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.4 = icmp eq i32 %9, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %sec.5 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 5, i32 1
  %10 = ptrtoint ptr %sec.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sec.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.5 = icmp eq i32 %11, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %sec.6 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 6, i32 1
  %12 = ptrtoint ptr %sec.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sec.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.6 = icmp eq i32 %13, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %sec.7 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 7, i32 1
  %14 = ptrtoint ptr %sec.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sec.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.7 = icmp eq i32 %15, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %sec.8 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 8, i32 1
  %16 = ptrtoint ptr %sec.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sec.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.8 = icmp eq i32 %17, 0
  br i1 %tobool.not.8, label %for.inc.8, label %for.inc.7.for.end_crit_edge

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %sec.9 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 9, i32 1
  %18 = ptrtoint ptr %sec.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sec.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.9 = icmp eq i32 %19, 0
  br i1 %tobool.not.9, label %for.inc.9, label %for.inc.8.for.end_crit_edge

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %sec.10 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 10, i32 1
  %20 = ptrtoint ptr %sec.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sec.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.10 = icmp eq i32 %21, 0
  br i1 %tobool.not.10, label %for.inc.10, label %for.inc.9.for.end_crit_edge

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %sec.11 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 11, i32 1
  %22 = ptrtoint ptr %sec.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sec.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.11 = icmp eq i32 %23, 0
  br i1 %tobool.not.11, label %for.inc.11, label %for.inc.10.for.end_crit_edge

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %sec.12 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 12, i32 1
  %24 = ptrtoint ptr %sec.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sec.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.12 = icmp eq i32 %25, 0
  br i1 %tobool.not.12, label %for.inc.12, label %for.inc.11.for.end_crit_edge

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %sec.13 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 13, i32 1
  %26 = ptrtoint ptr %sec.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sec.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.13 = icmp eq i32 %27, 0
  br i1 %tobool.not.13, label %for.inc.13, label %for.inc.12.for.end_crit_edge

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %sec.14 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 14, i32 1
  %28 = ptrtoint ptr %sec.14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sec.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.14 = icmp eq i32 %29, 0
  br i1 %tobool.not.14, label %for.inc.14, label %for.inc.13.for.end_crit_edge

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  %sec.15 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 15, i32 1
  %30 = ptrtoint ptr %sec.15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sec.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.15 = icmp eq i32 %31, 0
  %spec.select = select i1 %tobool.not.15, i32 16, i32 15
  br label %for.end

for.end:                                          ; preds = %for.inc.14, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ %spec.select, %for.inc.14 ]
  %sec3 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 %idx.0.lcssa, i32 1
  %32 = ptrtoint ptr %sec3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sec3, align 4
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_wdt_get_timeout(ptr nocapture noundef readonly %dw_wdt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dw_wdt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw_wdt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !91
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %and = and i32 %3, 15
  %arrayidx = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and)
  %cmp3 = icmp eq i32 %5, %and
  br i1 %cmp3, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and)
  %cmp3.1 = icmp eq i32 %7, %and
  br i1 %cmp3.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and)
  %cmp3.2 = icmp eq i32 %9, %and
  br i1 %cmp3.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and)
  %cmp3.3 = icmp eq i32 %11, %and
  br i1 %cmp3.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %and)
  %cmp3.4 = icmp eq i32 %13, %and
  br i1 %cmp3.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and)
  %cmp3.5 = icmp eq i32 %15, %and
  br i1 %cmp3.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %and)
  %cmp3.6 = icmp eq i32 %17, %and
  br i1 %cmp3.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and)
  %cmp3.7 = icmp eq i32 %19, %and
  br i1 %cmp3.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 8
  %20 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and)
  %cmp3.8 = icmp eq i32 %21, %and
  br i1 %cmp3.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 9
  %22 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %and)
  %cmp3.9 = icmp eq i32 %23, %and
  br i1 %cmp3.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 10
  %24 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %and)
  %cmp3.10 = icmp eq i32 %25, %and
  br i1 %cmp3.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 11
  %26 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %and)
  %cmp3.11 = icmp eq i32 %27, %and
  br i1 %cmp3.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 12
  %28 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %and)
  %cmp3.12 = icmp eq i32 %29, %and
  br i1 %cmp3.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 13
  %30 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %and)
  %cmp3.13 = icmp eq i32 %31, %and
  br i1 %cmp3.13, label %for.inc.12.for.end_crit_edge, label %for.inc.13

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 14
  %32 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %and)
  %cmp3.14 = icmp eq i32 %33, %and
  br i1 %cmp3.14, label %for.inc.13.for.end_crit_edge, label %for.inc.14

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.15 = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 15
  %34 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %and)
  %cmp3.15 = icmp eq i32 %35, %and
  %spec.select = select i1 %cmp3.15, i32 15, i32 16
  br label %for.end

for.end:                                          ; preds = %for.inc.14, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ %spec.select, %for.inc.14 ]
  %sec = getelementptr %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 5, i32 %idx.0.lcssa, i32 1
  %36 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sec, align 4
  %rmod = getelementptr inbounds %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 4
  %38 = ptrtoint ptr %rmod to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rmod, align 4
  %mul = mul i32 %39, %37
  ret i32 %mul
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_wdt_dbgfs_init(ptr nocapture noundef %dw_wdt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dw_wdt_dbgfs_regs, ptr %call.i, align 4
  %nregs = getelementptr inbounds %struct.debugfs_regset32, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %nregs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %nregs, align 4
  %4 = ptrtoint ptr %dw_wdt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dw_wdt, align 4
  %base = getelementptr inbounds %struct.debugfs_regset32, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %base, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef null) #7
  %dbgfs_dir = getelementptr inbounds %struct.dw_wdt, ptr %dw_wdt, i32 0, i32 10
  %11 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %dbgfs_dir, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef %call3, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_start(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wdd, i32 -212
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %call = tail call i32 @dw_wdt_set_timeout(ptr noundef %wdd, i32 noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 1979711488) #7, !srcloc !95
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %rmod.i = getelementptr i8, ptr %wdd, i32 -196
  %7 = ptrtoint ptr %rmod.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rmod.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp eq i32 %8, 2
  %9 = and i32 %6, -50331649
  %masksel.i = select i1 %cmp.i, i32 2, i32 0
  %10 = or i32 %9, 16777216
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %or2.i = or i32 %masksel.i, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #7
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !95
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_stop(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rst = getelementptr i8, ptr %wdd, i32 108
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @reset_control_assert(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wdd, i32 -212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 1979711488) #7, !srcloc !95
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_set_timeout(ptr noundef %wdd, i32 noundef %top_s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wdd, i32 -212
  %rmod = getelementptr i8, ptr %wdd, i32 -196
  %0 = ptrtoint ptr %rmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmod, align 4
  %add = add i32 %top_s, -1
  %sub = add i32 %add, %1
  %div = udiv i32 %sub, %1
  %sec.i = getelementptr i8, ptr %wdd, i32 -188
  %2 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div)
  %cmp1.not.i = icmp ult i32 %3, %div
  br i1 %cmp1.not.i, label %for.inc.i, label %entry.dw_wdt_find_best_top.exit_crit_edge

entry.dw_wdt_find_best_top.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.i:                                        ; preds = %entry
  %sec.1.i = getelementptr i8, ptr %wdd, i32 -176
  %4 = ptrtoint ptr %sec.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sec.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div)
  %cmp1.not.1.i = icmp ult i32 %5, %div
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.i.dw_wdt_find_best_top.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %sec.2.i = getelementptr i8, ptr %wdd, i32 -164
  %6 = ptrtoint ptr %sec.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sec.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div)
  %cmp1.not.2.i = icmp ult i32 %7, %div
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.1.i.dw_wdt_find_best_top.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %sec.3.i = getelementptr i8, ptr %wdd, i32 -152
  %8 = ptrtoint ptr %sec.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sec.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %div)
  %cmp1.not.3.i = icmp ult i32 %9, %div
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.2.i.dw_wdt_find_best_top.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %sec.4.i = getelementptr i8, ptr %wdd, i32 -140
  %10 = ptrtoint ptr %sec.4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sec.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div)
  %cmp1.not.4.i = icmp ult i32 %11, %div
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.3.i.dw_wdt_find_best_top.exit_crit_edge:  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %sec.5.i = getelementptr i8, ptr %wdd, i32 -128
  %12 = ptrtoint ptr %sec.5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sec.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div)
  %cmp1.not.5.i = icmp ult i32 %13, %div
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.4.i.dw_wdt_find_best_top.exit_crit_edge:  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %sec.6.i = getelementptr i8, ptr %wdd, i32 -116
  %14 = ptrtoint ptr %sec.6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sec.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div)
  %cmp1.not.6.i = icmp ult i32 %15, %div
  br i1 %cmp1.not.6.i, label %for.inc.6.i, label %for.inc.5.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.5.i.dw_wdt_find_best_top.exit_crit_edge:  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %sec.7.i = getelementptr i8, ptr %wdd, i32 -104
  %16 = ptrtoint ptr %sec.7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sec.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div)
  %cmp1.not.7.i = icmp ult i32 %17, %div
  br i1 %cmp1.not.7.i, label %for.inc.7.i, label %for.inc.6.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.6.i.dw_wdt_find_best_top.exit_crit_edge:  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %sec.8.i = getelementptr i8, ptr %wdd, i32 -92
  %18 = ptrtoint ptr %sec.8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sec.8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %div)
  %cmp1.not.8.i = icmp ult i32 %19, %div
  br i1 %cmp1.not.8.i, label %for.inc.8.i, label %for.inc.7.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.7.i.dw_wdt_find_best_top.exit_crit_edge:  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %sec.9.i = getelementptr i8, ptr %wdd, i32 -80
  %20 = ptrtoint ptr %sec.9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sec.9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %div)
  %cmp1.not.9.i = icmp ult i32 %21, %div
  br i1 %cmp1.not.9.i, label %for.inc.9.i, label %for.inc.8.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.8.i.dw_wdt_find_best_top.exit_crit_edge:  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %sec.10.i = getelementptr i8, ptr %wdd, i32 -68
  %22 = ptrtoint ptr %sec.10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sec.10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %div)
  %cmp1.not.10.i = icmp ult i32 %23, %div
  br i1 %cmp1.not.10.i, label %for.inc.10.i, label %for.inc.9.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.9.i.dw_wdt_find_best_top.exit_crit_edge:  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %sec.11.i = getelementptr i8, ptr %wdd, i32 -56
  %24 = ptrtoint ptr %sec.11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sec.11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %div)
  %cmp1.not.11.i = icmp ult i32 %25, %div
  br i1 %cmp1.not.11.i, label %for.inc.11.i, label %for.inc.10.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.10.i.dw_wdt_find_best_top.exit_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %sec.12.i = getelementptr i8, ptr %wdd, i32 -44
  %26 = ptrtoint ptr %sec.12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sec.12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %div)
  %cmp1.not.12.i = icmp ult i32 %27, %div
  br i1 %cmp1.not.12.i, label %for.inc.12.i, label %for.inc.11.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.11.i.dw_wdt_find_best_top.exit_crit_edge: ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %sec.13.i = getelementptr i8, ptr %wdd, i32 -32
  %28 = ptrtoint ptr %sec.13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sec.13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %div)
  %cmp1.not.13.i = icmp ult i32 %29, %div
  br i1 %cmp1.not.13.i, label %for.inc.13.i, label %for.inc.12.i.dw_wdt_find_best_top.exit_crit_edge

for.inc.12.i.dw_wdt_find_best_top.exit_crit_edge: ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_wdt_find_best_top.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  %sec.14.i = getelementptr i8, ptr %wdd, i32 -20
  %30 = ptrtoint ptr %sec.14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sec.14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %div)
  %cmp1.not.14.i = icmp ult i32 %31, %div
  %spec.select.i = select i1 %cmp1.not.14.i, i32 15, i32 14
  br label %dw_wdt_find_best_top.exit

dw_wdt_find_best_top.exit:                        ; preds = %for.inc.13.i, %for.inc.12.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.11.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.10.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.9.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.8.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.7.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.6.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.5.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.4.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.3.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.2.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.1.i.dw_wdt_find_best_top.exit_crit_edge, %for.inc.i.dw_wdt_find_best_top.exit_crit_edge, %entry.dw_wdt_find_best_top.exit_crit_edge
  %cmp2.i = phi i32 [ 13, %for.inc.12.i.dw_wdt_find_best_top.exit_crit_edge ], [ 12, %for.inc.11.i.dw_wdt_find_best_top.exit_crit_edge ], [ 11, %for.inc.10.i.dw_wdt_find_best_top.exit_crit_edge ], [ 10, %for.inc.9.i.dw_wdt_find_best_top.exit_crit_edge ], [ 9, %for.inc.8.i.dw_wdt_find_best_top.exit_crit_edge ], [ 8, %for.inc.7.i.dw_wdt_find_best_top.exit_crit_edge ], [ 7, %for.inc.6.i.dw_wdt_find_best_top.exit_crit_edge ], [ 6, %for.inc.5.i.dw_wdt_find_best_top.exit_crit_edge ], [ 5, %for.inc.4.i.dw_wdt_find_best_top.exit_crit_edge ], [ 4, %for.inc.3.i.dw_wdt_find_best_top.exit_crit_edge ], [ 3, %for.inc.2.i.dw_wdt_find_best_top.exit_crit_edge ], [ 2, %for.inc.1.i.dw_wdt_find_best_top.exit_crit_edge ], [ 1, %for.inc.i.dw_wdt_find_best_top.exit_crit_edge ], [ 0, %entry.dw_wdt_find_best_top.exit_crit_edge ], [ %spec.select.i, %for.inc.13.i ]
  %arrayidx6.i = getelementptr %struct.dw_wdt, ptr %add.ptr, i32 0, i32 5, i32 %cmp2.i
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx6.i, align 4
  %sec10.i = getelementptr %struct.dw_wdt, ptr %add.ptr, i32 0, i32 5, i32 %cmp2.i, i32 1
  %34 = ptrtoint ptr %sec10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sec10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %spec.select = select i1 %cmp, i32 %35, i32 0
  %36 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select, ptr %36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %shl = shl i32 %33, 4
  %or = or i32 %shl, %33
  %38 = tail call i32 @llvm.bswap.i32(i32 %or)
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %add.ptr4 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %38) #7, !srcloc !95
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %41 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %dw_wdt_find_best_top.exit.if.end8_crit_edge, label %if.then6

dw_wdt_find_best_top.exit.if.end8_crit_edge:      ; preds = %dw_wdt_find_best_top.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %dw_wdt_find_best_top.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  %add.ptr1.i = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 1979711488) #7, !srcloc !95
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %dw_wdt_find_best_top.exit.if.end8_crit_edge
  %mul = mul i32 %top_s, 1000
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 12
  %45 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_hw_heartbeat_ms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %46)
  %cmp9.not = icmp ugt i32 %mul, %46
  br i1 %cmp9.not, label %if.end8.if.end16_crit_edge, label %if.then10

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %rmod to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rmod, align 4
  %mul12 = mul i32 %48, %35
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end8.if.end16_crit_edge
  %mul12.sink = phi i32 [ %mul12, %if.then10 ], [ %top_s, %if.end8.if.end16_crit_edge ]
  %49 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul12.sink, ptr %49, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_set_pretimeout(ptr noundef %wdd, i32 noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wdd, i32 -212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req)
  %tobool.not = icmp eq i32 %req, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %3 = and i32 %2, -33554433
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %masksel.i = select i1 %tobool.not, i32 0, i32 2
  %val.0.i = or i32 %4, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !95
  %rmod4.i = getelementptr i8, ptr %wdd, i32 -196
  %8 = ptrtoint ptr %rmod4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %rmod4.i, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout, align 4
  %call = tail call i32 @dw_wdt_set_timeout(ptr noundef %wdd, i32 noundef %10)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_get_timeleft(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wdd, i32 -212
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !91
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %rate = getelementptr i8, ptr %wdd, i32 -200
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate, align 4
  %div = udiv i32 %3, %5
  %rmod = getelementptr i8, ptr %wdd, i32 -196
  %6 = ptrtoint ptr %rmod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then11, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %11 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pretimeout, align 4
  %add = add i32 %12, %div
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %sec.0 = phi i32 [ %div, %if.then.if.end12_crit_edge ], [ %add, %if.then11 ], [ %div, %entry.if.end12_crit_edge ]
  ret i32 %sec.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_restart(ptr nocapture noundef %wdd, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wdd, i32 -212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #7, !srcloc !95
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %5 = and i32 %4, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !95
  %rmod4.i = getelementptr i8, ptr %wdd, i32 -196
  %8 = ptrtoint ptr %rmod4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %rmod4.i, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 1979711488) #7, !srcloc !95
  br label %while.body.preheader

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %18 = ptrtoint ptr %rmod4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rmod4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i = icmp eq i32 %19, 2
  %20 = and i32 %17, -50331649
  %masksel.i = select i1 %cmp.i, i32 2, i32 0
  %21 = or i32 %20, 16777216
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %or2.i = or i32 %masksel.i, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #7
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !95
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.else, %do.body2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.012 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 500, %while.body.preheader ]
  %dec = add nsw i32 %__ms.012, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !91
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %control = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %control, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !91
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  %timeout = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %timeout, align 4
  %pclk = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %clk = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_wdt_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %pclk = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call.i24 = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.end.i28, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i28:                                       ; preds = %if.end
  %call1.i26 = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool2.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool2.not.i27, label %do.body, label %if.then3.i29

if.then3.i29:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i29, %if.end.if.then4_crit_edge
  %retval.0.i30.ph = phi i32 [ %call1.i26, %if.then3.i29 ], [ %call.i24, %if.end.if.then4_crit_edge ]
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %cleanup

do.body:                                          ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %timeout = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %control = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %control, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr1.i = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 1979711488) #7, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then4, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i30.ph, %if.then4 ], [ 0, %do.body ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/dw_wdt.c", i32 67, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype227, !1, !"__UNIQUE_ID_nowayouttype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout228, !4, !"__UNIQUE_ID_nowayout228", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/dw_wdt.c", i32 68, i32 1}
!5 = !{ptr @__initcall__kmod_dw_wdt__229_717_dw_wdt_driver_init6, !6, !"__initcall__kmod_dw_wdt__229_717_dw_wdt_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/dw_wdt.c", i32 717, i32 1}
!7 = !{ptr @__exitcall_dw_wdt_driver_exit, !6, !"__exitcall_dw_wdt_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author230, !9, !"__UNIQUE_ID_author230", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/dw_wdt.c", i32 719, i32 1}
!10 = !{ptr @__UNIQUE_ID_description231, !11, !"__UNIQUE_ID_description231", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/dw_wdt.c", i32 720, i32 1}
!12 = !{ptr @__UNIQUE_ID_file232, !13, !"__UNIQUE_ID_file232", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/dw_wdt.c", i32 721, i32 1}
!14 = !{ptr @__UNIQUE_ID_license233, !13, !"__UNIQUE_ID_license233", i1 false, i1 false}
!15 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!16 = !{ptr @nowayout, !17, !"nowayout", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/dw_wdt.c", i32 66, i32 13}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/dw_wdt.c", i32 711, i32 11}
!20 = !{ptr @dw_wdt_driver, !21, !"dw_wdt_driver", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/dw_wdt.c", i32 707, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/dw_wdt.c", i32 571, i32 34}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/dw_wdt.c", i32 595, i32 44}
!26 = !{ptr @dw_wdt_pt_ident, !27, !"dw_wdt_pt_ident", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/dw_wdt.c", i32 343, i32 35}
!28 = !{ptr @dw_wdt_ident, !29, !"dw_wdt_ident", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/dw_wdt.c", i32 337, i32 35}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/dw_wdt.c", i32 477, i32 4}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/dw_wdt.c", i32 480, i32 4}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dw_wdt_init_timeouts._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @dw_wdt_init_timeouts._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/dw_wdt.c", i32 490, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @dw_wdt_init_timeouts._entry.9, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @dw_wdt_init_timeouts._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @dw_wdt_fix_tops, !46, !"dw_wdt_fix_tops", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/dw_wdt.c", i32 57, i32 18}
!47 = !{ptr @dw_wdt_ops, !48, !"dw_wdt_ops", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/dw_wdt.c", i32 349, i32 34}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/watchdog/dw_wdt.c", i32 535, i32 26}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/dw_wdt.c", i32 506, i32 2}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/dw_wdt.c", i32 507, i32 2}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/dw_wdt.c", i32 508, i32 2}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/dw_wdt.c", i32 509, i32 2}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/dw_wdt.c", i32 510, i32 2}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/dw_wdt.c", i32 511, i32 2}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/watchdog/dw_wdt.c", i32 512, i32 2}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/dw_wdt.c", i32 513, i32 2}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/watchdog/dw_wdt.c", i32 514, i32 2}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/dw_wdt.c", i32 515, i32 2}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/watchdog/dw_wdt.c", i32 516, i32 2}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/watchdog/dw_wdt.c", i32 517, i32 2}
!75 = !{ptr @dw_wdt_dbgfs_regs, !76, !"dw_wdt_dbgfs_regs", i1 false, i1 false}
!76 = !{!"../drivers/watchdog/dw_wdt.c", i32 505, i32 35}
!77 = !{ptr @dw_wdt_of_match, !78, !"dw_wdt_of_match", i1 false, i1 false}
!78 = !{!"../drivers/watchdog/dw_wdt.c", i32 700, i32 34}
!79 = !{ptr @dw_wdt_pm_ops, !80, !"dw_wdt_pm_ops", i1 false, i1 false}
!80 = !{!"../drivers/watchdog/dw_wdt.c", i32 415, i32 8}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
!91 = !{i64 5242862}
!92 = !{i64 2153956905}
!93 = !{i64 2153957409}
!94 = !{i64 2153957640}
!95 = !{i64 5242444}
!96 = !{i64 2153972020}
!97 = !{i64 2153984090}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148648159, i64 2148648439, i64 2148648773, i64 2148649107}
!100 = !{i64 2153958346}
!101 = !{i64 2153959724}
!102 = !{i64 2153963253}
!103 = !{i64 2153963489}
!104 = !{i64 2153961372}
!105 = !{i64 2153970952}
!106 = !{i64 2153971451}
!107 = !{i64 2153967419}
!108 = !{i64 2153967817}
!109 = !{i64 2153972519}
!110 = !{i64 2153973018}
!111 = !{i64 2153973251}
!112 = !{i64 2153973697}
