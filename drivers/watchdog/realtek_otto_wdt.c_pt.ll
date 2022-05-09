; ModuleID = '/llk/IR_all_yes/drivers/watchdog/realtek_otto_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/realtek_otto_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.otto_wdt_ctrl = type { %struct.watchdog_device, ptr, ptr, i32, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_realtek_otto_wdt__218_380_otto_wdt_driver_init6 = internal global ptr @otto_wdt_driver_init, section ".initcall6.init", align 4
@otto_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @otto_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @otto_wdt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_otto_wdt_driver_exit = internal global ptr @otto_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file219 = internal constant [56 x i8] c"realtek_otto_wdt.file=drivers/watchdog/realtek_otto_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license220 = internal constant [32 x i8] c"realtek_otto_wdt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author221 = internal constant [63 x i8] c"realtek_otto_wdt.author=Sander Vanheule <sander@svanheule.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description222 = internal constant [64 x i8] c"realtek_otto_wdt.description=Realtek Otto watchdog timer driver\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"realtek-otto-watchdog\00", [42 x i8] zeroinitializer }, align 32
@otto_wdt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rtl8380-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rtl8390-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rtl9300-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phase1\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"realtek-otto-wdt\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get IRQ for phase1\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid reset mode specified\0A\00", [34 x i8] zeroinitializer }, align 32
@otto_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33664, i32 0, [32 x i8] c"Realtek Otto watchdog timer\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@otto_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @otto_wdt_start, ptr @otto_wdt_stop, ptr @otto_wdt_ping, ptr null, ptr @otto_wdt_set_timeout, ptr @otto_wdt_set_pretimeout, ptr null, ptr @otto_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to set timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@otto_wdt_phase1_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 214, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phase 1 timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"otto_wdt_phase1_isr\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/watchdog/realtek_otto_wdt.c\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@otto_wdt_phase1_isr._entry_ptr = internal global ptr @otto_wdt_phase1_isr._entry, section ".printk_index", align 4
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"realtek,reset-mode\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"soc\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"software\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"otto_wdt_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 373, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 376, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"otto_wdt_ids\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 365, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 327, i32 51 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 332, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 334, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 338, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"otto_wdt_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 230, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"otto_wdt_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 220, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 360, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 249, i32 49 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 253, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 261, i32 43 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 214, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 268, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 285, i32 56 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 287, i32 61 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [39 x i8] c"../drivers/watchdog/realtek_otto_wdt.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 289, i32 61 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author221, ptr @__UNIQUE_ID_description222, ptr @__UNIQUE_ID_file219, ptr @__UNIQUE_ID_license220, ptr @__exitcall_otto_wdt_driver_exit, ptr @__initcall__kmod_realtek_otto_wdt__218_380_otto_wdt_driver_init6, ptr @otto_wdt_driver_exit, ptr @otto_wdt_phase1_isr._entry, ptr @otto_wdt_phase1_isr._entry_ptr, ptr @otto_wdt_driver, ptr @.str, ptr @otto_wdt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @otto_wdt_info, ptr @otto_wdt_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otto_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otto_wdt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otto_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otto_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otto_wdt_phase1_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @otto_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @otto_wdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @otto_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @otto_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otto_wdt_probe(ptr noundef %pdev) #2 align 64 {
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
  %dev2 = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 192) #5, !srcloc !64
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 16777216) #5, !srcloc !64
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  %call.i108 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef null) #5
  %cmp.i.i = icmp ugt ptr %call.i108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  %9 = ptrtoint ptr %call.i108 to i32
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef %9, ptr noundef nonnull @.str.6) #5
  br label %otto_wdt_probe_clk.exit

if.end.i:                                         ; preds = %if.end9
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call.i108) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.then6.i_crit_edge

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i108) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end9.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call.i108) #5
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.then3.i.i, %if.end.i.if.then6.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end.i.if.then6.i_crit_edge ]
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %11, i32 noundef %retval.0.i.ph.i, ptr noundef nonnull @.str.7) #5
  br label %otto_wdt_probe_clk.exit

if.end9.i:                                        ; preds = %if.end.i.i
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  %call.i35.i = tail call i32 @devm_add_action(ptr noundef %13, ptr noundef nonnull @otto_wdt_clock_action, ptr noundef %call.i108) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool.not.i36.i = icmp eq i32 %call.i35.i, 0
  br i1 %tobool.not.i36.i, label %if.end14.i, label %otto_wdt_probe_clk.exit.thread120

