; ModuleID = '/llk/IR_all_yes/arch/arm/mm/cache-l2x0-pmu.c_pt.bc'
source_filename = "../arch/arm/mm/cache-l2x0-pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.l2x0_event_attribute = type { %struct.device_attribute, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.71, i64, i64, i64, %union.anon.72, i32, %union.anon.73, %union.anon.74, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.71 = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i64 }
%union.anon.74 = type { i64 }
%struct.hw_perf_event = type { %union.anon.75, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.82, i64, i64, i64, i64 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.atomic_t = type { i32 }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@l2x0_pmu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@events = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l2c_220\00", [24 x i8] zeroinitializer }, align 32
@l2x0_name = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l2c_310\00", [24 x i8] zeroinitializer }, align 32
@l2x0_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_cache_l2x0_pmu__250_565_l2x0_pmu_init6 = internal global ptr @l2x0_pmu_init, section ".initcall6.init", align 4
@l2x0_pmu_event_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mm/cache-l2x0-pmu.c\00", [35 x i8] zeroinitializer }, align 32
@warn_if_saturated._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.warn_if_saturated = private unnamed_addr constant [18 x i8] c"warn_if_saturated\00", align 1
@warn_if_saturated._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.warn_if_saturated, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014L2X0 counter saturated. Poll period too long\0A\00", [48 x i8] zeroinitializer }, align 32
@warn_if_saturated._entry_ptr = internal global ptr @warn_if_saturated._entry, section ".printk_index", align 4
@l2x0_pmu_event_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@l2x0_pmu_event_start.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@l2x0_pmu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014Unable to allocate L2x0 PMU\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2x0_pmu_init\00", [18 x i8] zeroinitializer }, align 32
@l2x0_pmu_init._entry_ptr = internal global ptr @l2x0_pmu_init._entry, section ".printk_index", align 4
@l2x0_pmu_attr_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @l2x0_pmu_event_attrs_group, ptr @l2x0_pmu_cpumask_attr_group, ptr null], [20 x i8] zeroinitializer }, align 32
@l2x0_pmu_poll_period = internal global { i1, [31 x i8] } zeroinitializer, align 32
@l2x0_pmu_hrtimer = internal global { %struct.hrtimer, [48 x i8] } zeroinitializer, align 32
@pmu_cpu = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"perf/arm/l2x0:online\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@l2x0_pmu_event_attrs_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.9, ptr @l2x0_pmu_event_attr_is_visible, ptr null, ptr @l2x0_pmu_event_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@l2x0_pmu_cpumask_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @l2x0_pmu_cpumask_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@l2x0_pmu_event_attrs = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.12, ptr @.compoundliteral.14, ptr @.compoundliteral.16, ptr @.compoundliteral.18, ptr @.compoundliteral.20, ptr @.compoundliteral.22, ptr @.compoundliteral.24, ptr @.compoundliteral.26, ptr @.compoundliteral.28, ptr @.compoundliteral.30, ptr @.compoundliteral.32, ptr @.compoundliteral.34, ptr @.compoundliteral.36, ptr @.compoundliteral.38, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"co\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 1, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"drhit\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 2, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"drreq\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 3, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dwhit\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 4, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dwreq\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 5, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dwtreq\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 6, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irhit\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 7, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irreq\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 8, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wa\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 9, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipfalloc\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 10, i8 1 }], [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"epfhit\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 11, i8 1 }], [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"epfalloc\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 12, i8 1 }], [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"srrcvd\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 13, i8 1 }], [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"srconf\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 14, i8 1 }], [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"epfrcvd\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { [1 x %struct.l2x0_event_attribute], [60 x i8] } { [1 x %struct.l2x0_event_attribute] [%struct.l2x0_event_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_event_show, ptr null }, i32 15, i8 1 }], [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config=0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@l2x0_pmu_cpumask_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @l2x0_pmu_cpumask_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@l2x0_pmu_cpumask_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2x0_pmu_cpumask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpumask\00", [24 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 192]
@___asan_gen_.42 = private unnamed_addr constant [9 x i8] c"l2x0_pmu\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 21, i32 20 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 36, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 491, i32 15 }
@___asan_gen_.51 = private unnamed_addr constant [10 x i8] c"l2x0_name\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 24, i32 20 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 494, i32 15 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"l2x0_base\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 20, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 216, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 114, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 512, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"l2x0_pmu_attr_groups\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 408, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"l2x0_pmu_poll_period\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"l2x0_pmu_hrtimer\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 27, i32 23 }
@___asan_gen_.91 = private unnamed_addr constant [8 x i8] c"pmu_cpu\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 22, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 547, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"l2x0_pmu_event_attrs_group\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 384, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant [28 x i8] c"l2x0_pmu_cpumask_attr_group\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 404, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 385, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"l2x0_pmu_event_attrs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 365, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 366, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 367, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 368, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 369, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 370, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 371, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 372, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 373, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 374, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 375, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 376, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 377, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 378, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 379, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 380, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 346, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant [23 x i8] c"l2x0_pmu_cpumask_attrs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 399, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant [22 x i8] c"l2x0_pmu_cpumask_attr\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 396, i32 32 }
@___asan_gen_.179 = private constant [32 x i8] c"../arch/arm/mm/cache-l2x0-pmu.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 397, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 108, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__initcall__kmod_cache_l2x0_pmu__250_565_l2x0_pmu_init6, ptr @l2x0_pmu_init._entry, ptr @l2x0_pmu_init._entry_ptr, ptr @warn_if_saturated._entry, ptr @warn_if_saturated._entry_ptr, ptr @l2x0_pmu, ptr @events, ptr @.str, ptr @l2x0_name, ptr @.str.1, ptr @l2x0_base, ptr @.str.2, ptr @warn_if_saturated._rs, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @l2x0_pmu_attr_groups, ptr @l2x0_pmu_poll_period, ptr @l2x0_pmu_hrtimer, ptr @pmu_cpu, ptr @.str.8, ptr @l2x0_pmu_event_attrs_group, ptr @l2x0_pmu_cpumask_attr_group, ptr @.str.9, ptr @l2x0_pmu_event_attrs, ptr @.str.10, ptr @.compoundliteral, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @l2x0_pmu_cpumask_attrs, ptr @l2x0_pmu_cpumask_attr, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_pmu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @events to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_if_saturated._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_if_saturated._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_pmu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_pmu_attr_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_pmu_poll_period to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_pmu_hrtimer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_pmu_event_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_pmu_cpumask_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_pmu_event_attrs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_pmu_cpumask_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_pmu_cpumask_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @l2x0_pmu_suspend() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_pmu, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @events, align 4
  %tobool.not.i.i = icmp ne ptr %1, null
  %inc.i.i = zext i1 %tobool.not.i.i to i32
  %2 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @events, i32 0, i32 1), align 4
  %tobool.not.1.i.i = icmp ne ptr %2, null
  %inc.1.i.neg.i = sext i1 %tobool.not.1.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %inc.1.i.neg.i)
  %cmp.i = icmp eq i32 %inc.i.i, %inc.1.i.neg.i
  br i1 %cmp.i, label %if.end.l2x0_pmu_disable.exit_crit_edge, label %if.end.i

