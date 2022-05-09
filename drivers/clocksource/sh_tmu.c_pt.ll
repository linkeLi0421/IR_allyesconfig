; ModuleID = '/llk/IR_all_yes/drivers/clocksource/sh_tmu.c_pt.bc'
source_filename = "../drivers/clocksource/sh_tmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sh_tmu_device = type { ptr, ptr, ptr, i32, i32, %struct.raw_spinlock, ptr, i32, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sh_tmu_channel = type { ptr, i32, ptr, i32, i32, [108 x i8], %struct.clock_event_device, %struct.clocksource, i8, i32, [16 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sh_tmu_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sh_tmu_probe, ptr @sh_tmu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_tmu_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sh_tmu_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_sh_tmu__188_677_sh_tmu_init4 = internal global ptr @sh_tmu_init, section ".initcall4.init", align 4
@__exitcall_sh_tmu_exit = internal global ptr @sh_tmu_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author189 = internal constant [26 x i8] c"sh_tmu.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [43 x i8] c"sh_tmu.description=SuperH TMU Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [39 x i8] c"sh_tmu.file=drivers/clocksource/sh_tmu\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [22 x i8] c"sh_tmu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh_tmu\00", [25 x i8] zeroinitializer }, align 32
@sh_tmu_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sh_tmu_id_table = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sh-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"sh-tmu-sh3\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sh_tmu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kept as earlytimer\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_tmu_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clocksource/sh_tmu.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_tmu_probe._entry_ptr = internal global ptr @sh_tmu_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sh_tmu_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tmu->lock\00", [21 x i8] zeroinitializer }, align 32
@sh_tmu_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 534, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_tmu_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sh_tmu_setup._entry_ptr = internal global ptr @sh_tmu_setup._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@sh_tmu_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.3, i32 541, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@sh_tmu_setup._entry_ptr.13 = internal global ptr @sh_tmu_setup._entry.11, section ".printk_index", align 4
@sh_tmu_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.3, i32 560, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to remap I/O memory\0A\00", [36 x i8] zeroinitializer }, align 32
@sh_tmu_setup._entry_ptr.16 = internal global ptr @sh_tmu_setup._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"#renesas,channels\00", [46 x i8] zeroinitializer }, align 32
@sh_tmu_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 507, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid number of channels %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sh_tmu_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@sh_tmu_parse_dt._entry_ptr = internal global ptr @sh_tmu_parse_dt._entry, section ".printk_index", align 4
@sh_tmu_map_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 485, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sh_tmu_map_memory\00", [46 x i8] zeroinitializer }, align 32
@sh_tmu_map_memory._entry_ptr = internal global ptr @sh_tmu_map_memory._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@sh_tmu_register_clockevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ch%u: used for clock events\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sh_tmu_register_clockevent\00", [37 x i8] zeroinitializer }, align 32
@sh_tmu_register_clockevent._entry_ptr = internal global ptr @sh_tmu_register_clockevent._entry, section ".printk_index", align 4
@sh_tmu_register_clockevent._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 433, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ch%u: failed to request irq %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sh_tmu_register_clockevent._entry_ptr.26 = internal global ptr @sh_tmu_register_clockevent._entry.24, section ".printk_index", align 4
@sh_tmu_clock_event_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ch%u: used for %s clock events\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sh_tmu_clock_event_set_state\00", [35 x i8] zeroinitializer }, align 32
@sh_tmu_clock_event_set_state._entry_ptr = internal global ptr @sh_tmu_clock_event_set_state._entry, section ".printk_index", align 4
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"periodic\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"oneshot\00", [24 x i8] zeroinitializer }, align 32
@__sh_tmu_enable._entry = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 152, ptr @.str.9, ptr @.str.5 }, align 1
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ch%u: cannot enable clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__sh_tmu_enable\00", [16 x i8] zeroinitializer }, align 32
@__sh_tmu_enable._entry_ptr = internal global ptr @__sh_tmu_enable._entry, section ".printk_index", align 4
@sh_tmu_register_clocksource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ch%u: used as clock source\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sh_tmu_register_clocksource\00", [36 x i8] zeroinitializer }, align 32
@sh_tmu_register_clocksource._entry_ptr = internal global ptr @sh_tmu_register_clocksource._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"sh_tmu_device_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 653, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 657, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"sh_tmu_of_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 647, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"sh_tmu_id_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 640, i32 40 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 608, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 521, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 534, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 539, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 541, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 560, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 503, i32 27 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 506, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 485, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 423, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 432, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 367, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 151, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [32 x i8] c"../drivers/clocksource/sh_tmu.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 327, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_sh_tmu_exit, ptr @__initcall__kmod_sh_tmu__188_677_sh_tmu_init4, ptr @__sh_tmu_enable._entry, ptr @__sh_tmu_enable._entry_ptr, ptr @sh_tmu_clock_event_set_state._entry, ptr @sh_tmu_clock_event_set_state._entry_ptr, ptr @sh_tmu_exit, ptr @sh_tmu_map_memory._entry, ptr @sh_tmu_map_memory._entry_ptr, ptr @sh_tmu_parse_dt._entry, ptr @sh_tmu_parse_dt._entry_ptr, ptr @sh_tmu_probe._entry, ptr @sh_tmu_probe._entry_ptr, ptr @sh_tmu_register_clockevent._entry, ptr @sh_tmu_register_clockevent._entry.24, ptr @sh_tmu_register_clockevent._entry_ptr, ptr @sh_tmu_register_clockevent._entry_ptr.26, ptr @sh_tmu_register_clocksource._entry, ptr @sh_tmu_register_clocksource._entry_ptr, ptr @sh_tmu_setup._entry, ptr @sh_tmu_setup._entry.11, ptr @sh_tmu_setup._entry.14, ptr @sh_tmu_setup._entry_ptr, ptr @sh_tmu_setup._entry_ptr.13, ptr @sh_tmu_setup._entry_ptr.16, ptr @sh_tmu_device_driver, ptr @.str, ptr @sh_tmu_of_table, ptr @sh_tmu_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sh_tmu_setup.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_map_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_register_clockevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_register_clockevent._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_clock_event_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_tmu_register_clocksource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_tmu_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_tmu_device_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_tmu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_tmu_device_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_tmu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %out