otto_wdt_probe_clk.exit.thread120:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %call.i108) #5
  tail call void @clk_unprepare(ptr noundef %call.i108) #5
  br label %cleanup

if.end14.i:                                       ; preds = %if.end9.i
  %call15.i = tail call i32 @clk_get_rate(ptr noundef %call.i108) #5
  %div.i = udiv i32 %call15.i, 1000
  %clk_rate_khz.i = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %clk_rate_khz.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div.i, ptr %clk_rate_khz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call15.i)
  %15 = icmp ult i32 %call15.i, 1000
  br i1 %15, label %if.then17.i, label %if.end14.i.if.end16_crit_edge

if.end14.i.if.end16_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 4
  %call19.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %17, i32 noundef -6, ptr noundef nonnull @.str.8) #5
  br label %otto_wdt_probe_clk.exit

otto_wdt_probe_clk.exit:                          ; preds = %if.then17.i, %if.then6.i, %if.then.i
  %retval.0.i = phi i32 [ %call4.i, %if.then.i ], [ %call8.i, %if.then6.i ], [ %call19.i, %if.then17.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool14.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool14.not, label %otto_wdt_probe_clk.exit.if.end16_crit_edge, label %otto_wdt_probe_clk.exit.cleanup_crit_edge

otto_wdt_probe_clk.exit.cleanup_crit_edge:        ; preds = %otto_wdt_probe_clk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

otto_wdt_probe_clk.exit.if.end16_crit_edge:       ; preds = %otto_wdt_probe_clk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %otto_wdt_probe_clk.exit.if.end16_crit_edge, %if.end14.i.if.end16_crit_edge
  %call17 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  %irq_phase1 = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %irq_phase1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call17, ptr %irq_phase1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %call.i109 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call17, ptr noundef nonnull @otto_wdt_phase1_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool24.not = icmp eq i32 %call.i109, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i109, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev2, align 4
  %fwnode.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fwnode.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end27.if.then30_crit_edge, label %if.end.i113

if.end27.if.then30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.end.i113:                                      ; preds = %if.end27
  %call.i.i111 = tail call i32 @fwnode_property_read_string_array(ptr noundef nonnull %22, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i111)
  %cmp.i112 = icmp slt i32 %call.i.i111, 0
  br i1 %cmp.i112, label %if.end.i113.if.then30_crit_edge, label %if.else.i

if.end.i113.if.then30_crit_edge:                  ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.else.i:                                        ; preds = %if.end.i113
  %23 = zext i32 %call.i.i111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i111, label %if.else.i.if.then30_crit_edge [
    i32 0, label %if.else.i.if.end32_crit_edge
    i32 1, label %if.end9.i115
  ]

if.else.i.if.end32_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.else.i.if.then30_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.end9.i115:                                     ; preds = %if.else.i
  %call10.i = tail call i32 @fwnode_property_match_string(ptr noundef nonnull %22, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end9.i115.if.end24.i_crit_edge, label %if.else13.i

if.end9.i115.if.end24.i_crit_edge:                ; preds = %if.end9.i115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.else13.i:                                      ; preds = %if.end9.i115
  %call14.i = tail call i32 @fwnode_property_match_string(ptr noundef nonnull %22, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.else13.i.if.end24.i_crit_edge, label %if.else17.i

if.else13.i.if.end24.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.else17.i:                                      ; preds = %if.else13.i
  %call18.i = tail call i32 @fwnode_property_match_string(ptr noundef nonnull %22, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.i, label %if.else17.i.if.end24.i_crit_edge, label %if.else17.i.if.then30_crit_edge

if.else17.i.if.then30_crit_edge:                  ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.else17.i.if.end24.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else17.i.if.end24.i_crit_edge, %if.else13.i.if.end24.i_crit_edge, %if.end9.i115.if.end24.i_crit_edge
  %mode.0.i = phi i32 [ 0, %if.end9.i115.if.end24.i_crit_edge ], [ 1, %if.else13.i.if.end24.i_crit_edge ], [ 2, %if.else17.i.if.end24.i_crit_edge ]
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %27 = and i32 %26, -50331649
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %or.i = or i32 %28, %mode.0.i
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr44.i = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %31) #5, !srcloc !64
  br label %if.end32

if.then30:                                        ; preds = %if.else17.i.if.then30_crit_edge, %if.else.i.if.then30_crit_edge, %if.end.i113.if.then30_crit_edge, %if.end27.if.then30_crit_edge
  %retval.0.i116.ph = phi i32 [ -22, %if.else17.i.if.then30_crit_edge ], [ %call.i.i111, %if.end.i113.if.then30_crit_edge ], [ -6, %if.end27.if.then30_crit_edge ], [ -22, %if.else.i.if.then30_crit_edge ]
  %call31 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %retval.0.i116.ph, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end32:                                         ; preds = %if.end24.i, %if.else.i.if.end32_crit_edge
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev1, ptr %parent, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @otto_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @otto_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %min_timeout, align 4
  %clk_rate_khz.i117 = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %clk_rate_khz.i117 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %clk_rate_khz.i117, align 4
  %div4.i = lshr i32 %37, 1
  %add1.i = add nuw i32 %div4.i, 268435456
  %div2.i = udiv i32 %add1.i, %37
  %mul = mul i32 %div2.i, 33
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 12
  %38 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul, ptr %max_hw_heartbeat_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30999, i32 %mul)
  %cmp40 = icmp ugt i32 %mul, 30999
  %div = udiv i32 %mul, 1000
  %cond = select i1 %cmp40, i32 30, i32 %div
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond, ptr %timeout, align 4
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %40 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call44 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %dev1) #5
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i) #5
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull %call.i, i32 noundef 128) #5
  %41 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %timeout, align 4
  %call50 = tail call fastcc i32 @otto_wdt_determine_timeouts(ptr noundef nonnull %call.i, i32 noundef %42, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %call53 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call50, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end54:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %call56 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then52, %if.then30, %if.then25, %if.end16.cleanup_crit_edge, %otto_wdt_probe_clk.exit.cleanup_crit_edge, %otto_wdt_probe_clk.exit.thread120, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %call26, %if.then25 ], [ %call31, %if.then30 ], [ %call53, %if.then52 ], [ %call56, %if.end54 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %otto_wdt_probe_clk.exit.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call.i35.i, %otto_wdt_probe_clk.exit.thread120 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otto_wdt_phase1_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #5, !srcloc !64
  %dev = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %3, ptr noundef nonnull @.str.9) #8
  tail call void @watchdog_notify_pretimeout(ptr noundef %dev_id) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @otto_wdt_determine_timeouts(ptr nocapture noundef readonly %wdev, i32 noundef %timeout, i32 noundef %pretimeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mul.neg = mul i32 %pretimeout, -1000
  %mul1 = mul i32 %timeout, 1000
  %clk_rate_khz.i = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_rate_khz.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_rate_khz.i, align 4
  %div4.i = lshr i32 %3, 1
  %add.i135 = add i32 %mul1, -1
  %add.i136 = add i32 %add.i135, %mul.neg
  %add1.i = add nuw i32 %div4.i, 33554432
  %div2.i = udiv i32 %add1.i, %3
  %sub.i = add i32 %add.i135, %div2.i
  %div.i = udiv i32 %sub.i, %div2.i
  %4 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 2) #5
  %sub.i137 = add i32 %add.i136, %div2.i
  %div.i138 = udiv i32 %sub.i137, %div2.i
  %5 = tail call i32 @llvm.umax.i32(i32 %div.i138, i32 1) #5
  %sub5 = sub i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp6 = icmp ugt i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub5)
  %cmp7 = icmp ugt i32 %sub5, 32
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp7
  br i1 %or.cond, label %do.body.1, label %entry.do.end28_crit_edge

