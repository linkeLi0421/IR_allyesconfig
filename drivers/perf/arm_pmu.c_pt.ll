; ModuleID = '/llk/IR_all_yes/drivers/perf/arm_pmu.c_pt.bc'
source_filename = "../drivers/perf/arm_pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pmu_irq_ops = type { ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.72, i64, i64, i64, %union.anon.73, i32, %union.anon.74, %union.anon.75, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.72 = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i64 }
%union.anon.75 = type { i64 }
%struct.hw_perf_event = type { %union.anon.76, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.83, i64, i64, i64, i64 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_pmu = type { %struct.pmu, %struct.cpumask, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i32], [2 x i32], ptr, ptr, %struct.hlist_node, %struct.notifier_block, [5 x ptr], i64, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pmu_hw_events = type { [32 x ptr], [1 x i32], %struct.raw_spinlock, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@cpu_irq = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/perf/arm_pmu.c\00", [41 x i8] zeroinitializer }, align 32
@cpu_irq_ops = weak dso_local global ptr null, section ".data..percpu", align 4
@cpu_armpmu = weak dso_local global ptr null, section ".data..percpu", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@armpmu_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014hw perfevents: unable to set irq affinity (irq=%d, cpu=%u)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"armpmu_request_irq\00", [45 x i8] zeroinitializer }, align 32
@armpmu_request_irq._entry_ptr = internal global ptr @armpmu_request_irq._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm-pmu\00", [24 x i8] zeroinitializer }, align 32
@pmuirq_ops = internal constant { %struct.pmu_irq_ops, [20 x i8] } { %struct.pmu_irq_ops { ptr @enable_irq, ptr @disable_irq_nosync, ptr @armpmu_free_pmuirq }, [20 x i8] zeroinitializer }, align 32
@has_nmi = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pmunmi_ops = internal constant { %struct.pmu_irq_ops, [20 x i8] } { %struct.pmu_irq_ops { ptr @enable_nmi, ptr @disable_nmi_nosync, ptr @armpmu_free_pmunmi }, [20 x i8] zeroinitializer }, align 32
@percpu_pmuirq_ops = internal constant { %struct.pmu_irq_ops, [20 x i8] } { %struct.pmu_irq_ops { ptr @armpmu_enable_percpu_pmuirq, ptr @disable_percpu_irq, ptr @armpmu_free_percpu_pmuirq }, [20 x i8] zeroinitializer }, align 32
@percpu_pmunmi_ops = internal constant { %struct.pmu_irq_ops, [20 x i8] } { %struct.pmu_irq_ops { ptr @armpmu_enable_percpu_pmunmi, ptr @armpmu_disable_percpu_pmunmi, ptr @armpmu_free_percpu_pmunmi }, [20 x i8] zeroinitializer }, align 32
@armpmu_request_irq._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013hw perfevents: unable to request IRQ%d for ARM PMU counters\0A\00", [33 x i8] zeroinitializer }, align 32
@armpmu_request_irq._entry_ptr.6 = internal global ptr @armpmu_request_irq._entry.4, section ".printk_index", align 4
@armpmu_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016hw perfevents: enabled with %s PMU driver, %d counters available%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armpmu_register\00", [16 x i8] zeroinitializer }, align 32
@armpmu_register._entry_ptr = internal global ptr @armpmu_register._entry, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", using NMIs\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__initcall__kmod_arm_pmu__252_977_arm_pmu_hp_init4 = internal global ptr @arm_pmu_hp_init, section ".initcall4.init", align 4
@__pcpu_unique_cpu_armpmu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_cpu_irq = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_cpu_irq_ops = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@armpmu_dispatch_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__armpmu_alloc._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 875, ptr null, ptr null }, align 1
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016hw perfevents: failed to allocate per-cpu PMU data.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__armpmu_alloc\00", [17 x i8] zeroinitializer }, align 32
@__armpmu_alloc._entry_ptr = internal global ptr @__armpmu_alloc._entry, section ".printk_index", align 4
@armpmu_common_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @armpmu_common_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@__armpmu_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&events->pmu_lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__hw_perf_event_init.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str, ptr @.str.17, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm_pmu\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__hw_perf_event_init\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"event %x:%llx not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"hw perfevents: event %x:%llx not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@__hw_perf_event_init.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str, ptr @.str.19, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ARM performance counters do not support mode exclusion\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"hw perfevents: ARM performance counters do not support mode exclusion\0A\00", [57 x i8] zeroinitializer }, align 32
@armpmu_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@armpmu_common_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_cpus, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_cpus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpus\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"perf/arm/pmu:starting\00", [42 x i8] zeroinitializer }, align 32
@arm_pmu_hp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013hw perfevents: CPU hotplug notifier for ARM PMU could not be registered: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_pmu_hp_init\00", [16 x i8] zeroinitializer }, align 32
@arm_pmu_hp_init._entry_ptr = internal global ptr @arm_pmu_hp_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 617, i32 6 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 641, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 650, i32 46 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"pmuirq_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 42, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant [8 x i8] c"has_nmi\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"pmunmi_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 53, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"percpu_pmuirq_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 71, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"percpu_pmunmi_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 96, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 690, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 951, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 875, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [25 x i8] c"armpmu_common_attr_group\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 580, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 907, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 108, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 447, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 468, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"armpmu_common_attrs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 575, i32 26 }
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"dev_attr_cpus\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 573, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 969, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [26 x i8] c"../drivers/perf/arm_pmu.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 973, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__armpmu_alloc._entry, ptr @__armpmu_alloc._entry_ptr, ptr @__initcall__kmod_arm_pmu__252_977_arm_pmu_hp_init4, ptr @arm_pmu_hp_init._entry, ptr @arm_pmu_hp_init._entry_ptr, ptr @armpmu_register._entry, ptr @armpmu_register._entry_ptr, ptr @armpmu_request_irq._entry, ptr @armpmu_request_irq._entry.4, ptr @armpmu_request_irq._entry_ptr, ptr @armpmu_request_irq._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pmuirq_ops, ptr @has_nmi, ptr @pmunmi_ops, ptr @percpu_pmuirq_ops, ptr @percpu_pmunmi_ops, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @armpmu_common_attr_group, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @armpmu_common_attrs, ptr @dev_attr_cpus, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armpmu_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmuirq_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @has_nmi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmunmi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_pmuirq_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_pmunmi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armpmu_request_irq._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armpmu_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armpmu_common_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armpmu_common_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_pmu_hp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @armpmu_map_event(ptr nocapture noundef readonly %event, ptr noundef readonly %event_map, ptr noundef readonly %cache_map, i32 noundef %raw_event_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %config1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %config1, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %4 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu, align 8
  %type4 = getelementptr inbounds %struct.pmu, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp = icmp eq i32 %3, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = trunc i64 %1 to i32
  %conv1.i = and i32 %8, %raw_event_mask
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 9, i64 %1)
  %cmp.i = icmp ugt i64 %1, 9
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %tobool.not.i = icmp eq ptr %event_map, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom.i = trunc i64 %1 to i32
  %arrayidx.i = getelementptr [10 x i32], ptr %event_map, i32 0, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %11)
  %cmp3.i = icmp eq i32 %11, 65535
  %spec.select.i = select i1 %cmp3.i, i32 -2, i32 %11
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %12 = trunc i64 %1 to i32
  %conv.i = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv.i)
  %cmp.i18 = icmp ugt i32 %conv.i, 6
  br i1 %cmp.i18, label %sw.bb6.cleanup_crit_edge, label %if.end.i19

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i19:                                       ; preds = %sw.bb6
  %13 = lshr i32 %12, 8
  %conv4.i = and i32 %13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv4.i)
  %cmp5.i = icmp ugt i32 %conv4.i, 2
  br i1 %cmp5.i, label %if.end.i19.cleanup_crit_edge, label %if.end8.i

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i19
  %14 = lshr i32 %12, 16
  %conv11.i = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv11.i)
  %cmp12.i = icmp ugt i32 %conv11.i, 1
  br i1 %cmp12.i, label %if.end8.i.cleanup_crit_edge, label %if.end15.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.i:                                       ; preds = %if.end8.i
  %tobool.not.i20 = icmp eq ptr %cache_map, null
  br i1 %tobool.not.i20, label %if.end15.i.cleanup_crit_edge, label %if.end17.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19.i = getelementptr [7 x [3 x [2 x i32]]], ptr %cache_map, i32 0, i32 %conv.i, i32 %conv4.i, i32 %conv11.i
  %15 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %16)
  %cmp20.i = icmp eq i32 %16, 65535
  %..i = select i1 %cmp20.i, i32 -2, i32 %16
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = trunc i64 %1 to i32
  %conv1.i22 = and i32 %17, %raw_event_mask
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %if.end17.i, %if.end15.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i19.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.end2.i, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %conv1.i, %if.then ], [ %conv1.i22, %sw.bb8 ], [ -2, %if.end.cleanup_crit_edge ], [ %spec.select.i, %if.end2.i ], [ -22, %sw.bb.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %if.end.i19.cleanup_crit_edge ], [ -22, %if.end8.i.cleanup_crit_edge ], [ -2, %if.end15.i.cleanup_crit_edge ], [ %..i, %if.end17.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armpmu_event_set_period(ptr noundef %event) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %2 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 7
  %period_left = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 7, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %period_left, i32 noundef 8) #10
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %period_left) #10
  %sample_period = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 6
  %3 = ptrtoint ptr %sample_period to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sample_period, align 8
  %flags.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 7
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %sub = sub i64 0, %4
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %sub)
  %cmp.not = icmp sgt i64 %call.i, %sub
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !90

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %period_left, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %period_left, i64 noundef %4) #10
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %4, ptr %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %left.0 = phi i64 [ %4, %if.then ], [ %call.i, %entry.if.end_crit_edge ]
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %left.0)
  %cmp5 = icmp slt i64 %left.0, 1
  br i1 %cmp5, label %if.then12, label %if.end.if.end16_crit_edge, !prof !91

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i64 %left.0, %4
  %call.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %period_left, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %period_left, i64 noundef %add) #10
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %4, ptr %2, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %left.1 = phi i64 [ %add, %if.then12 ], [ %left.0, %if.end.if.end16_crit_edge ]
  %ret.1 = phi i32 [ 1, %if.then12 ], [ %ret.0, %if.end.if.end16_crit_edge ]
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i64 4294967295, i64 -1
  %shr = lshr i64 %..i, 1
  %9 = tail call i64 @llvm.umin.i64(i64 %left.1, i64 %shr)
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %sub22 = sub nsw i64 0, %9
  %call.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %prev_count, i64 noundef %sub22) #10
  %write_counter = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %write_counter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_counter, align 8
  %and = and i64 %..i, %sub22
  tail call void %11(ptr noundef %event, i64 noundef %and) #10
  tail call void @perf_event_update_userpage(ptr noundef %event) #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_update_userpage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @armpmu_event_update(ptr noundef %event) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %flags.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 7
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %read_counter = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 10
  br label %again

