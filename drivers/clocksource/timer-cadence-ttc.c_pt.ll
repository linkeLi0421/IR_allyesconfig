; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-cadence-ttc.c_pt.bc'
source_filename = "../drivers/clocksource/timer-cadence-ttc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.ttc_timer_clocksource = type { i32, i32, %struct.ttc_timer, %struct.clocksource }
%struct.ttc_timer = type { ptr, i32, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ttc_timer_clockevent = type { %struct.ttc_timer, [104 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@__initcall__kmod_timer_cadence_ttc__187_545_ttc_timer_driver_init6 = internal global ptr @ttc_timer_driver_init, section ".initcall6.init", align 4
@ttc_timer_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ttc_timer_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns_ttc_timer\00", [17 x i8] zeroinitializer }, align 32
@ttc_timer_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,ttc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ttc_timer_probe.initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ttc_timer_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ERROR: invalid timer base address\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ttc_timer_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/clocksource/timer-cadence-ttc.c\00", [56 x i8] zeroinitializer }, align 32
@ttc_timer_probe._entry_ptr = internal global ptr @ttc_timer_probe._entry, section ".printk_index", align 4
@ttc_timer_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ERROR: invalid interrupt number\0A\00", [61 x i8] zeroinitializer }, align 32
@ttc_timer_probe._entry_ptr.6 = internal global ptr @ttc_timer_probe._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer-width\00", [20 x i8] zeroinitializer }, align 32
@ttc_timer_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ERROR: timer input clock not found\0A\00", [58 x i8] zeroinitializer }, align 32
@ttc_timer_probe._entry_ptr.10 = internal global ptr @ttc_timer_probe._entry.8, section ".printk_index", align 4
@ttc_timer_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ttc_timer_probe._entry_ptr.12 = internal global ptr @ttc_timer_probe._entry.11, section ".printk_index", align 4
@ttc_timer_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%pOFn #0 at %p, irq=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@ttc_timer_probe._entry_ptr.15 = internal global ptr @ttc_timer_probe._entry.13, section ".printk_index", align 4
@ttc_setup_clocksource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Unable to register clock notifier.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ttc_setup_clocksource\00", [42 x i8] zeroinitializer }, align 32
@ttc_setup_clocksource._entry_ptr = internal global ptr @ttc_setup_clocksource._entry, section ".printk_index", align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ttc_clocksource\00", [16 x i8] zeroinitializer }, align 32
@ttc_sched_clock_val_reg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ttc_setup_clockevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.19, ptr @.str.3, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ttc_setup_clockevent\00", [43 x i8] zeroinitializer }, align 32
@ttc_setup_clockevent._entry_ptr = internal global ptr @ttc_setup_clockevent._entry, section ".printk_index", align 4
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ttc_clockevent\00", [17 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"ttc_timer_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 539, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 541, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"ttc_timer_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 532, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"ttc_timer_probe.initialized\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 491, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 497, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 501, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 507, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 515, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 527, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 347, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 350, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"ttc_sched_clock_val_reg\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 101, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 426, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [43 x i8] c"../drivers/clocksource/timer-cadence-ttc.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 433, i32 19 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__initcall__kmod_timer_cadence_ttc__187_545_ttc_timer_driver_init6, ptr @ttc_setup_clockevent._entry, ptr @ttc_setup_clockevent._entry_ptr, ptr @ttc_setup_clocksource._entry, ptr @ttc_setup_clocksource._entry_ptr, ptr @ttc_timer_probe._entry, ptr @ttc_timer_probe._entry.11, ptr @ttc_timer_probe._entry.13, ptr @ttc_timer_probe._entry.4, ptr @ttc_timer_probe._entry.8, ptr @ttc_timer_probe._entry_ptr, ptr @ttc_timer_probe._entry_ptr.10, ptr @ttc_timer_probe._entry_ptr.12, ptr @ttc_timer_probe._entry_ptr.15, ptr @ttc_timer_probe._entry_ptr.6, ptr @ttc_timer_driver, ptr @.str, ptr @ttc_timer_of_match, ptr @ttc_timer_probe.initialized, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ttc_sched_clock_val_reg, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_timer_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_timer_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_timer_probe.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_timer_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_timer_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_timer_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_timer_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_timer_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_setup_clocksource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_sched_clock_val_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_setup_clockevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ttc_timer_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ttc_timer_driver, ptr noundef nonnull @ttc_timer_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ttc_timer_probe(ptr nocapture noundef readonly %pdev) #0 section ".init.text" align 64 {
entry:
  %timer_width = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timer_width) #7
  %0 = ptrtoint ptr %timer_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %timer_width, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %.b = load i1, ptr @ttc_timer_probe.initialized, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 true, ptr @ttc_timer_probe.initialized, align 4
  %call = tail call ptr @of_iomap(ptr noundef %2, i32 noundef 0) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @irq_of_parse_and_map(ptr noundef %2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %timer_width, i32 noundef 1, i32 noundef 0) #7
  %3 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #7, !srcloc !57
  %4 = lshr i32 %3, 29
  %.lobit = and i32 %4, 1
  %call18 = call ptr @of_clk_get(ptr noundef %2, i32 noundef %.lobit) #7
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  %5 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end12
  %add.ptr29 = getelementptr i8, ptr %call, i32 4
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #7, !srcloc !57
  %7 = lshr i32 %6, 29
  %.lobit92 = and i32 %7, 1
  %call39 = call ptr @of_clk_get(ptr noundef %2, i32 noundef %.lobit92) #7
  %cmp.i93 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %do.end44, label %if.end48

do.end44:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  %8 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end27
  %9 = ptrtoint ptr %timer_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timer_width, align 4
  %call49 = call fastcc i32 @ttc_setup_clocksource(ptr noundef %call18, ptr noundef nonnull %call, i32 noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %call54 = call fastcc i32 @ttc_setup_clockevent(ptr noundef %call39, ptr noundef %add.ptr29, i32 noundef %call5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.end60, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %2, ptr noundef nonnull %call, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.end52.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %do.end44, %do.end23, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end9 ], [ %5, %do.end23 ], [ %8, %do.end44 ], [ 0, %do.end60 ], [ -6, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ %call54, %if.end52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timer_width) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ttc_setup_clocksource(ptr noundef %clk, ptr noundef %base, i32 noundef %timer_width) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ttc = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %call7.i.i, i32 0, i32 2
  %clk1 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %call7.i.i, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %clk1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %clk, ptr %clk1, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end7, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %if.then6

if.then6:                                         ; preds = %if.then3.i, %if.end.if.then6_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.if.then6_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  %2 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk1, align 8
  %call10 = tail call i32 @clk_get_rate(ptr noundef %3) #7
  %freq = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call10, ptr %freq, align 4
  %clk_rate_change_nb = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %call7.i.i, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %clk_rate_change_nb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ttc_rate_change_clocksource_cb, ptr %clk_rate_change_nb, align 4
  %next = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 1
  %6 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %next, align 8
  %call19 = tail call i32 @clk_notifier_register(ptr noundef %3, ptr noundef %clk_rate_change_nb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end7.if.end23_crit_edge, label %do.end

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.end7.if.end23_crit_edge
  %7 = ptrtoint ptr %ttc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %base, ptr %ttc, align 8
  %cs = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %call7.i.i, i32 0, i32 3
  %name = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %call7.i.i, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.18, ptr %name, align 8
  %rating = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %call7.i.i, i32 0, i32 3, i32 10
  %9 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 200, ptr %rating, align 4
  %10 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__ttc_clocksource_read, ptr %cs, align 8
  %sub27 = sub i32 64, %timer_width
  %sh_prom = zext i32 %sub27 to i64
  %shr = lshr i64 -1, %sh_prom
  %mask = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %shr, ptr %mask, align 8
  %flags = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %call7.i.i, i32 0, i32 3, i32 13
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %flags, align 8
  %add.ptr = getelementptr i8, ptr %base, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !58
  %13 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ttc, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 352321536) #7, !srcloc !58
  %15 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ttc, align 8
  %add.ptr37 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 268435456) #7, !srcloc !58
  %17 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %freq, align 4
  %div78 = lshr i32 %18, 11
  %call.i80 = tail call i32 @__clocksource_register_scale(ptr noundef %cs, i32 noundef 1, i32 noundef %div78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool42.not = icmp eq i32 %call.i80, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr45 = getelementptr i8, ptr %base, i32 24
  store ptr %add.ptr45, ptr @ttc_sched_clock_val_reg, align 4
  %19 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %freq, align 4
  %div4879 = lshr i32 %20, 11
  tail call void @sched_clock_register(ptr noundef nonnull @ttc_sched_clock_read, i32 noundef %timer_width, i32 noundef %div4879) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then43, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then6 ], [ %call.i80, %if.then43 ], [ 0, %if.end44 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ttc_setup_clockevent(ptr noundef %clk, ptr noundef %base, i32 noundef %irq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk1 = getelementptr inbounds %struct.ttc_timer, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %clk1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %clk, ptr %clk1, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.out_kfree_crit_edge

if.end.out_kfree_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_kfree

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end7, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %out_kfree

if.end7:                                          ; preds = %if.end.i
  %clk_rate_change_nb = getelementptr inbounds %struct.ttc_timer, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %clk_rate_change_nb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ttc_rate_change_clockevent_cb, ptr %clk_rate_change_nb, align 4
  %next = getelementptr inbounds %struct.ttc_timer, ptr %call7.i.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %next, align 8
  %4 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk1, align 8
  %call15 = tail call i32 @clk_notifier_register(ptr noundef %5, ptr noundef %clk_rate_change_nb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %out_kfree

if.end19:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk1, align 8
  %call22 = tail call i32 @clk_get_rate(ptr noundef %7) #7
  %freq = getelementptr inbounds %struct.ttc_timer, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call22, ptr %freq, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %base, ptr %call7.i.i, align 128
  %name = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2, i32 21
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.20, ptr %name, align 4
  %features = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2, i32 9
  %11 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %features, align 4
  %set_next_event = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ttc_set_next_event, ptr %set_next_event, align 4
  %set_state_shutdown = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2, i32 14
  %13 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ttc_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2, i32 11
  %14 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ttc_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2, i32 12
  %15 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ttc_shutdown, ptr %set_state_oneshot, align 64
  %tick_resume = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2, i32 15
  %16 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ttc_resume, ptr %tick_resume, align 4
  %rating = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2, i32 22
  %17 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 200, ptr %rating, align 8
  %irq33 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2, i32 23
  %18 = ptrtoint ptr %irq33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %irq, ptr %irq33, align 4
  %cpumask = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2, i32 25
  %19 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @__cpu_possible_mask, ptr %cpumask, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 587202560) #7, !srcloc !58
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 352321536) #7, !srcloc !58
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 128
  %add.ptr42 = getelementptr i8, ptr %23, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 16777216) #7, !srcloc !58
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %call.i85 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @ttc_clock_event_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef %25, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool46.not = icmp eq i32 %call.i85, 0
  br i1 %tobool46.not, label %if.end48, label %if.end19.out_kfree_crit_edge

if.end19.out_kfree_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_kfree

if.end48:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %ce = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %freq, align 4
  %div84 = lshr i32 %27, 11
  tail call void @clockevents_config_and_register(ptr noundef %ce, i32 noundef %div84, i32 noundef 1, i32 noundef 65534) #7
  br label %cleanup

out_kfree:                                        ; preds = %if.end19.out_kfree_crit_edge, %do.end, %if.then3.i, %if.end.out_kfree_crit_edge
  %err.0 = phi i32 [ %call15, %do.end ], [ %call.i85, %if.end19.out_kfree_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.out_kfree_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_kfree, %if.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_kfree ], [ 0, %if.end48 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttc_rate_change_clocksource_cb(ptr nocapture noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %nb, i32 -20
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup81_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb61
    i32 4, label %sw.bb71
  ]

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

sw.bb:                                            ; preds = %entry
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %new_rate, align 4
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %old_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ugt i32 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %div127 = lshr i32 %4, 1
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %div15126 = lshr i32 %2, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %div15126.sink = phi i32 [ %div15126, %if.else ], [ %2, %if.then ]
  %.sink130 = phi i32 [ %4, %if.else ], [ %div127, %if.then ]
  %.sink = phi i32 [ %2, %if.else ], [ %4, %if.then ]
  %rate_high.0 = phi i32 [ %4, %if.else ], [ %2, %if.then ]
  %add16 = add i32 %.sink130, %div15126.sink
  %div17 = udiv i32 %add16, %.sink
  %5 = tail call i32 @llvm.ctpop.i32(i32 %div17) #7, !range !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %if.end21, label %if.end.cleanup81_crit_edge

if.end.cleanup81_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end21:                                         ; preds = %if.end
  %mul = mul i32 %div17, %.sink
  %sub = sub i32 %rate_high.0, %mul
  %7 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %7)
  %cmp26 = icmp sgt i32 %7, 50
  br i1 %cmp26, label %if.end21.cleanup81_crit_edge, label %if.end28

if.end21.cleanup81_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end28:                                         ; preds = %if.end21
  %8 = tail call i32 @llvm.ctlz.i32(i32 %div17, i1 true) #7, !range !59
  %sub.i.op.i = xor i32 %8, 31
  %ttc30 = getelementptr i8, ptr %nb, i32 -12
  %9 = ptrtoint ptr %ttc30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ttc30, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !57
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr3, align 8
  %and = lshr i32 %12, 1
  %shr = and i32 %and, 15
  %14 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %new_rate, align 4
  %16 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp37 = icmp ult i32 %15, %17
  %18 = sub nsw i32 0, %sub.i.op.i
  %psv.0.p = select i1 %cmp37, i32 %18, i32 %sub.i.op.i
  %psv.0 = add nsw i32 %psv.0.p, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %psv.0)
  %tobool.not = icmp ult i32 %psv.0, 16
  br i1 %tobool.not, label %if.end45, label %if.end28.cleanup81_crit_edge

if.end28.cleanup81_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end45:                                         ; preds = %if.end28
  %and47 = and i32 %12, -31
  %scale_clk_ctrl_reg_new = getelementptr i8, ptr %nb, i32 -16
  %shl = shl nuw nsw i32 %psv.0, 1
  %or = or i32 %shl, %and47
  %19 = ptrtoint ptr %scale_clk_ctrl_reg_new to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %scale_clk_ctrl_reg_new, align 4
  %20 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new_rate, align 4
  %22 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp51 = icmp ult i32 %21, %23
  br i1 %cmp51, label %if.end45.cleanup81_crit_edge, label %cleanup

if.end45.cleanup81_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

cleanup:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %or)
  %25 = ptrtoint ptr %ttc30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ttc30, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !58
  br label %cleanup81