if.end.l2x0_pmu_disable.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %l2x0_pmu_disable.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !101
  %5 = and i32 %4, -16777217
  %6 = load ptr, ptr @l2x0_base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %6, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %5) #12, !srcloc !102
  br label %l2x0_pmu_disable.exit

l2x0_pmu_disable.exit:                            ; preds = %if.end.i, %if.end.l2x0_pmu_disable.exit_crit_edge
  %7 = load ptr, ptr @events, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %l2x0_pmu_disable.exit.for.inc_crit_edge, label %if.then2

l2x0_pmu_disable.exit.for.inc_crit_edge:          ; preds = %l2x0_pmu_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then2:                                         ; preds = %l2x0_pmu_disable.exit
  %state.i = getelementptr inbounds %struct.perf_event, ptr %7, i32 0, i32 25, i32 4
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end40.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then2
  %.b54.i = load i1, ptr @l2x0_pmu_event_stop.__already_done, align 1
  br i1 %.b54.i, label %land.rhs.i.for.inc_crit_edge, label %if.then.i, !prof !103

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @l2x0_pmu_event_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 216, i32 noundef 9, ptr noundef null) #12
  br label %for.inc

if.end40.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %7, i32 0, i32 25, i32 0, i32 0, i32 5
  %10 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx.i, align 4
  %12 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 520
  %mul.neg.i.i.i = mul i32 %11, -4
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.neg.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 0) #12, !srcloc !102
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 4
  %or.i = or i32 %14, 1
  store i32 %or.i, ptr %state.i, align 4
  tail call void @l2x0_pmu_event_read(ptr noundef nonnull %7) #12
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  %or46.i = or i32 %16, 2
  store i32 %or46.i, ptr %state.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end40.i, %if.then.i, %land.rhs.i.for.inc_crit_edge, %l2x0_pmu_disable.exit.for.inc_crit_edge
  %17 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @events, i32 0, i32 1), align 4
  %tobool1.not.1 = icmp eq ptr %17, null
  br i1 %tobool1.not.1, label %for.inc.cleanup_crit_edge, label %if.then2.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.1:                                       ; preds = %for.inc
  %state.i.1 = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 25, i32 4
  %18 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i.1, align 4
  %and.i.1 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %if.end40.i.1, label %land.rhs.i.1

land.rhs.i.1:                                     ; preds = %if.then2.1
  %.b54.i.1 = load i1, ptr @l2x0_pmu_event_stop.__already_done, align 1
  br i1 %.b54.i.1, label %land.rhs.i.1.cleanup_crit_edge, label %if.then.i.1, !prof !103