again:                                            ; preds = %again.again_crit_edge, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prev_count, i32 noundef 8) #10
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %prev_count) #10
  %4 = ptrtoint ptr %read_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_counter, align 4
  %call2 = tail call i64 %5(ptr noundef %event) #10
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #10
  %call.i20 = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %prev_count, i64 noundef %call.i, i64 noundef %call2) #10
  %cmp.not = icmp eq i64 %call.i20, %call.i
  br i1 %cmp.not, label %if.end, label %again.again_crit_edge

again.again_crit_edge:                            ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  br label %again

if.end:                                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i64 4294967295, i64 -1
  %sub = sub i64 %call2, %call.i
  %and = and i64 %sub, %..i
  %count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 8) #10
  tail call void @generic_atomic64_add(i64 noundef %and, ptr noundef %count) #10
  %period_left = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 7, i32 0, i32 1
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %period_left, i32 noundef 8) #10
  tail call void @generic_atomic64_sub(i64 noundef %and, ptr noundef %period_left) #10
  ret i64 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @armpmu_free_irq(i32 noundef %irq, i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_irq to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %irq)
  %cmp10.not = icmp eq i32 %4, %irq
  br i1 %cmp10.not, label %do.body38.critedge, label %do.end21, !prof !90

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 617, i32 noundef 9, ptr noundef null) #10
  br label %return

do.body38.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add46 = add i32 %1, ptrtoint (ptr @cpu_irq_ops to i32)
  %5 = inttoptr i32 %add46 to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %free_pmuirq = getelementptr inbounds %struct.pmu_irq_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %free_pmuirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_pmuirq, align 4
  tail call void %9(i32 noundef %irq, i32 noundef %cpu, ptr noundef nonnull @cpu_armpmu) #10
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add55 = add i32 %11, ptrtoint (ptr @cpu_irq to i32)
  %12 = inttoptr i32 %add55 to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %14 = load i32, ptr %arrayidx, align 4
  %add64 = add i32 %14, ptrtoint (ptr @cpu_irq_ops to i32)
  %15 = inttoptr i32 %add64 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 4
  br label %return

return:                                           ; preds = %do.body38.critedge, %do.end21, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armpmu_request_irq(i32 noundef %irq, i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool.not = icmp eq i32 %irq, 0
  br i1 %tobool.not, label %entry.cleanup98_crit_edge, label %if.end

entry.cleanup98_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup98

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @irq_check_status_bit(i32 noundef %irq, i32 noundef 131072) #10
  br i1 %call.i, label %if.else28, label %if.then1

if.then1:                                         ; preds = %if.end
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call3 = tail call i32 @irq_force_affinity(i32 noundef %irq, ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then1.if.end8_crit_edge, label %if.end.i.i

if.then1.if.end8_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.i.i:                                       ; preds = %if.then1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp = icmp ugt i32 %call4.i.i, 1
  br i1 %cmp, label %cleanup, label %if.end.i.i.if.end8_crit_edge

if.end.i.i.if.end8_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.end.i.i.if.end8_crit_edge, %if.then1.if.end8_crit_edge
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @cpu_armpmu to i32)
  %3 = inttoptr i32 %add to ptr
  %call14 = tail call i32 @request_nmi(i32 noundef %irq, ptr noundef nonnull @armpmu_dispatch_irq, i32 noundef 592896, ptr noundef nonnull @.str.3, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end8.if.end74.sink.split_crit_edge, label %if.then16

if.end8.if.end74.sink.split_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.sink.split

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add25 = add i32 %5, ptrtoint (ptr @cpu_armpmu to i32)
  %6 = inttoptr i32 %add25 to ptr
  %call.i125 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @armpmu_dispatch_irq, ptr noundef null, i32 noundef 592896, ptr noundef nonnull @.str.3, ptr noundef %6) #10
  br label %if.end71

cleanup:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %irq, i32 noundef %cpu) #13
  br label %do.end95

if.else28:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %7)
  %cmp7.i = icmp ult i32 %call6.i, %7
  br i1 %cmp7.i, label %if.else28.do.body.i_crit_edge, label %if.else28.if.then31_crit_edge

if.else28.if.then31_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.else28.do.body.i_crit_edge:                    ; preds = %if.else28
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.else28.do.body.i_crit_edge
  %call9.i = phi i32 [ %call.i128, %do.body.i.do.body.i_crit_edge ], [ %call6.i, %if.else28.do.body.i_crit_edge ]
  %count.08.i = phi i32 [ %spec.select.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.else28.do.body.i_crit_edge ]
  %arrayidx.i126 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i
  %8 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i126, align 4
  %add.i127 = add i32 %9, ptrtoint (ptr @cpu_irq to i32)
  %10 = inttoptr i32 %add.i127 to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %irq)
  %cmp2.i = icmp eq i32 %12, %irq
  %inc.i = zext i1 %cmp2.i to i32
  %spec.select.i = add i32 %count.08.i, %inc.i
  %call.i128 = tail call i32 @cpumask_next(i32 noundef %call9.i, ptr noundef nonnull @__cpu_possible_mask) #14
  %cmp.i = icmp ult i32 %call.i128, %7
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %armpmu_count_irq_users.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

armpmu_count_irq_users.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp30 = icmp eq i32 %spec.select.i, 0
  br i1 %cmp30, label %armpmu_count_irq_users.exit.if.then31_crit_edge, label %armpmu_count_irq_users.exit.do.body.i132_crit_edge

armpmu_count_irq_users.exit.do.body.i132_crit_edge: ; preds = %armpmu_count_irq_users.exit
  br label %do.body.i132

armpmu_count_irq_users.exit.if.then31_crit_edge:  ; preds = %armpmu_count_irq_users.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.then31:                                        ; preds = %armpmu_count_irq_users.exit.if.then31_crit_edge, %if.else28.if.then31_crit_edge
  %call32 = tail call i32 @request_percpu_nmi(i32 noundef %irq, ptr noundef nonnull @armpmu_dispatch_irq, ptr noundef nonnull @.str.3, ptr noundef nonnull @cpu_armpmu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.if.end74.sink.split_crit_edge, label %if.then34

if.then31.if.end74.sink.split_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.sink.split

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %call.i129 = tail call i32 @__request_percpu_irq(i32 noundef %irq, ptr noundef nonnull @armpmu_dispatch_irq, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @cpu_armpmu) #10
  br label %if.end71

do.body.i132:                                     ; preds = %for.cond.backedge.i.do.body.i132_crit_edge, %armpmu_count_irq_users.exit.do.body.i132_crit_edge
  %call20.i = phi i32 [ %call.i133, %for.cond.backedge.i.do.body.i132_crit_edge ], [ %call6.i, %armpmu_count_irq_users.exit.do.body.i132_crit_edge ]
  %arrayidx.i130 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call20.i
  %13 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i130, align 4
  %add.i131 = add i32 %14, ptrtoint (ptr @cpu_irq to i32)
  %15 = inttoptr i32 %add.i131 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %irq)
  %cmp2.not.i = icmp eq i32 %17, %irq
  br i1 %cmp2.not.i, label %do.body3.i, label %do.body.i132.for.cond.backedge.i_crit_edge