entry.do.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.body.1:                                        ; preds = %entry
  %add1.i.1 = add nuw i32 %div4.i, 67108864
  %div2.i.1 = udiv i32 %add1.i.1, %3
  %sub.i.1 = add i32 %add.i135, %div2.i.1
  %div.i.1 = udiv i32 %sub.i.1, %div2.i.1
  %6 = tail call i32 @llvm.umax.i32(i32 %div.i.1, i32 2) #5
  %sub.i137.1 = add i32 %add.i136, %div2.i.1
  %div.i138.1 = udiv i32 %sub.i137.1, %div2.i.1
  %7 = tail call i32 @llvm.umax.i32(i32 %div.i138.1, i32 1) #5
  %sub5.1 = sub i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp6.1 = icmp ugt i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub5.1)
  %cmp7.1 = icmp ugt i32 %sub5.1, 32
  %or.cond.1 = select i1 %cmp6.1, i1 true, i1 %cmp7.1
  br i1 %or.cond.1, label %do.body.2, label %do.body.1.do.end28_crit_edge

do.body.1.do.end28_crit_edge:                     ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.body.2:                                        ; preds = %do.body.1
  %add1.i.2 = add nuw i32 %div4.i, 134217728
  %div2.i.2 = udiv i32 %add1.i.2, %3
  %sub.i.2 = add i32 %add.i135, %div2.i.2
  %div.i.2 = udiv i32 %sub.i.2, %div2.i.2
  %8 = tail call i32 @llvm.umax.i32(i32 %div.i.2, i32 2) #5
  %sub.i137.2 = add i32 %add.i136, %div2.i.2
  %div.i138.2 = udiv i32 %sub.i137.2, %div2.i.2
  %9 = tail call i32 @llvm.umax.i32(i32 %div.i138.2, i32 1) #5
  %sub5.2 = sub i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp6.2 = icmp ugt i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub5.2)
  %cmp7.2 = icmp ugt i32 %sub5.2, 32
  %or.cond.2 = select i1 %cmp6.2, i1 true, i1 %cmp7.2
  br i1 %or.cond.2, label %do.body.3, label %do.body.2.do.end28_crit_edge