if.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 76) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call7.i.i, align 8
  %lock.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @sh_tmu_setup.__key, i16 noundef signext 2) #8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i.i, align 8
  %model.i.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %model.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %model.i.i, align 8
  %num_channels.i.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %num_channels.i.i, align 4
  %call.i.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef %num_channels.i.i, i32 noundef 1, i32 noundef 0) #8
  %12 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_channels.i.i, align 4
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch.i.i = icmp eq i32 %14, 2
  br i1 %switch.i.i, label %if.then.i.if.end82.i_crit_edge, label %sh_tmu_parse_dt.exit.thread.i

if.then.i.if.end82.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

sh_tmu_parse_dt.exit.thread.i:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %dev6.i.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i.i, ptr noundef nonnull @.str.18, i32 noundef %13) #11
  br label %if.then13

if.else.i:                                        ; preds = %if.end10
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %17 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data.i, align 8
  %tobool4.not.i = icmp eq ptr %18, null
  br i1 %tobool4.not.i, label %do.end78.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %19 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_data.i, align 4
  %model.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %model.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %model.i, align 8
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %18, align 4
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %25) #8
  %num_channels.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i.i, ptr %num_channels.i, align 4
  br label %if.end82.i

do.end78.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %dev80.i = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80.i, ptr noundef nonnull @.str.7) #11
  br label %if.then13

if.end82.i:                                       ; preds = %if.then5.i, %if.then.i.if.end82.i_crit_edge
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %dev84.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %call85.i = tail call ptr @clk_get(ptr noundef %dev84.i, ptr noundef nonnull @.str.10) #8
  %clk.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call85.i, ptr %clk.i, align 8
  %cmp.i.i = icmp ugt ptr %call85.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sh_tmu_setup.exit, label %if.end96.i

if.end96.i:                                       ; preds = %if.end82.i
  %call98.i = tail call i32 @clk_prepare(ptr noundef %call85.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %cmp99.i = icmp slt i32 %call98.i, 0
  br i1 %cmp99.i, label %if.end96.i.err_clk_put.i_crit_edge, label %if.end102.i

if.end96.i.err_clk_put.i_crit_edge:               ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_put.i

if.end102.i:                                      ; preds = %if.end96.i
  %32 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i, align 8
  %call104.i = tail call i32 @clk_enable(ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %cmp105.i = icmp slt i32 %call104.i, 0
  br i1 %cmp105.i, label %if.end102.i.err_clk_unprepare.i_crit_edge, label %if.end108.i

if.end102.i.err_clk_unprepare.i_crit_edge:        ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_unprepare.i

if.end108.i:                                      ; preds = %if.end102.i
  %34 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk.i, align 8
  %call110.i = tail call i32 @clk_get_rate(ptr noundef %35) #8
  %div199.i = lshr i32 %call110.i, 2
  %rate.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div199.i, ptr %rate.i, align 4
  %37 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %38) #8
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  %call.i200.i = tail call ptr @platform_get_resource(ptr noundef %40, i32 noundef 512, i32 noundef 0) #8
  %tobool.not.i.i = icmp eq ptr %call.i200.i, null
  br i1 %tobool.not.i.i, label %do.end.i201.i, label %if.end.i.i

do.end.i201.i:                                    ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.20) #11
  br label %do.end118.i

if.end.i.i:                                       ; preds = %if.end108.i
  %43 = ptrtoint ptr %call.i200.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call.i200.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %call.i200.i, i32 0, i32 1
  %45 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %end.i.i.i, align 4
  %sub.i.i.i = sub i32 1, %44
  %add.i.i.i = add i32 %sub.i.i.i, %46
  %call3.i.i = tail call ptr @ioremap(i32 noundef %44, i32 noundef %add.i.i.i) #8
  %mapbase.i.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call3.i.i, ptr %mapbase.i.i, align 4
  %cmp.i202.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i202.i, label %if.end.i.i.do.end118.i_crit_edge, label %if.end121.i

if.end.i.i.do.end118.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end118.i

do.end118.i:                                      ; preds = %if.end.i.i.do.end118.i_crit_edge, %do.end.i201.i
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i, align 8
  %dev120.i = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev120.i, ptr noundef nonnull @.str.15) #11
  br label %err_clk_unprepare.i