do.body.i132.for.cond.backedge.i_crit_edge:       ; preds = %do.body.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %do.body3.i.for.cond.backedge.i_crit_edge, %do.body.i132.for.cond.backedge.i_crit_edge
  %call.i133 = tail call i32 @cpumask_next(i32 noundef %call20.i, ptr noundef nonnull @__cpu_possible_mask) #14
  %cmp.i134 = icmp ult i32 %call.i133, %7
  br i1 %cmp.i134, label %for.cond.backedge.i.do.body.i132_crit_edge, label %if.end71.thread155

for.cond.backedge.i.do.body.i132_crit_edge:       ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i132

do.body3.i:                                       ; preds = %do.body.i132
  %add11.i = add i32 %14, ptrtoint (ptr @cpu_irq_ops to i32)
  %18 = inttoptr i32 %add11.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %do.body3.i.for.cond.backedge.i_crit_edge, label %do.body3.i.if.end74_crit_edge

do.body3.i.if.end74_crit_edge:                    ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

do.body3.i.for.cond.backedge.i_crit_edge:         ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

if.end71.thread155:                               ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef null) #10
  br label %do.end95

if.end71:                                         ; preds = %if.then34, %if.then16
  %irq_ops.2 = phi ptr [ @percpu_pmuirq_ops, %if.then34 ], [ @pmuirq_ops, %if.then16 ]
  %err.2 = phi i32 [ %call.i129, %if.then34 ], [ %call.i125, %if.then16 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool72.not = icmp eq i32 %err.2, 0
  br i1 %tobool72.not, label %if.end71.if.end74_crit_edge, label %if.end71.do.end95_crit_edge

if.end71.do.end95_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.end74.sink.split:                              ; preds = %if.then31.if.end74.sink.split_crit_edge, %if.end8.if.end74.sink.split_crit_edge
  %irq_ops.2154.ph = phi ptr [ @pmunmi_ops, %if.end8.if.end74.sink.split_crit_edge ], [ @percpu_pmunmi_ops, %if.then31.if.end74.sink.split_crit_edge ]
  store i1 true, ptr @has_nmi, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.end74.sink.split, %if.end71.if.end74_crit_edge, %do.body3.i.if.end74_crit_edge
  %irq_ops.2154 = phi ptr [ %irq_ops.2, %if.end71.if.end74_crit_edge ], [ %irq_ops.2154.ph, %if.end74.sink.split ], [ %20, %do.body3.i.if.end74_crit_edge ]
  %arrayidx82 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %21 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx82, align 4
  %add83 = add i32 %22, ptrtoint (ptr @cpu_irq to i32)
  %23 = inttoptr i32 %add83 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %irq, ptr %23, align 4
  %25 = load i32, ptr %arrayidx82, align 4
  %add92 = add i32 %25, ptrtoint (ptr @cpu_irq_ops to i32)
  %26 = inttoptr i32 %add92 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %irq_ops.2154, ptr %26, align 4
  br label %cleanup98

do.end95:                                         ; preds = %if.end71.do.end95_crit_edge, %if.end71.thread155, %cleanup
  %err.3 = phi i32 [ %err.2, %if.end71.do.end95_crit_edge ], [ %call3, %cleanup ], [ -22, %if.end71.thread155 ]
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %irq) #13
  br label %cleanup98