sw.bb61:                                          ; preds = %entry
  %new_rate62 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %new_rate62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %new_rate62, align 4
  %old_rate63 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %29 = ptrtoint ptr %old_rate63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old_rate63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp64 = icmp ugt i32 %28, %30
  br i1 %cmp64, label %sw.bb61.cleanup81_crit_edge, label %if.end66

sw.bb61.cleanup81_crit_edge:                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end66:                                         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #9
  %scale_clk_ctrl_reg_new67 = getelementptr i8, ptr %nb, i32 -16
  %31 = ptrtoint ptr %scale_clk_ctrl_reg_new67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scale_clk_ctrl_reg_new67, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %ttc68 = getelementptr i8, ptr %nb, i32 -12
  %34 = ptrtoint ptr %ttc68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ttc68, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !58
  br label %cleanup81

sw.bb71:                                          ; preds = %entry
  %new_rate72 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %36 = ptrtoint ptr %new_rate72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %new_rate72, align 4
  %old_rate73 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %38 = ptrtoint ptr %old_rate73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %old_rate73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp74 = icmp ult i32 %37, %39
  br i1 %cmp74, label %sw.bb71.cleanup81_crit_edge, label %if.end76

sw.bb71.cleanup81_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end76:                                         ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr3, align 8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %ttc78 = getelementptr i8, ptr %nb, i32 -12
  %43 = ptrtoint ptr %ttc78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ttc78, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #7, !srcloc !58
  br label %cleanup81