if.end121.i:                                      ; preds = %if.end.i.i
  %num_channels122.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 7
  %50 = ptrtoint ptr %num_channels122.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_channels122.i, align 4
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 512) #8
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !93

kcalloc.exit.thread.i:                            ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #10
  %channels221.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %channels221.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %channels221.i, align 8
  br label %err_unmap.i

if.end7.i.i.i:                                    ; preds = %if.end121.i
  %55 = extractvalue { i32, i1 } %52, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %55, i32 noundef 3520) #13
  %channels.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call8.i.i.i, ptr %channels.i, align 8
  %cmp125.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp125.i, label %if.end7.i.i.i.err_unmap.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.err_unmap.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %57 = ptrtoint ptr %num_channels122.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_channels122.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp130226.not.i = icmp eq i32 %58, 0
  br i1 %cmp130226.not.i, label %for.cond.preheader.i.sh_tmu_setup.exit.thread49_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.sh_tmu_setup.exit.thread49_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_tmu_setup.exit.thread49

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %model.i204.i = getelementptr inbounds %struct.sh_tmu_device, ptr %call7.i.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0227.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %59 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %channels.i, align 8
  %arrayidx.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0227.i)
  %cmp133.i = icmp eq i32 %i.0227.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0227.i)
  %switch.i = icmp ult i32 %i.0227.i, 2
  br i1 %switch.i, label %if.end.i209.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i209.i:                                    ; preds = %for.body.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i, ptr %arrayidx.i, align 128
  %index4.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 1
  %62 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %i.0227.i, ptr %index4.i.i, align 4
  %63 = ptrtoint ptr %model.i204.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %model.i204.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp.i205.i = icmp eq i32 %64, 1
  %65 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mapbase.i.i, align 4
  %..i207.i = select i1 %cmp.i205.i, i32 4, i32 8
  %add.ptr9.i.i = getelementptr i8, ptr %66, i32 %..i207.i
  %mul11.i.i = mul nuw nsw i32 %i.0227.i, 12
  %add.ptr12.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 %mul11.i.i
  %67 = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 2
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr12.i.i, ptr %67, align 8
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call7.i.i, align 8
  %call.i208.i = tail call i32 @platform_get_irq(ptr noundef %70, i32 noundef %i.0227.i) #8
  %irq.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 3
  %71 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call.i208.i, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208.i)
  %cmp16.i.i = icmp slt i32 %call.i208.i, 0
  br i1 %cmp16.i.i, label %if.end.i209.i.err_unmap.i_crit_edge, label %if.end19.i.i

if.end.i209.i.err_unmap.i_crit_edge:              ; preds = %if.end.i209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap.i

if.end19.i.i:                                     ; preds = %if.end.i209.i
  %cs_enabled.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 8
  %72 = ptrtoint ptr %cs_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %cs_enabled.i.i, align 8
  %enable_count.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 9
  %73 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %enable_count.i.i, align 4
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3, i32 3
  %76 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i211.i, label %if.end19.i.i.dev_name.exit.i.i_crit_edge

if.end19.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i211.i:                                  ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i210.i = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3
  %78 = ptrtoint ptr %dev.i210.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i210.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i211.i, %if.end19.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i212.i = phi ptr [ %79, %if.end.i.i211.i ], [ %77, %if.end19.i.i.dev_name.exit.i.i_crit_edge ]
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i, align 128
  br i1 %cmp133.i, label %if.then.i.i.i, label %if.then3.i.i.i

if.then.i.i.i:                                    ; preds = %dev_name.exit.i.i
  %has_clockevent.i.i.i = getelementptr inbounds %struct.sh_tmu_device, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %has_clockevent.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %has_clockevent.i.i.i, align 4
  %ced1.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6
  %name2.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6, i32 21
  %83 = ptrtoint ptr %name2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %retval.0.i.i212.i, ptr %name2.i.i.i.i, align 4
  %features.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6, i32 9
  %84 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 3, ptr %features.i.i.i.i, align 4
  %rating.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6, i32 22
  %85 = ptrtoint ptr %rating.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 200, ptr %rating.i.i.i.i, align 8
  %cpumask.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6, i32 25
  %86 = ptrtoint ptr %cpumask.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @__cpu_possible_mask, ptr %cpumask.i.i.i.i, align 4
  %set_next_event.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6, i32 1
  %87 = ptrtoint ptr %set_next_event.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @sh_tmu_clock_event_next, ptr %set_next_event.i.i.i.i, align 4
  %set_state_shutdown.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6, i32 14
  %88 = ptrtoint ptr %set_state_shutdown.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @sh_tmu_clock_event_shutdown, ptr %set_state_shutdown.i.i.i.i, align 8
  %set_state_periodic.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6, i32 11
  %89 = ptrtoint ptr %set_state_periodic.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @sh_tmu_clock_event_set_periodic, ptr %set_state_periodic.i.i.i.i, align 4
  %set_state_oneshot.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6, i32 12
  %90 = ptrtoint ptr %set_state_oneshot.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @sh_tmu_clock_event_set_oneshot, ptr %set_state_oneshot.i.i.i.i, align 64
  %suspend.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6, i32 17
  %91 = ptrtoint ptr %suspend.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @sh_tmu_clock_event_suspend, ptr %suspend.i.i.i.i, align 4
  %resume.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 0, i32 6, i32 18
  %92 = ptrtoint ptr %resume.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @sh_tmu_clock_event_resume, ptr %resume.i.i.i.i, align 8
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i, align 128
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %index4.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.22, i32 noundef %98) #11
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i, align 128
  %rate.i.i.i.i = getelementptr inbounds %struct.sh_tmu_device, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %rate.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rate.i.i.i.i, align 4
  tail call void @clockevents_config_and_register(ptr noundef %ced1.i.i.i.i, i32 noundef %102, i32 noundef 768, i32 noundef -1) #8
  %103 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq.i.i, align 4
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i, align 128
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %108, i32 0, i32 3, i32 3
  %109 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i213.i = icmp eq ptr %110, null
  br i1 %tobool.not.i.i.i.i213.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i.i_crit_edge:    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %108, i32 0, i32 3
  %111 = ptrtoint ptr %dev7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev7.i.i.i.i, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %112, %if.end.i.i.i.i.i ], [ %110, %if.then.i.i.i.dev_name.exit.i.i.i.i_crit_edge ]
  %call.i.i.i.i.i = tail call i32 @request_threaded_irq(i32 noundef %104, ptr noundef nonnull @sh_tmu_interrupt, ptr noundef null, i32 noundef 88576, ptr noundef %retval.0.i.i.i.i.i, ptr noundef %arrayidx.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %dev_name.exit.i.i.i.i.for.inc.i_crit_edge, label %do.end11.i.i.i.i

dev_name.exit.i.i.i.i.for.inc.i_crit_edge:        ; preds = %dev_name.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end11.i.i.i.i:                                 ; preds = %dev_name.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i, align 128
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %dev14.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %index4.i.i, align 4
  %119 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %irq.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i.i.i.i, ptr noundef nonnull @.str.25, i32 noundef %118, i32 noundef %120) #11
  br label %for.inc.i