land.rhs.i.1.cleanup_crit_edge:                   ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.1:                                      ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @l2x0_pmu_event_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 216, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end40.i.1:                                     ; preds = %if.then2.1
  call void @__sanitizer_cov_trace_pc() #14
  %idx.i.1 = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 25, i32 0, i32 0, i32 5
  %20 = ptrtoint ptr %idx.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx.i.1, align 4
  %22 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %22, i32 520
  %mul.neg.i.i.i.1 = mul i32 %21, -4
  %add.ptr1.i.i.i.1 = getelementptr i8, ptr %add.ptr.i.i.i.1, i32 %mul.neg.i.i.i.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i.1, i32 0) #12, !srcloc !102
  %23 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i.1, align 4
  %or.i.1 = or i32 %24, 1
  store i32 %or.i.1, ptr %state.i.1, align 4
  tail call void @l2x0_pmu_event_read(ptr noundef nonnull %17) #12
  %25 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state.i.1, align 4
  %or46.i.1 = or i32 %26, 2
  store i32 %or46.i.1, ptr %state.i.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40.i.1, %if.then.i.1, %land.rhs.i.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2x0_pmu_disable(ptr nocapture noundef readnone %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @events, align 4
  %tobool.not.i = icmp ne ptr %0, null
  %inc.i = zext i1 %tobool.not.i to i32
  %1 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @events, i32 0, i32 1), align 4
  %tobool.not.1.i = icmp ne ptr %1, null
  %inc.1.i.neg = sext i1 %tobool.not.1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %inc.1.i.neg)
  %cmp = icmp eq i32 %inc.i, %inc.1.i.neg
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 512
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %4 = and i32 %3, -16777217
  %5 = load ptr, ptr @l2x0_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %4) #12, !srcloc !102
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2x0_pmu_event_stop(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end40, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b54 = load i1, ptr @l2x0_pmu_event_stop.__already_done, align 1
  br i1 %.b54, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !103

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @l2x0_pmu_event_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 216, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end40:                                         ; preds = %entry
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %4 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 520
  %mul.neg.i.i = mul i32 %3, -4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.neg.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #12, !srcloc !102
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %or = or i32 %6, 1
  store i32 %or, ptr %state, align 4
  %and42 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.then44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @l2x0_pmu_event_read(ptr noundef %event)
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %or46 = or i32 %8, 2
  store i32 %or46, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @l2x0_pmu_resume() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_pmu, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !101
  %3 = and i32 %2, -16777217
  %4 = load ptr, ptr @l2x0_base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %4, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %3) #12, !srcloc !102
  %5 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #12, !srcloc !102
  %6 = load ptr, ptr @l2x0_base, align 4
  %add.ptr1.i.i.1.i = getelementptr i8, ptr %6, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.1.i, i32 0) #12, !srcloc !102
  %7 = load ptr, ptr @events, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.for.inc_crit_edge, label %if.then2

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @l2x0_pmu_event_start(ptr noundef nonnull %7, i32 noundef 2)
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %if.end.for.inc_crit_edge
  %8 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @events, i32 0, i32 1), align 4
  %tobool1.not.1 = icmp eq ptr %8, null
  br i1 %tobool1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then2.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @l2x0_pmu_event_start(ptr noundef nonnull %8, i32 noundef 2)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.1, %for.inc.for.inc.1_crit_edge
  %9 = load ptr, ptr @events, align 4
  %tobool.not.i.i = icmp ne ptr %9, null
  %inc.i.i = zext i1 %tobool.not.i.i to i32
  %10 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @events, i32 0, i32 1), align 4
  %tobool.not.1.i.i = icmp ne ptr %10, null
  %inc.1.i.neg.i = sext i1 %tobool.not.1.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %inc.1.i.neg.i)
  %cmp.i = icmp eq i32 %inc.i.i, %inc.1.i.neg.i
  br i1 %cmp.i, label %for.inc.1.cleanup_crit_edge, label %if.end.i

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %11 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %11, i32 512
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #12, !srcloc !101
  %13 = or i32 %12, 16777216
  %14 = load ptr, ptr @l2x0_base, align 4
  %add.ptr1.i.i9 = getelementptr i8, ptr %14, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i9, i32 %13) #12, !srcloc !102
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %for.inc.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2x0_pmu_event_start(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %entry
  %.b116 = load i1, ptr @l2x0_pmu_event_start.__already_done, align 1
  br i1 %.b116, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !103

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @l2x0_pmu_event_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end41:                                         ; preds = %entry
  %and42 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end103_crit_edge, label %if.then44

if.end41.if.end103_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then44:                                        ; preds = %if.end41
  %and47 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %land.rhs57, label %if.then44.if.end95_crit_edge

if.then44.if.end95_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.rhs57:                                       ; preds = %if.then44
  %.b114115 = load i1, ptr @l2x0_pmu_event_start.__already_done.5, align 1
  br i1 %.b114115, label %land.rhs57.if.end95_crit_edge, label %if.then68, !prof !103

land.rhs57.if.end95_crit_edge:                    ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then68:                                        ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @l2x0_pmu_event_start.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 194, i32 noundef 9, ptr noundef null) #12
  br label %if.end95

if.end95:                                         ; preds = %if.then68, %land.rhs57.if.end95_crit_edge, %if.then44.if.end95_crit_edge
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef 0) #12
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx.i, align 4
  %4 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 528
  %mul.neg.i.i = mul i32 %3, -4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.neg.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #12, !srcloc !102
  br label %if.end103