cleanup81:                                        ; preds = %if.end76, %sw.bb71.cleanup81_crit_edge, %if.end66, %sw.bb61.cleanup81_crit_edge, %cleanup, %if.end45.cleanup81_crit_edge, %if.end28.cleanup81_crit_edge, %if.end21.cleanup81_crit_edge, %if.end.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.1 = phi i32 [ 1, %sw.bb61.cleanup81_crit_edge ], [ 1, %sw.bb71.cleanup81_crit_edge ], [ 0, %entry.cleanup81_crit_edge ], [ 0, %if.end76 ], [ 0, %cleanup ], [ 0, %if.end66 ], [ 0, %if.end45.cleanup81_crit_edge ], [ 32770, %if.end28.cleanup81_crit_edge ], [ 32770, %if.end21.cleanup81_crit_edge ], [ 32770, %if.end.cleanup81_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @__ttc_clocksource_read(ptr nocapture noundef readonly %cs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ttc = getelementptr i8, ptr %cs, i32 -24
  %0 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ttc, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !57
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ttc_sched_clock_read() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @ttc_sched_clock_val_reg, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !57
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttc_rate_change_clockevent_cb(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_rate, align 4
  %freq = getelementptr i8, ptr %nb, i32 -8
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %freq, align 4
  %ce = getelementptr i8, ptr %nb, i32 116
  %3 = load i32, ptr %new_rate, align 4
  %div8 = lshr i32 %3, 11
  %call = tail call i32 @clockevents_update_freq(ptr noundef %ce, i32 noundef %div8) #7
  br label %sw.default

sw.default:                                       ; preds = %sw.bb, %entry.sw.default_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttc_set_next_event(i32 noundef %cycles, ptr nocapture noundef readonly %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %evt, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !57
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #7, !srcloc !58
  %6 = tail call i32 @llvm.bswap.i32(i32 %cycles) #7
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %add.ptr4.i = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %6) #7, !srcloc !58
  %9 = and i32 %2, -285212673
  %10 = or i32 %9, 268435456
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %add.ptr7.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %10) #7, !srcloc !58
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttc_shutdown(ptr nocapture noundef readonly %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %evt, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !57
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #7, !srcloc !58
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttc_set_periodic(ptr nocapture noundef readonly %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %evt, i32 -128
  %freq = getelementptr i8, ptr %evt, i32 -124
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  %add = add i32 %1, 102400
  %div3 = udiv i32 %add, 204800
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !57
  %5 = or i32 %4, 16777216
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %5) #7, !srcloc !58
  %8 = tail call i32 @llvm.bswap.i32(i32 %div3) #7
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #7, !srcloc !58
  %11 = and i32 %4, -285212673
  %12 = or i32 %11, 268435456
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %add.ptr7.i = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %12) #7, !srcloc !58
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttc_resume(ptr nocapture noundef readonly %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %evt, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !57
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #7, !srcloc !58
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttc_clock_event_interrupt(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !57
  %ce = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %dev_id, i32 0, i32 2
  %3 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ce, align 128
  tail call void %4(ptr noundef %ce) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_update_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_timer_cadence_ttc__187_545_ttc_timer_driver_init6, !1, !"__initcall__kmod_timer_cadence_ttc__187_545_ttc_timer_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 545, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 541, i32 11}
!4 = !{ptr @ttc_timer_driver, !5, !"ttc_timer_driver", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 539, i32 31}
!6 = !{ptr @ttc_timer_of_match, !7, !"ttc_timer_of_match", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 532, i32 34}
!8 = distinct !{null, !9, !"initialized", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 474, i32 13}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 491, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ttc_timer_probe._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @ttc_timer_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 497, i32 3}
!18 = !{ptr @ttc_timer_probe._entry.4, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ttc_timer_probe._entry_ptr.6, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 501, i32 30}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 507, i32 3}
!24 = !{ptr @ttc_timer_probe._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ttc_timer_probe._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ttc_timer_probe._entry.11, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 515, i32 3}
!28 = !{ptr @ttc_timer_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 527, i32 2}
!31 = !{ptr @ttc_timer_probe._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ttc_timer_probe._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 347, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ttc_setup_clocksource._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ttc_setup_clocksource._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 350, i32 19}
!40 = !{ptr @ttc_sched_clock_val_reg, !41, !"ttc_sched_clock_val_reg", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 101, i32 22}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 426, i32 3}
!44 = !{ptr @ttc_setup_clockevent._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ttc_setup_clockevent._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clocksource/timer-cadence-ttc.c", i32 433, i32 19}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 4242892}
!58 = !{i64 4242474}
!59 = !{i32 0, i32 33}
