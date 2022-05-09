; ModuleID = '/llk/IR_all_yes/drivers/watchdog/sprd_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/sprd_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sprd_wdt = type { ptr, %struct.watchdog_device, ptr, ptr, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_sprd_wdt__187_377_sprd_watchdog_driver_init6 = internal global ptr @sprd_watchdog_driver_init, section ".initcall6.init", align 4
@sprd_watchdog_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_wdt_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_watchdog_driver_exit = internal global ptr @sprd_watchdog_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [53 x i8] c"sprd_wdt.author=Eric Long <eric.long@spreadtrum.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [65 x i8] c"sprd_wdt.description=Spreadtrum Watchdog Timer Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [40 x i8] c"sprd_wdt.file=drivers/watchdog/sprd_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [24 x i8] c"sprd_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sprd-wdt\00", [23 x i8] zeroinitializer }, align 32
@sprd_wdt_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sp9860-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sprd_wdt_pm_suspend, ptr @sprd_wdt_pm_resume, ptr @sprd_wdt_pm_suspend, ptr @sprd_wdt_pm_resume, ptr @sprd_wdt_pm_suspend, ptr @sprd_wdt_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@sprd_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 280, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't get the enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_wdt_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/watchdog/sprd_wdt.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_wdt_probe._entry_ptr = internal global ptr @sprd_wdt_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_enable\00", [21 x i8] zeroinitializer }, align 32
@sprd_wdt_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't get the rtc enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@sprd_wdt_probe._entry_ptr.10 = internal global ptr @sprd_wdt_probe._entry.8, section ".printk_index", align 4
@sprd_wdt_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 297, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to register irq\0A\00", [40 x i8] zeroinitializer }, align 32
@sprd_wdt_probe._entry_ptr.13 = internal global ptr @sprd_wdt_probe._entry.11, section ".printk_index", align 4
@sprd_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33664, i32 0, [32 x i8] c"Spreadtrum Watchdog Timer\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@sprd_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @sprd_wdt_start, ptr @sprd_wdt_stop, ptr null, ptr null, ptr @sprd_wdt_set_timeout, ptr @sprd_wdt_set_pretimeout, ptr @sprd_wdt_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sprd_wdt_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 310, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to enable wdt\0A\00", [42 x i8] zeroinitializer }, align 32
@sprd_wdt_probe._entry_ptr.16 = internal global ptr @sprd_wdt_probe._entry.14, section ".printk_index", align 4
@sprd_wdt_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to add wdt disable action\0A\00", [62 x i8] zeroinitializer }, align 32
@sprd_wdt_probe._entry_ptr.19 = internal global ptr @sprd_wdt_probe._entry.17, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"sprd_watchdog_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 369, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 372, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"sprd_wdt_match_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 363, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"sprd_wdt_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 358, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 278, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 280, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 284, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 286, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 297, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"sprd_wdt_info\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 256, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"sprd_wdt_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 247, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 310, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [31 x i8] c"../drivers/watchdog/sprd_wdt.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 315, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_sprd_watchdog_driver_exit, ptr @__initcall__kmod_sprd_wdt__187_377_sprd_watchdog_driver_init6, ptr @sprd_watchdog_driver_exit, ptr @sprd_wdt_probe._entry, ptr @sprd_wdt_probe._entry.11, ptr @sprd_wdt_probe._entry.14, ptr @sprd_wdt_probe._entry.17, ptr @sprd_wdt_probe._entry.8, ptr @sprd_wdt_probe._entry_ptr, ptr @sprd_wdt_probe._entry_ptr.10, ptr @sprd_wdt_probe._entry_ptr.13, ptr @sprd_wdt_probe._entry_ptr.16, ptr @sprd_wdt_probe._entry_ptr.19, ptr @sprd_watchdog_driver, ptr @.str, ptr @sprd_wdt_match_table, ptr @sprd_wdt_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @sprd_wdt_info, ptr @sprd_wdt_ops, ptr @.str.15, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_watchdog_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_wdt_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_wdt_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_wdt_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_wdt_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_wdt_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_watchdog_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_watchdog_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_watchdog_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_watchdog_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 124, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %enable = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %enable, align 4
  %cmp.i117 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enable, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #5
  %rtc_enable = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %rtc_enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call16, ptr %rtc_enable, align 4
  %cmp.i118 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %7 = ptrtoint ptr %rtc_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtc_enable, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call26 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call26, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call.i119 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call26, ptr noundef nonnull @sprd_wdt_isr, ptr noundef null, i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool33.not = icmp eq i32 %call.i119, 0
  br i1 %tobool33.not, label %if.end38, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %wdd = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 1
  %info = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sprd_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sprd_wdt_ops, ptr %ops, align 4
  %parent = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %parent, align 4
  %min_timeout = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 1, i32 9
  %14 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 1, i32 10
  %15 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 60, ptr %max_timeout, align 4
  %timeout = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 60, ptr %timeout, align 4
  %call44 = tail call fastcc i32 @sprd_wdt_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end50, label %do.end49