if.end103:                                        ; preds = %if.end95, %if.end41.if.end103_crit_edge
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base, align 8
  %shl.i = shl i32 %9, 2
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #12
  %11 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i118 = getelementptr i8, ptr %11, i32 520
  %mul.neg.i.i119 = mul i32 %7, -4
  %add.ptr1.i.i120 = getelementptr i8, ptr %add.ptr.i.i118, i32 %mul.neg.i.i119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i120, i32 %10) #12, !srcloc !102
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2x0_pmu_enable(ptr nocapture noundef readnone %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @events, align 4
  %tobool.not.i = icmp ne ptr %0, null
  %inc.i = zext i1 %tobool.not.i to i32
  %1 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @events, i32 0, i32 1), align 4
  %tobool.not.1.i = icmp ne ptr %1, null
  %inc.1.i.neg = sext i1 %tobool.not.1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %inc.1.i.neg)
  %cmp = icmp eq i32 %inc.i, %inc.1.i.neg
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 512
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %4 = or i32 %3, 16777216
  %5 = load ptr, ptr @l2x0_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %4) #12, !srcloc !102
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @l2x0_pmu_register(ptr noundef %base, i32 noundef %part) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %part, 960
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.return_crit_edge [
    i32 128, label %entry.sw.epilog_crit_edge
    i32 192, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %storemerge = phi ptr [ @.str.1, %sw.bb1 ], [ @.str, %entry.sw.epilog_crit_edge ]
  store ptr %storemerge, ptr @l2x0_name, align 4
  store ptr %base, ptr @l2x0_base, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l2x0_pmu_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 160) #15
  store ptr %call7.i.i, ptr @l2x0_pmu, align 4
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 16
  %2 = call ptr @memset(ptr %call7.i.i, i32 0, i32 16)
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @l2x0_pmu_attr_groups, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 8
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 20
  %4 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 24
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 8
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 28
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 32
  %7 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 8
  %.compoundliteral.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 36
  %8 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %.compoundliteral.sroa.9.0..sroa_idx, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 40
  %9 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 8
  %.compoundliteral.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 44
  %10 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %.compoundliteral.sroa.11.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 48
  %11 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %.compoundliteral.sroa.12.0..sroa_idx, align 8
  %.compoundliteral.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 52
  %12 = ptrtoint ptr %.compoundliteral.sroa.13.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %.compoundliteral.sroa.13.0..sroa_idx, align 4
  %.compoundliteral.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 56
  %13 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 8
  %.compoundliteral.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 60
  %14 = ptrtoint ptr %.compoundliteral.sroa.15.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @l2x0_pmu_enable, ptr %.compoundliteral.sroa.15.0..sroa_idx, align 4
  %.compoundliteral.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 64
  %15 = ptrtoint ptr %.compoundliteral.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @l2x0_pmu_disable, ptr %.compoundliteral.sroa.16.0..sroa_idx, align 8
  %.compoundliteral.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 68
  %16 = ptrtoint ptr %.compoundliteral.sroa.17.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @l2x0_pmu_event_init, ptr %.compoundliteral.sroa.17.0..sroa_idx, align 4
  %.compoundliteral.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 72
  %17 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 8
  %.compoundliteral.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 76
  %18 = ptrtoint ptr %.compoundliteral.sroa.19.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %.compoundliteral.sroa.19.0..sroa_idx, align 4
  %.compoundliteral.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 80
  %19 = ptrtoint ptr %.compoundliteral.sroa.20.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @l2x0_pmu_event_add, ptr %.compoundliteral.sroa.20.0..sroa_idx, align 8
  %.compoundliteral.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 84
  %20 = ptrtoint ptr %.compoundliteral.sroa.21.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @l2x0_pmu_event_del, ptr %.compoundliteral.sroa.21.0..sroa_idx, align 4
  %.compoundliteral.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 88
  %21 = ptrtoint ptr %.compoundliteral.sroa.22.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @l2x0_pmu_event_start, ptr %.compoundliteral.sroa.22.0..sroa_idx, align 8
  %.compoundliteral.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 92
  %22 = ptrtoint ptr %.compoundliteral.sroa.23.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @l2x0_pmu_event_stop, ptr %.compoundliteral.sroa.23.0..sroa_idx, align 4
  %.compoundliteral.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 96
  %23 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @l2x0_pmu_event_read, ptr %.compoundliteral.sroa.24.0..sroa_idx, align 8
  %.compoundliteral.sroa.25.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 100
  %24 = call ptr @memset(ptr %.compoundliteral.sroa.25.0..sroa_idx, i32 0, i32 60)
  %25 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 512
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !101
  %27 = and i32 %26, -16777217
  %28 = load ptr, ptr @l2x0_base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %28, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %27) #12, !srcloc !102
  %29 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #12, !srcloc !102
  %30 = load ptr, ptr @l2x0_base, align 4
  %add.ptr1.i.i.1.i = getelementptr i8, ptr %30, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.1.i, i32 0) #12, !srcloc !102
  store i1 true, ptr @l2x0_pmu_poll_period, align 8
  tail call void @hrtimer_init(ptr noundef nonnull @l2x0_pmu_hrtimer, i32 noundef 1, i32 noundef 1) #12
  store ptr @l2x0_pmu_poll, ptr getelementptr inbounds (%struct.hrtimer, ptr @l2x0_pmu_hrtimer, i32 0, i32 2), align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not.i.i.i.not = icmp eq i32 %31, 0
  br i1 %cmp.not.i.i.i.not, label %land.rhs.i.i.i, label %if.end4.cpumask_set_cpu.exit_crit_edge