do.body.2.do.end28_crit_edge:                     ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.body.3:                                        ; preds = %do.body.2
  %add1.i.3 = add nuw i32 %div4.i, 268435456
  %div2.i.3 = udiv i32 %add1.i.3, %3
  %sub.i.3 = add i32 %add.i135, %div2.i.3
  %div.i.3 = udiv i32 %sub.i.3, %div2.i.3
  %10 = tail call i32 @llvm.umax.i32(i32 %div.i.3, i32 2) #5
  %sub.i137.3 = add i32 %add.i136, %div2.i.3
  %div.i138.3 = udiv i32 %sub.i137.3, %div2.i.3
  %11 = tail call i32 @llvm.umax.i32(i32 %div.i138.3, i32 1) #5
  %sub5.3 = sub i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp6.3 = icmp ugt i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub5.3)
  %cmp7.3 = icmp ugt i32 %sub5.3, 32
  %or.cond.3 = select i1 %cmp6.3, i1 true, i1 %cmp7.3
  br i1 %or.cond.3, label %do.body.3.cleanup_crit_edge, label %do.body.3.do.end28_crit_edge

do.body.3.do.end28_crit_edge:                     ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.body.3.cleanup_crit_edge:                      ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end28:                                         ; preds = %do.body.3.do.end28_crit_edge, %do.body.2.do.end28_crit_edge, %do.body.1.do.end28_crit_edge, %entry.do.end28_crit_edge
  %div2.i.lcssa = phi i32 [ %div2.i, %entry.do.end28_crit_edge ], [ %div2.i.1, %do.body.1.do.end28_crit_edge ], [ %div2.i.2, %do.body.2.do.end28_crit_edge ], [ %div2.i.3, %do.body.3.do.end28_crit_edge ]
  %.lcssa142 = phi i32 [ %4, %entry.do.end28_crit_edge ], [ %6, %do.body.1.do.end28_crit_edge ], [ %8, %do.body.2.do.end28_crit_edge ], [ %10, %do.body.3.do.end28_crit_edge ]
  %.lcssa = phi i32 [ %5, %entry.do.end28_crit_edge ], [ %7, %do.body.1.do.end28_crit_edge ], [ %9, %do.body.2.do.end28_crit_edge ], [ %11, %do.body.3.do.end28_crit_edge ]
  %sub5.lcssa = phi i32 [ %sub5, %entry.do.end28_crit_edge ], [ %sub5.1, %do.body.1.do.end28_crit_edge ], [ %sub5.2, %do.body.2.do.end28_crit_edge ], [ %sub5.3, %do.body.3.do.end28_crit_edge ]
  %prescale_next.0.lcssa141 = phi i32 [ 0, %entry.do.end28_crit_edge ], [ 536870912, %do.body.1.do.end28_crit_edge ], [ 1073741824, %do.body.2.do.end28_crit_edge ], [ 1610612736, %do.body.3.do.end28_crit_edge ]
  %base = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %15 = and i32 %14, -8441704
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %sub16 = shl nuw nsw i32 %.lcssa, 22
  %shl = add nuw nsw i32 %sub16, 130023424
  %and30 = and i32 %shl, 130023424
  %sub38 = shl i32 %sub5.lcssa, 15
  %shl56 = add i32 %sub38, 1015808
  %and57 = and i32 %shl56, 1015808
  %or58 = or i32 %and30, %prescale_next.0.lcssa141
  %or = or i32 %or58, %and57
  %or83 = or i32 %or, %16
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr85 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or83) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %19) #5, !srcloc !64
  %mul86 = mul i32 %.lcssa142, %div2.i.lcssa
  %div = udiv i32 %mul86, 1000
  %timeout88 = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %timeout88 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div, ptr %timeout88, align 4
  %mul89 = mul i32 %sub5.lcssa, %div2.i.lcssa
  %div90 = udiv i32 %mul89, 1000
  %pretimeout92 = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %pretimeout92 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div90, ptr %pretimeout92, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.body.3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end28 ], [ -22, %do.body.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @otto_wdt_clock_action(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #5
  tail call void @clk_unprepare(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otto_wdt_start(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %5 = or i32 %4, 128
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otto_wdt_stop(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %5 = and i32 %4, -129
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otto_wdt_ping(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 128) #5, !srcloc !64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otto_wdt_set_timeout(ptr nocapture noundef readonly %wdev, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 8
  %0 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pretimeout, align 4
  %sub = add i32 %val, -1
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %sub)
  %call = tail call fastcc i32 @otto_wdt_determine_timeouts(ptr noundef %wdev, i32 noundef %val, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otto_wdt_set_pretimeout(ptr nocapture noundef readonly %wdev, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %call = tail call fastcc i32 @otto_wdt_determine_timeouts(ptr noundef %wdev, i32 noundef %1, i32 noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otto_wdt_restart(ptr nocapture noundef readonly %wdev, i32 noundef %reboot_mode, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq_phase1 = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_phase1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_phase1, align 4
  tail call void @disable_irq(i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reboot_mode)
  %switch.selectcmp = icmp eq i32 %reboot_mode, 1
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reboot_mode)
  %switch.selectcmp21 = icmp eq i32 %reboot_mode, 3
  %switch.select.op = or i32 %switch.select, -2147483648
  %or = select i1 %switch.selectcmp21, i32 -2147483646, i32 %switch.select.op
  %base = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !64
  %clk_rate_khz.i = getelementptr inbounds %struct.otto_wdt_ctrl, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %clk_rate_khz.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_rate_khz.i, align 4
  %div4.i = lshr i32 %8, 1
  %add1.i = add nuw i32 %div4.i, 33554432
  %div2.i = udiv i32 %add1.i, %8
  %mul = mul i32 %div2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool16.not23 = icmp eq i32 %mul, 0
  br i1 %tobool16.not23, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %__ms.024 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %mul, %entry.while.body_crit_edge ]
  %dec = add i32 %__ms.024, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #5
  %tobool16.not = icmp eq i32 %dec, 0
  br i1 %tobool16.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_realtek_otto_wdt__218_380_otto_wdt_driver_init6, !1, !"__initcall__kmod_realtek_otto_wdt__218_380_otto_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 380, i32 1}
!2 = !{ptr @__exitcall_otto_wdt_driver_exit, !1, !"__exitcall_otto_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file219, !4, !"__UNIQUE_ID_file219", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 382, i32 1}
!5 = !{ptr @__UNIQUE_ID_license220, !4, !"__UNIQUE_ID_license220", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author221, !7, !"__UNIQUE_ID_author221", i1 false, i1 false}
!7 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 383, i32 1}
!8 = !{ptr @__UNIQUE_ID_description222, !9, !"__UNIQUE_ID_description222", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 384, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 376, i32 11}
!12 = !{ptr @otto_wdt_driver, !13, !"otto_wdt_driver", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 373, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 327, i32 51}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 332, i32 4}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 334, i32 34}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 338, i32 34}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 360, i32 34}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 249, i32 49}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 253, i32 40}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 261, i32 43}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 214, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @otto_wdt_phase1_isr._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @otto_wdt_phase1_isr._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 268, i32 37}
!40 = distinct !{null, !41, !"mode_property", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 268, i32 21}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 285, i32 56}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 287, i32 61}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 289, i32 61}
!48 = !{ptr @otto_wdt_info, !49, !"otto_wdt_info", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 230, i32 35}
!50 = !{ptr @otto_wdt_ops, !51, !"otto_wdt_ops", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 220, i32 34}
!52 = !{ptr @otto_wdt_ids, !53, !"otto_wdt_ids", i1 false, i1 false}
!53 = !{!"../drivers/watchdog/realtek_otto_wdt.c", i32 365, i32 34}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2151819641}
!64 = !{i64 4277519}
!65 = !{i64 4277937}
!66 = !{i64 2151818286}