cleanup98:                                        ; preds = %do.end95, %if.end74, %entry.cleanup98_crit_edge
  %retval.0 = phi i32 [ %err.3, %do.end95 ], [ 0, %if.end74 ], [ 0, %entry.cleanup98_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armpmu_dispatch_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @armpmu_dispatch_irq.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !90

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @armpmu_dispatch_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 425, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i64 @sched_clock() #10
  %handle_irq = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handle_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle_irq, align 4
  %call40 = tail call i32 %3(ptr noundef nonnull %1) #10
  %call41 = tail call i64 @sched_clock() #10
  %sub = sub i64 %call41, %call
  tail call void @perf_sample_event_took(i64 noundef %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end39 ], [ 0, %if.then ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_force_affinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_nmi(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_percpu_nmi(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @armpmu_alloc() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__armpmu_alloc(i32 noundef 3264)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__armpmu_alloc(i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !90

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 9
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 312) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %call1 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 184, i32 noundef 4, i32 noundef %flags) #16
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %call7.i.i, i32 0, i32 22
  %2 = ptrtoint ptr %hw_events to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %hw_events, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %attr_groups9 = getelementptr inbounds %struct.arm_pmu, ptr %call7.i.i, i32 0, i32 25
  %.compoundliteral.sroa.4.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 16
  %3 = call ptr @memset(ptr %call7.i.i, i32 0, i32 16)
  %4 = ptrtoint ptr %.compoundliteral.sroa.4.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %attr_groups9, ptr %.compoundliteral.sroa.4.0.pmu7.sroa_idx, align 8
  %.compoundliteral.sroa.5.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 20
  %5 = ptrtoint ptr %.compoundliteral.sroa.5.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %.compoundliteral.sroa.5.0.pmu7.sroa_idx, align 4
  %.compoundliteral.sroa.6.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 24
  %6 = ptrtoint ptr %.compoundliteral.sroa.6.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %.compoundliteral.sroa.6.0.pmu7.sroa_idx, align 8
  %.compoundliteral.sroa.7.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 28
  %7 = ptrtoint ptr %.compoundliteral.sroa.7.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %.compoundliteral.sroa.7.0.pmu7.sroa_idx, align 4
  %.compoundliteral.sroa.8.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 32
  %8 = ptrtoint ptr %.compoundliteral.sroa.8.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %.compoundliteral.sroa.8.0.pmu7.sroa_idx, align 8
  %.compoundliteral.sroa.9.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 36
  %.compoundliteral.sroa.15.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 60
  %9 = call ptr @memset(ptr %.compoundliteral.sroa.9.0.pmu7.sroa_idx, i32 0, i32 24)
  %10 = ptrtoint ptr %.compoundliteral.sroa.15.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @armpmu_enable, ptr %.compoundliteral.sroa.15.0.pmu7.sroa_idx, align 4
  %.compoundliteral.sroa.16.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 64
  %11 = ptrtoint ptr %.compoundliteral.sroa.16.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @armpmu_disable, ptr %.compoundliteral.sroa.16.0.pmu7.sroa_idx, align 8
  %.compoundliteral.sroa.17.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 68
  %12 = ptrtoint ptr %.compoundliteral.sroa.17.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @armpmu_event_init, ptr %.compoundliteral.sroa.17.0.pmu7.sroa_idx, align 4
  %.compoundliteral.sroa.18.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 72
  %13 = ptrtoint ptr %.compoundliteral.sroa.18.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %.compoundliteral.sroa.18.0.pmu7.sroa_idx, align 8
  %.compoundliteral.sroa.19.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 76
  %14 = ptrtoint ptr %.compoundliteral.sroa.19.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %.compoundliteral.sroa.19.0.pmu7.sroa_idx, align 4
  %.compoundliteral.sroa.20.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 80
  %15 = ptrtoint ptr %.compoundliteral.sroa.20.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @armpmu_add, ptr %.compoundliteral.sroa.20.0.pmu7.sroa_idx, align 8
  %.compoundliteral.sroa.21.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 84
  %16 = ptrtoint ptr %.compoundliteral.sroa.21.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @armpmu_del, ptr %.compoundliteral.sroa.21.0.pmu7.sroa_idx, align 4
  %.compoundliteral.sroa.22.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 88
  %17 = ptrtoint ptr %.compoundliteral.sroa.22.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @armpmu_start, ptr %.compoundliteral.sroa.22.0.pmu7.sroa_idx, align 8
  %.compoundliteral.sroa.23.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 92
  %18 = ptrtoint ptr %.compoundliteral.sroa.23.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @armpmu_stop, ptr %.compoundliteral.sroa.23.0.pmu7.sroa_idx, align 4
  %.compoundliteral.sroa.24.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 96
  %19 = ptrtoint ptr %.compoundliteral.sroa.24.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @armpmu_read, ptr %.compoundliteral.sroa.24.0.pmu7.sroa_idx, align 8
  %.compoundliteral.sroa.25.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 100
  %.compoundliteral.sroa.38.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 152
  %20 = call ptr @memset(ptr %.compoundliteral.sroa.25.0.pmu7.sroa_idx, i32 0, i32 52)
  %21 = ptrtoint ptr %.compoundliteral.sroa.38.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @armpmu_filter_match, ptr %.compoundliteral.sroa.38.0.pmu7.sroa_idx, align 8
  %.compoundliteral.sroa.39.0.pmu7.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 156
  %22 = ptrtoint ptr %.compoundliteral.sroa.39.0.pmu7.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %.compoundliteral.sroa.39.0.pmu7.sroa_idx, align 4
  %23 = ptrtoint ptr %attr_groups9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @armpmu_common_attr_group, ptr %attr_groups9, align 4
  %call1137 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1137, i32 %24)
  %cmp38 = icmp ult i32 %call1137, %24
  br i1 %cmp38, label %if.end6.for.body_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %call1139 = phi i32 [ %call11, %for.body.for.body_crit_edge ], [ %call1137, %if.end6.for.body_crit_edge ]
  %25 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_events, align 4
  %27 = ptrtoint ptr %26 to i32
  %arrayidx18 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1139
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %29, %27
  %30 = inttoptr i32 %add19 to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %30, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %pmu_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @__armpmu_alloc.__key, i16 noundef signext 2) #10
  %percpu_pmu = getelementptr inbounds %struct.pmu_hw_events, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %percpu_pmu to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %percpu_pmu, align 4
  %call11 = tail call i32 @cpumask_next(i32 noundef %call1139, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call11, %32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %kzalloc.exit.cleanup_crit_edge ], [ null, %do.end ], [ %call7.i.i, %if.end6.cleanup_crit_edge ], [ %call7.i.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @armpmu_alloc_atomic() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__armpmu_alloc(i32 noundef 2592)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @armpmu_free(ptr noundef %pmu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 22
  %0 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_events, align 4
  tail call void @free_percpu(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %pmu) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armpmu_register(ptr noundef %pmu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %node.i = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 23
  %call.i.i = tail call i32 @__cpuhp_state_add_instance(i32 noundef 119, ptr noundef %node.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %cpu_pm_nb.i.i = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 24
  %0 = ptrtoint ptr %cpu_pm_nb.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cpu_pm_pmu_notify, ptr %cpu_pm_nb.i.i, align 8
  %call.i11.i = tail call i32 @cpu_pm_register_notifier(ptr noundef %cpu_pm_nb.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool2.not.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool2.not.i, label %if.end, label %out_unregister.i

out_unregister.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i12.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 119, ptr noundef %node.i, i1 noundef zeroext false) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %set_event_filter = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 9
  %1 = ptrtoint ptr %set_event_filter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_event_filter, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %capabilities = getelementptr inbounds %struct.pmu, ptr %pmu, i32 0, i32 7
  %3 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %capabilities, align 8
  %or = or i32 %4, 128
  store i32 %or, ptr %capabilities, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %name = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 2
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call6 = tail call i32 @perf_pmu_register(ptr noundef %pmu, ptr noundef %6, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end, label %out_destroy

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %num_events = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 17
  %9 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_events, align 8
  %.b26 = load i1, ptr @has_nmi, align 1
  %cond = select i1 %.b26, ptr @.str.9, ptr @.str.10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %8, i32 noundef %10, ptr noundef nonnull %cond) #13
  br label %cleanup

out_destroy:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i28 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %cpu_pm_nb.i.i) #10
  %call.i2.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 119, ptr noundef %node.i, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %out_destroy, %do.end, %out_unregister.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %out_destroy ], [ 0, %do.end ], [ %call.i11.i, %out_unregister.i ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_pmu_hp_init() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 119, ptr noundef nonnull @.str.22, i1 noundef zeroext false, ptr noundef nonnull @arm_perf_starting_cpu, ptr noundef nonnull @arm_perf_teardown_cpu, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call.i) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_sample_event_took(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_check_status_bit(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_free_pmuirq(i32 noundef %irq, i32 noundef %cpu, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devid to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, %0
  %3 = inttoptr i32 %add to ptr
  %call = tail call ptr @free_irq(i32 noundef %irq, ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_nmi(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_nmi_nosync(i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_free_pmunmi(i32 noundef %irq, i32 noundef %cpu, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devid to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, %0
  %3 = inttoptr i32 %add to ptr
  %call = tail call ptr @free_nmi(i32 noundef %irq, ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_nmi(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_enable_percpu_pmuirq(i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @enable_percpu_irq(i32 noundef %irq, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_free_percpu_pmuirq(i32 noundef %irq, i32 noundef %cpu, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %0)
  %cmp7.i = icmp ult i32 %call6.i, %0
  br i1 %cmp7.i, label %entry.do.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %call9.i = phi i32 [ %call.i, %do.body.i.do.body.i_crit_edge ], [ %call6.i, %entry.do.body.i_crit_edge ]
  %count.08.i = phi i32 [ %spec.select.i, %do.body.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %2, ptrtoint (ptr @cpu_irq to i32)
  %3 = inttoptr i32 %add.i to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp2.i = icmp eq i32 %5, %irq
  %inc.i = zext i1 %cmp2.i to i32
  %spec.select.i = add i32 %count.08.i, %inc.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call9.i, ptr noundef nonnull @__cpu_possible_mask) #14
  %cmp.i = icmp ult i32 %call.i, %0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %armpmu_count_irq_users.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

armpmu_count_irq_users.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %cmp = icmp eq i32 %spec.select.i, 1
  br i1 %cmp, label %if.then, label %armpmu_count_irq_users.exit.if.end_crit_edge

armpmu_count_irq_users.exit.if.end_crit_edge:     ; preds = %armpmu_count_irq_users.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %armpmu_count_irq_users.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @free_percpu_irq(i32 noundef %irq, ptr noundef %devid) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %armpmu_count_irq_users.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_enable_percpu_pmunmi(i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @prepare_percpu_nmi(i32 noundef %irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_percpu_nmi(i32 noundef %irq, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_disable_percpu_pmunmi(i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_percpu_nmi(i32 noundef %irq) #10
  tail call void @teardown_percpu_nmi(i32 noundef %irq) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_free_percpu_pmunmi(i32 noundef %irq, i32 noundef %cpu, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %0)
  %cmp7.i = icmp ult i32 %call6.i, %0
  br i1 %cmp7.i, label %entry.do.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %call9.i = phi i32 [ %call.i, %do.body.i.do.body.i_crit_edge ], [ %call6.i, %entry.do.body.i_crit_edge ]
  %count.08.i = phi i32 [ %spec.select.i, %do.body.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %2, ptrtoint (ptr @cpu_irq to i32)
  %3 = inttoptr i32 %add.i to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp2.i = icmp eq i32 %5, %irq
  %inc.i = zext i1 %cmp2.i to i32
  %spec.select.i = add i32 %count.08.i, %inc.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call9.i, ptr noundef nonnull @__cpu_possible_mask) #14
  %cmp.i = icmp ult i32 %call.i, %0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %armpmu_count_irq_users.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

armpmu_count_irq_users.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %cmp = icmp eq i32 %spec.select.i, 1
  br i1 %cmp, label %if.then, label %armpmu_count_irq_users.exit.if.end_crit_edge

armpmu_count_irq_users.exit.if.end_crit_edge:     ; preds = %armpmu_count_irq_users.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %armpmu_count_irq_users.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @free_percpu_nmi(i32 noundef %irq, ptr noundef %devid) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %armpmu_count_irq_users.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_percpu_nmi(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_nmi(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_nmi(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @teardown_percpu_nmi(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_nmi(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_enable(ptr noundef %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i17 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i17 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %num_events = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 17
  %2 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_events, align 8
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %hw_events2 = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 22
  %8 = ptrtoint ptr %hw_events2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_events2, align 4
  %10 = ptrtoint ptr %9 to i32
  %add = add i32 %7, %10
  %11 = inttoptr i32 %add to ptr
  %used_mask = getelementptr inbounds %struct.pmu_hw_events, ptr %11, i32 0, i32 1
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %used_mask, i32 noundef %3) #10
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %supported_cpus = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp.not.i.i.i = icmp ugt i32 %14, %13
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !90

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %13, 5
  %arrayidx.i.i = getelementptr i32, ptr %supported_cpus, i32 %div3.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i18 = and i32 %13, 31
  %17 = shl nuw i32 1, %and.i.i18
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool8.not = icmp eq i32 %call4.i, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %cpumask_test_cpu.exit.cleanup_crit_edge, label %if.then9

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  %start = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 12
  %19 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %start, align 4
  tail call void %20(ptr noundef %pmu) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %cpumask_test_cpu.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_disable(ptr noundef %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %supported_cpus = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !90

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %supported_cpus, i32 %div3.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.cleanup_crit_edge, label %if.end

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  %stop = getelementptr inbounds %struct.arm_pmu, ptr %pmu, i32 0, i32 13
  %9 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop, align 8
  tail call void %10(ptr noundef %pmu) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cpumask_test_cpu.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armpmu_event_init(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %cpu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 34
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %supported_cpus = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i, label %land.lhs.true.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

land.lhs.true.cpumask_test_cpu.exit_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !90

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %land.lhs.true.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %supported_cpus, i32 %div3.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.cleanup_crit_edge, label %cpumask_test_cpu.exit.if.end_crit_edge

cpumask_test_cpu.exit.if.end_crit_edge:           ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cpumask_test_cpu.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %sample_type.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 4
  %9 = ptrtoint ptr %sample_type.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sample_type.i, align 8
  %and.i = and i64 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %map_event to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map_event, align 8
  %call5 = tail call i32 %12(ptr noundef %event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call5)
  %cmp6 = icmp eq i32 %call5, -2
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call fastcc i32 @__hw_perf_event_init(ptr noundef %event)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cpumask_test_cpu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -2, %cpumask_test_cpu.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -2, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armpmu_add(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %hw_events2 = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %hw_events2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_events2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %supported_cpus = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp.not.i.i.i = icmp ugt i32 %12, %8
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !90

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %8, 5
  %arrayidx.i.i = getelementptr i32, ptr %supported_cpus, i32 %div3.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %8, 31
  %15 = shl nuw i32 1, %and.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.cleanup_crit_edge, label %if.end

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cpumask_test_cpu.exit
  %get_event_idx = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %get_event_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_event_idx, align 8
  %call7 = tail call i32 %18(ptr noundef %11, ptr noundef %event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %idx11 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %19 = ptrtoint ptr %idx11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call7, ptr %idx11, align 4
  %disable = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disable, align 4
  tail call void %21(ptr noundef %event) #10
  %arrayidx12 = getelementptr [32 x ptr], ptr %11, i32 0, i32 %call7
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %event, ptr %arrayidx12, align 4
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %state, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end9.if.end15_crit_edge, label %armpmu_start.exit

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

armpmu_start.exit:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pmu, align 8
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %state, align 4
  %call.i = tail call i32 @armpmu_event_set_period(ptr noundef %event) #10
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %25, i32 0, i32 5
  %27 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enable.i, align 8
  tail call void %28(ptr noundef %event) #10
  br label %if.end15

if.end15:                                         ; preds = %armpmu_start.exit, %if.end9.if.end15_crit_edge
  tail call void @perf_event_update_userpage(ptr noundef %event) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %cpumask_test_cpu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -2, %cpumask_test_cpu.exit.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_del(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %hw_events2 = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %hw_events2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_events2, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %idx4 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %10 = ptrtoint ptr %idx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx4, align 4
  %state.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  %and.i14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool.not.i = icmp eq i32 %and.i14, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.armpmu_stop.exit_crit_edge

entry.armpmu_stop.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %armpmu_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable.i, align 4
  tail call void %15(ptr noundef %event) #10
  %call.i = tail call i64 @armpmu_event_update(ptr noundef %event) #10
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  %or.i = or i32 %17, 3
  store i32 %or.i, ptr %state.i, align 4
  br label %armpmu_stop.exit

armpmu_stop.exit:                                 ; preds = %if.then.i, %entry.armpmu_stop.exit_crit_edge
  %18 = ptrtoint ptr %3 to i32
  %add = add i32 %9, %18
  %19 = inttoptr i32 %add to ptr
  %arrayidx5 = getelementptr [32 x ptr], ptr %19, i32 0, i32 %11
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx5, align 4
  %clear_event_idx = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %clear_event_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clear_event_idx, align 4
  tail call void %22(ptr noundef %19, ptr noundef %event) #10
  tail call void @perf_event_update_userpage(ptr noundef %event) #10
  %23 = ptrtoint ptr %idx4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %idx4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_start(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.rhs, label %if.then.if.end41_crit_edge

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.rhs:                                         ; preds = %if.then
  %.b49 = load i1, ptr @armpmu_start.__already_done, align 1
  br i1 %.b49, label %land.rhs.if.end41_crit_edge, label %if.then11, !prof !90

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @armpmu_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 9, ptr noundef null) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then11, %land.rhs.if.end41_crit_edge, %if.then.if.end41_crit_edge, %entry.if.end41_crit_edge
  %state42 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %4 = ptrtoint ptr %state42 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state42, align 4
  %call = tail call i32 @armpmu_event_set_period(ptr noundef %event)
  %enable = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enable, align 8
  tail call void %6(ptr noundef %event) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_stop(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %disable = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable, align 4
  tail call void %5(ptr noundef %event) #10
  %call = tail call i64 @armpmu_event_update(ptr noundef %event)
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %or = or i32 %7, 3
  store i32 %or, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armpmu_read(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @armpmu_event_update(ptr noundef %event)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armpmu_filter_match(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1, align 4
  %supported_cpus = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %5)
  %cmp.not.i.i.i = icmp ugt i32 %6, %5
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !90

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %5, 5
  %arrayidx.i.i = getelementptr i32, ptr %supported_cpus, i32 %div3.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %5, 31
  %9 = shl nuw i32 1, %and.i.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.cleanup_crit_edge, label %land.lhs.true

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %cpumask_test_cpu.exit
  %filter_match = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %filter_match to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %filter_match, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 %12(ptr noundef %event) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %cpumask_test_cpu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %cpumask_test_cpu.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hw_perf_event_init(ptr noundef %event) unnamed_addr #2 align 64 {
entry:
  %fake_pmu.i = alloca %struct.pmu_hw_events, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %hw = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %flags = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %map_event to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_event, align 8
  %call = tail call i32 %4(ptr noundef %event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hw_perf_event_init.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hw_perf_event_init, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !92

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attr, align 8
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %config, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__hw_perf_event_init.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.18, i32 noundef %6, i64 noundef %8) #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %idx, align 4
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %config_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %config_base, align 8
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %hw, align 8
  %event_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %event_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %event_base, align 4
  %set_event_filter = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %set_event_filter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_event_filter, align 8
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.end7.if.end31_crit_edge, label %land.lhs.true

if.end7.if.end31_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end7
  %attr11 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %call12 = tail call i32 %14(ptr noundef %hw, ptr noundef %attr11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end31_crit_edge, label %do.body15

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.body15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hw_perf_event_init.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hw_perf_event_init, %if.then27)) #10
          to label %cleanup [label %if.then27], !srcloc !92

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__hw_perf_event_init.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end7.if.end31_crit_edge
  %15 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config_base, align 8
  %or = or i32 %16, %call
  store i32 %or, ptr %config_base, align 8
  %17 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp.i.not = icmp eq i64 %19, 0
  br i1 %cmp.i.not, label %if.then34, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i64 2147483647, i64 9223372036854775807
  %sample_period = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 6
  %22 = ptrtoint ptr %sample_period to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %..i, ptr %sample_period, align 8
  %23 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %..i, ptr %23, align 8
  %period_left = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 7, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %period_left, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %period_left, i64 noundef %..i) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end31.if.end38_crit_edge
  %group_leader = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 11
  %25 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %group_leader, align 4
  %cmp39.not = icmp eq ptr %26, %event
  br i1 %cmp39.not, label %if.end38.cleanup_crit_edge, label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %fake_pmu.i) #10
  %27 = call ptr @memset(ptr %fake_pmu.i, i32 255, i32 184)
  %used_mask.i = getelementptr inbounds %struct.pmu_hw_events, ptr %fake_pmu.i, i32 0, i32 1
  %28 = ptrtoint ptr %used_mask.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %used_mask.i, align 4
  %29 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pmu, align 8
  %event_caps.i.i.i = getelementptr inbounds %struct.perf_event, ptr %26, i32 0, i32 9
  %31 = ptrtoint ptr %event_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %event_caps.i.i.i, align 4
  %and.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then40.if.end.i_crit_edge

if.then40.if.end.i_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then40
  %pmu1.i.i = getelementptr inbounds %struct.perf_event, ptr %26, i32 0, i32 12
  %33 = ptrtoint ptr %pmu1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pmu1.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %34, %30
  br i1 %cmp.not.i.i, label %if.end3.i.i, label %if.end.i.i.validate_group.exit.thread_crit_edge

if.end.i.i.validate_group.exit.thread_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

if.end3.i.i:                                      ; preds = %if.end.i.i
  %state.i.i = getelementptr inbounds %struct.perf_event, ptr %26, i32 0, i32 14
  %35 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp4.i.i = icmp slt i32 %36, -1
  br i1 %cmp4.i.i, label %if.end3.i.i.if.end.i_crit_edge, label %if.end6.i.i

if.end3.i.i.if.end.i_crit_edge:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp8.i.i = icmp eq i32 %36, -1
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %if.end6.i.i.validate_event.exit.i_crit_edge

if.end6.i.i.validate_event.exit.i_crit_edge:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit.i

land.lhs.true.i.i:                                ; preds = %if.end6.i.i
  %enable_on_exec.i.i = getelementptr inbounds %struct.perf_event, ptr %26, i32 0, i32 21, i32 6
  %37 = ptrtoint ptr %enable_on_exec.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %bf.load.i.i = load i64, ptr %enable_on_exec.i.i, align 8
  %38 = and i64 %bf.load.i.i, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool9.not.i.i = icmp eq i64 %38, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i.validate_event.exit.i_crit_edge

land.lhs.true.i.i.validate_event.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

validate_event.exit.i:                            ; preds = %land.lhs.true.i.i.validate_event.exit.i_crit_edge, %if.end6.i.i.validate_event.exit.i_crit_edge
  %get_event_idx.i.i = getelementptr inbounds %struct.arm_pmu, ptr %30, i32 0, i32 7
  %39 = ptrtoint ptr %get_event_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_event_idx.i.i, align 8
  %call13.i.i = call i32 %40(ptr noundef nonnull %fake_pmu.i, ptr noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.not.i76 = icmp slt i32 %call13.i.i, 0
  br i1 %tobool.not.i76, label %validate_event.exit.i.validate_group.exit.thread_crit_edge, label %validate_event.exit.i.if.end.i_crit_edge

validate_event.exit.i.if.end.i_crit_edge:         ; preds = %validate_event.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

validate_event.exit.i.validate_group.exit.thread_crit_edge: ; preds = %validate_event.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

if.end.i:                                         ; preds = %validate_event.exit.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %if.end3.i.i.if.end.i_crit_edge, %if.then40.if.end.i_crit_edge
  %group_leader1.i = getelementptr inbounds %struct.perf_event, ptr %26, i32 0, i32 11
  %41 = ptrtoint ptr %group_leader1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %group_leader1.i, align 4
  %cmp.i77 = icmp eq ptr %42, %26
  br i1 %cmp.i77, label %if.then2.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then2.i:                                       ; preds = %if.end.i
  %sibling_list.i = getelementptr inbounds %struct.perf_event, ptr %26, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %validate_event.exit54.i.for.cond.i_crit_edge, %if.then2.i
  %.pn.in.i = phi ptr [ %sibling_list.i, %if.then2.i ], [ %.pn.i, %validate_event.exit54.i.for.cond.i_crit_edge ]
  %43 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp5.not.i = icmp eq ptr %.pn.i, %sibling_list.i
  br i1 %cmp5.not.i, label %for.cond.i.if.end16.i_crit_edge, label %for.body.i

for.cond.i.if.end16.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

for.body.i:                                       ; preds = %for.cond.i
  %sibling.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %44 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pmu, align 8
  %event_caps.i.i34.i = getelementptr i8, ptr %.pn.i, i32 68
  %46 = ptrtoint ptr %event_caps.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %event_caps.i.i34.i, align 4
  %and.i.i35.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i35.i)
  %tobool.not.i36.i = icmp eq i32 %and.i.i35.i, 0
  br i1 %tobool.not.i36.i, label %if.end.i39.i, label %for.body.i.validate_event.exit54.i_crit_edge

for.body.i.validate_event.exit54.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit54.i

if.end.i39.i:                                     ; preds = %for.body.i
  %pmu1.i37.i = getelementptr i8, ptr %.pn.i, i32 80
  %48 = ptrtoint ptr %pmu1.i37.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pmu1.i37.i, align 8
  %cmp.not.i38.i = icmp eq ptr %49, %45
  br i1 %cmp.not.i38.i, label %if.end3.i42.i, label %if.end.i39.i.validate_group.exit.thread_crit_edge

if.end.i39.i.validate_group.exit.thread_crit_edge: ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

if.end3.i42.i:                                    ; preds = %if.end.i39.i
  %state.i40.i = getelementptr i8, ptr %.pn.i, i32 88
  %50 = ptrtoint ptr %state.i40.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state.i40.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp4.i41.i = icmp slt i32 %51, -1
  br i1 %cmp4.i41.i, label %if.end3.i42.i.validate_event.exit54.i_crit_edge, label %if.end6.i44.i

if.end3.i42.i.validate_event.exit54.i_crit_edge:  ; preds = %if.end3.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit54.i

if.end6.i44.i:                                    ; preds = %if.end3.i42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp8.i43.i = icmp eq i32 %51, -1
  br i1 %cmp8.i43.i, label %land.lhs.true.i48.i, label %if.end6.i44.i.if.end11.i52.i_crit_edge

if.end6.i44.i.if.end11.i52.i_crit_edge:           ; preds = %if.end6.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i52.i

land.lhs.true.i48.i:                              ; preds = %if.end6.i44.i
  %enable_on_exec.i45.i = getelementptr i8, ptr %.pn.i, i32 176
  %52 = ptrtoint ptr %enable_on_exec.i45.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %bf.load.i46.i = load i64, ptr %enable_on_exec.i45.i, align 8
  %53 = and i64 %bf.load.i46.i, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %tobool9.not.i47.i = icmp eq i64 %53, 0
  br i1 %tobool9.not.i47.i, label %land.lhs.true.i48.i.validate_event.exit54.i_crit_edge, label %land.lhs.true.i48.i.if.end11.i52.i_crit_edge

land.lhs.true.i48.i.if.end11.i52.i_crit_edge:     ; preds = %land.lhs.true.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i52.i

land.lhs.true.i48.i.validate_event.exit54.i_crit_edge: ; preds = %land.lhs.true.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit54.i

if.end11.i52.i:                                   ; preds = %land.lhs.true.i48.i.if.end11.i52.i_crit_edge, %if.end6.i44.i.if.end11.i52.i_crit_edge
  %get_event_idx.i49.i = getelementptr inbounds %struct.arm_pmu, ptr %45, i32 0, i32 7
  %54 = ptrtoint ptr %get_event_idx.i49.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_event_idx.i49.i, align 8
  %call13.i50.i = call i32 %55(ptr noundef nonnull %fake_pmu.i, ptr noundef %sibling.0.i) #10
  %56 = xor i32 %call13.i50.i, -1
  %call13.lobit.not.i51.i = lshr i32 %56, 31
  br label %validate_event.exit54.i

validate_event.exit54.i:                          ; preds = %if.end11.i52.i, %land.lhs.true.i48.i.validate_event.exit54.i_crit_edge, %if.end3.i42.i.validate_event.exit54.i_crit_edge, %for.body.i.validate_event.exit54.i_crit_edge
  %retval.0.i53.i = phi i32 [ %call13.lobit.not.i51.i, %if.end11.i52.i ], [ 1, %for.body.i.validate_event.exit54.i_crit_edge ], [ 1, %if.end3.i42.i.validate_event.exit54.i_crit_edge ], [ 1, %land.lhs.true.i48.i.validate_event.exit54.i_crit_edge ]
  %tobool8.not.i = icmp eq i32 %retval.0.i53.i, 0
  br i1 %tobool8.not.i, label %validate_event.exit54.i.validate_group.exit.thread_crit_edge, label %validate_event.exit54.i.for.cond.i_crit_edge

validate_event.exit54.i.for.cond.i_crit_edge:     ; preds = %validate_event.exit54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

validate_event.exit54.i.validate_group.exit.thread_crit_edge: ; preds = %validate_event.exit54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

if.end16.i:                                       ; preds = %for.cond.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %57 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pmu, align 8
  %event_caps.i.i55.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 9
  %59 = ptrtoint ptr %event_caps.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %event_caps.i.i55.i, align 4
  %and.i.i56.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i56.i)
  %tobool.not.i57.i = icmp eq i32 %and.i.i56.i, 0
  br i1 %tobool.not.i57.i, label %if.end3.i63.i, label %if.end16.i.validate_group.exit_crit_edge

if.end16.i.validate_group.exit_crit_edge:         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit

if.end3.i63.i:                                    ; preds = %if.end16.i
  %state.i61.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 14
  %61 = ptrtoint ptr %state.i61.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state.i61.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp4.i62.i = icmp slt i32 %62, -1
  br i1 %cmp4.i62.i, label %if.end3.i63.i.validate_group.exit_crit_edge, label %if.end6.i65.i

if.end3.i63.i.validate_group.exit_crit_edge:      ; preds = %if.end3.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit

if.end6.i65.i:                                    ; preds = %if.end3.i63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp8.i64.i = icmp eq i32 %62, -1
  br i1 %cmp8.i64.i, label %land.lhs.true.i69.i, label %if.end6.i65.i.validate_event.exit75.i_crit_edge

if.end6.i65.i.validate_event.exit75.i_crit_edge:  ; preds = %if.end6.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit75.i

land.lhs.true.i69.i:                              ; preds = %if.end6.i65.i
  %enable_on_exec.i66.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 6
  %63 = ptrtoint ptr %enable_on_exec.i66.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %bf.load.i67.i = load i64, ptr %enable_on_exec.i66.i, align 8
  %64 = and i64 %bf.load.i67.i, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %tobool9.not.i68.i = icmp eq i64 %64, 0
  br i1 %tobool9.not.i68.i, label %land.lhs.true.i69.i.validate_group.exit_crit_edge, label %land.lhs.true.i69.i.validate_event.exit75.i_crit_edge

land.lhs.true.i69.i.validate_event.exit75.i_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit75.i

land.lhs.true.i69.i.validate_group.exit_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit

validate_event.exit75.i:                          ; preds = %land.lhs.true.i69.i.validate_event.exit75.i_crit_edge, %if.end6.i65.i.validate_event.exit75.i_crit_edge
  %get_event_idx.i70.i = getelementptr inbounds %struct.arm_pmu, ptr %58, i32 0, i32 7
  %65 = ptrtoint ptr %get_event_idx.i70.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %get_event_idx.i70.i, align 8
  %call13.i71.i = call i32 %66(ptr noundef nonnull %fake_pmu.i, ptr noundef %event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i71.i)
  %tobool19.not.i = icmp slt i32 %call13.i71.i, 0
  br i1 %tobool19.not.i, label %validate_event.exit75.i.validate_group.exit.thread_crit_edge, label %validate_event.exit75.i.validate_group.exit_crit_edge

validate_event.exit75.i.validate_group.exit_crit_edge: ; preds = %validate_event.exit75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit

validate_event.exit75.i.validate_group.exit.thread_crit_edge: ; preds = %validate_event.exit75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

validate_group.exit.thread:                       ; preds = %validate_event.exit75.i.validate_group.exit.thread_crit_edge, %validate_event.exit54.i.validate_group.exit.thread_crit_edge, %if.end.i39.i.validate_group.exit.thread_crit_edge, %validate_event.exit.i.validate_group.exit.thread_crit_edge, %if.end.i.i.validate_group.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %fake_pmu.i) #10
  br label %cleanup

validate_group.exit:                              ; preds = %validate_event.exit75.i.validate_group.exit_crit_edge, %land.lhs.true.i69.i.validate_group.exit_crit_edge, %if.end3.i63.i.validate_group.exit_crit_edge, %if.end16.i.validate_group.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %fake_pmu.i) #10
  br label %cleanup

cleanup:                                          ; preds = %validate_group.exit, %validate_group.exit.thread, %if.end38.cleanup_crit_edge, %if.then27, %do.body15, %if.then5, %do.body
  %retval.0 = phi i32 [ %call, %if.then5 ], [ -95, %if.then27 ], [ %call, %do.body ], [ -95, %do.body15 ], [ -22, %validate_group.exit.thread ], [ 0, %validate_group.exit ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpus_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supported_cpus = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef %supported_cpus, i32 noundef %2) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_pm_pmu_notify(ptr noundef %b, i32 noundef %cmd, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %b, i32 -264
  %hw_events2 = getelementptr i8, ptr %b, i32 -12
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i32 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i32 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %num_events = getelementptr i8, ptr %b, i32 -40
  %2 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_events, align 8
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %hw_events2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_events2, align 4
  %10 = ptrtoint ptr %9 to i32
  %add = add i32 %7, %10
  %11 = inttoptr i32 %add to ptr
  %used_mask = getelementptr inbounds %struct.pmu_hw_events, ptr %11, i32 0, i32 1
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %used_mask, i32 noundef %3) #10
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %supported_cpus = getelementptr i8, ptr %b, i32 -104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp.not.i.i.i = icmp ugt i32 %14, %13
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !90

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %13, 5
  %arrayidx.i.i = getelementptr i32, ptr %supported_cpus, i32 %div3.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i33 = and i32 %13, 31
  %17 = shl nuw i32 1, %and.i.i33
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.cleanup_crit_edge, label %if.end

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %reset = getelementptr i8, ptr %b, i32 -52
  %19 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset, align 4
  %tobool8.not = icmp eq ptr %20, null
  br i1 %tobool8.not, label %land.lhs.true.if.end11_crit_edge, label %if.then9

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %20(ptr noundef %add.ptr) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool12.not = icmp eq i32 %call4.i, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %21 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cmd, label %if.end14.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %if.end14.sw.bb15_crit_edge
    i32 1, label %if.end14.sw.bb15_crit_edge62
  ]

if.end14.sw.bb15_crit_edge62:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb15

if.end14.sw.bb15_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb15

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end14
  %stop = getelementptr i8, ptr %b, i32 -56
  %22 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stop, align 8
  tail call void %23(ptr noundef %add.ptr) #10
  %24 = ptrtoint ptr %hw_events2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_events2, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i35 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i35 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %32, %26
  %33 = inttoptr i32 %add.i to ptr
  %34 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_events, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp21.i = icmp sgt i32 %35, 0
  br i1 %cmp21.i, label %sw.bb.for.body.i_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %idx.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr [32 x ptr], ptr %33, i32 0, i32 %idx.022.i
  %36 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i36

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i36:                                       ; preds = %for.body.i
  %state.i.i = getelementptr inbounds %struct.perf_event, ptr %37, i32 0, i32 25, i32 4
  %38 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i.i, align 4
  %and.i16.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i.i = icmp eq i32 %and.i16.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i36.for.inc.i_crit_edge

if.end.i36.for.inc.i_crit_edge:                   ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #12
  %pmu.i.i = getelementptr inbounds %struct.perf_event, ptr %37, i32 0, i32 12
  %40 = ptrtoint ptr %pmu.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pmu.i.i, align 8
  %disable.i.i = getelementptr inbounds %struct.arm_pmu, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %disable.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %disable.i.i, align 4
  tail call void %43(ptr noundef nonnull %37) #10
  %call.i.i = tail call i64 @armpmu_event_update(ptr noundef nonnull %37) #10
  %44 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i.i, align 4
  %or.i.i = or i32 %45, 3
  store i32 %or.i.i, ptr %state.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.end.i36.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.022.i, 1
  %46 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_events, align 8
  %cmp.i = icmp slt i32 %inc.i, %47
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sw.bb15:                                          ; preds = %if.end14.sw.bb15_crit_edge, %if.end14.sw.bb15_crit_edge62
  %48 = ptrtoint ptr %hw_events2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_events2, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = tail call i32 @llvm.read_register.i32(metadata !80) #10
  %and.i.i38 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i38 to ptr
  %cpu.i39 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i39, align 4
  %arrayidx.i40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i40, align 4
  %add.i41 = add i32 %56, %50
  %57 = inttoptr i32 %add.i41 to ptr
  %58 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_events, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp21.i43 = icmp sgt i32 %59, 0
  br i1 %cmp21.i43, label %sw.bb15.for.body.i47_crit_edge, label %sw.bb15.cpu_pm_pmu_setup.exit61_crit_edge

sw.bb15.cpu_pm_pmu_setup.exit61_crit_edge:        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_pm_pmu_setup.exit61

sw.bb15.for.body.i47_crit_edge:                   ; preds = %sw.bb15
  br label %for.body.i47

for.body.i47:                                     ; preds = %for.inc.i60.for.body.i47_crit_edge, %sw.bb15.for.body.i47_crit_edge
  %idx.022.i44 = phi i32 [ %inc.i58, %for.inc.i60.for.body.i47_crit_edge ], [ 0, %sw.bb15.for.body.i47_crit_edge ]
  %arrayidx3.i45 = getelementptr [32 x ptr], ptr %57, i32 0, i32 %idx.022.i44
  %60 = ptrtoint ptr %arrayidx3.i45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx3.i45, align 4
  %tobool.not.i46 = icmp eq ptr %61, null
  br i1 %tobool.not.i46, label %for.body.i47.for.inc.i60_crit_edge, label %if.end.i48

for.body.i47.for.inc.i60_crit_edge:               ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i60

if.end.i48:                                       ; preds = %for.body.i47
  %62 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %cmd, label %if.end.i48.for.inc.i60_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %if.end.i48.do.body5.i_crit_edge
    i32 1, label %if.end.i48.do.body5.i_crit_edge63
  ]

if.end.i48.do.body5.i_crit_edge63:                ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

if.end.i48.do.body5.i_crit_edge:                  ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

if.end.i48.for.inc.i60_crit_edge:                 ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i60

sw.bb.i:                                          ; preds = %if.end.i48
  %state.i.i49 = getelementptr inbounds %struct.perf_event, ptr %61, i32 0, i32 25, i32 4
  %63 = ptrtoint ptr %state.i.i49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state.i.i49, align 4
  %and.i16.i50 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i50)
  %tobool.not.i.i51 = icmp eq i32 %and.i16.i50, 0
  br i1 %tobool.not.i.i51, label %if.then.i.i56, label %sw.bb.i.for.inc.i60_crit_edge

sw.bb.i.for.inc.i60_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i60

if.then.i.i56:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %pmu.i.i52 = getelementptr inbounds %struct.perf_event, ptr %61, i32 0, i32 12
  %65 = ptrtoint ptr %pmu.i.i52 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pmu.i.i52, align 8
  %disable.i.i53 = getelementptr inbounds %struct.arm_pmu, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %disable.i.i53 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %disable.i.i53, align 4
  tail call void %68(ptr noundef nonnull %61) #10
  %call.i.i54 = tail call i64 @armpmu_event_update(ptr noundef nonnull %61) #10
  %69 = ptrtoint ptr %state.i.i49 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %state.i.i49, align 4
  %or.i.i55 = or i32 %70, 3
  store i32 %or.i.i55, ptr %state.i.i49, align 4
  br label %for.inc.i60

do.body5.i:                                       ; preds = %if.end.i48.do.body5.i_crit_edge, %if.end.i48.do.body5.i_crit_edge63
  tail call void @rcu_irq_enter_irqson() #10
  %pmu.i17.i = getelementptr inbounds %struct.perf_event, ptr %61, i32 0, i32 12
  %71 = ptrtoint ptr %pmu.i17.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pmu.i17.i, align 8
  %state.i18.i = getelementptr inbounds %struct.perf_event, ptr %61, i32 0, i32 25, i32 4
  %73 = ptrtoint ptr %state.i18.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state.i18.i, align 4
  %and1.i.i57 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i57)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i57, 0
  br i1 %tobool2.not.i.i, label %land.rhs.i.i, label %do.body5.i.armpmu_start.exit.i_crit_edge

do.body5.i.armpmu_start.exit.i_crit_edge:         ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %armpmu_start.exit.i

land.rhs.i.i:                                     ; preds = %do.body5.i
  %.b49.i.i = load i1, ptr @armpmu_start.__already_done, align 1
  br i1 %.b49.i.i, label %land.rhs.i.i.armpmu_start.exit.i_crit_edge, label %if.then11.i.i, !prof !90

land.rhs.i.i.armpmu_start.exit.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %armpmu_start.exit.i

if.then11.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @armpmu_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 9, ptr noundef null) #10
  br label %armpmu_start.exit.i

armpmu_start.exit.i:                              ; preds = %if.then11.i.i, %land.rhs.i.i.armpmu_start.exit.i_crit_edge, %do.body5.i.armpmu_start.exit.i_crit_edge
  %75 = ptrtoint ptr %state.i18.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %state.i18.i, align 4
  %call.i20.i = tail call i32 @armpmu_event_set_period(ptr noundef nonnull %61) #10
  %enable.i.i = getelementptr inbounds %struct.arm_pmu, ptr %72, i32 0, i32 5
  %76 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %enable.i.i, align 8
  tail call void %77(ptr noundef nonnull %61) #10
  tail call void @rcu_irq_exit_irqson() #10
  br label %for.inc.i60

for.inc.i60:                                      ; preds = %armpmu_start.exit.i, %if.then.i.i56, %sw.bb.i.for.inc.i60_crit_edge, %if.end.i48.for.inc.i60_crit_edge, %for.body.i47.for.inc.i60_crit_edge
  %inc.i58 = add nuw nsw i32 %idx.022.i44, 1
  %78 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_events, align 8
  %cmp.i59 = icmp slt i32 %inc.i58, %79
  br i1 %cmp.i59, label %for.inc.i60.for.body.i47_crit_edge, label %for.inc.i60.cpu_pm_pmu_setup.exit61_crit_edge

for.inc.i60.cpu_pm_pmu_setup.exit61_crit_edge:    ; preds = %for.inc.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_pm_pmu_setup.exit61

for.inc.i60.for.body.i47_crit_edge:               ; preds = %for.inc.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i47

cpu_pm_pmu_setup.exit61:                          ; preds = %for.inc.i60.cpu_pm_pmu_setup.exit61_crit_edge, %sw.bb15.cpu_pm_pmu_setup.exit61_crit_edge
  %start = getelementptr i8, ptr %b, i32 -60
  %80 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %start, align 4
  tail call void %81(ptr noundef %add.ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %cpu_pm_pmu_setup.exit61, %for.inc.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %cpumask_test_cpu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpumask_test_cpu.exit.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 1, %cpu_pm_pmu_setup.exit61 ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_perf_starting_cpu(i32 noundef %cpu, ptr noundef %node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  %add.ptr = getelementptr i8, ptr %node, i32 -256
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %supported_cpus = getelementptr inbounds %struct.arm_pmu, ptr %spec.select, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !90

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i = getelementptr i32, ptr %supported_cpus, i32 %div3.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %cpumask_test_cpu.exit.cleanup_crit_edge, label %if.end

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cpumask_test_cpu.exit
  %reset = getelementptr inbounds %struct.arm_pmu, ptr %spec.select, i32 0, i32 14
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %6(ptr noundef %spec.select) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, ptrtoint (ptr @cpu_armpmu to i32)
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.select, ptr %9, align 4
  %hw_events1.i = getelementptr inbounds %struct.arm_pmu, ptr %spec.select, i32 0, i32 22
  %11 = ptrtoint ptr %hw_events1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_events1.i, align 4
  %irq.i = getelementptr inbounds %struct.pmu_hw_events, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %irq.i to i32
  %14 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %14, %13
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %do.body12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %add20 = add i32 %14, ptrtoint (ptr @cpu_irq_ops to i32)
  %18 = inttoptr i32 %add20 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  tail call void %22(i32 noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %if.end6.cleanup_crit_edge, %cpumask_test_cpu.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_perf_teardown_cpu(i32 noundef %cpu, ptr noundef %node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  %add.ptr = getelementptr i8, ptr %node, i32 -256
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %supported_cpus = getelementptr inbounds %struct.arm_pmu, ptr %spec.select, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !90

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i = getelementptr i32, ptr %supported_cpus, i32 %div3.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %cpumask_test_cpu.exit.cleanup_crit_edge, label %if.end

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cpumask_test_cpu.exit
  %hw_events1.i = getelementptr inbounds %struct.arm_pmu, ptr %spec.select, i32 0, i32 22
  %5 = ptrtoint ptr %hw_events1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_events1.i, align 4
  %irq.i = getelementptr inbounds %struct.pmu_hw_events, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %irq.i to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %7
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.end.do.body9_crit_edge, label %do.body

if.end.do.body9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %9, ptrtoint (ptr @cpu_irq_ops to i32)
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %disable_pmuirq = getelementptr inbounds %struct.pmu_irq_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %disable_pmuirq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disable_pmuirq, align 4
  tail call void %17(i32 noundef %12) #10
  br label %do.body9

do.body9:                                         ; preds = %do.body, %if.end.do.body9_crit_edge
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add17 = add i32 %19, ptrtoint (ptr @cpu_armpmu to i32)
  %20 = inttoptr i32 %add17 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %20, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %cpumask_test_cpu.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !12, !13, !15, !16, !17, !18, !19, !20, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !73, !75, !77, !78, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/perf/arm_pmu.c", i32 617, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/perf/arm_pmu.c", i32 641, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @armpmu_request_irq._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @armpmu_request_irq._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/perf/arm_pmu.c", i32 650, i32 46}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/perf/arm_pmu.c", i32 690, i32 2}
!11 = !{ptr @armpmu_request_irq._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @armpmu_request_irq._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/perf/arm_pmu.c", i32 951, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @armpmu_register._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @armpmu_register._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_arm_pmu__252_977_arm_pmu_hp_init4, !21, !"__initcall__kmod_arm_pmu__252_977_arm_pmu_hp_init4", i1 false, i1 false}
!21 = !{!"../drivers/perf/arm_pmu.c", i32 977, i32 1}
!22 = !{ptr @__pcpu_unique_cpu_armpmu, !23, !"__pcpu_unique_cpu_armpmu", i1 false, i1 false}
!23 = !{!"../drivers/perf/arm_pmu.c", i32 102, i32 8}
!24 = !{ptr @cpu_armpmu, !23, !"cpu_armpmu", i1 false, i1 false}
!25 = !{ptr @__pcpu_unique_cpu_irq, !26, !"__pcpu_unique_cpu_irq", i1 false, i1 false}
!26 = !{!"../drivers/perf/arm_pmu.c", i32 103, i32 8}
!27 = !{ptr @cpu_irq, !26, !"cpu_irq", i1 false, i1 false}
!28 = !{ptr @__pcpu_unique_cpu_irq_ops, !29, !"__pcpu_unique_cpu_irq_ops", i1 false, i1 false}
!29 = !{!"../drivers/perf/arm_pmu.c", i32 104, i32 8}
!30 = !{ptr @cpu_irq_ops, !29, !"cpu_irq_ops", i1 false, i1 false}
!31 = distinct !{null, !32, !"has_nmi", i1 false, i1 false}
!32 = !{!"../drivers/perf/arm_pmu.c", i32 106, i32 13}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/perf/arm_pmu.c", i32 425, i32 6}
!35 = !{ptr @pmuirq_ops, !36, !"pmuirq_ops", i1 false, i1 false}
!36 = !{!"../drivers/perf/arm_pmu.c", i32 42, i32 33}
!37 = !{ptr @pmunmi_ops, !38, !"pmunmi_ops", i1 false, i1 false}
!38 = !{!"../drivers/perf/arm_pmu.c", i32 53, i32 33}
!39 = !{ptr @percpu_pmuirq_ops, !40, !"percpu_pmuirq_ops", i1 false, i1 false}
!40 = !{!"../drivers/perf/arm_pmu.c", i32 71, i32 33}
!41 = !{ptr @percpu_pmunmi_ops, !42, !"percpu_pmunmi_ops", i1 false, i1 false}
!42 = !{!"../drivers/perf/arm_pmu.c", i32 96, i32 33}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/perf/arm_pmu.c", i32 875, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__armpmu_alloc._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @__armpmu_alloc._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__armpmu_alloc.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/perf/arm_pmu.c", i32 907, i32 3}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/perf/arm_pmu.c", i32 447, i32 3}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__hw_perf_event_init.__UNIQUE_ID_ddebug250, !55, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!59 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/perf/arm_pmu.c", i32 468, i32 3}
!62 = !{ptr @__hw_perf_event_init.__UNIQUE_ID_ddebug251, !61, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!63 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../drivers/perf/arm_pmu.c", i32 294, i32 3}
!66 = !{ptr @armpmu_common_attr_group, !67, !"armpmu_common_attr_group", i1 false, i1 false}
!67 = !{!"../drivers/perf/arm_pmu.c", i32 580, i32 37}
!68 = !{ptr @armpmu_common_attrs, !69, !"armpmu_common_attrs", i1 false, i1 false}
!69 = !{!"../drivers/perf/arm_pmu.c", i32 575, i32 26}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/perf/arm_pmu.c", i32 573, i32 8}
!72 = !{ptr @dev_attr_cpus, !71, !"dev_attr_cpus", i1 false, i1 false}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/perf/arm_pmu.c", i32 969, i32 11}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/perf/arm_pmu.c", i32 973, i32 3}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @arm_pmu_hp_init._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @arm_pmu_hp_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2148801698, i64 2148801703, i64 2148801716, i64 2148801760, i64 2148801794, i64 2148801815}