if.then3.i.i.i:                                   ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %has_clocksource.i.i.i = getelementptr inbounds %struct.sh_tmu_device, ptr %81, i32 0, i32 9
  %121 = ptrtoint ptr %has_clocksource.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %has_clocksource.i.i.i, align 1
  %cs1.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 7
  %name2.i1.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 7, i32 8
  %122 = ptrtoint ptr %name2.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %retval.0.i.i212.i, ptr %name2.i1.i.i.i, align 8
  %rating.i2.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 7, i32 10
  %123 = ptrtoint ptr %rating.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 200, ptr %rating.i2.i.i.i, align 4
  %124 = ptrtoint ptr %cs1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @sh_tmu_clocksource_read, ptr %cs1.i.i.i.i, align 8
  %enable.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 7, i32 14
  %125 = ptrtoint ptr %enable.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @sh_tmu_clocksource_enable, ptr %enable.i.i.i.i, align 4
  %disable.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 7, i32 15
  %126 = ptrtoint ptr %disable.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @sh_tmu_clocksource_disable, ptr %disable.i.i.i.i, align 8
  %suspend.i3.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 7, i32 16
  %127 = ptrtoint ptr %suspend.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @sh_tmu_clocksource_suspend, ptr %suspend.i3.i.i.i, align 4
  %resume.i4.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 7, i32 17
  %128 = ptrtoint ptr %resume.i4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @sh_tmu_clocksource_resume, ptr %resume.i4.i.i.i, align 8
  %mask.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 7, i32 1
  %129 = ptrtoint ptr %mask.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 4294967295, ptr %mask.i.i.i.i, align 8
  %flags.i.i.i.i = getelementptr %struct.sh_tmu_channel, ptr %60, i32 %i.0227.i, i32 7, i32 13
  %130 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %flags.i.i.i.i, align 8
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i, align 128
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %dev.i5.i.i.i = getelementptr inbounds %struct.platform_device, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %index4.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i5.i.i.i, ptr noundef nonnull @.str.33, i32 noundef %136) #11
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i, align 128
  %rate.i7.i.i.i = getelementptr inbounds %struct.sh_tmu_device, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %rate.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rate.i7.i.i.i, align 4
  %call.i.i8.i.i.i = tail call i32 @__clocksource_register_scale(ptr noundef %cs1.i.i.i.i, i32 noundef 1, i32 noundef %140) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i.i.i, %do.end11.i.i.i.i, %dev_name.exit.i.i.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0227.i, 1
  %141 = ptrtoint ptr %num_channels122.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_channels122.i, align 4
  %cmp130.i = icmp ult i32 %inc.i, %142
  br i1 %cmp130.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sh_tmu_setup.exit.thread49_crit_edge

for.inc.i.sh_tmu_setup.exit.thread49_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_tmu_setup.exit.thread49

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sh_tmu_setup.exit.thread49:                       ; preds = %for.inc.i.sh_tmu_setup.exit.thread49_crit_edge, %for.cond.preheader.i.sh_tmu_setup.exit.thread49_crit_edge
  %143 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %out