do.end49:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  %call.i120 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @sprd_wdt_disable, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i, label %if.end57, label %do.end56

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1373962240) #5, !srcloc !59
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !59
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 0) #5, !srcloc !59
  %23 = ptrtoint ptr %rtc_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtc_enable, align 4
  tail call void @clk_disable(ptr noundef %24) #5
  tail call void @clk_unprepare(ptr noundef %24) #5
  %25 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enable, align 4
  tail call void @clk_disable(ptr noundef %26) #5
  tail call void @clk_unprepare(ptr noundef %26) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end57:                                         ; preds = %if.end50
  %status.i = getelementptr inbounds %struct.sprd_wdt, ptr %call.i, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  %call60 = tail call i32 @watchdog_init_timeout(ptr noundef %wdd, i32 noundef 0, ptr noundef %dev1) #5
  %call62 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %wdd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121, i32 1373962240) #5, !srcloc !59
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !59
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %32, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #5, !srcloc !59
  %33 = ptrtoint ptr %rtc_enable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtc_enable, align 4
  tail call void @clk_disable(ptr noundef %34) #5
  tail call void @clk_unprepare(ptr noundef %34) #5
  %35 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enable, align 4
  tail call void @clk_disable(ptr noundef %36) #5
  tail call void @clk_unprepare(ptr noundef %36) #5
  br label %cleanup

if.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then64, %do.end56, %do.end49, %do.end37, %if.end25.cleanup_crit_edge, %do.end22, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %5, %do.end ], [ %9, %do.end22 ], [ %call.i119, %do.end37 ], [ %call44, %do.end49 ], [ %call.i120, %do.end56 ], [ %call62, %if.then64 ], [ 0, %if.end65 ], [ -12, %entry.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_wdt_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1373962240) #5, !srcloc !59
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !59
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 0) #5, !srcloc !59
  %wdd = getelementptr inbounds %struct.sprd_wdt, ptr %dev_id, i32 0, i32 1
  tail call void @watchdog_notify_pretimeout(ptr noundef %wdd) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_wdt_enable(ptr nocapture noundef readonly %wdt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enable = getelementptr inbounds %struct.sprd_wdt, ptr %wdt, i32 0, i32 2
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %1) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %rtc_enable = getelementptr inbounds %struct.sprd_wdt, ptr %wdt, i32 0, i32 3
  %2 = ptrtoint ptr %rtc_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_enable, align 4
  %call.i22 = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end.i26:                                       ; preds = %if.end
  %call1.i24 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end5, label %if.then3.i27

if.then3.i27:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %if.then3

