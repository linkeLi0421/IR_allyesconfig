; ModuleID = '/llk/IR_all_yes/drivers/watchdog/orion_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/orion_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.orion_watchdog_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
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
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.orion_watchdog = type { %struct.watchdog_device, ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_orion_wdt__187_674_orion_wdt_driver_init6 = internal global ptr @orion_wdt_driver_init, section ".initcall6.init", align 4
@orion_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @orion_wdt_probe, ptr @orion_wdt_remove, ptr @orion_wdt_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @orion_wdt_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_orion_wdt_driver_exit = internal global ptr @orion_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [64 x i8] c"orion_wdt.author=Sylver Bruneau <sylver.bruneau@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [47 x i8] c"orion_wdt.description=Orion Processor Watchdog\00", section ".modinfo", align 1
@__param_str_heartbeat = internal constant [20 x i8] c"orion_wdt.heartbeat\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype190 = internal constant [33 x i8] c"orion_wdt.parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat191 = internal constant [63 x i8] c"orion_wdt.parm=heartbeat:Initial watchdog heartbeat in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [19 x i8] c"orion_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype192 = internal constant [33 x i8] c"orion_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout193 = internal constant [76 x i8] c"orion_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [42 x i8] c"orion_wdt.file=drivers/watchdog/orion_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [25 x i8] c"orion_wdt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias196 = internal constant [35 x i8] c"orion_wdt.alias=platform:orion_wdt\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"orion_wdt\00", [22 x i8] zeroinitializer }, align 32
@orion_wdt_of_match_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada370_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armadaxp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada375_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada380_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@orion_wdt_info = internal global { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Orion Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@orion_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @orion_wdt_start, ptr @orion_wdt_stop, ptr @orion_wdt_ping, ptr null, ptr null, ptr null, ptr @orion_wdt_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@orion_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 579, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot initialize clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"orion_wdt_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/watchdog/orion_wdt.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@orion_wdt_probe._entry_ptr = internal global ptr @orion_wdt_probe._entry, section ".printk_index", align 4
@orion_wdt_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@orion_wdt_probe._entry_ptr.8 = internal global ptr @orion_wdt_probe._entry.6, section ".printk_index", align 4
@orion_wdt_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 626, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@orion_wdt_probe._entry_ptr.10 = internal global ptr @orion_wdt_probe._entry.9, section ".printk_index", align 4
@orion_wdt_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016orion_wdt: Initial timeout %d sec%s\0A\00", [57 x i8] zeroinitializer }, align 32
@orion_wdt_probe._entry_ptr.13 = internal global ptr @orion_wdt_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", nowayout\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,orion-wdt\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell,armada-370-wdt\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,armada-xp-wdt\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell,armada-375-wdt\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell,armada-380-wdt\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[Firmware Bug]: falling back to hardcoded RSTOUT reg %pa\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Watchdog Timeout\00", [47 x i8] zeroinitializer }, align 32
@orion_data = internal constant { %struct.orion_watchdog_data, [32 x i8] } { %struct.orion_watchdog_data { i32 36, i32 16, i32 2, i32 0, ptr @orion_wdt_clock_init, ptr @orion_enabled, ptr @orion_start, ptr @orion_stop }, [32 x i8] zeroinitializer }, align 32
@armada370_data = internal constant { %struct.orion_watchdog_data, [32 x i8] } { %struct.orion_watchdog_data { i32 52, i32 256, i32 256, i32 0, ptr @armada370_wdt_clock_init, ptr @orion_enabled, ptr @armada370_start, ptr @armada370_stop }, [32 x i8] zeroinitializer }, align 32
@armadaxp_data = internal constant { %struct.orion_watchdog_data, [32 x i8] } { %struct.orion_watchdog_data { i32 52, i32 256, i32 256, i32 0, ptr @armadaxp_wdt_clock_init, ptr @orion_enabled, ptr @armada370_start, ptr @armada370_stop }, [32 x i8] zeroinitializer }, align 32
@armada375_data = internal constant { %struct.orion_watchdog_data, [32 x i8] } { %struct.orion_watchdog_data { i32 52, i32 256, i32 256, i32 1024, ptr @armada375_wdt_clock_init, ptr @armada375_enabled, ptr @armada375_start, ptr @armada375_stop }, [32 x i8] zeroinitializer }, align 32
@armada380_data = internal constant { %struct.orion_watchdog_data, [32 x i8] } { %struct.orion_watchdog_data { i32 52, i32 256, i32 256, i32 1024, ptr @armadaxp_wdt_clock_init, ptr @armada375_enabled, ptr @armada375_start, ptr @armada375_stop }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fixed\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"orion_wdt_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 664, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 55, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 54, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 669, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"orion_wdt_of_match_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 473, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"orion_wdt_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 369, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"orion_wdt_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 374, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 579, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 614, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 626, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 637, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 513, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 520, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 521, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 528, i32 43 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 529, i32 36 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 417, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 384, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"orion_data\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 421, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"armada370_data\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 431, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant [14 x i8] c"armadaxp_data\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 441, i32 41 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"armada375_data\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 451, i32 41 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"armada380_data\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 462, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [32 x i8] c"../drivers/watchdog/orion_wdt.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 168, i32 51 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_alias196, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_heartbeat191, ptr @__UNIQUE_ID_heartbeattype190, ptr @__UNIQUE_ID_license195, ptr @__UNIQUE_ID_nowayout193, ptr @__UNIQUE_ID_nowayouttype192, ptr @__exitcall_orion_wdt_driver_exit, ptr @__initcall__kmod_orion_wdt__187_674_orion_wdt_driver_init6, ptr @__param_heartbeat, ptr @__param_nowayout, ptr @orion_wdt_driver_exit, ptr @orion_wdt_probe._entry, ptr @orion_wdt_probe._entry.11, ptr @orion_wdt_probe._entry.6, ptr @orion_wdt_probe._entry.9, ptr @orion_wdt_probe._entry_ptr, ptr @orion_wdt_probe._entry_ptr.10, ptr @orion_wdt_probe._entry_ptr.13, ptr @orion_wdt_probe._entry_ptr.8, ptr @orion_wdt_driver, ptr @heartbeat, ptr @nowayout, ptr @.str, ptr @orion_wdt_of_match_table, ptr @orion_wdt_info, ptr @orion_wdt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @orion_data, ptr @armada370_data, ptr @armadaxp_data, ptr @armada375_data, ptr @armada380_data, ptr @.str.23], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_wdt_of_match_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_wdt_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_wdt_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_wdt_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada370_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armadaxp_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada375_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada380_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @orion_wdt_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @orion_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @orion_wdt_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rstout.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @orion_wdt_of_match_table, ptr noundef %dev1) #8
  %tobool4.not = icmp eq ptr %call3, null
  %spec.store.select = select i1 %tobool4.not, ptr @orion_wdt_of_match_table, ptr %call3
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @orion_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @orion_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %min_timeout, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %spec.store.select, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %data9 = getelementptr inbounds %struct.orion_watchdog, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %data9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %data9, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call.i134 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i134, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %call.i134 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i134, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i134, i32 0, i32 1
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %9
  %add.i.i = add i32 %sub.i.i, %11
  %call4.i = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %9, i32 noundef %add.i.i) #8
  %reg.i = getelementptr inbounds %struct.orion_watchdog, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4.i, ptr %reg.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  %13 = ptrtoint ptr %call.i134 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i134, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rstout.i.i) #8
  %call.i.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i.i.i, align 4
  %sub.i.i.i = sub i32 1, %16
  %add.i.i.i = add i32 %sub.i.i.i, %18
  %call2.i.i = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %16, i32 noundef %add.i.i.i) #8
  br label %orion_wdt_ioremap_rstout.exit.i