err_unmap.i:                                      ; preds = %if.end.i209.i.err_unmap.i_crit_edge, %if.end7.i.i.i.err_unmap.i_crit_edge, %kcalloc.exit.thread.i
  %channels223.i = phi ptr [ %channels.i, %if.end7.i.i.i.err_unmap.i_crit_edge ], [ %channels221.i, %kcalloc.exit.thread.i ], [ %channels.i, %if.end.i209.i.err_unmap.i_crit_edge ]
  %ret.0.i = phi i32 [ -12, %if.end7.i.i.i.err_unmap.i_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ %call.i208.i, %if.end.i209.i.err_unmap.i_crit_edge ]
  %144 = ptrtoint ptr %channels223.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %channels223.i, align 4
  tail call void @kfree(ptr noundef %145) #8
  %146 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mapbase.i.i, align 4
  tail call void @iounmap(ptr noundef %147) #8
  br label %err_clk_unprepare.i

err_clk_unprepare.i:                              ; preds = %err_unmap.i, %do.end118.i, %if.end102.i.err_clk_unprepare.i_crit_edge
  %ret.1.i = phi i32 [ %call104.i, %if.end102.i.err_clk_unprepare.i_crit_edge ], [ -6, %do.end118.i ], [ %ret.0.i, %err_unmap.i ]
  %148 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %clk.i, align 8
  tail call void @clk_unprepare(ptr noundef %149) #8
  br label %err_clk_put.i

err_clk_put.i:                                    ; preds = %err_clk_unprepare.i, %if.end96.i.err_clk_put.i_crit_edge
  %ret.2.i = phi i32 [ %call98.i, %if.end96.i.err_clk_put.i_crit_edge ], [ %ret.1.i, %err_clk_unprepare.i ]
  %150 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %clk.i, align 8
  tail call void @clk_put(ptr noundef %151) #8
  br label %if.then13

sh_tmu_setup.exit:                                ; preds = %if.end82.i
  %152 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %call7.i.i, align 8
  %dev93.i = getelementptr inbounds %struct.platform_device, ptr %153, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93.i, ptr noundef nonnull @.str.12) #11
  %154 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %clk.i, align 8
  %156 = ptrtoint ptr %155 to i32
  %tobool12.not = icmp eq ptr %155, null
  br i1 %tobool12.not, label %sh_tmu_setup.exit.out_crit_edge, label %sh_tmu_setup.exit.if.then13_crit_edge

sh_tmu_setup.exit.if.then13_crit_edge:            ; preds = %sh_tmu_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