if.end4.cpumask_set_cpu.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end4
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !103

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.end4.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @pmu_cpu) #12
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 178, ptr noundef nonnull @.str.8, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @l2x0_pmu_offline_cpu, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %cpumask_set_cpu.exit.out_pmu_crit_edge

cpumask_set_cpu.exit.out_pmu_crit_edge:           ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_pmu

if.end10:                                         ; preds = %cpumask_set_cpu.exit
  %32 = load ptr, ptr @l2x0_pmu, align 4
  %33 = load ptr, ptr @l2x0_name, align 4
  %call11 = tail call i32 @perf_pmu_register(ptr noundef %32, ptr noundef %33, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %out_cpuhp

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_cpuhp:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__cpuhp_remove_state(i32 noundef 178, i1 noundef zeroext false) #12
  br label %out_pmu

out_pmu:                                          ; preds = %out_cpuhp, %cpumask_set_cpu.exit.out_pmu_crit_edge
  %ret.0 = phi i32 [ %call.i, %cpumask_set_cpu.exit.out_pmu_crit_edge ], [ %call11, %out_cpuhp ]
  %34 = load ptr, ptr @l2x0_pmu, align 4
  tail call void @kfree(ptr noundef %34) #12
  store ptr null, ptr @l2x0_pmu, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_pmu, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_pmu ], [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2x0_pmu_event_read(ptr noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prev_count2 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prev_count2, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %prev_count2) #12
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %2 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 528
  %mul.neg.i = mul i32 %1, -4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.neg.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !101
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  %conv = zext i32 %4 to i64
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count2, i32 noundef 8) #12
  %call.i17 = tail call i64 @generic_atomic64_xchg(ptr noundef %prev_count2, i64 noundef %conv) #12
  %cmp.not = icmp eq i64 %call.i17, %call.i
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  %sub = sub i64 %conv, %call.i
  %and = and i64 %sub, 4294967295
  %count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef %and, ptr noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not.i = icmp eq i32 %3, -1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.warn_if_saturated.exit_crit_edge

do.end.warn_if_saturated.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %warn_if_saturated.exit

if.end.i:                                         ; preds = %do.end
  %call.i19 = tail call i32 @___ratelimit(ptr noundef nonnull @warn_if_saturated._rs, ptr noundef nonnull @__func__.warn_if_saturated) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i, label %if.end.i.warn_if_saturated.exit_crit_edge, label %do.end.i

if.end.i.warn_if_saturated.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %warn_if_saturated.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  br label %warn_if_saturated.exit

warn_if_saturated.exit:                           ; preds = %do.end.i, %if.end.i.warn_if_saturated.exit_crit_edge, %do.end.warn_if_saturated.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_xchg(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2x0_pmu_event_init(ptr nocapture noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %2 = load ptr, ptr @l2x0_pmu, align 4
  %type2 = getelementptr inbounds %struct.pmu, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp.not = icmp eq i32 %1, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i.not = icmp eq i64 %7, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %attach_state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 15
  %8 = ptrtoint ptr %attach_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attach_state, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %cpu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 34
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5 = icmp slt i32 %11, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %13)
  %tobool10.not = icmp ult i64 %13, 16
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %conv = trunc i64 %13 to i32
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %config_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %config_base, align 8
  %pmu1.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %15 = ptrtoint ptr %pmu1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pmu1.i, align 8
  %group_leader.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 11
  %17 = ptrtoint ptr %group_leader.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %group_leader.i, align 4
  %pmu2.i = getelementptr inbounds %struct.perf_event, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %pmu2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pmu2.i, align 8
  %cmp.i28 = icmp eq ptr %20, %16
  br i1 %cmp.i28, label %if.end12.if.end4.i_crit_edge, label %if.else.i

if.end12.if.end4.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end12
  %event_caps.i.i = getelementptr inbounds %struct.perf_event, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %event_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %event_caps.i.i, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.if.end4.i_crit_edge

if.else.i.if.end4.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.else.i.if.end4.i_crit_edge, %if.end12.if.end4.i_crit_edge
  %num_hw.0.i = phi i32 [ 0, %if.else.i.if.end4.i_crit_edge ], [ 1, %if.end12.if.end4.i_crit_edge ]
  %group_leader5.i = getelementptr inbounds %struct.perf_event, ptr %18, i32 0, i32 11
  %23 = ptrtoint ptr %group_leader5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %group_leader5.i, align 4
  %cmp6.i = icmp eq ptr %24, %18
  br i1 %cmp6.i, label %if.then7.i, label %if.end4.i.if.end17_crit_edge

if.end4.i.if.end17_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then7.i:                                       ; preds = %if.end4.i
  %sibling_list.i = getelementptr inbounds %struct.perf_event, ptr %18, i32 0, i32 1
  %25 = ptrtoint ptr %sibling_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn46.i = load ptr, ptr %sibling_list.i, align 8
  %cmp10.not47.i = icmp eq ptr %.pn46.i, %sibling_list.i
  br i1 %cmp10.not47.i, label %if.then7.i.if.end17_crit_edge, label %if.then7.i.for.body.i_crit_edge

if.then7.i.for.body.i_crit_edge:                  ; preds = %if.then7.i
  br label %for.body.i

if.then7.i.if.end17_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then7.i.for.body.i_crit_edge
  %.pn49.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn46.i, %if.then7.i.for.body.i_crit_edge ]
  %num_hw.148.i = phi i32 [ %num_hw.2.i, %for.inc.i.for.body.i_crit_edge ], [ %num_hw.0.i, %if.then7.i.for.body.i_crit_edge ]
  %pmu11.i = getelementptr i8, ptr %.pn49.i, i32 80
  %26 = ptrtoint ptr %pmu11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pmu11.i, align 8
  %cmp12.i = icmp eq ptr %27, %16
  br i1 %cmp12.i, label %if.then13.i, label %if.else15.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc14.i = add i32 %num_hw.148.i, 1
  br label %for.inc.i