if.end.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %14, -1048576
  %add.i91.i = or i32 %and.i, 131336
  %19 = ptrtoint ptr %rstout.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i91.i, ptr %rstout.i.i, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 417, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef nonnull %rstout.i.i) #8
  %20 = ptrtoint ptr %rstout.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rstout.i.i, align 4
  %call21.i.i = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %21, i32 noundef 4) #8
  br label %orion_wdt_ioremap_rstout.exit.i

orion_wdt_ioremap_rstout.exit.i:                  ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call2.i.i, %if.then.i.i ], [ %call21.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rstout.i.i) #8
  %rstout.i = getelementptr inbounds %struct.orion_watchdog, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %rstout.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i.i, ptr %rstout.i, align 4
  %tobool15.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool15.not.i, label %orion_wdt_ioremap_rstout.exit.i.cleanup_crit_edge, label %orion_wdt_ioremap_rstout.exit.i.if.end13_crit_edge

orion_wdt_ioremap_rstout.exit.i.if.end13_crit_edge: ; preds = %orion_wdt_ioremap_rstout.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

orion_wdt_ioremap_rstout.exit.i.cleanup_crit_edge: ; preds = %orion_wdt_ioremap_rstout.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end8.i
  %call18.i = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i, label %if.else.i.if.then22.i_crit_edge