sh_tmu_setup.exit.out_crit_edge:                  ; preds = %sh_tmu_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then13:                                        ; preds = %sh_tmu_setup.exit.if.then13_crit_edge, %err_clk_put.i, %do.end78.i, %sh_tmu_parse_dt.exit.thread.i
  %retval.0.i48 = phi i32 [ %156, %sh_tmu_setup.exit.if.then13_crit_edge ], [ -22, %sh_tmu_parse_dt.exit.thread.i ], [ -6, %do.end78.i ], [ %ret.2.i, %err_clk_put.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %call.i44 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #8
  br label %cleanup

out:                                              ; preds = %sh_tmu_setup.exit.out_crit_edge, %sh_tmu_setup.exit.thread49, %do.end
  %tmu.0 = phi ptr [ %1, %do.end ], [ %call7.i.i, %sh_tmu_setup.exit.thread49 ], [ %call7.i.i, %sh_tmu_setup.exit.out_crit_edge ]
  %has_clockevent = getelementptr inbounds %struct.sh_tmu_device, ptr %tmu.0, i32 0, i32 8
  %157 = ptrtoint ptr %has_clockevent to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %has_clockevent, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool21.not = icmp eq i8 %158, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %out.if.then23_crit_edge

out.if.then23_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

lor.lhs.false:                                    ; preds = %out
  %has_clocksource = getelementptr inbounds %struct.sh_tmu_device, ptr %tmu.0, i32 0, i32 9
  %159 = ptrtoint ptr %has_clocksource to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %has_clocksource, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool22.not = icmp eq i8 %160, 0
  br i1 %tobool22.not, label %if.else, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %out.if.then23_crit_edge
  tail call void @pm_runtime_irq_safe(ptr noundef %dev) #8
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call.i45 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then23, %if.then13, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i48, %if.then13 ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_tmu_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_tmu_clock_event_next(i32 noundef %delta, ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %do.end9, label %do.body4, !prof !95

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/sh_tmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 388, 0\0A.popsection", ""() #8, !srcloc !96
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %add.ptr.i, i32 noundef 0) #8
  %base.i.i = getelementptr i8, ptr %ced, i32 -120
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 8
  %add.ptr11.i9.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i9.i, i16 8192) #8, !srcloc !100
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #8, !srcloc !101
  %.pre.i = tail call i32 @llvm.bswap.i32(i32 %delta) #8
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 8
  %add.ptr13.i.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %.pre.i) #8, !srcloc !101
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %add.ptr.i, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_tmu_clock_event_shutdown(ptr nocapture noundef %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  tail call fastcc void @sh_tmu_disable(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_tmu_clock_event_set_periodic(ptr nocapture noundef %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ced, i32 -128
  %state_use_accessors.i.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i.i, align 16
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch.i = icmp eq i32 %2, 2
  br i1 %switch.i, label %if.then.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sh_tmu_disable(ptr noundef %add.ptr.i.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry.do.end.i_crit_edge
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %index.i = getelementptr i8, ptr %ced, i32 -124
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef %8, ptr noundef nonnull @.str.29) #11
  %enable_count.i.i.i = getelementptr i8, ptr %ced, i32 364
  %9 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_count.i.i.i, align 4
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %enable_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %do.end.i.sh_tmu_clock_event_set_state.exit_crit_edge

do.end.i.sh_tmu_clock_event_set_state.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_tmu_clock_event_set_state.exit

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 128
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev.i.i.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %call.i.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i.i.i, i32 noundef 4) #8
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i, align 128
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %syscore.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3, i32 12, i32 7
  %19 = ptrtoint ptr %syscore.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i.i.i.i = load i8, ptr %syscore.i.i.i.i, align 4
  %bf.set.i.i.i.i = or i8 %bf.load.i.i.i.i, 64
  store i8 %bf.set.i.i.i.i, ptr %syscore.i.i.i.i, align 4
  %call4.i.i.i = tail call fastcc i32 @__sh_tmu_enable(ptr noundef %add.ptr.i.i) #8
  br label %sh_tmu_clock_event_set_state.exit

sh_tmu_clock_event_set_state.exit:                ; preds = %if.end.i.i.i, %do.end.i.sh_tmu_clock_event_set_state.exit_crit_edge
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i, align 128
  %rate.i.i = getelementptr inbounds %struct.sh_tmu_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate.i.i, align 4
  %add.i.i = add i32 %23, 50
  %div.i.i = udiv i32 %add.i.i, 100
  %periodic1.i.i = getelementptr i8, ptr %ced, i32 -112
  %24 = ptrtoint ptr %periodic1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div.i.i, ptr %periodic1.i.i, align 16
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %add.ptr.i.i, i32 noundef 0) #8
  %base.i.i.i.i = getelementptr i8, ptr %ced, i32 -120
  %25 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr11.i.i.i.i = getelementptr i8, ptr %26, i32 8
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i.i.i.i) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %28 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr11.i9.i.i.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i9.i.i.i, i16 8192) #8, !srcloc !100
  %30 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %div.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %32) #8, !srcloc !101
  %33 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i.i, align 8
  %add.ptr13.i.i.i.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i.i.i, i32 %32) #8, !srcloc !101
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %add.ptr.i.i, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_tmu_clock_event_set_oneshot(ptr nocapture noundef %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ced, i32 -128
  %state_use_accessors.i.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i.i, align 16
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch.i = icmp eq i32 %2, 2
  br i1 %switch.i, label %if.then.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sh_tmu_disable(ptr noundef %add.ptr.i.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry.do.end.i_crit_edge
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %index.i = getelementptr i8, ptr %ced, i32 -124
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef %8, ptr noundef nonnull @.str.30) #11
  %enable_count.i.i.i = getelementptr i8, ptr %ced, i32 364
  %9 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_count.i.i.i, align 4
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %enable_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %do.end.i.sh_tmu_clock_event_set_state.exit_crit_edge

do.end.i.sh_tmu_clock_event_set_state.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_tmu_clock_event_set_state.exit

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 128
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev.i.i.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %call.i.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i.i.i, i32 noundef 4) #8
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i, align 128
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %syscore.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3, i32 12, i32 7
  %19 = ptrtoint ptr %syscore.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i.i.i.i = load i8, ptr %syscore.i.i.i.i, align 4
  %bf.set.i.i.i.i = or i8 %bf.load.i.i.i.i, 64
  store i8 %bf.set.i.i.i.i, ptr %syscore.i.i.i.i, align 4
  %call4.i.i.i = tail call fastcc i32 @__sh_tmu_enable(ptr noundef %add.ptr.i.i) #8
  br label %sh_tmu_clock_event_set_state.exit

sh_tmu_clock_event_set_state.exit:                ; preds = %if.end.i.i.i, %do.end.i.sh_tmu_clock_event_set_state.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_tmu_clock_event_suspend(ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @dev_pm_genpd_suspend(ptr noundef %dev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_tmu_clock_event_resume(ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @dev_pm_genpd_resume(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_tmu_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.sh_tmu_channel, ptr %dev_id, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  %base.i = getelementptr inbounds %struct.sh_tmu_channel, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 0) #8, !srcloc !100
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 8192) #8, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ced = getelementptr inbounds %struct.sh_tmu_channel, ptr %dev_id, i32 0, i32 6
  %4 = ptrtoint ptr %ced to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ced, align 128
  tail call void %5(ptr noundef %ced) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_tmu_start_stop_ch(ptr nocapture noundef readonly %ch, i32 noundef %start) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch, align 128
  %lock = getelementptr inbounds %struct.sh_tmu_device, ptr %1, i32 0, i32 5
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 128
  %model.i = getelementptr inbounds %struct.sh_tmu_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.else.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mapbase.i = getelementptr inbounds %struct.sh_tmu_device, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 2
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %conv.i = zext i8 %9 to i32
  br label %sh_tmu_read.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mapbase4.i = getelementptr inbounds %struct.sh_tmu_device, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %mapbase4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapbase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %conv7.i = zext i8 %12 to i32
  br label %sh_tmu_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base14.i = getelementptr inbounds %struct.sh_tmu_channel, ptr %ch, i32 0, i32 2
  %13 = ptrtoint ptr %base14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base14.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %14, i32 -4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !105
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  br label %sh_tmu_read.exit

sh_tmu_read.exit:                                 ; preds = %if.else.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i32 [ %16, %if.else.i ], [ %conv7.i, %sw.bb2.i ], [ %conv.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool.not = icmp eq i32 %start, 0
  %index2 = getelementptr inbounds %struct.sh_tmu_channel, ptr %ch, i32 0, i32 1
  %17 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index2, align 4
  %shl3 = shl nuw i32 1, %18
  %or = or i32 %shl3, %retval.0.i
  %neg = xor i32 %shl3, -1
  %and = and i32 %retval.0.i, %neg
  %value.0 = select i1 %tobool.not, i32 %and, i32 %or
  %19 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch, align 128
  %model.i21 = getelementptr inbounds %struct.sh_tmu_device, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %model.i21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %model.i21, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %22, label %if.else.i27 [
    i32 1, label %sw.bb.i25
    i32 0, label %sw.bb2.i26
  ]

sw.bb.i25:                                        ; preds = %sh_tmu_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i22 = trunc i32 %value.0 to i8
  %mapbase.i23 = getelementptr inbounds %struct.sh_tmu_device, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %mapbase.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mapbase.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %25, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i24, i8 %conv.i22) #8, !srcloc !108
  br label %sh_tmu_write.exit

sw.bb2.i26:                                       ; preds = %sh_tmu_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i = trunc i32 %value.0 to i8
  %mapbase5.i = getelementptr inbounds %struct.sh_tmu_device, ptr %20, i32 0, i32 1
  %26 = ptrtoint ptr %mapbase5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mapbase5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %conv3.i) #8, !srcloc !108
  br label %sh_tmu_write.exit

if.else.i27:                                      ; preds = %sh_tmu_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %base12.i = getelementptr inbounds %struct.sh_tmu_channel, ptr %ch, i32 0, i32 2
  %28 = ptrtoint ptr %base12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base12.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %29, i32 -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %value.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %30) #8, !srcloc !101
  br label %sh_tmu_write.exit