if.then3:                                         ; preds = %if.then3.i27, %if.end.if.then3_crit_edge
  %retval.0.i28.ph = phi i32 [ %call1.i24, %if.then3.i27 ], [ %call.i22, %if.end.if.then3_crit_edge ]
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wdt, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1373962240) #5, !srcloc !59
  %8 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wdt, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !60
  %11 = or i32 %10, 67108864
  %12 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdt, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %11) #5, !srcloc !59
  %14 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wdt, align 4
  %add.ptr.i30 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #5, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i28.ph, %if.then3 ], [ 0, %if.end5 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_wdt_disable(ptr nocapture noundef readonly %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1373962240) #5, !srcloc !59
  %2 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !59
  %4 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_data, align 4
  %add.ptr.i7 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #5, !srcloc !59
  %rtc_enable = getelementptr inbounds %struct.sprd_wdt, ptr %_data, i32 0, i32 3
  %6 = ptrtoint ptr %rtc_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_enable, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %enable = getelementptr inbounds %struct.sprd_wdt, ptr %_data, i32 0, i32 2
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_wdt_start(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdd, i32 -4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %2 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pretimeout, align 4
  %call1 = tail call fastcc i32 @sprd_wdt_load_value(ptr noundef %add.ptr.i, i32 noundef %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 1373962240) #5, !srcloc !59
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !60
  %9 = or i32 %8, 184549376
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #5, !srcloc !59
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #5, !srcloc !59
  %status = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdd, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 1373962240) #5, !srcloc !59
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !60
  %5 = and i32 %4, -184549377
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #5, !srcloc !59
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #5, !srcloc !59
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_wdt_set_timeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %timeout)
  %cmp = icmp eq i32 %1, %timeout
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %wdd, i32 -4
  %2 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout, ptr %timeout1, align 4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %3 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pretimeout, align 4
  %call3 = tail call fastcc i32 @sprd_wdt_load_value(ptr noundef %add.ptr.i, i32 noundef %timeout, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_wdt_set_pretimeout(ptr nocapture noundef %wdd, i32 noundef %new_pretimeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 9
  %0 = ptrtoint ptr %min_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %new_pretimeout)
  %cmp = icmp ugt i32 %1, %new_pretimeout
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %wdd, i32 -4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %2 = ptrtoint ptr %pretimeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_pretimeout, ptr %pretimeout, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout, align 4
  %call1 = tail call fastcc i32 @sprd_wdt_load_value(ptr noundef %add.ptr.i, i32 noundef %4, i32 noundef %new_pretimeout)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_wdt_get_timeleft(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdd, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !60
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %shl.i = shl i32 %3, 16
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #5, !srcloc !60
  %7 = and i32 %6, -65536
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %or.i = or i32 %8, %shl.i
  %div2 = lshr i32 %or.i, 15
  ret i32 %div2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_wdt_load_value(ptr nocapture noundef readonly %wdt, i32 noundef %timeout, i32 noundef %pretimeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %timeout, 15
  %mul1 = shl i32 %pretimeout, 15
  %0 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !60
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %4 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdt, align 4
  %add.ptr.1 = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #5, !srcloc !60
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.not.1, label %if.end.if.end4_crit_edge, label %if.end.1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %8 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wdt, align 4
  %add.ptr.2 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #5, !srcloc !60
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.2 = icmp eq i32 %11, 0
  br i1 %tobool.not.2, label %if.end.1.if.end4_crit_edge, label %if.end.2

if.end.1.if.end4_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %12 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdt, align 4
  %add.ptr.3 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #5, !srcloc !60
  %15 = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.3 = icmp eq i32 %15, 0
  br i1 %tobool.not.3, label %if.end.2.if.end4_crit_edge, label %if.end.3

if.end.2.if.end4_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %16 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wdt, align 4
  %add.ptr.4 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #5, !srcloc !60
  %19 = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.4 = icmp eq i32 %19, 0
  br i1 %tobool.not.4, label %if.end.3.if.end4_crit_edge, label %if.end.4

if.end.3.if.end4_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %20 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wdt, align 4
  %add.ptr.5 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #5, !srcloc !60
  %23 = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.5 = icmp eq i32 %23, 0
  br i1 %tobool.not.5, label %if.end.4.if.end4_crit_edge, label %if.end.5

if.end.4.if.end4_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %24 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wdt, align 4
  %add.ptr.6 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6) #5, !srcloc !60
  %27 = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.6 = icmp eq i32 %27, 0
  br i1 %tobool.not.6, label %if.end.5.if.end4_crit_edge, label %if.end.6

if.end.5.if.end4_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %28 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wdt, align 4
  %add.ptr.7 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7) #5, !srcloc !60
  %31 = and i32 %30, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.7 = icmp eq i32 %31, 0
  br i1 %tobool.not.7, label %if.end.6.if.end4_crit_edge, label %if.end.7

if.end.6.if.end4_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %32 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wdt, align 4
  %add.ptr.8 = getelementptr i8, ptr %33, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8) #5, !srcloc !60
  %35 = and i32 %34, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.8 = icmp eq i32 %35, 0
  br i1 %tobool.not.8, label %if.end.7.if.end4_crit_edge, label %if.end.8

if.end.7.if.end4_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %36 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wdt, align 4
  %add.ptr.9 = getelementptr i8, ptr %37, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9) #5, !srcloc !60
  %39 = and i32 %38, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.9 = icmp eq i32 %39, 0
  br i1 %tobool.not.9, label %if.end.8.if.end4_crit_edge, label %if.end.9

if.end.8.if.end4_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.9:                                         ; preds = %if.end.8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %40 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wdt, align 4
  %add.ptr.10 = getelementptr i8, ptr %41, i32 16
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.10) #5, !srcloc !60
  %43 = and i32 %42, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.10 = icmp eq i32 %43, 0
  br i1 %tobool.not.10, label %if.end.9.if.end4_crit_edge, label %if.end.10

if.end.9.if.end4_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.10:                                        ; preds = %if.end.9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %44 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wdt, align 4
  %add.ptr.11 = getelementptr i8, ptr %45, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.11) #5, !srcloc !60
  %47 = and i32 %46, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.11 = icmp eq i32 %47, 0
  br i1 %tobool.not.11, label %if.end.10.cleanup_crit_edge, label %if.end.11