if.else.i.if.then22.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %call20.i = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.else31.i, label %lor.lhs.false.i.if.then22.i_crit_edge

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false.i.if.then22.i_crit_edge, %if.else.i.if.then22.i_crit_edge
  %call23.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #8
  %rstout24.i = getelementptr inbounds %struct.orion_watchdog, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %rstout24.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call23.i, ptr %rstout24.i, align 4
  %cmp.i.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then22.i.orion_wdt_get_regs.exit_crit_edge, label %if.then22.i.if.end13_crit_edge

if.then22.i.if.end13_crit_edge:                   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then22.i.orion_wdt_get_regs.exit_crit_edge:    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %orion_wdt_get_regs.exit

if.else31.i:                                      ; preds = %lor.lhs.false.i
  %call32.i = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %lor.lhs.false34.i, label %if.else31.i.if.then37.i_crit_edge

if.else31.i.if.then37.i_crit_edge:                ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37.i

lor.lhs.false34.i:                                ; preds = %if.else31.i
  %call35.i = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %lor.lhs.false34.i.cleanup_crit_edge, label %lor.lhs.false34.i.if.then37.i_crit_edge

lor.lhs.false34.i.if.then37.i_crit_edge:          ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37.i

lor.lhs.false34.i.cleanup_crit_edge:              ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37.i:                                      ; preds = %lor.lhs.false34.i.if.then37.i_crit_edge, %if.else31.i.if.then37.i_crit_edge
  %call38.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #8
  %rstout39.i = getelementptr inbounds %struct.orion_watchdog, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %rstout39.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call38.i, ptr %rstout39.i, align 4
  %cmp.i92.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92.i, label %if.then37.i.orion_wdt_get_regs.exit_crit_edge, label %if.end45.i

if.then37.i.orion_wdt_get_regs.exit_crit_edge:    ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %orion_wdt_get_regs.exit

if.end45.i:                                       ; preds = %if.then37.i
  %call46.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #8
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %if.end45.i.cleanup_crit_edge, label %if.end49.i

if.end45.i.cleanup_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49.i:                                       ; preds = %if.end45.i
  %25 = ptrtoint ptr %call46.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call46.i, align 4
  %end.i93.i = getelementptr inbounds %struct.resource, ptr %call46.i, i32 0, i32 1
  %27 = ptrtoint ptr %end.i93.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end.i93.i, align 4
  %sub.i94.i = sub i32 1, %26
  %add.i95.i = add i32 %sub.i94.i, %28
  %call53.i = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %26, i32 noundef %add.i95.i) #8
  %rstout_mask.i = getelementptr inbounds %struct.orion_watchdog, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %rstout_mask.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call53.i, ptr %rstout_mask.i, align 4
  %tobool55.not.i = icmp eq ptr %call53.i, null
  br i1 %tobool55.not.i, label %if.end49.i.cleanup_crit_edge, label %if.end49.i.if.end13_crit_edge

if.end49.i.if.end13_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end49.i.cleanup_crit_edge:                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