sh_tmu_write.exit:                                ; preds = %if.else.i27, %sw.bb2.i26, %sw.bb.i25
  %31 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ch, align 128
  %lock11 = getelementptr inbounds %struct.sh_tmu_device, ptr %32, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i32 noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_tmu_disable(ptr nocapture noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_count = getelementptr inbounds %struct.sh_tmu_channel, ptr %ch, i32 0, i32 9
  %0 = ptrtoint ptr %enable_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 197, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end21.critedge:                                ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %enable_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %enable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23.not = icmp eq i32 %dec, 0
  br i1 %cmp23.not, label %if.end25, label %if.end21.critedge.return_crit_edge

if.end21.critedge.return_crit_edge:               ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end25:                                         ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %ch, i32 noundef 0) #8
  %base.i.i = getelementptr inbounds %struct.sh_tmu_channel, ptr %ch, i32 0, i32 2
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i, i16 0) #8, !srcloc !100
  %5 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ch, align 128
  %clk.i = getelementptr inbounds %struct.sh_tmu_device, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  %9 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ch, align 128
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %syscore.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 12, i32 7
  %13 = ptrtoint ptr %syscore.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %syscore.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %syscore.i, align 4
  %14 = load ptr, ptr %ch, align 128
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev28, i32 noundef 5) #8
  br label %return