if.else15.i:                                      ; preds = %for.body.i
  %event_caps.i43.i = getelementptr i8, ptr %.pn49.i, i32 68
  %28 = ptrtoint ptr %event_caps.i43.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %event_caps.i43.i, align 4
  %and.i44.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44.i)
  %tobool17.not.i = icmp eq i32 %and.i44.i, 0
  br i1 %tobool17.not.i, label %if.else15.i.cleanup_crit_edge, label %if.else15.i.for.inc.i_crit_edge

if.else15.i.for.inc.i_crit_edge:                  ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else15.i.cleanup_crit_edge:                    ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i:                                        ; preds = %if.else15.i.for.inc.i_crit_edge, %if.then13.i
  %num_hw.2.i = phi i32 [ %inc14.i, %if.then13.i ], [ %num_hw.148.i, %if.else15.i.for.inc.i_crit_edge ]
  %30 = ptrtoint ptr %.pn49.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn49.i, align 8
  %cmp10.not.i = icmp eq ptr %.pn.i, %sibling_list.i
  br i1 %cmp10.not.i, label %l2x0_pmu_group_is_valid.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

l2x0_pmu_group_is_valid.exit:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num_hw.2.i)
  %cmp27.i = icmp slt i32 %num_hw.2.i, 3
  br i1 %cmp27.i, label %l2x0_pmu_group_is_valid.exit.if.end17_crit_edge, label %l2x0_pmu_group_is_valid.exit.cleanup_crit_edge

l2x0_pmu_group_is_valid.exit.cleanup_crit_edge:   ; preds = %l2x0_pmu_group_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

l2x0_pmu_group_is_valid.exit.if.end17_crit_edge:  ; preds = %l2x0_pmu_group_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end17:                                         ; preds = %l2x0_pmu_group_is_valid.exit.if.end17_crit_edge, %if.then7.i.if.end17_crit_edge, %if.end4.i.if.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @pmu_cpu, i32 noundef %31) #12
  %32 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i, ptr %cpu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %l2x0_pmu_group_is_valid.exit.cleanup_crit_edge, %if.else15.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -2, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %l2x0_pmu_group_is_valid.exit.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ], [ -22, %if.else15.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2x0_pmu_event_add(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @events, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %for.inc.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc.i:                                        ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @events, i32 0, i32 1), align 4
  %tobool.not.1.i = icmp eq ptr %1, null
  br i1 %tobool.not.1.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ]
  %tobool.not.i16 = icmp ne ptr %0, null
  %inc.i = zext i1 %tobool.not.i16 to i32
  %2 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @events, i32 0, i32 1), align 4
  %tobool.not.1.i17 = icmp ne ptr %2, null
  %inc.1.i.neg = sext i1 %tobool.not.1.i17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %inc.1.i.neg)
  %cmp3 = icmp eq i32 %inc.i, %inc.1.i.neg
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %.b = load i1, ptr @l2x0_pmu_poll_period, align 8
  %3 = select i1 %.b, i64 1000000000, i64 0
  tail call void @hrtimer_start_range_ns(ptr noundef nonnull @l2x0_pmu_hrtimer, i64 noundef %3, i64 noundef 0, i32 noundef 3) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %arrayidx = getelementptr [2 x ptr], ptr @events, i32 0, i32 %retval.0.i.ph
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %event, ptr %arrayidx, align 4
  %idx6 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %5 = ptrtoint ptr %idx6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i.ph, ptr %idx6, align 4
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef 0) #12
  %6 = ptrtoint ptr %idx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx6, align 4
  %8 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 528
  %mul.neg.i.i = mul i32 %7, -4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.neg.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #12, !srcloc !102
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %state, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %l2x0_pmu_event_start.exit

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

l2x0_pmu_event_start.exit:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %11 = ptrtoint ptr %idx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx6, align 4
  %config_base.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %config_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config_base.i, align 8
  %shl.i.i = shl i32 %14, 2
  %15 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #12
  %16 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i118.i = getelementptr i8, ptr %16, i32 520
  %mul.neg.i.i119.i = mul i32 %12, -4
  %add.ptr1.i.i120.i = getelementptr i8, ptr %add.ptr.i.i118.i, i32 %mul.neg.i.i119.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i120.i, i32 %15) #12, !srcloc !102
  br label %cleanup