orion_wdt_get_regs.exit:                          ; preds = %if.then37.i.orion_wdt_get_regs.exit_crit_edge, %if.then22.i.orion_wdt_get_regs.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call23.i, %if.then22.i.orion_wdt_get_regs.exit_crit_edge ], [ %call38.i, %if.then37.i.orion_wdt_get_regs.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end49.i.if.end13_crit_edge, %if.then22.i.if.end13_crit_edge, %orion_wdt_ioremap_rstout.exit.i.if.end13_crit_edge
  %30 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data9, align 4
  %clock_init = getelementptr inbounds %struct.orion_watchdog_data, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %clock_init to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clock_init, align 4
  %call15 = call i32 %33(ptr noundef %pdev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %clk_rate = getelementptr inbounds %struct.orion_watchdog, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clk_rate, align 4
  %div = udiv i32 -1, %35
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div, ptr %timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %37 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div, ptr %max_timeout, align 4
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev1, ptr %parent, align 4
  %39 = load i32, ptr @heartbeat, align 4
  %call26 = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %39, ptr noundef %dev1) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i, align 4
  %42 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data9, align 4
  %enabled.i = getelementptr inbounds %struct.orion_watchdog_data, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %enabled.i, align 4
  %call1.i = call i32 %45(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool31.not = icmp eq i32 %call1.i, 0
  br i1 %tobool31.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i, align 4
  %data.i137 = getelementptr inbounds %struct.orion_watchdog, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %data.i137 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i137, align 4
  %stop.i = getelementptr inbounds %struct.orion_watchdog_data, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stop.i, align 4
  %call1.i138 = call i32 %51(ptr noundef nonnull %call.i) #8
  br label %if.end36

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  call void @_set_bit(i32 noundef 3, ptr noundef %status) #8
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then32
  %call37 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp sgt i32 %call37, 0
  br i1 %cmp, label %if.then38, label %if.end36.if.end48_crit_edge

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then38:                                        ; preds = %if.end36
  %52 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev, align 8
  %call.i139 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call37, ptr noundef nonnull @orion_wdt_irq, ptr noundef null, i32 noundef 0, ptr noundef %53, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp41 = icmp slt i32 %call.i139, 0
  br i1 %cmp41, label %if.then38.disable_clk.sink.split_crit_edge, label %if.then38.if.end48_crit_edge

if.then38.if.end48_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then38.disable_clk.sink.split_crit_edge:       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk.sink.split

if.end48:                                         ; preds = %if.then38.if.end48_crit_edge, %if.end36.if.end48_crit_edge
  %call49 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp sgt i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end48.if.end62_crit_edge

if.end48.if.end62_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then51:                                        ; preds = %if.end48
  %54 = load i32, ptr @orion_wdt_info, align 4
  %or = or i32 %54, 512
  store i32 %or, ptr @orion_wdt_info, align 4
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 8
  %call.i140 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call49, ptr noundef nonnull @orion_wdt_pre_irq, ptr noundef null, i32 noundef 0, ptr noundef %56, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp55 = icmp slt i32 %call.i140, 0
  br i1 %cmp55, label %if.then51.disable_clk.sink.split_crit_edge, label %if.then51.if.end62_crit_edge

if.then51.if.end62_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then51.disable_clk.sink.split_crit_edge:       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk.sink.split

if.end62:                                         ; preds = %if.then51.if.end62_crit_edge, %if.end48.if.end62_crit_edge
  %57 = load i8, ptr @nowayout, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool64.not = icmp eq i8 %57, 0
  br i1 %tobool64.not, label %if.end62.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end62.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #8
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end62.watchdog_set_nowayout.exit_crit_edge
  %call66 = call i32 @watchdog_register_device(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.end72, label %watchdog_set_nowayout.exit.disable_clk_crit_edge

watchdog_set_nowayout.exit.disable_clk_crit_edge: ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk

do.end72:                                         ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %timeout, align 4
  %60 = load i8, ptr @nowayout, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool75.not = icmp eq i8 %60, 0
  %cond = select i1 %tobool75.not, ptr @.str.15, ptr @.str.14
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %59, ptr noundef nonnull %cond) #11
  br label %cleanup

disable_clk.sink.split:                           ; preds = %if.then51.disable_clk.sink.split_crit_edge, %if.then38.disable_clk.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %call.i139, %if.then38.disable_clk.sink.split_crit_edge ], [ %call.i140, %if.then51.disable_clk.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %disable_clk

disable_clk:                                      ; preds = %disable_clk.sink.split, %watchdog_set_nowayout.exit.disable_clk_crit_edge
  %ret.0 = phi i32 [ %call66, %watchdog_set_nowayout.exit.disable_clk_crit_edge ], [ %ret.0.ph, %disable_clk.sink.split ]
  %clk = getelementptr inbounds %struct.orion_watchdog, ptr %call.i, i32 0, i32 5
  %61 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %62) #8
  call void @clk_unprepare(ptr noundef %62) #8
  %63 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk, align 4
  call void @clk_put(ptr noundef %64) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %do.end72, %do.end, %orion_wdt_get_regs.exit, %if.end49.i.cleanup_crit_edge, %if.end45.i.cleanup_crit_edge, %lor.lhs.false34.i.cleanup_crit_edge, %orion_wdt_ioremap_rstout.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end ], [ %ret.0, %disable_clk ], [ 0, %do.end72 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %orion_wdt_get_regs.exit ], [ -19, %lor.lhs.false34.i.cleanup_crit_edge ], [ -12, %if.end49.i.cleanup_crit_edge ], [ -19, %if.end45.i.cleanup_crit_edge ], [ -19, %orion_wdt_ioremap_rstout.exit.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_wdt_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @watchdog_unregister_device(ptr noundef %1) #8
  %clk = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orion_wdt_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i2 = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %driver_data.i.i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i2, align 4
  %data.i = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %stop.i = getelementptr inbounds %struct.orion_watchdog_data, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop.i, align 4
  %call1.i = tail call i32 %7(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_wdt_stop(ptr noundef %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %stop = getelementptr inbounds %struct.orion_watchdog_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop, align 4
  %call1 = tail call i32 %5(ptr noundef %wdt_dev) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_wdt_irq(i32 noundef %irq, ptr nocapture noundef readnone %devid) #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.22) #12
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_wdt_pre_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.orion_watchdog, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void @atomic_io_modify(ptr noundef %add.ptr, i32 noundef 256, i32 noundef 0) #8
  tail call void @watchdog_notify_pretimeout(ptr noundef %devid) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_wdt_start(ptr noundef %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %start = getelementptr inbounds %struct.orion_watchdog_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start, align 4
  %call1 = tail call i32 %5(ptr noundef %wdt_dev) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_wdt_ping(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %clk_rate = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_rate, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %mul = mul i32 %5, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %reg = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !96
  %info = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_rate, align 4
  %19 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeout, align 4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 8
  %21 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pretimeout, align 4
  %sub = sub i32 %20, %22
  %mul6 = mul i32 %sub, %18
  %23 = tail call i32 @llvm.bswap.i32(i32 %mul6)
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg, align 4
  %add.ptr8 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %23) #8, !srcloc !96
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_wdt_get_timeleft(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !98
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %clk_rate = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_rate, align 4
  %div = udiv i32 %9, %11
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @atomic_io_modify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_wdt_clock_init(ptr noundef %pdev, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call) #8
  br label %if.then8

if.then8:                                         ; preds = %if.then3.i, %if.end.if.then8_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.if.then8_crit_edge ]
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %3) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call12 = tail call i32 @clk_get_rate(ptr noundef %5) #8
  %clk_rate = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call12, ptr %clk_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %retval.0.i.ph, %if.then8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_enabled(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rstout = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rstout, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !98
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %rstout_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rstout_enable_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rstout_enable_bit, align 4
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %reg = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %wdt_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wdt_enable_bit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wdt_enable_bit, align 4
  %and8 = and i32 %15, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9 = icmp ne i32 %and8, 0
  %phi.cast = zext i1 %tobool9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %16 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_start(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %clk_rate = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_rate, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %mul = mul i32 %5, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %reg = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !96
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %wdt_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wdt_enable_bit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wdt_enable_bit, align 4
  tail call void @atomic_io_modify(ptr noundef %14, i32 noundef %18, i32 noundef %18) #8
  %rstout = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rstout, align 4
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %rstout_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %rstout_enable_bit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rstout_enable_bit, align 4
  tail call void @atomic_io_modify(ptr noundef %20, i32 noundef %24, i32 noundef %24) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rstout = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstout, align 4
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %rstout_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rstout_enable_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rstout_enable_bit, align 4
  tail call void @atomic_io_modify(ptr noundef %3, i32 noundef %7, i32 noundef 0) #8
  %reg = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %wdt_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wdt_enable_bit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wdt_enable_bit, align 4
  tail call void @atomic_io_modify(ptr noundef %9, i32 noundef %13, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada370_wdt_clock_init(ptr noundef %pdev, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call) #8
  br label %if.then8

if.then8:                                         ; preds = %if.then3.i, %if.end.if.then8_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.if.then8_crit_edge ]
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %3) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  tail call void @atomic_io_modify(ptr noundef %5, i32 noundef 327680, i32 noundef 327680) #8
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call12 = tail call i32 @clk_get_rate(ptr noundef %7) #8
  %div21 = lshr i32 %call12, 5
  %clk_rate = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div21, ptr %clk_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %retval.0.i.ph, %if.then8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada370_start(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %clk_rate = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_rate, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %mul = mul i32 %5, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %reg1 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg1, align 4
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !96
  %13 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg1, align 4
  %add.ptr3 = getelementptr i8, ptr %14, i32 4
  tail call void @atomic_io_modify(ptr noundef %add.ptr3, i32 noundef -2147483648, i32 noundef 0) #8
  %15 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg1, align 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %wdt_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wdt_enable_bit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wdt_enable_bit, align 4
  tail call void @atomic_io_modify(ptr noundef %16, i32 noundef %20, i32 noundef %20) #8
  %rstout = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rstout, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !98
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %rstout_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %rstout_enable_bit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rstout_enable_bit, align 4
  %or = or i32 %28, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or)
  %30 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rstout, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !96
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada370_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rstout = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstout, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !98
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %rstout_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rstout_enable_bit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rstout_enable_bit, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %5, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rstout, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !96
  %reg4 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %reg4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg4, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %wdt_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wdt_enable_bit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wdt_enable_bit, align 4
  tail call void @atomic_io_modify(ptr noundef %14, i32 noundef %18, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armadaxp_wdt_clock_init(ptr nocapture noundef readonly %pdev, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.23) #8
  %clk = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call) #8
  br label %if.then8

if.then8:                                         ; preds = %if.then3.i, %if.end.if.then8_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.if.then8_crit_edge ]
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %5) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  tail call void @atomic_io_modify(ptr noundef %7, i32 noundef 5120, i32 noundef 5120) #8
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call12 = tail call i32 @clk_get_rate(ptr noundef %9) #8
  %clk_rate = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call12, ptr %clk_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %retval.0.i.ph, %if.then8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada375_wdt_clock_init(ptr noundef %pdev, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.23) #8
  %clk = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call) #8
  br label %if.then6

if.then6:                                         ; preds = %if.then3.i, %if.then.if.then6_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.if.then6_crit_edge ]
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %4) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  tail call void @atomic_io_modify(ptr noundef %6, i32 noundef 1024, i32 noundef 1024) #8
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %call9 = tail call i32 @clk_get_rate(ptr noundef %8) #8
  %clk_rate = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call9, ptr %clk_rate, align 4
  br label %cleanup