return:                                           ; preds = %if.end25, %if.end21.critedge.return_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sh_tmu_enable(ptr nocapture noundef readonly %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch, align 128
  %clk = getelementptr inbounds %struct.sh_tmu_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %index = getelementptr inbounds %struct.sh_tmu_channel, ptr %ch, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %9) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %ch, i32 noundef 0)
  %base12.i = getelementptr inbounds %struct.sh_tmu_channel, ptr %ch, i32 0, i32 2
  %10 = ptrtoint ptr %base12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base12.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1) #8, !srcloc !101
  %12 = ptrtoint ptr %base12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base12.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 -1) #8, !srcloc !101
  %14 = ptrtoint ptr %base12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base12.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 0) #8, !srcloc !100
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %ch, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sh_tmu_clocksource_read(ptr nocapture noundef readonly %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base14.i = getelementptr i8, ptr %cs, i32 -376
  %0 = ptrtoint ptr %base14.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base14.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %3 = xor i32 %2, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i32 %4 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_tmu_clocksource_enable(ptr nocapture noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -384
  %cs_enabled = getelementptr i8, ptr %cs, i32 104
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs_enabled, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !95

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 265, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  %enable_count.i = getelementptr i8, ptr %cs, i32 108
  %2 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_count.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %enable_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %sh_tmu_enable.exit, label %if.end22.if.then25_crit_edge

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

sh_tmu_enable.exit:                               ; preds = %if.end22
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 128
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %syscore.i.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 12, i32 7
  %12 = ptrtoint ptr %syscore.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %syscore.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %syscore.i.i, align 4
  %call4.i = tail call fastcc i32 @__sh_tmu_enable(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool24.not = icmp eq i32 %call4.i, 0
  br i1 %tobool24.not, label %sh_tmu_enable.exit.if.then25_crit_edge, label %sh_tmu_enable.exit.cleanup_crit_edge

sh_tmu_enable.exit.cleanup_crit_edge:             ; preds = %sh_tmu_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sh_tmu_enable.exit.if.then25_crit_edge:           ; preds = %sh_tmu_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.then25:                                        ; preds = %sh_tmu_enable.exit.if.then25_crit_edge, %if.end22.if.then25_crit_edge
  %13 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %cs_enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %sh_tmu_enable.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.then25 ], [ %call4.i, %sh_tmu_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_tmu_clocksource_disable(ptr nocapture noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_enabled = getelementptr i8, ptr %cs, i32 104
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs_enabled, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 279, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -384
  tail call fastcc void @sh_tmu_disable(ptr noundef %add.ptr.i)
  %2 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %cs_enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_tmu_clocksource_suspend(ptr nocapture noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -384
  %cs_enabled = getelementptr i8, ptr %cs, i32 104
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs_enabled, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable_count = getelementptr i8, ptr %cs, i32 108
  %2 = ptrtoint ptr %enable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %enable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sh_tmu_start_stop_ch(ptr noundef %add.ptr.i, i32 noundef 0) #8
  %base.i.i = getelementptr i8, ptr %cs, i32 -376
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i, i16 0) #8, !srcloc !100
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %clk.i = getelementptr inbounds %struct.sh_tmu_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void @dev_pm_genpd_suspend(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_tmu_clocksource_resume(ptr nocapture noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -384
  %cs_enabled = getelementptr i8, ptr %cs, i32 104
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs_enabled, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable_count = getelementptr i8, ptr %cs, i32 108
  %2 = ptrtoint ptr %enable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %enable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void @dev_pm_genpd_resume(ptr noundef %dev) #8
  %call2 = tail call fastcc i32 @__sh_tmu_enable(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_sh_tmu__188_677_sh_tmu_init4, !1, !"__initcall__kmod_sh_tmu__188_677_sh_tmu_init4", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/sh_tmu.c", i32 677, i32 1}
!2 = !{ptr @__exitcall_sh_tmu_exit, !3, !"__exitcall_sh_tmu_exit", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/sh_tmu.c", i32 678, i32 1}
!4 = !{ptr @__UNIQUE_ID_author189, !5, !"__UNIQUE_ID_author189", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/sh_tmu.c", i32 680, i32 1}
!6 = !{ptr @__UNIQUE_ID_description190, !7, !"__UNIQUE_ID_description190", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/sh_tmu.c", i32 681, i32 1}
!8 = !{ptr @__UNIQUE_ID_file191, !9, !"__UNIQUE_ID_file191", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/sh_tmu.c", i32 682, i32 1}
!10 = !{ptr @__UNIQUE_ID_license192, !9, !"__UNIQUE_ID_license192", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/sh_tmu.c", i32 657, i32 11}
!13 = !{ptr @sh_tmu_device_driver, !14, !"sh_tmu_device_driver", i1 false, i1 false}
!14 = !{!"../drivers/clocksource/sh_tmu.c", i32 653, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/sh_tmu.c", i32 608, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sh_tmu_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @sh_tmu_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @sh_tmu_setup.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/sh_tmu.c", i32 521, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/sh_tmu.c", i32 534, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sh_tmu_setup._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @sh_tmu_setup._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/sh_tmu.c", i32 539, i32 38}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clocksource/sh_tmu.c", i32 541, i32 3}
!36 = !{ptr @sh_tmu_setup._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sh_tmu_setup._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/sh_tmu.c", i32 560, i32 3}
!40 = !{ptr @sh_tmu_setup._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sh_tmu_setup._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/sh_tmu.c", i32 503, i32 27}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/sh_tmu.c", i32 506, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sh_tmu_parse_dt._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sh_tmu_parse_dt._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clocksource/sh_tmu.c", i32 485, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sh_tmu_map_memory._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sh_tmu_map_memory._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clocksource/sh_tmu.c", i32 423, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sh_tmu_register_clockevent._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sh_tmu_register_clockevent._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clocksource/sh_tmu.c", i32 432, i32 3}
!61 = !{ptr @sh_tmu_register_clockevent._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sh_tmu_register_clockevent._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clocksource/sh_tmu.c", i32 367, i32 2}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sh_tmu_clock_event_set_state._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @sh_tmu_clock_event_set_state._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clocksource/sh_tmu.c", i32 151, i32 3}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__sh_tmu_enable._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @__sh_tmu_enable._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clocksource/sh_tmu.c", i32 327, i32 2}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sh_tmu_register_clocksource._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @sh_tmu_register_clocksource._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @sh_tmu_of_table, !81, !"sh_tmu_of_table", i1 false, i1 false}
!81 = !{!"../drivers/clocksource/sh_tmu.c", i32 647, i32 34}
!82 = !{ptr @sh_tmu_id_table, !83, !"sh_tmu_id_table", i1 false, i1 false}
!83 = !{!"../drivers/clocksource/sh_tmu.c", i32 640, i32 40}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i8 0, i8 2}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2153215325, i64 2153215818, i64 2153215362, i64 2153215418, i64 2153215452, i64 2153215476, i64 2153215517, i64 2153215538, i64 2153215566, i64 2153215600}
!97 = !{i64 4022504}
!98 = !{i64 2151555589}
!99 = !{i64 2151557006}
!100 = !{i64 4022304}
!101 = !{i64 4022924}
!102 = !{i64 2151557556}
!103 = !{i64 4023122}
!104 = !{i64 2151554977}
!105 = !{i64 4023342}
!106 = !{i64 2151556201}
!107 = !{i64 2151556582}
!108 = !{i64 4022727}