cleanup:                                          ; preds = %l2x0_pmu_event_start.exit, %if.end5.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %l2x0_pmu_event_start.exit ], [ 0, %if.end5.cleanup_crit_edge ], [ -11, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2x0_pmu_event_del(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end40.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %.b54.i = load i1, ptr @l2x0_pmu_event_stop.__already_done, align 1
  br i1 %.b54.i, label %land.rhs.i.l2x0_pmu_event_stop.exit_crit_edge, label %if.then.i, !prof !103

land.rhs.i.l2x0_pmu_event_stop.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %l2x0_pmu_event_stop.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @l2x0_pmu_event_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 216, i32 noundef 9, ptr noundef null) #12
  br label %l2x0_pmu_event_stop.exit

if.end40.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx.i, align 4
  %4 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 520
  %mul.neg.i.i.i = mul i32 %3, -4
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.neg.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 0) #12, !srcloc !102
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %state.i, align 4
  tail call void @l2x0_pmu_event_read(ptr noundef %event) #12
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  %or46.i = or i32 %8, 2
  store i32 %or46.i, ptr %state.i, align 4
  br label %l2x0_pmu_event_stop.exit

l2x0_pmu_event_stop.exit:                         ; preds = %if.end40.i, %if.then.i, %land.rhs.i.l2x0_pmu_event_stop.exit_crit_edge
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @events, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx, align 4
  store i32 -1, ptr %idx, align 4
  %12 = load ptr, ptr @events, align 4
  %tobool.not.i6 = icmp ne ptr %12, null
  %inc.i = zext i1 %tobool.not.i6 to i32
  %13 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @events, i32 0, i32 1), align 4
  %tobool.not.1.i = icmp ne ptr %13, null
  %inc.1.i.neg = sext i1 %tobool.not.1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %inc.1.i.neg)
  %cmp = icmp eq i32 %inc.i, %inc.1.i.neg
  br i1 %cmp, label %if.then, label %l2x0_pmu_event_stop.exit.if.end_crit_edge

l2x0_pmu_event_stop.exit.if.end_crit_edge:        ; preds = %l2x0_pmu_event_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %l2x0_pmu_event_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @hrtimer_cancel(ptr noundef nonnull @l2x0_pmu_hrtimer) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %l2x0_pmu_event_stop.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2x0_pmu_poll(ptr noundef %hrtimer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !104
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %1 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %3 = and i32 %2, -16777217
  %4 = load ptr, ptr @l2x0_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %4, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %3) #12, !srcloc !102
  %5 = load ptr, ptr @events, align 4
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %do.end11.cleanup_crit_edge, label %if.end16

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @l2x0_pmu_event_read(ptr noundef nonnull %5)
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %5, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef 0) #12
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %5, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx.i, align 4
  %8 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 528
  %mul.neg.i.i = mul i32 %7, -4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.neg.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #12, !srcloc !102
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end11.cleanup_crit_edge
  %9 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @events, i32 0, i32 1), align 4
  %tobool14.not.1 = icmp eq ptr %9, null
  br i1 %tobool14.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end16.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1

if.end16.1:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @l2x0_pmu_event_read(ptr noundef nonnull %9)
  %prev_count.i.1 = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 25, i32 5
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i.1, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i.1, i64 noundef 0) #12
  %idx.i.1 = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 25, i32 0, i32 0, i32 5
  %10 = ptrtoint ptr %idx.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx.i.1, align 4
  %12 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %12, i32 528
  %mul.neg.i.i.1 = mul i32 %11, -4
  %add.ptr1.i.i.1 = getelementptr i8, ptr %add.ptr.i.i.1, i32 %mul.neg.i.i.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.1, i32 0) #12, !srcloc !102
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end16.1, %cleanup.cleanup.1_crit_edge
  %13 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i57 = getelementptr i8, ptr %13, i32 512
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #12, !srcloc !101
  %15 = or i32 %14, 16777216
  %16 = load ptr, ptr @l2x0_base, align 4
  %add.ptr1.i58 = getelementptr i8, ptr %16, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i58, i32 %15) #12, !srcloc !102
  br i1 %tobool.not, label %if.then26, label %cleanup.1.do.body28_crit_edge

cleanup.1.do.body28_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

if.then26:                                        ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %cleanup.1.do.body28_crit_edge
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !105
  %and.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !106

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !107
  %.b = load i1, ptr @l2x0_pmu_poll_period, align 8
  %18 = select i1 %.b, i64 1000000000, i64 0
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 3
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %22() #12
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %hrtimer, i64 noundef %call.i, i64 noundef %18) #12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2x0_pmu_offline_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_and_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_and_clear_cpu.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_and_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !103

land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_and_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_and_clear_cpu.exit

cpumask_test_and_clear_cpu.exit:                  ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge, %entry.cpumask_test_and_clear_cpu.exit_crit_edge
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef %cpu, ptr noundef nonnull @pmu_cpu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %cpumask_test_and_clear_cpu.exit.cleanup_crit_edge, label %if.end