if.end10:                                         ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call12 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef null) #8
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %clk, align 4
  %cmp.i50 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call.i51 = tail call i32 @clk_prepare(ptr noundef %call12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not.i52 = icmp eq i32 %call.i51, 0
  br i1 %tobool.not.i52, label %if.end.i55, label %if.end19.if.then23_crit_edge

if.end19.if.then23_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.end.i55:                                       ; preds = %if.end19
  %call1.i53 = tail call i32 @clk_enable(ptr noundef %call12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool2.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool2.not.i54, label %if.end25, label %if.then3.i56

if.then3.i56:                                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call12) #8
  br label %if.then23

if.then23:                                        ; preds = %if.then3.i56, %if.end19.if.then23_crit_edge
  %retval.0.i57.ph = phi i32 [ %call1.i53, %if.then3.i56 ], [ %call.i51, %if.end19.if.then23_crit_edge ]
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %13) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  %reg26 = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %reg26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg26, align 4
  tail call void @atomic_io_modify(ptr noundef %15, i32 noundef 327680, i32 noundef 327680) #8
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call29 = tail call i32 @clk_get_rate(ptr noundef %17) #8
  %div49 = lshr i32 %call29, 5
  %clk_rate30 = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %clk_rate30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div49, ptr %clk_rate30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23, %if.then16, %if.end, %if.then6
  %retval.0 = phi i32 [ %11, %if.then16 ], [ %retval.0.i57.ph, %if.then23 ], [ 0, %if.end25 ], [ %retval.0.i.ph, %if.then6 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada375_enabled(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rstout_mask = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %rstout_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rstout_mask, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !98
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %rstout_mask_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rstout_mask_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rstout_mask_bit, align 4
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %rstout = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rstout, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %rstout_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %rstout_enable_bit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rstout_enable_bit, align 4
  %reg = getelementptr inbounds %struct.orion_watchdog, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %wdt_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wdt_enable_bit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wdt_enable_bit, align 4
  %and17 = and i32 %22, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18 = icmp ne i32 %and17, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and8 = and i32 %14, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp ne i32 %and8, 0
  %narrow = select i1 %tobool9.not, i1 %tobool18, i1 false
  %spec.select = zext i1 %narrow to i32
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry.land.end_crit_edge
  %24 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada375_start(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %clk_rate = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_rate, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %mul = mul i32 %5, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %reg1 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg1, align 4
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !96
  %info = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_rate, align 4
  %19 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeout, align 4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 8
  %21 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pretimeout, align 4
  %sub = sub i32 %20, %22
  %mul7 = mul i32 %sub, %18
  %23 = tail call i32 @llvm.bswap.i32(i32 %mul7)
  %24 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg1, align 4
  %add.ptr9 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %23) #8, !srcloc !96
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg1, align 4
  %add.ptr11 = getelementptr i8, ptr %27, i32 4
  tail call void @atomic_io_modify(ptr noundef %add.ptr11, i32 noundef -2147483648, i32 noundef 0) #8
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %wdt_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wdt_enable_bit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wdt_enable_bit, align 4
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and16 = lshr i32 %35, 7
  %36 = and i32 %and16, 4
  %37 = or i32 %36, %31
  %38 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg1, align 4
  tail call void @atomic_io_modify(ptr noundef %39, i32 noundef %37, i32 noundef %37) #8
  %rstout = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rstout, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !98
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %rstout_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %rstout_enable_bit to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rstout_enable_bit, align 4
  %or25 = or i32 %47, %43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %49 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rstout, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #8, !srcloc !96
  %rstout_mask = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %rstout_mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rstout_mask, align 4
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %rstout_mask_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %rstout_mask_bit to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rstout_mask_bit, align 4
  tail call void @atomic_io_modify(ptr noundef %52, i32 noundef %56, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada375_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rstout_mask = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rstout_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstout_mask, align 4
  %data = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %rstout_mask_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rstout_mask_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rstout_mask_bit, align 4
  tail call void @atomic_io_modify(ptr noundef %3, i32 noundef %7, i32 noundef %7) #8
  %rstout = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rstout, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !98
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %rstout_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rstout_enable_bit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rstout_enable_bit, align 4
  %neg = xor i32 %15, -1
  %and = and i32 %11, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and)
  %17 = ptrtoint ptr %rstout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rstout, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !96
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %wdt_enable_bit = getelementptr inbounds %struct.orion_watchdog_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wdt_enable_bit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wdt_enable_bit, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 3
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %and8 = lshr i32 %26, 7
  %27 = and i32 %and8, 4
  %28 = or i32 %27, %22
  %reg9 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg9, align 4
  tail call void @atomic_io_modify(ptr noundef %30, i32 noundef %28, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_orion_wdt__187_674_orion_wdt_driver_init6, !1, !"__initcall__kmod_orion_wdt__187_674_orion_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/orion_wdt.c", i32 674, i32 1}
!2 = !{ptr @__exitcall_orion_wdt_driver_exit, !1, !"__exitcall_orion_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/orion_wdt.c", i32 676, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/orion_wdt.c", i32 677, i32 1}
!7 = !{ptr @__param_heartbeat, !8, !"__param_heartbeat", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/orion_wdt.c", i32 679, i32 1}
!9 = !{ptr @__UNIQUE_ID_heartbeattype190, !8, !"__UNIQUE_ID_heartbeattype190", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_heartbeat191, !11, !"__UNIQUE_ID_heartbeat191", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/orion_wdt.c", i32 680, i32 1}
!12 = !{ptr @__param_nowayout, !13, !"__param_nowayout", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/orion_wdt.c", i32 682, i32 1}
!14 = !{ptr @__UNIQUE_ID_nowayouttype192, !13, !"__UNIQUE_ID_nowayouttype192", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_nowayout193, !16, !"__UNIQUE_ID_nowayout193", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/orion_wdt.c", i32 683, i32 1}
!17 = !{ptr @__UNIQUE_ID_file194, !18, !"__UNIQUE_ID_file194", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/orion_wdt.c", i32 686, i32 1}
!19 = !{ptr @__UNIQUE_ID_license195, !18, !"__UNIQUE_ID_license195", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias196, !21, !"__UNIQUE_ID_alias196", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/orion_wdt.c", i32 687, i32 1}
!22 = !{ptr @heartbeat, !23, !"heartbeat", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/orion_wdt.c", i32 55, i32 12}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/orion_wdt.c", i32 669, i32 11}
!26 = !{ptr @orion_wdt_driver, !27, !"orion_wdt_driver", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/orion_wdt.c", i32 664, i32 31}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/orion_wdt.c", i32 579, i32 3}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @orion_wdt_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @orion_wdt_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/orion_wdt.c", i32 614, i32 4}
!38 = !{ptr @orion_wdt_probe._entry.6, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @orion_wdt_probe._entry_ptr.8, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @orion_wdt_probe._entry.9, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/orion_wdt.c", i32 626, i32 4}
!42 = !{ptr @orion_wdt_probe._entry_ptr.10, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/orion_wdt.c", i32 637, i32 2}
!45 = !{ptr @orion_wdt_probe._entry.11, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @orion_wdt_probe._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @orion_wdt_info, !50, !"orion_wdt_info", i1 false, i1 false}
!50 = !{!"../drivers/watchdog/orion_wdt.c", i32 369, i32 29}
!51 = !{ptr @orion_wdt_ops, !52, !"orion_wdt_ops", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/orion_wdt.c", i32 374, i32 34}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/orion_wdt.c", i32 513, i32 36}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/orion_wdt.c", i32 520, i32 43}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/orion_wdt.c", i32 521, i32 36}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/orion_wdt.c", i32 528, i32 43}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/orion_wdt.c", i32 529, i32 36}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/watchdog/orion_wdt.c", i32 417, i32 2}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/orion_wdt.c", i32 384, i32 8}
!67 = !{ptr @orion_wdt_of_match_table, !68, !"orion_wdt_of_match_table", i1 false, i1 false}
!68 = !{!"../drivers/watchdog/orion_wdt.c", i32 473, i32 34}
!69 = !{ptr @orion_data, !70, !"orion_data", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/orion_wdt.c", i32 421, i32 41}
!71 = !{ptr @armada370_data, !72, !"armada370_data", i1 false, i1 false}
!72 = !{!"../drivers/watchdog/orion_wdt.c", i32 431, i32 41}
!73 = !{ptr @armadaxp_data, !74, !"armadaxp_data", i1 false, i1 false}
!74 = !{!"../drivers/watchdog/orion_wdt.c", i32 441, i32 41}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/watchdog/orion_wdt.c", i32 168, i32 51}
!77 = !{ptr @armada375_data, !78, !"armada375_data", i1 false, i1 false}
!78 = !{!"../drivers/watchdog/orion_wdt.c", i32 451, i32 41}
!79 = !{ptr @armada380_data, !80, !"armada380_data", i1 false, i1 false}
!80 = !{!"../drivers/watchdog/orion_wdt.c", i32 462, i32 41}
!81 = !{ptr @__param_str_heartbeat, !8, !"__param_str_heartbeat", i1 false, i1 false}
!82 = !{ptr @__param_str_nowayout, !13, !"__param_str_nowayout", i1 false, i1 false}
!83 = !{ptr @nowayout, !84, !"nowayout", i1 false, i1 false}
!84 = !{!"../drivers/watchdog/orion_wdt.c", i32 54, i32 13}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
!95 = !{i64 2153195062}
!96 = !{i64 4912124}
!97 = !{i64 2153195628}
!98 = !{i64 4912542}
!99 = !{i64 2153204958}
!100 = !{i64 2153202450}
!101 = !{i64 2153202943}
!102 = !{i64 2153199908}
!103 = !{i64 2153198420}
!104 = !{i64 2153199265}
!105 = !{i64 2153199473}
!106 = !{i64 2153201604}
!107 = !{i64 2153201812}
!108 = !{i64 2153203425}
!109 = !{i64 2153203887}
!110 = !{i64 2153204380}
!111 = !{i64 2153196228}
!112 = !{i64 2153196794}
!113 = !{i64 2153197777}
!114 = !{i64 2153197985}
!115 = !{i64 2153200669}
!116 = !{i64 2153200877}