if.end.10.cleanup_crit_edge:                      ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.11:                                        ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end.9.if.end4_crit_edge, %if.end.8.if.end4_crit_edge, %if.end.7.if.end4_crit_edge, %if.end.6.if.end4_crit_edge, %if.end.5.if.end4_crit_edge, %if.end.4.if.end4_crit_edge, %if.end.3.if.end4_crit_edge, %if.end.2.if.end4_crit_edge, %if.end.1.if.end4_crit_edge, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %48 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wdt, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1373962240) #5, !srcloc !59
  %50 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %51 = shl i32 %50, 16
  %52 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wdt, align 4
  %add.ptr8 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %51) #5, !srcloc !59
  %and9 = shl i32 %timeout, 23
  %54 = and i32 %and9, 8388608
  %55 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wdt, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #5, !srcloc !59
  %57 = tail call i32 @llvm.bswap.i32(i32 %mul1)
  %58 = shl i32 %57, 16
  %59 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wdt, align 4
  %add.ptr15 = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %58) #5, !srcloc !59
  %and16 = shl i32 %pretimeout, 23
  %61 = and i32 %and16, 8388608
  %62 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wdt, align 4
  %add.ptr18 = getelementptr i8, ptr %63, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %61) #5, !srcloc !59
  %64 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wdt, align 4
  %add.ptr.i32 = getelementptr i8, ptr %65, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 0) #5, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.11, %if.end.10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %if.end.11 ], [ -16, %if.end.10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_wdt_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.sprd_wdt, ptr %1, i32 0, i32 1, i32 18
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
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 1373962240) #5, !srcloc !59
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  %9 = and i32 %8, -184549377
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %9) #5, !srcloc !59
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #5, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6, i32 1373962240) #5, !srcloc !59
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i7 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #5, !srcloc !59
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #5, !srcloc !59
  %rtc_enable.i = getelementptr inbounds %struct.sprd_wdt, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %rtc_enable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtc_enable.i, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  %enable.i = getelementptr inbounds %struct.sprd_wdt, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable.i, align 4
  tail call void @clk_disable(ptr noundef %23) #5
  tail call void @clk_unprepare(ptr noundef %23) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_wdt_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @sprd_wdt_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %status.i = getelementptr inbounds %struct.sprd_wdt, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %timeout.i = getelementptr inbounds %struct.sprd_wdt, ptr %1, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout.i, align 4
  %pretimeout.i = getelementptr inbounds %struct.sprd_wdt, ptr %1, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %pretimeout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pretimeout.i, align 4
  %call1.i = tail call fastcc i32 @sprd_wdt_load_value(ptr noundef %1, i32 noundef %5, i32 noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 1373962240) #5, !srcloc !59
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  %13 = or i32 %12, 184549376
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %13) #5, !srcloc !59
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 0) #5, !srcloc !59
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_sprd_wdt__187_377_sprd_watchdog_driver_init6, !1, !"__initcall__kmod_sprd_wdt__187_377_sprd_watchdog_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/sprd_wdt.c", i32 377, i32 1}
!2 = !{ptr @__exitcall_sprd_watchdog_driver_exit, !1, !"__exitcall_sprd_watchdog_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/sprd_wdt.c", i32 379, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/sprd_wdt.c", i32 380, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/sprd_wdt.c", i32 381, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/sprd_wdt.c", i32 372, i32 11}
!12 = !{ptr @sprd_watchdog_driver, !13, !"sprd_watchdog_driver", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/sprd_wdt.c", i32 369, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/sprd_wdt.c", i32 278, i32 34}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/sprd_wdt.c", i32 280, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sprd_wdt_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sprd_wdt_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/sprd_wdt.c", i32 284, i32 38}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/sprd_wdt.c", i32 286, i32 3}
!28 = !{ptr @sprd_wdt_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sprd_wdt_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/sprd_wdt.c", i32 297, i32 3}
!32 = !{ptr @sprd_wdt_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sprd_wdt_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/sprd_wdt.c", i32 310, i32 3}
!36 = !{ptr @sprd_wdt_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sprd_wdt_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/sprd_wdt.c", i32 315, i32 3}
!40 = !{ptr @sprd_wdt_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sprd_wdt_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sprd_wdt_info, !43, !"sprd_wdt_info", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/sprd_wdt.c", i32 256, i32 35}
!44 = !{ptr @sprd_wdt_ops, !45, !"sprd_wdt_ops", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/sprd_wdt.c", i32 247, i32 34}
!46 = !{ptr @sprd_wdt_match_table, !47, !"sprd_wdt_match_table", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/sprd_wdt.c", i32 363, i32 34}
!48 = !{ptr @sprd_wdt_pm_ops, !49, !"sprd_wdt_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/sprd_wdt.c", i32 358, i32 32}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 4905286}
!60 = !{i64 4905704}