cpumask_test_and_clear_cpu.exit.cleanup_crit_edge: ; preds = %cpumask_test_and_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cpumask_test_and_clear_cpu.exit
  %call1 = tail call i32 @cpumask_any_but(ptr noundef nonnull @__cpu_online_mask, i32 noundef %cpu) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %1)
  %cmp.not = icmp ult i32 %call1, %1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr @l2x0_pmu, align 4
  tail call void @perf_pmu_migrate_context(ptr noundef %2, i32 noundef %cpu, i32 noundef %call1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call1)
  %cmp.not.i.i.i8 = icmp ugt i32 %3, %call1
  br i1 %cmp.not.i.i.i8, label %if.end3.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i10

if.end3.cpumask_set_cpu.exit_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i10:                                 ; preds = %if.end3
  %.b37.i.i.i9 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i9, label %land.rhs.i.i.i10.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i11, !prof !103

land.rhs.i.i.i10.cpumask_set_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

if.then.i.i.i11:                                  ; preds = %land.rhs.i.i.i10
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i11, %land.rhs.i.i.i10.cpumask_set_cpu.exit_crit_edge, %if.end3.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %call1, ptr noundef nonnull @pmu_cpu) #12
  br label %cleanup

cleanup:                                          ; preds = %cpumask_set_cpu.exit, %if.end.cleanup_crit_edge, %cpumask_test_and_clear_cpu.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @l2x0_pmu_event_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %unused) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pl310_only = getelementptr inbounds %struct.l2x0_event_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %pl310_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pl310_only, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.pmu, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.1, ptr noundef %5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.then ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2x0_pmu_event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.l2x0_event_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.39, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2x0_pmu_cpumask_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef nonnull @pmu_cpu, i32 noundef %0) #12
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_migrate_context(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 491, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 494, i32 15}
!4 = !{ptr @__initcall__kmod_cache_l2x0_pmu__250_565_l2x0_pmu_init6, !5, !"__initcall__kmod_cache_l2x0_pmu__250_565_l2x0_pmu_init6", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 565, i32 1}
!6 = !{ptr @l2x0_base, !7, !"l2x0_base", i1 false, i1 false}
!7 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 20, i32 22}
!8 = !{ptr @l2x0_pmu, !9, !"l2x0_pmu", i1 false, i1 false}
!9 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 21, i32 20}
!10 = !{ptr @l2x0_name, !11, !"l2x0_name", i1 false, i1 false}
!11 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 24, i32 20}
!12 = !{ptr @events, !13, !"events", i1 false, i1 false}
!13 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 36, i32 27}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 216, i32 6}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 114, i32 2}
!19 = !{ptr @warn_if_saturated._rs, !18, !"_rs", i1 false, i1 false}
!20 = !{ptr @__func__.warn_if_saturated, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @warn_if_saturated._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @warn_if_saturated._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 190, i32 6}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 194, i32 3}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 512, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @l2x0_pmu_init._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @l2x0_pmu_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 547, i32 6}
!35 = !{ptr @l2x0_pmu_attr_groups, !36, !"l2x0_pmu_attr_groups", i1 false, i1 false}
!36 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 408, i32 38}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 385, i32 10}
!39 = !{ptr @l2x0_pmu_event_attrs_group, !40, !"l2x0_pmu_event_attrs_group", i1 false, i1 false}
!40 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 384, i32 31}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 366, i32 2}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 367, i32 2}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 368, i32 2}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 369, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 370, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 371, i32 2}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 372, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 373, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 374, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 375, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 376, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 377, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 378, i32 2}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 379, i32 2}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 380, i32 2}
!71 = !{ptr @l2x0_pmu_event_attrs, !72, !"l2x0_pmu_event_attrs", i1 false, i1 false}
!72 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 365, i32 26}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 346, i32 34}
!75 = !{ptr @l2x0_pmu_cpumask_attr_group, !76, !"l2x0_pmu_cpumask_attr_group", i1 false, i1 false}
!76 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 404, i32 31}
!77 = !{ptr @l2x0_pmu_cpumask_attrs, !78, !"l2x0_pmu_cpumask_attrs", i1 false, i1 false}
!78 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 399, i32 26}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 397, i32 3}
!81 = !{ptr @l2x0_pmu_cpumask_attr, !82, !"l2x0_pmu_cpumask_attr", i1 false, i1 false}
!82 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 396, i32 32}
!83 = distinct !{null, !84, !"l2x0_pmu_poll_period", i1 false, i1 false}
!84 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 26, i32 16}
!85 = !{ptr @l2x0_pmu_hrtimer, !86, !"l2x0_pmu_hrtimer", i1 false, i1 false}
!86 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 27, i32 23}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @pmu_cpu, !91, !"pmu_cpu", i1 false, i1 false}
!91 = !{!"../arch/arm/mm/cache-l2x0-pmu.c", i32 22, i32 18}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2357394}
!102 = !{i64 2356976}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 635632, i64 635693}
!105 = !{i64 638364}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 638649}
!108 = !{i8 0, i8 2}
