; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/perf_event_v7.c_pt.bc'
source_filename = "../arch/arm/kernel/perf_event_v7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pmu_probe_info = type { i32, i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.perf_pmu_events_attr = type { %struct.device_attribute, i64, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_pmu = type { %struct.pmu, %struct.cpumask, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i32], [2 x i32], ptr, ptr, %struct.hlist_node, %struct.notifier_block, [5 x ptr], i64, i32 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.perf_sample_data = type { i64, ptr, ptr, i64, %union.perf_sample_weight, i64, %union.perf_mem_data_src, i64, i64, %struct.anon.93, i64, i64, i64, %struct.anon.94, ptr, i64, %struct.perf_regs, %struct.perf_regs, i64, i64, i64, i64, i64, [64 x i8] }
%union.perf_sample_weight = type { i64 }
%union.perf_mem_data_src = type { i64 }
%struct.anon.93 = type { i32, i32 }
%struct.anon.94 = type { i32, i32 }
%struct.perf_regs = type { i64, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.76, i64, i64, i64, %union.anon.77, i32, %union.anon.78, %union.anon.79, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.76 = type { i64 }
%union.anon.77 = type { i32 }
%union.anon.78 = type { i64 }
%union.anon.79 = type { i64 }
%struct.hw_perf_event = type { %union.anon.80, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.87, i64, i64, i64, i64 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i64, %struct.local64_t }
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
%struct.pmu_hw_events = type { [32 x ptr], [1 x i32], %struct.raw_spinlock, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_perf_event_v7__251_2046_armv7_pmu_driver_init6 = internal global ptr @armv7_pmu_driver_init, section ".initcall6.init", align 4
@armv7_pmu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @armv7_pmu_device_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @armv7_pmu_of_device_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"armv7-pmu\00", [22 x i8] zeroinitializer }, align 32
@armv7_pmu_of_device_ids = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a17-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a17_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a15-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a15_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a12-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a12_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a9-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a9_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a8-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a8_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a7-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a7_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a5-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv7_a5_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,krait-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @krait_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scorpion-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scorpion_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scorpion-mp-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scorpion_mp_pmu_init }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@armv7_pmu_probe_table = internal constant { [3 x %struct.pmu_probe_info], [60 x i8] } { [3 x %struct.pmu_probe_info] [%struct.pmu_probe_info { i32 1090568320, i32 -16711696, ptr @armv7_a8_pmu_init }, %struct.pmu_probe_info { i32 1090568336, i32 -16711696, ptr @armv7_a9_pmu_init }, %struct.pmu_probe_info zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armv7_cortex_a8\00", [16 x i8] zeroinitializer }, align 32
@armv7_pmuv1_events_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.12, ptr null, ptr null, ptr @armv7_pmuv1_event_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@armv7_pmu_format_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.51, ptr null, ptr null, ptr @armv7_pmu_format_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@armv7pmu_enable_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CPU%u enabling wrong PMNC counter IRQ enable %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"armv7pmu_enable_event\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/kernel/perf_event_v7.c\00", [32 x i8] zeroinitializer }, align 32
@armv7pmu_enable_event._entry_ptr = internal global ptr @armv7pmu_enable_event._entry, section ".printk_index", align 4
@armv7pmu_disable_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013CPU%u disabling wrong PMNC counter IRQ enable %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"armv7pmu_disable_event\00", [41 x i8] zeroinitializer }, align 32
@armv7pmu_disable_event._entry_ptr = internal global ptr @armv7pmu_disable_event._entry, section ".printk_index", align 4
@armv7pmu_read_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CPU%u reading wrong counter %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"armv7pmu_read_counter\00", [42 x i8] zeroinitializer }, align 32
@armv7pmu_read_counter._entry_ptr = internal global ptr @armv7pmu_read_counter._entry, section ".printk_index", align 4
@armv7pmu_write_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CPU%u writing wrong counter %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"armv7pmu_write_counter\00", [41 x i8] zeroinitializer }, align 32
@armv7pmu_write_counter._entry_ptr = internal global ptr @armv7pmu_write_counter._entry, section ".printk_index", align 4
@armv7_a8_perf_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 8, i32 4, i32 3, i32 12, i32 16, i32 65535, i32 86, i32 65535, i32 65535], [56 x i8] zeroinitializer }, align 32
@armv7_a8_perf_cache_map = internal constant { [7 x [3 x [2 x i32]]], [56 x i8] } { [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 80, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 67, i32 68], [2 x i32] [i32 67, i32 68], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@armv7_pmuv1_event_attrs = internal global { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @armv7_event_attr_sw_incr, ptr @armv7_event_attr_l1i_cache_refill, ptr @armv7_event_attr_l1i_tlb_refill, ptr @armv7_event_attr_l1d_cache_refill, ptr @armv7_event_attr_l1d_cache, ptr @armv7_event_attr_l1d_tlb_refill, ptr @armv7_event_attr_ld_retired, ptr @armv7_event_attr_st_retired, ptr @armv7_event_attr_inst_retired, ptr @armv7_event_attr_exc_taken, ptr @armv7_event_attr_exc_return, ptr @armv7_event_attr_cid_write_retired, ptr @armv7_event_attr_pc_write_retired, ptr @armv7_event_attr_br_immed_retired, ptr @armv7_event_attr_br_return_retired, ptr @armv7_event_attr_unaligned_ldst_retired, ptr @armv7_event_attr_br_mis_pred, ptr @armv7_event_attr_cpu_cycles, ptr @armv7_event_attr_br_pred, ptr null], [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_sw_incr = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.14 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_l1i_cache_refill = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.16 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_l1i_tlb_refill = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.18 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_l1d_cache_refill = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.20 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_l1d_cache = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.22 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_l1d_tlb_refill = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.24 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_ld_retired = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.26 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_st_retired = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.28 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_inst_retired = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.30 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_exc_taken = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.32 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_exc_return = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.34 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_cid_write_retired = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.36 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_pc_write_retired = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.38 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_br_immed_retired = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.40 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_br_return_retired = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.42 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_unaligned_ldst_retired = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.44 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_br_mis_pred = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.46 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_cpu_cycles = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.48 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_br_pred = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.50 }, [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_incr\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x00\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l1i_cache_refill\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x01\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"l1i_tlb_refill\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x02\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l1d_cache_refill\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x03\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l1d_cache\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x04\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"l1d_tlb_refill\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x05\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ld_retired\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x06\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st_retired\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x07\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inst_retired\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x08\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exc_taken\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x09\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exc_return\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x0A\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cid_write_retired\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x0B\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pc_write_retired\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x0C\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"br_immed_retired\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x0D\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"br_return_retired\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x0E\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unaligned_ldst_retired\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x0F\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"br_mis_pred\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x10\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu_cycles\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x11\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"br_pred\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x12\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@armv7_pmu_format_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @format_attr_event, ptr null], [24 x i8] zeroinitializer }, align 32
@format_attr_event = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @event_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"config:0-7\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armv7_cortex_a9\00", [16 x i8] zeroinitializer }, align 32
@armv7_a9_perf_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 104, i32 4, i32 3, i32 12, i32 16, i32 65535, i32 96, i32 102, i32 65535], [56 x i8] zeroinitializer }, align 32
@armv7_a9_perf_cache_map = internal constant { [7 x [3 x [2 x i32]]], [56 x i8] } { [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"armv7_cortex_a17\00", [47 x i8] zeroinitializer }, align 32
@armv7_pmuv2_events_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.12, ptr null, ptr null, ptr @armv7_pmuv2_event_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@armv7_pmuv2_event_attrs = internal global { [31 x ptr], [36 x i8] } { [31 x ptr] [ptr @armv7_event_attr_sw_incr, ptr @armv7_event_attr_l1i_cache_refill, ptr @armv7_event_attr_l1i_tlb_refill, ptr @armv7_event_attr_l1d_cache_refill, ptr @armv7_event_attr_l1d_cache, ptr @armv7_event_attr_l1d_tlb_refill, ptr @armv7_event_attr_ld_retired, ptr @armv7_event_attr_st_retired, ptr @armv7_event_attr_inst_retired, ptr @armv7_event_attr_exc_taken, ptr @armv7_event_attr_exc_return, ptr @armv7_event_attr_cid_write_retired, ptr @armv7_event_attr_pc_write_retired, ptr @armv7_event_attr_br_immed_retired, ptr @armv7_event_attr_br_return_retired, ptr @armv7_event_attr_unaligned_ldst_retired, ptr @armv7_event_attr_br_mis_pred, ptr @armv7_event_attr_cpu_cycles, ptr @armv7_event_attr_br_pred, ptr @armv7_event_attr_mem_access, ptr @armv7_event_attr_l1i_cache, ptr @armv7_event_attr_l1d_cache_wb, ptr @armv7_event_attr_l2d_cache, ptr @armv7_event_attr_l2d_cache_refill, ptr @armv7_event_attr_l2d_cache_wb, ptr @armv7_event_attr_bus_access, ptr @armv7_event_attr_memory_error, ptr @armv7_event_attr_inst_spec, ptr @armv7_event_attr_ttbr_write_retired, ptr @armv7_event_attr_bus_cycles, ptr null], [36 x i8] zeroinitializer }, align 32
@armv7_event_attr_mem_access = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.57 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_l1i_cache = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.59 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_l1d_cache_wb = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.61 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_l2d_cache = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.63 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_l2d_cache_refill = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.65 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_l2d_cache_wb = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.67 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_bus_access = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.69 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_memory_error = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.71 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_inst_spec = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.73 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_ttbr_write_retired = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.75 }, [48 x i8] zeroinitializer }, align 32
@armv7_event_attr_bus_cycles = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.77 }, [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mem_access\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x13\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l1i_cache\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x14\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l1d_cache_wb\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x15\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l2d_cache\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x16\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l2d_cache_refill\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x17\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l2d_cache_wb\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x18\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bus_access\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x19\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"memory_error\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x1A\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"inst_spec\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x1B\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ttbr_write_retired\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x1C\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bus_cycles\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x1D\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"armv7_cortex_a15\00", [47 x i8] zeroinitializer }, align 32
@armv7_a15_perf_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 8, i32 4, i32 3, i32 118, i32 16, i32 29, i32 65535, i32 65535, i32 65535], [56 x i8] zeroinitializer }, align 32
@armv7_a15_perf_cache_map = internal constant { [7 x [3 x [2 x i32]]], [56 x i8] } { [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 64, i32 66], [2 x i32] [i32 65, i32 67], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 20, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 80, i32 82], [2 x i32] [i32 81, i32 83], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 76], [2 x i32] [i32 65535, i32 77], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"armv7_cortex_a12\00", [47 x i8] zeroinitializer }, align 32
@armv7_a12_perf_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 8, i32 4, i32 3, i32 118, i32 16, i32 29, i32 65535, i32 65535, i32 65535], [56 x i8] zeroinitializer }, align 32
@armv7_a12_perf_cache_map = internal constant { [7 x [3 x [2 x i32]]], [56 x i8] } { [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 64, i32 3], [2 x i32] [i32 65, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 20, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 80, i32 23], [2 x i32] [i32 81, i32 23], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 231]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armv7_cortex_a7\00", [16 x i8] zeroinitializer }, align 32
@armv7_a7_perf_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 8, i32 4, i32 3, i32 12, i32 16, i32 29, i32 65535, i32 65535, i32 65535], [56 x i8] zeroinitializer }, align 32
@armv7_a7_perf_cache_map = internal constant { [7 x [3 x [2 x i32]]], [56 x i8] } { [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 20, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 22, i32 23], [2 x i32] [i32 22, i32 23], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armv7_cortex_a5\00", [16 x i8] zeroinitializer }, align 32
@armv7_a5_perf_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 8, i32 4, i32 3, i32 12, i32 16, i32 65535, i32 65535, i32 65535, i32 65535], [56 x i8] zeroinitializer }, align 32
@armv7_a5_perf_cache_map = internal constant { [7 x [3 x [2 x i32]]], [56 x i8] } { [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 194, i32 195]], [3 x [2 x i32]] [[2 x i32] [i32 20, i32 1], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 194, i32 195]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 5], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 2], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"armv7_krait\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,no-pc-write\00", [47 x i8] zeroinitializer }, align 32
@krait_perf_map_no_branch = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 8, i32 65535, i32 65535, i32 65535, i32 16, i32 17, i32 65535, i32 65535, i32 65535], [56 x i8] zeroinitializer }, align 32
@krait_perf_cache_map = internal constant { [7 x [3 x [2 x i32]]], [56 x i8] } { [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65553, i32 65552], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 74256, i32 65535], [2 x i32] [i32 74256, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 74274, i32 65535], [2 x i32] [i32 74274, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], [56 x i8] zeroinitializer }, align 32
@krait_perf_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 8, i32 65535, i32 65535, i32 12, i32 16, i32 17, i32 65535, i32 65535, i32 65535], [56 x i8] zeroinitializer }, align 32
@krait_get_pmresrn_event.pmresrn_table = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 204, i32 208, i32 212], [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"armv7_scorpion\00", [17 x i8] zeroinitializer }, align 32
@scorpion_perf_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 8, i32 65535, i32 65535, i32 12, i32 16, i32 17, i32 65535, i32 65535, i32 65535], [56 x i8] zeroinitializer }, align 32
@scorpion_perf_cache_map = internal constant { [7 x [3 x [2 x i32]]], [56 x i8] } { [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65619, i32 65618], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 73747, i32 73746], [2 x i32] [i32 73747, i32 73746], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 73761], [2 x i32] [i32 65535, i32 73761], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 18, i32 16], [2 x i32] [i32 18, i32 16], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], [56 x i8] zeroinitializer }, align 32
@scorpion_get_pmresrn_event.pmresrn_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 76, i32 80, i32 84, i32 88], [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"armv7_scorpion_mp\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"armv7_pmu_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 2037, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 2039, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"armv7_pmu_of_device_ids\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 2010, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"armv7_pmu_probe_table\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 2024, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1203, i32 19 }
@___asan_gen_.104 = private unnamed_addr constant [30 x i8] c"armv7_pmuv1_events_attr_group\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 595, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant [28 x i8] c"armv7_pmu_format_attr_group\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 542, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 880, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 926, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 754, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 773, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"armv7_a8_perf_map\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 158, i32 23 }
@___asan_gen_.152 = private unnamed_addr constant [24 x i8] c"armv7_a8_perf_cache_map\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 169, i32 23 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 596, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"armv7_pmuv1_event_attrs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 572, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [25 x i8] c"armv7_event_attr_sw_incr\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [34 x i8] c"armv7_event_attr_l1i_cache_refill\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [32 x i8] c"armv7_event_attr_l1i_tlb_refill\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [34 x i8] c"armv7_event_attr_l1d_cache_refill\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"armv7_event_attr_l1d_cache\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [32 x i8] c"armv7_event_attr_l1d_tlb_refill\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [28 x i8] c"armv7_event_attr_ld_retired\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [28 x i8] c"armv7_event_attr_st_retired\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [30 x i8] c"armv7_event_attr_inst_retired\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [27 x i8] c"armv7_event_attr_exc_taken\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [28 x i8] c"armv7_event_attr_exc_return\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [35 x i8] c"armv7_event_attr_cid_write_retired\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [34 x i8] c"armv7_event_attr_pc_write_retired\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [34 x i8] c"armv7_event_attr_br_immed_retired\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [35 x i8] c"armv7_event_attr_br_return_retired\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [40 x i8] c"armv7_event_attr_unaligned_ldst_retired\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [29 x i8] c"armv7_event_attr_br_mis_pred\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [28 x i8] c"armv7_event_attr_cpu_cycles\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [25 x i8] c"armv7_event_attr_br_pred\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 552, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 553, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 554, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 555, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 556, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 557, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 558, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 559, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 560, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 561, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 562, i32 1 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 563, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 564, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 565, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 566, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 567, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 568, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 569, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 570, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 543, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant [23 x i8] c"armv7_pmu_format_attrs\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 537, i32 26 }
@___asan_gen_.338 = private unnamed_addr constant [18 x i8] c"format_attr_event\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 535, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1215, i32 19 }
@___asan_gen_.350 = private unnamed_addr constant [18 x i8] c"armv7_a9_perf_map\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 207, i32 23 }
@___asan_gen_.353 = private unnamed_addr constant [24 x i8] c"armv7_a9_perf_cache_map\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 219, i32 23 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1278, i32 18 }
@___asan_gen_.359 = private unnamed_addr constant [30 x i8] c"armv7_pmuv2_events_attr_group\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 646, i32 31 }
@___asan_gen_.362 = private unnamed_addr constant [24 x i8] c"armv7_pmuv2_event_attrs\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 612, i32 26 }
@___asan_gen_.365 = private unnamed_addr constant [28 x i8] c"armv7_event_attr_mem_access\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [27 x i8] c"armv7_event_attr_l1i_cache\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [30 x i8] c"armv7_event_attr_l1d_cache_wb\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [27 x i8] c"armv7_event_attr_l2d_cache\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [34 x i8] c"armv7_event_attr_l2d_cache_refill\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [30 x i8] c"armv7_event_attr_l2d_cache_wb\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [28 x i8] c"armv7_event_attr_bus_access\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [30 x i8] c"armv7_event_attr_memory_error\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [27 x i8] c"armv7_event_attr_inst_spec\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [36 x i8] c"armv7_event_attr_ttbr_write_retired\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [28 x i8] c"armv7_event_attr_bus_cycles\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 600, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 601, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 602, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 603, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 604, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 605, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 606, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 607, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 608, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 609, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 610, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1239, i32 19 }
@___asan_gen_.467 = private unnamed_addr constant [19 x i8] c"armv7_a15_perf_map\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 297, i32 23 }
@___asan_gen_.470 = private unnamed_addr constant [25 x i8] c"armv7_a15_perf_cache_map\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 308, i32 23 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1265, i32 19 }
@___asan_gen_.476 = private unnamed_addr constant [19 x i8] c"armv7_a12_perf_map\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 395, i32 23 }
@___asan_gen_.479 = private unnamed_addr constant [25 x i8] c"armv7_a12_perf_cache_map\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 406, i32 23 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1252, i32 19 }
@___asan_gen_.485 = private unnamed_addr constant [18 x i8] c"armv7_a7_perf_map\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 346, i32 23 }
@___asan_gen_.488 = private unnamed_addr constant [24 x i8] c"armv7_a7_perf_cache_map\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 357, i32 23 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1227, i32 19 }
@___asan_gen_.494 = private unnamed_addr constant [18 x i8] c"armv7_a5_perf_map\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 251, i32 23 }
@___asan_gen_.497 = private unnamed_addr constant [24 x i8] c"armv7_a5_perf_cache_map\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 261, i32 23 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1657, i32 19 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1660, i32 7 }
@___asan_gen_.506 = private unnamed_addr constant [25 x i8] c"krait_perf_map_no_branch\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 454, i32 23 }
@___asan_gen_.509 = private unnamed_addr constant [21 x i8] c"krait_perf_cache_map\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 462, i32 23 }
@___asan_gen_.512 = private unnamed_addr constant [15 x i8] c"krait_perf_map\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 445, i32 23 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1409, i32 19 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1987, i32 19 }
@___asan_gen_.521 = private unnamed_addr constant [18 x i8] c"scorpion_perf_map\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 495, i32 23 }
@___asan_gen_.524 = private unnamed_addr constant [24 x i8] c"scorpion_perf_cache_map\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 504, i32 23 }
@___asan_gen_.527 = private unnamed_addr constant [14 x i8] c"pmresrn_table\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1755, i32 19 }
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.531 = private constant [35 x i8] c"../arch/arm/kernel/perf_event_v7.c\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 2000, i32 19 }
@llvm.compiler.used = appending global [153 x ptr] [ptr @__initcall__kmod_perf_event_v7__251_2046_armv7_pmu_driver_init6, ptr @armv7pmu_disable_event._entry, ptr @armv7pmu_disable_event._entry_ptr, ptr @armv7pmu_enable_event._entry, ptr @armv7pmu_enable_event._entry_ptr, ptr @armv7pmu_read_counter._entry, ptr @armv7pmu_read_counter._entry_ptr, ptr @armv7pmu_write_counter._entry, ptr @armv7pmu_write_counter._entry_ptr, ptr @armv7_pmu_driver, ptr @.str, ptr @armv7_pmu_of_device_ids, ptr @armv7_pmu_probe_table, ptr @.str.1, ptr @armv7_pmuv1_events_attr_group, ptr @armv7_pmu_format_attr_group, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @armv7_a8_perf_map, ptr @armv7_a8_perf_cache_map, ptr @.str.12, ptr @armv7_pmuv1_event_attrs, ptr @armv7_event_attr_sw_incr, ptr @armv7_event_attr_l1i_cache_refill, ptr @armv7_event_attr_l1i_tlb_refill, ptr @armv7_event_attr_l1d_cache_refill, ptr @armv7_event_attr_l1d_cache, ptr @armv7_event_attr_l1d_tlb_refill, ptr @armv7_event_attr_ld_retired, ptr @armv7_event_attr_st_retired, ptr @armv7_event_attr_inst_retired, ptr @armv7_event_attr_exc_taken, ptr @armv7_event_attr_exc_return, ptr @armv7_event_attr_cid_write_retired, ptr @armv7_event_attr_pc_write_retired, ptr @armv7_event_attr_br_immed_retired, ptr @armv7_event_attr_br_return_retired, ptr @armv7_event_attr_unaligned_ldst_retired, ptr @armv7_event_attr_br_mis_pred, ptr @armv7_event_attr_cpu_cycles, ptr @armv7_event_attr_br_pred, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @armv7_pmu_format_attrs, ptr @format_attr_event, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @armv7_a9_perf_map, ptr @armv7_a9_perf_cache_map, ptr @.str.55, ptr @armv7_pmuv2_events_attr_group, ptr @armv7_pmuv2_event_attrs, ptr @armv7_event_attr_mem_access, ptr @armv7_event_attr_l1i_cache, ptr @armv7_event_attr_l1d_cache_wb, ptr @armv7_event_attr_l2d_cache, ptr @armv7_event_attr_l2d_cache_refill, ptr @armv7_event_attr_l2d_cache_wb, ptr @armv7_event_attr_bus_access, ptr @armv7_event_attr_memory_error, ptr @armv7_event_attr_inst_spec, ptr @armv7_event_attr_ttbr_write_retired, ptr @armv7_event_attr_bus_cycles, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @armv7_a15_perf_map, ptr @armv7_a15_perf_cache_map, ptr @.str.79, ptr @armv7_a12_perf_map, ptr @armv7_a12_perf_cache_map, ptr @.str.80, ptr @armv7_a7_perf_map, ptr @armv7_a7_perf_cache_map, ptr @.str.81, ptr @armv7_a5_perf_map, ptr @armv7_a5_perf_cache_map, ptr @.str.82, ptr @.str.83, ptr @krait_perf_map_no_branch, ptr @krait_perf_cache_map, ptr @krait_perf_map, ptr @krait_get_pmresrn_event.pmresrn_table, ptr @.str.84, ptr @scorpion_perf_map, ptr @scorpion_perf_cache_map, ptr @scorpion_get_pmresrn_event.pmresrn_table, ptr @.str.85], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_pmu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_pmu_of_device_ids to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_pmu_probe_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_pmuv1_events_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_pmu_format_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7pmu_enable_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7pmu_disable_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7pmu_read_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7pmu_write_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a8_perf_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a8_perf_cache_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_pmuv1_event_attrs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_sw_incr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_l1i_cache_refill to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_l1i_tlb_refill to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_l1d_cache_refill to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_l1d_cache to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_l1d_tlb_refill to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_ld_retired to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_st_retired to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_inst_retired to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_exc_taken to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_exc_return to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_cid_write_retired to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_pc_write_retired to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_br_immed_retired to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_br_return_retired to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_unaligned_ldst_retired to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_br_mis_pred to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_cpu_cycles to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_br_pred to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_pmu_format_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a9_perf_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a9_perf_cache_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_pmuv2_events_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_pmuv2_event_attrs to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_mem_access to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_l1i_cache to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_l1d_cache_wb to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_l2d_cache to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_l2d_cache_refill to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_l2d_cache_wb to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_bus_access to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_memory_error to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_inst_spec to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_ttbr_write_retired to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_event_attr_bus_cycles to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a15_perf_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a15_perf_cache_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a12_perf_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a12_perf_cache_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a7_perf_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a7_perf_cache_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a5_perf_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv7_a5_perf_cache_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_perf_map_no_branch to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_perf_cache_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_perf_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_get_pmresrn_event.pmresrn_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scorpion_perf_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scorpion_perf_cache_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scorpion_get_pmresrn_event.pmresrn_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_pmu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @armv7_pmu_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_pmu_device_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @arm_pmu_device_probe(ptr noundef %pdev, ptr noundef nonnull @armv7_pmu_of_device_ids, ptr noundef nonnull @armv7_pmu_probe_table) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_pmu_device_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a8_pmu_init(ptr noundef %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv7pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv7pmu_enable_event, ptr %enable.i, align 8
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv7pmu_disable_event, ptr %disable.i, align 4
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv7pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv7pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv7pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv7pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv7pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv7pmu_stop, ptr %stop.i, align 8
  %reset.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 14
  %9 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv7pmu_reset, ptr %reset.i, align 4
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.1, ptr %name, align 4
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %11 = ptrtoint ptr %map_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @armv7_a8_map_event, ptr %map_event, align 8
  %arrayidx = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @armv7_pmuv1_events_attr_group, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 2
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @armv7_pmu_format_attr_group, ptr %arrayidx2, align 4
  %supported_cpus.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 1
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %call.i = tail call i32 @smp_call_function_any(ptr noundef %supported_cpus.i, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %num_events.i, i32 noundef 1) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a9_pmu_init(ptr noundef %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv7pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv7pmu_enable_event, ptr %enable.i, align 8
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv7pmu_disable_event, ptr %disable.i, align 4
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv7pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv7pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv7pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv7pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv7pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv7pmu_stop, ptr %stop.i, align 8
  %reset.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 14
  %9 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv7pmu_reset, ptr %reset.i, align 4
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.54, ptr %name, align 4
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %11 = ptrtoint ptr %map_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @armv7_a9_map_event, ptr %map_event, align 8
  %arrayidx = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @armv7_pmuv1_events_attr_group, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 2
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @armv7_pmu_format_attr_group, ptr %arrayidx2, align 4
  %supported_cpus.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 1
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %call.i = tail call i32 @smp_call_function_any(ptr noundef %supported_cpus.i, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %num_events.i, i32 noundef 1) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a8_map_event(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @armv7_a8_perf_map, ptr noundef nonnull @armv7_a8_perf_cache_map, i32 noundef 255) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7pmu_handle_irq(ptr nocapture noundef readonly %cpu_pmu) #2 align 64 {
entry:
  %data = alloca %struct.perf_sample_data, align 128
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data) #9
  %0 = call ptr @memset(ptr %data, i32 255, i32 256)
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 22
  %1 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_events, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !233) #9
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
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c12, 3", "=r"() #9, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %11) #9, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23

if.end:                                           ; preds = %entry
  %12 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, ptrtoint (ptr @__irq_regs to i32)
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %num_events = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %21 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_events, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp40 = icmp sgt i32 %22, 0
  br i1 %cmp40, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %period2.i = getelementptr inbounds %struct.perf_sample_data, ptr %data, i32 0, i32 3
  %weight.i = getelementptr inbounds %struct.perf_sample_data, ptr %data, i32 0, i32 4
  %data_src.i = getelementptr inbounds %struct.perf_sample_data, ptr %data, i32 0, i32 6
  %txn.i = getelementptr inbounds %struct.perf_sample_data, ptr %data, i32 0, i32 5
  %disable = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %idx.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx5 = getelementptr [32 x ptr], ptr %10, i32 0, i32 %idx.041
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %24, null
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %sub.i = add nuw i32 %idx.041, 31
  %and.i39 = and i32 %sub.i, 31
  %shl.i = shl nuw i32 1, %and.i39
  %and1.i = and i32 %shl.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool10.not = icmp eq i32 %and1.i, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call i64 @armpmu_event_update(ptr noundef nonnull %24) #9
  %25 = getelementptr inbounds %struct.perf_event, ptr %24, i32 0, i32 25, i32 7
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  %28 = call ptr @memset(ptr %data, i32 0, i32 16)
  %29 = ptrtoint ptr %period2.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %27, ptr %period2.i, align 16
  %30 = ptrtoint ptr %weight.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %weight.i, align 8
  %31 = ptrtoint ptr %data_src.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 84410401, ptr %data_src.i, align 8
  %32 = ptrtoint ptr %txn.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %txn.i, align 32
  %call14 = call i32 @armpmu_event_set_period(ptr noundef nonnull %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = call i32 @perf_event_overflow(ptr noundef nonnull %24, ptr noundef nonnull %data, ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %disable, align 4
  call void %34(ptr noundef nonnull %24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %idx.041, 1
  %35 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_events, align 8
  %cmp = icmp slt i32 %inc, %36
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @irq_work_run() #9
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %entry.cleanup23_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv7pmu_enable_event(ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_events, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !233) #9
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
  %idx3 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %10 = ptrtoint ptr %idx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp sgt i32 %11, -1
  br i1 %cmp.i, label %armv7_pmnc_counter_valid.exit, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

armv7_pmnc_counter_valid.exit:                    ; preds = %entry
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_events.i, align 8
  %sub.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp1.i.not = icmp slt i32 %sub.i, %11
  br i1 %cmp1.i.not, label %armv7_pmnc_counter_valid.exit.do.end7_crit_edge, label %do.body12

armv7_pmnc_counter_valid.exit.do.end7_crit_edge:  ; preds = %armv7_pmnc_counter_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end7:                                          ; preds = %armv7_pmnc_counter_valid.exit.do.end7_crit_edge, %entry.do.end7_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %7, i32 noundef %11) #12
  br label %cleanup

do.body12:                                        ; preds = %armv7_pmnc_counter_valid.exit
  %14 = ptrtoint ptr %3 to i32
  %add = add i32 %9, %14
  %15 = inttoptr i32 %add to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %15, i32 0, i32 2
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #9
  %sub.i46 = add nuw i32 %11, 31
  %and.i47 = and i32 %sub.i46, 31
  %shl.i = shl nuw i32 1, %and.i47
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %shl.i) #9, !srcloc !245
  %set_event_filter = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %set_event_filter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_event_filter, align 8
  %tobool17.not = icmp eq ptr %17, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp18.not = icmp eq i32 %11, 0
  %or.cond = and i1 %cmp18.not, %tobool17.not
  br i1 %or.cond, label %do.body12.if.end21_crit_edge, label %if.then20

do.body12.if.end21_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %config_base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i47) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %and.i48 = and i32 %19, -939523841
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %and.i48) #9, !srcloc !248
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.body12.if.end21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 1", "r"(i32 %shl.i) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 1", "r"(i32 %shl.i) #9, !srcloc !250
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv7pmu_disable_event(ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_events, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !233) #9
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
  %idx3 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %10 = ptrtoint ptr %idx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp sgt i32 %11, -1
  br i1 %cmp.i, label %armv7_pmnc_counter_valid.exit, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

armv7_pmnc_counter_valid.exit:                    ; preds = %entry
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_events.i, align 8
  %sub.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp1.i.not = icmp slt i32 %sub.i, %11
  br i1 %cmp1.i.not, label %armv7_pmnc_counter_valid.exit.do.end7_crit_edge, label %do.body12

armv7_pmnc_counter_valid.exit.do.end7_crit_edge:  ; preds = %armv7_pmnc_counter_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end7:                                          ; preds = %armv7_pmnc_counter_valid.exit.do.end7_crit_edge, %entry.do.end7_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %7, i32 noundef %11) #12
  br label %cleanup

do.body12:                                        ; preds = %armv7_pmnc_counter_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %3 to i32
  %add = add i32 %9, %14
  %15 = inttoptr i32 %add to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %15, i32 0, i32 2
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #9
  %sub.i36 = add nuw i32 %11, 31
  %and.i37 = and i32 %sub.i36, 31
  %shl.i = shl nuw i32 1, %and.i37
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %shl.i) #9, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %shl.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %shl.i) #9, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call14) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %do.end7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @armv7pmu_read_counter(ptr nocapture noundef readonly %event) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %idx1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp sgt i32 %1, -1
  br i1 %cmp.i, label %armv7_pmnc_counter_valid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

armv7_pmnc_counter_valid.exit:                    ; preds = %entry
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_events.i, align 8
  %sub.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %1)
  %cmp1.i.not = icmp slt i32 %sub.i, %1
  br i1 %cmp1.i.not, label %armv7_pmnc_counter_valid.exit.do.end_crit_edge, label %if.else

armv7_pmnc_counter_valid.exit.do.end_crit_edge:   ; preds = %armv7_pmnc_counter_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %armv7_pmnc_counter_valid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %9, i32 noundef %1) #12
  br label %if.end7

if.else:                                          ; preds = %armv7_pmnc_counter_valid.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c13, 0", "=r"() #9, !srcloc !255
  br label %if.end7

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i12 = add nuw i32 %1, 31
  %and.i13 = and i32 %sub.i12, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i13) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %11 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c13, 2", "=r"() #9, !srcloc !256
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5, %do.end
  %value.0 = phi i32 [ %10, %if.then5 ], [ %11, %if.else6 ], [ 0, %do.end ]
  %conv = zext i32 %value.0 to i64
  ret i64 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv7pmu_write_counter(ptr nocapture noundef readonly %event, i64 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %idx1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp sgt i32 %1, -1
  br i1 %cmp.i, label %armv7_pmnc_counter_valid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

armv7_pmnc_counter_valid.exit:                    ; preds = %entry
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_events.i, align 8
  %sub.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %1)
  %cmp1.i.not = icmp slt i32 %sub.i, %1
  br i1 %cmp1.i.not, label %armv7_pmnc_counter_valid.exit.do.end_crit_edge, label %if.else

armv7_pmnc_counter_valid.exit.do.end_crit_edge:   ; preds = %armv7_pmnc_counter_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %armv7_pmnc_counter_valid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %9, i32 noundef %1) #12
  br label %if.end8

if.else:                                          ; preds = %armv7_pmnc_counter_valid.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i64 %value to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 0", "r"(i32 %conv) #9, !srcloc !257
  br label %if.end8

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i14 = add nuw i32 %1, 31
  %and.i15 = and i32 %sub.i14, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i15) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %conv7 = trunc i64 %value to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 2", "r"(i32 %conv7) #9, !srcloc !258
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then5, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7pmu_get_event_idx(ptr noundef %cpuc, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_base, align 8
  %and = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and)
  %cmp = icmp eq i32 %and, 255
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %used_mask4 = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  %num_events = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_events, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp318 = icmp sgt i32 %5, 1
  br i1 %cmp318, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %used_mask = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %used_mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %idx.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef %idx.019, ptr noundef %used_mask4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.019, 1
  %6 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_events, align 8
  %cmp3 = icmp slt i32 %inc, %7
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then ], [ -11, %for.cond.preheader.cleanup_crit_edge ], [ %idx.019, %for.body.cleanup_crit_edge ], [ -11, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv7pmu_clear_event_idx(ptr noundef %cpuc, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %used_mask = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %used_mask) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv7pmu_start(ptr nocapture noundef readonly %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 22
  %0 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_events, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %9, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #9
  %10 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c12, 0", "=r"() #9, !srcloc !259
  %or = and i32 %10, 62
  %and.i18 = or i32 %or, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 0", "r"(i32 %and.i18) #9, !srcloc !261
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv7pmu_stop(ptr nocapture noundef readonly %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 22
  %0 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_events, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %9, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #9
  %10 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c12, 0", "=r"() #9, !srcloc !259
  %and.i18 = and i32 %10, 62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 0", "r"(i32 %and.i18) #9, !srcloc !261
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv7pmu_reset(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_events = getelementptr inbounds %struct.arm_pmu, ptr %info, i32 0, i32 17
  %0 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_events, align 8
  %secure_access = getelementptr inbounds %struct.arm_pmu, ptr %info, i32 0, i32 18
  %2 = ptrtoint ptr %secure_access to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %secure_access, align 4, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c1, 1", "=r"() #9, !srcloc !263
  %or = or i32 %4, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c1, 1", "r"(i32 %or) #9, !srcloc !264
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %idx.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %sub.i = add i32 %idx.010, 31
  %and.i = and i32 %sub.i, 31
  %shl.i = shl nuw i32 1, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %shl.i) #9, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %shl.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %shl.i) #9, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %inc = add nuw i32 %idx.010, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 0", "r"(i32 6) #9, !srcloc !261
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @armpmu_event_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armpmu_event_set_period(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_overflow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_run() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armpmu_map_event(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_sysfs_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.53, i32 12)
  ret i32 11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_any(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv7_read_num_pmnc_events(ptr nocapture noundef writeonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c9, c12, 0", "=r"() #9, !srcloc !259
  %shr = lshr i32 %0, 11
  %and = and i32 %shr, 31
  %add = add nuw nsw i32 %and, 1
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %info, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a9_map_event(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @armv7_a9_perf_map, ptr noundef nonnull @armv7_a9_perf_cache_map, i32 noundef 255) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a17_pmu_init(ptr noundef %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv7pmu_handle_irq, ptr %handle_irq.i.i, align 4
  %enable.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv7pmu_enable_event, ptr %enable.i.i, align 8
  %disable.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv7pmu_disable_event, ptr %disable.i.i, align 4
  %read_counter.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv7pmu_read_counter, ptr %read_counter.i.i, align 4
  %write_counter.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv7pmu_write_counter, ptr %write_counter.i.i, align 8
  %get_event_idx.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv7pmu_get_event_idx, ptr %get_event_idx.i.i, align 8
  %clear_event_idx.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv7pmu_clear_event_idx, ptr %clear_event_idx.i.i, align 4
  %start.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv7pmu_start, ptr %start.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv7pmu_stop, ptr %stop.i.i, align 8
  %reset.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 14
  %9 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv7pmu_reset, ptr %reset.i.i, align 4
  %name.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.79, ptr %name.i, align 4
  %map_event.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %11 = ptrtoint ptr %map_event.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @armv7_a12_map_event, ptr %map_event.i, align 8
  %set_event_filter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 9
  %12 = ptrtoint ptr %set_event_filter.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @armv7pmu_set_event_filter, ptr %set_event_filter.i, align 8
  %arrayidx.i = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @armv7_pmuv2_events_attr_group, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 2
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @armv7_pmu_format_attr_group, ptr %arrayidx2.i, align 4
  %supported_cpus.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 1
  %num_events.i.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %call.i.i = tail call i32 @smp_call_function_any(ptr noundef %supported_cpus.i.i, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %num_events.i.i, i32 noundef 1) #9
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.55, ptr %name.i, align 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @armv7_pmuv2_events_attr_group, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @armv7_pmu_format_attr_group, ptr %arrayidx2.i, align 4
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a15_pmu_init(ptr noundef %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv7pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv7pmu_enable_event, ptr %enable.i, align 8
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv7pmu_disable_event, ptr %disable.i, align 4
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv7pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv7pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv7pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv7pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv7pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv7pmu_stop, ptr %stop.i, align 8
  %reset.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 14
  %9 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv7pmu_reset, ptr %reset.i, align 4
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.78, ptr %name, align 4
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %11 = ptrtoint ptr %map_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @armv7_a15_map_event, ptr %map_event, align 8
  %set_event_filter = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 9
  %12 = ptrtoint ptr %set_event_filter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @armv7pmu_set_event_filter, ptr %set_event_filter, align 8
  %arrayidx = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @armv7_pmuv2_events_attr_group, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 2
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @armv7_pmu_format_attr_group, ptr %arrayidx2, align 4
  %supported_cpus.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 1
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %call.i = tail call i32 @smp_call_function_any(ptr noundef %supported_cpus.i, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %num_events.i, i32 noundef 1) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a12_pmu_init(ptr noundef %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv7pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv7pmu_enable_event, ptr %enable.i, align 8
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv7pmu_disable_event, ptr %disable.i, align 4
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv7pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv7pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv7pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv7pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv7pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv7pmu_stop, ptr %stop.i, align 8
  %reset.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 14
  %9 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv7pmu_reset, ptr %reset.i, align 4
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.79, ptr %name, align 4
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %11 = ptrtoint ptr %map_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @armv7_a12_map_event, ptr %map_event, align 8
  %set_event_filter = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 9
  %12 = ptrtoint ptr %set_event_filter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @armv7pmu_set_event_filter, ptr %set_event_filter, align 8
  %arrayidx = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @armv7_pmuv2_events_attr_group, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 2
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @armv7_pmu_format_attr_group, ptr %arrayidx2, align 4
  %supported_cpus.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 1
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %call.i = tail call i32 @smp_call_function_any(ptr noundef %supported_cpus.i, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %num_events.i, i32 noundef 1) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a7_pmu_init(ptr noundef %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv7pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv7pmu_enable_event, ptr %enable.i, align 8
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv7pmu_disable_event, ptr %disable.i, align 4
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv7pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv7pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv7pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv7pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv7pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv7pmu_stop, ptr %stop.i, align 8
  %reset.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 14
  %9 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv7pmu_reset, ptr %reset.i, align 4
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.80, ptr %name, align 4
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %11 = ptrtoint ptr %map_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @armv7_a7_map_event, ptr %map_event, align 8
  %set_event_filter = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 9
  %12 = ptrtoint ptr %set_event_filter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @armv7pmu_set_event_filter, ptr %set_event_filter, align 8
  %arrayidx = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @armv7_pmuv2_events_attr_group, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 2
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @armv7_pmu_format_attr_group, ptr %arrayidx2, align 4
  %supported_cpus.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 1
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %call.i = tail call i32 @smp_call_function_any(ptr noundef %supported_cpus.i, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %num_events.i, i32 noundef 1) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a5_pmu_init(ptr noundef %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv7pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv7pmu_enable_event, ptr %enable.i, align 8
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv7pmu_disable_event, ptr %disable.i, align 4
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv7pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv7pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv7pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv7pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv7pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv7pmu_stop, ptr %stop.i, align 8
  %reset.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 14
  %9 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv7pmu_reset, ptr %reset.i, align 4
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.81, ptr %name, align 4
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %11 = ptrtoint ptr %map_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @armv7_a5_map_event, ptr %map_event, align 8
  %arrayidx = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @armv7_pmuv1_events_attr_group, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 25, i32 2
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @armv7_pmu_format_attr_group, ptr %arrayidx2, align 4
  %supported_cpus.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 1
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %call.i = tail call i32 @smp_call_function_any(ptr noundef %supported_cpus.i, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %num_events.i, i32 noundef 1) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_pmu_init(ptr noundef %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv7pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv7pmu_enable_event, ptr %enable.i, align 8
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv7pmu_disable_event, ptr %disable.i, align 4
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv7pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv7pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv7pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv7pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv7pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv7pmu_stop, ptr %stop.i, align 8
  %reset.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 14
  %9 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv7pmu_reset, ptr %reset.i, align 4
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.82, ptr %name, align 4
  %plat_device = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 21
  %11 = ptrtoint ptr %plat_device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plat_device, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.83, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i, null
  %spec.select = select i1 %tobool.i.not, ptr @krait_map_event, ptr @krait_map_event_no_branch
  %15 = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.select, ptr %15, align 8
  %set_event_filter = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 9
  %17 = ptrtoint ptr %set_event_filter to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @armv7pmu_set_event_filter, ptr %set_event_filter, align 8
  %18 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @krait_pmu_reset, ptr %reset.i, align 4
  %19 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @krait_pmu_enable_event, ptr %enable.i, align 8
  %20 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @krait_pmu_disable_event, ptr %disable.i, align 4
  %21 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @krait_pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %22 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @krait_pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %supported_cpus.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 1
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %call.i14 = tail call i32 @smp_call_function_any(ptr noundef %supported_cpus.i, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %num_events.i, i32 noundef 1) #9
  ret i32 %call.i14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scorpion_pmu_init(ptr noundef %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv7pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %1 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv7pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %2 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv7pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %3 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv7pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %4 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv7pmu_stop, ptr %stop.i, align 8
  %reset.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 14
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.84, ptr %name, align 4
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %6 = ptrtoint ptr %map_event to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @scorpion_map_event, ptr %map_event, align 8
  %7 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @scorpion_pmu_reset, ptr %reset.i, align 4
  %8 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @scorpion_pmu_enable_event, ptr %enable.i, align 8
  %9 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @scorpion_pmu_disable_event, ptr %disable.i, align 4
  %10 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @scorpion_pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %11 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @scorpion_pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %supported_cpus.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 1
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %call.i = tail call i32 @smp_call_function_any(ptr noundef %supported_cpus.i, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %num_events.i, i32 noundef 1) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scorpion_mp_pmu_init(ptr noundef %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv7pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %1 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv7pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %2 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv7pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %3 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv7pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %4 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv7pmu_stop, ptr %stop.i, align 8
  %reset.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 14
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.85, ptr %name, align 4
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %6 = ptrtoint ptr %map_event to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @scorpion_map_event, ptr %map_event, align 8
  %7 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @scorpion_pmu_reset, ptr %reset.i, align 4
  %8 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @scorpion_pmu_enable_event, ptr %enable.i, align 8
  %9 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @scorpion_pmu_disable_event, ptr %disable.i, align 4
  %10 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @scorpion_pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %11 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @scorpion_pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %supported_cpus.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 1
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %call.i = tail call i32 @smp_call_function_any(ptr noundef %supported_cpus.i, ptr noundef nonnull @armv7_read_num_pmnc_events, ptr noundef %num_events.i, i32 noundef 1) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a15_map_event(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @armv7_a15_perf_map, ptr noundef nonnull @armv7_a15_perf_cache_map, i32 noundef 255) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @armv7pmu_set_event_filter(ptr nocapture noundef writeonly %event, ptr nocapture noundef readonly %attr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %exclude_idle = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 6
  %0 = ptrtoint ptr %exclude_idle to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %exclude_idle, align 8
  %1 = and i64 %bf.load, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = lshr i64 %bf.load, 29
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 1073741824
  %5 = lshr i64 %bf.load, 27
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, -2147483648
  %8 = or i32 %7, %4
  %9 = and i64 %bf.load, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool17.not = icmp eq i64 %9, 0
  %or19 = or i32 %8, 134217728
  %config_base.2 = select i1 %tobool17.not, i32 %or19, i32 %8
  %config_base21 = getelementptr inbounds %struct.anon.81, ptr %event, i32 0, i32 2
  %10 = ptrtoint ptr %config_base21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %config_base.2, ptr %config_base21, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a12_map_event(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @armv7_a12_perf_map, ptr noundef nonnull @armv7_a12_perf_cache_map, i32 noundef 255) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a7_map_event(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @armv7_a7_perf_map, ptr noundef nonnull @armv7_a7_perf_cache_map, i32 noundef 255) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv7_a5_map_event(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @armv7_a5_perf_map, ptr noundef nonnull @armv7_a5_perf_cache_map, i32 noundef 255) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_map_event_no_branch(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @krait_perf_map_no_branch, ptr noundef nonnull @krait_perf_cache_map, i32 noundef 1048575) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_map_event(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @krait_perf_map, ptr noundef nonnull @krait_perf_cache_map, i32 noundef 1048575) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @krait_pmu_reset(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_events = getelementptr inbounds %struct.arm_pmu, ptr %info, i32 0, i32 17
  %0 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_events, align 8
  %secure_access.i = getelementptr inbounds %struct.arm_pmu, ptr %info, i32 0, i32 18
  %2 = ptrtoint ptr %secure_access.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %secure_access.i, align 4, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c1, 1", "=r"() #9, !srcloc !263
  %or.i = or i32 %4, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c1, 1", "r"(i32 %or.i) #9, !srcloc !264
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not.i = icmp eq i32 %1, 0
  br i1 %cmp9.not.i, label %if.end.i.armv7pmu_reset.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.armv7pmu_reset.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armv7pmu_reset.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %idx.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %sub.i.i = add i32 %idx.010.i, 31
  %and.i.i = and i32 %sub.i.i, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %shl.i.i) #9, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %shl.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %shl.i.i) #9, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %inc.i = add nuw i32 %idx.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.body.i.armv7pmu_reset.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.armv7pmu_reset.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armv7pmu_reset.exit

armv7pmu_reset.exit:                              ; preds = %for.body.i.armv7pmu_reset.exit_crit_edge, %if.end.i.armv7pmu_reset.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 0", "r"(i32 6) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 0", "r"(i32 0) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 1", "r"(i32 0) #9, !srcloc !266
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 2", "r"(i32 0) #9, !srcloc !267
  %5 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %land.rhs.i, label %armv7pmu_reset.exit.venum_pre_pmresr.exit_crit_edge

armv7pmu_reset.exit.venum_pre_pmresr.exit_crit_edge: ; preds = %armv7pmu_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit

land.rhs.i:                                       ; preds = %armv7pmu_reset.exit
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i4 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4)
  %tobool.not.i5 = icmp eq i32 %and.i.i4, 0
  br i1 %tobool.not.i5, label %do.body15.i, label %land.rhs.i.venum_pre_pmresr.exit_crit_edge, !prof !269

land.rhs.i.venum_pre_pmresr.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit

do.body15.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1385, 0\0A.popsection", ""() #9, !srcloc !270
  unreachable

venum_pre_pmresr.exit:                            ; preds = %land.rhs.i.venum_pre_pmresr.exit_crit_edge, %armv7pmu_reset.exit.venum_pre_pmresr.exit_crit_edge
  %10 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #13, !srcloc !271
  %or24.i = or i32 %10, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %or24.i) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %11 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #13, !srcloc !274
  %or26.i = or i32 %11, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %or26.i) #9, !srcloc !275
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 0) #9, !srcloc !276
  %12 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i6 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i6 to ptr
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i8 = icmp eq i32 %15, 0
  br i1 %cmp.i8, label %land.rhs.i11, label %venum_pre_pmresr.exit.venum_post_pmresr.exit_crit_edge

venum_pre_pmresr.exit.venum_post_pmresr.exit_crit_edge: ; preds = %venum_pre_pmresr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit

land.rhs.i11:                                     ; preds = %venum_pre_pmresr.exit
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i9 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %tobool.not.i10 = icmp eq i32 %and.i.i9, 0
  br i1 %tobool.not.i10, label %do.body15.i12, label %land.rhs.i11.venum_post_pmresr.exit_crit_edge, !prof !269

land.rhs.i11.venum_post_pmresr.exit_crit_edge:    ; preds = %land.rhs.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit

do.body15.i12:                                    ; preds = %land.rhs.i11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1399, 0\0A.popsection", ""() #9, !srcloc !277
  unreachable

venum_post_pmresr.exit:                           ; preds = %land.rhs.i11.venum_post_pmresr.exit_crit_edge, %venum_pre_pmresr.exit.venum_post_pmresr.exit_crit_edge
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %11) #9, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %10) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  br i1 %cmp9.not.i, label %venum_post_pmresr.exit.for.end_crit_edge, label %venum_post_pmresr.exit.for.body_crit_edge

venum_post_pmresr.exit.for.body_crit_edge:        ; preds = %venum_post_pmresr.exit
  br label %for.body

venum_post_pmresr.exit.for.end_crit_edge:         ; preds = %venum_post_pmresr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %venum_post_pmresr.exit.for.body_crit_edge
  %idx.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %venum_post_pmresr.exit.for.body_crit_edge ]
  %sub.i = add i32 %idx.014, 31
  %and.i = and i32 %sub.i, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c15, 0", "r"(i32 0) #9, !srcloc !280
  %inc = add nuw i32 %idx.014, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %venum_post_pmresr.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @krait_pmu_enable_event(ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idx1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx1, align 4
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %13, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #9
  %sub.i = add i32 %1, 31
  %and.i29 = and i32 %sub.i, 31
  %shl.i = shl nuw i32 1, %and.i29
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %shl.i) #9, !srcloc !245
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config_base, align 8
  %and = and i32 %15, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and1.i = and i32 %15, 15
  %shr2.i = lshr i32 %15, 4
  %and3.i = and i32 %shr2.i, 255
  %and4.i = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  %mul.i = shl nuw nsw i32 %and1.i, 3
  %shl.i30 = shl i32 255, %mul.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.critedge.i

if.else.i:                                        ; preds = %if.then
  %shr.i = lshr i32 %15, 12
  %and.i31 = and i32 %shr.i, 15
  %arrayidx.i.i = getelementptr [3 x i32], ptr @krait_get_pmresrn_event.pmresrn_table, i32 0, i32 %and.i31
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.c45.i = add i32 %17, %and1.i
  %and7.c46.i = and i32 %15, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i29) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %add.c45.masked.i = and i32 %add.c45.i, -939523841
  %and.i.i = or i32 %add.c45.masked.i, %and7.c46.i
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %and.i.i) #9, !srcloc !248
  %18 = zext i32 %and.i31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i31, label %do.body.i.i [
    i32 0, label %sw.bb.i48.i
    i32 1, label %sw.bb1.i49.i
    i32 2, label %sw.bb2.i50.i
  ]

do.body.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1345, 0\0A.popsection", ""() #9, !srcloc !281
  unreachable

sw.bb.i48.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 0", "=r"() #9, !srcloc !282
  %neg1764.i = xor i32 %shl.i30, -1
  %and1865.i = and i32 %19, %neg1764.i
  %shl1966.i = shl i32 %and3.i, %mul.i
  %or2067.i = or i32 %shl1966.i, %and1865.i
  %or2168.i = or i32 %or2067.i, -2147483648
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 0", "r"(i32 %or2168.i) #9, !srcloc !265
  br label %if.end

sw.bb1.i49.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 1", "=r"() #9, !srcloc !283
  %neg1772.i = xor i32 %shl.i30, -1
  %and1873.i = and i32 %20, %neg1772.i
  %shl1974.i = shl i32 %and3.i, %mul.i
  %or2075.i = or i32 %shl1974.i, %and1873.i
  %or2176.i = or i32 %or2075.i, -2147483648
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 1", "r"(i32 %or2176.i) #9, !srcloc !266
  br label %if.end

sw.bb2.i50.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 2", "=r"() #9, !srcloc !284
  %neg17.i = xor i32 %shl.i30, -1
  %and18.i = and i32 %21, %neg17.i
  %shl19.i = shl i32 %and3.i, %mul.i
  %or20.i = or i32 %shl19.i, %and18.i
  %or21.i = or i32 %or20.i, -2147483648
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 2", "r"(i32 %or21.i) #9, !srcloc !267
  br label %if.end

if.then9.critedge.i:                              ; preds = %if.then
  %add.c.i = add nuw nsw i32 %and1.i, 216
  %and7.c.i = and i32 %15, -1073741824
  %or.c.i = or i32 %add.c.i, %and7.c.i
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i29) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %or.c.i) #9, !srcloc !248
  %22 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then9.critedge.i.venum_pre_pmresr.exit.i_crit_edge

if.then9.critedge.i.venum_pre_pmresr.exit.i_crit_edge: ; preds = %if.then9.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit.i

land.rhs.i.i:                                     ; preds = %if.then9.critedge.i
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i55.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i55.i, 0
  br i1 %tobool.not.i.i, label %do.body15.i.i, label %land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge, !prof !269

land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit.i

do.body15.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1385, 0\0A.popsection", ""() #9, !srcloc !270
  unreachable

venum_pre_pmresr.exit.i:                          ; preds = %land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge, %if.then9.critedge.i.venum_pre_pmresr.exit.i_crit_edge
  %27 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #13, !srcloc !271
  %or24.i.i = or i32 %27, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %or24.i.i) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %28 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #13, !srcloc !274
  %or26.i.i = or i32 %28, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %or26.i.i) #9, !srcloc !275
  %29 = tail call i32 asm sideeffect "mrc p10, 7, $0, c11, c0, 0", "=r"() #9, !srcloc !285
  %neg.i = xor i32 %shl.i30, -1
  %and11.i = and i32 %29, %neg.i
  %shl12.i = shl i32 %and3.i, %mul.i
  %or13.i = or i32 %shl12.i, %and11.i
  %or14.i = or i32 %or13.i, -2147483648
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 %or14.i) #9, !srcloc !276
  %30 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i56.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i56.i to ptr
  %preempt_count.i.i57.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i58.i = icmp eq i32 %33, 0
  br i1 %cmp.i58.i, label %land.rhs.i61.i, label %venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge

venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge: ; preds = %venum_pre_pmresr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit.i

land.rhs.i61.i:                                   ; preds = %venum_pre_pmresr.exit.i
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i59.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59.i)
  %tobool.not.i60.i = icmp eq i32 %and.i.i59.i, 0
  br i1 %tobool.not.i60.i, label %do.body15.i62.i, label %land.rhs.i61.i.venum_post_pmresr.exit.i_crit_edge, !prof !269

land.rhs.i61.i.venum_post_pmresr.exit.i_crit_edge: ; preds = %land.rhs.i61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit.i

do.body15.i62.i:                                  ; preds = %land.rhs.i61.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1399, 0\0A.popsection", ""() #9, !srcloc !277
  unreachable

venum_post_pmresr.exit.i:                         ; preds = %land.rhs.i61.i.venum_post_pmresr.exit.i_crit_edge, %venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %28) #9, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %27) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i29) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %and.i33 = and i32 %15, -939523841
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %and.i33) #9, !srcloc !248
  br label %if.end

if.end:                                           ; preds = %if.else, %venum_post_pmresr.exit.i, %sw.bb2.i50.i, %sw.bb1.i49.i, %sw.bb.i48.i
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 1", "r"(i32 %shl.i) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 1", "r"(i32 %shl.i) #9, !srcloc !250
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @krait_pmu_disable_event(ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idx1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx1, align 4
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %13, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #9
  %sub.i = add i32 %1, 31
  %and.i24 = and i32 %sub.i, 31
  %shl.i = shl nuw i32 1, %and.i24
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %shl.i) #9, !srcloc !245
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config_base, align 8
  %and = and i32 %15, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %and1.i = and i32 %15, 15
  %and2.i = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %16 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then.i.venum_pre_pmresr.exit.i_crit_edge

if.then.i.venum_pre_pmresr.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body15.i.i, label %land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge, !prof !269

land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit.i

do.body15.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1385, 0\0A.popsection", ""() #9, !srcloc !270
  unreachable

venum_pre_pmresr.exit.i:                          ; preds = %land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge, %if.then.i.venum_pre_pmresr.exit.i_crit_edge
  %21 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #13, !srcloc !271
  %or24.i.i = or i32 %21, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %or24.i.i) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %22 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #13, !srcloc !274
  %or26.i.i = or i32 %22, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %or26.i.i) #9, !srcloc !275
  %23 = tail call i32 asm sideeffect "mrc p10, 7, $0, c11, c0, 0", "=r"() #9, !srcloc !285
  %mul.i.i = shl nuw nsw i32 %and1.i, 3
  %shl.i.i = shl i32 255, %mul.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %23, %neg.i.i
  %and1.i.i = and i32 %and.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i15.i = icmp eq i32 %and1.i.i, 0
  %or.i.i = or i32 %and.i.i, -2147483648
  %retval.0.i.i = select i1 %tobool.not.i15.i, i32 0, i32 %or.i.i
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 %retval.0.i.i) #9, !srcloc !276
  %24 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i16.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i16.i to ptr
  %preempt_count.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i18.i = icmp eq i32 %27, 0
  br i1 %cmp.i18.i, label %land.rhs.i21.i, label %venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge

venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge: ; preds = %venum_pre_pmresr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit.i

land.rhs.i21.i:                                   ; preds = %venum_pre_pmresr.exit.i
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i19.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19.i)
  %tobool.not.i20.i = icmp eq i32 %and.i.i19.i, 0
  br i1 %tobool.not.i20.i, label %do.body15.i22.i, label %land.rhs.i21.i.venum_post_pmresr.exit.i_crit_edge, !prof !269

land.rhs.i21.i.venum_post_pmresr.exit.i_crit_edge: ; preds = %land.rhs.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit.i

do.body15.i22.i:                                  ; preds = %land.rhs.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1399, 0\0A.popsection", ""() #9, !srcloc !277
  unreachable

venum_post_pmresr.exit.i:                         ; preds = %land.rhs.i21.i.venum_post_pmresr.exit.i_crit_edge, %venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %22) #9, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %21) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  br label %if.end

if.else.i:                                        ; preds = %if.then
  %shr.i = lshr i32 %15, 12
  %and.i25 = and i32 %shr.i, 15
  %29 = zext i32 %and.i25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %and.i25, label %do.body.i.i [
    i32 0, label %sw.bb.i31.i
    i32 1, label %sw.bb1.i32.i
    i32 2, label %sw.bb2.i33.i
  ]

do.body.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1345, 0\0A.popsection", ""() #9, !srcloc !281
  unreachable

sw.bb.i31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 0", "=r"() #9, !srcloc !282
  %mul.i2336.i = shl nuw nsw i32 %and1.i, 3
  %shl.i2437.i = shl i32 255, %mul.i2336.i
  %neg.i2538.i = xor i32 %shl.i2437.i, -1
  %and.i2639.i = and i32 %30, %neg.i2538.i
  %and1.i2740.i = and i32 %and.i2639.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i2740.i)
  %tobool.not.i2841.i = icmp eq i32 %and1.i2740.i, 0
  %or.i2942.i = or i32 %and.i2639.i, -2147483648
  %retval.0.i3043.i = select i1 %tobool.not.i2841.i, i32 0, i32 %or.i2942.i
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 0", "r"(i32 %retval.0.i3043.i) #9, !srcloc !265
  br label %if.end

sw.bb1.i32.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 1", "=r"() #9, !srcloc !283
  %mul.i2347.i = shl nuw nsw i32 %and1.i, 3
  %shl.i2448.i = shl i32 255, %mul.i2347.i
  %neg.i2549.i = xor i32 %shl.i2448.i, -1
  %and.i2650.i = and i32 %31, %neg.i2549.i
  %and1.i2751.i = and i32 %and.i2650.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i2751.i)
  %tobool.not.i2852.i = icmp eq i32 %and1.i2751.i, 0
  %or.i2953.i = or i32 %and.i2650.i, -2147483648
  %retval.0.i3054.i = select i1 %tobool.not.i2852.i, i32 0, i32 %or.i2953.i
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 1", "r"(i32 %retval.0.i3054.i) #9, !srcloc !266
  br label %if.end

sw.bb2.i33.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = tail call i32 asm sideeffect "mrc p15, 1, $0, c9, c15, 2", "=r"() #9, !srcloc !284
  %mul.i23.i = shl nuw nsw i32 %and1.i, 3
  %shl.i24.i = shl i32 255, %mul.i23.i
  %neg.i25.i = xor i32 %shl.i24.i, -1
  %and.i26.i = and i32 %32, %neg.i25.i
  %and1.i27.i = and i32 %and.i26.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i27.i)
  %tobool.not.i28.i = icmp eq i32 %and1.i27.i, 0
  %or.i29.i = or i32 %and.i26.i, -2147483648
  %retval.0.i30.i = select i1 %tobool.not.i28.i, i32 0, i32 %or.i29.i
  tail call void asm sideeffect "mcr p15, 1, $0, c9, c15, 2", "r"(i32 %retval.0.i30.i) #9, !srcloc !267
  br label %if.end

if.end:                                           ; preds = %sw.bb2.i33.i, %sw.bb1.i32.i, %sw.bb.i31.i, %venum_post_pmresr.exit.i, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %shl.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %shl.i) #9, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @krait_pmu_get_event_idx(ptr noundef %cpuc, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_base, align 8
  %shr = lshr i32 %1, 12
  %and = and i32 %shr, 15
  %and5 = and i32 %1, 15
  %and7 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  %2 = and i32 %1, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and5)
  %cmp = icmp ugt i32 %and5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp18 = icmp ugt i32 %and, 2
  %or.cond59 = select i1 %cmp, i1 true, i1 %cmp18
  br i1 %or.cond59, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = and i32 %1, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool22.not = icmp eq i32 %4, 0
  %or.cond60 = or i1 %tobool.not, %tobool22.not
  br i1 %or.cond60, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %5 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmu.i, align 8
  br i1 %tobool.not, label %if.else.i, label %if.end24.krait_event_to_bit.exit_crit_edge

if.end24.krait_event_to_bit.exit_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %krait_event_to_bit.exit

if.else.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [3 x i32], ptr @krait_get_pmresrn_event.pmresrn_table, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = add i32 %8, -204
  br label %krait_event_to_bit.exit

krait_event_to_bit.exit:                          ; preds = %if.else.i, %if.end24.krait_event_to_bit.exit_crit_edge
  %bit.0.i = phi i32 [ %phi.bo.i, %if.else.i ], [ 12, %if.end24.krait_event_to_bit.exit_crit_edge ]
  %add.i = add i32 %bit.0.i, %and5
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %6, i32 0, i32 17
  %9 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_events.i, align 8
  %add5.i = add i32 %add.i, %10
  %used_mask = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  %call25 = tail call i32 @_test_and_set_bit(i32 noundef %add5.i, ptr noundef %used_mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %krait_event_to_bit.exit.if.end29_crit_edge, label %krait_event_to_bit.exit.cleanup_crit_edge

krait_event_to_bit.exit.cleanup_crit_edge:        ; preds = %krait_event_to_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

krait_event_to_bit.exit.if.end29_crit_edge:       ; preds = %krait_event_to_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end29:                                         ; preds = %krait_event_to_bit.exit.if.end29_crit_edge, %entry.if.end29_crit_edge
  %bit.0 = phi i32 [ %add5.i, %krait_event_to_bit.exit.if.end29_crit_edge ], [ -1, %entry.if.end29_crit_edge ]
  %11 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %config_base, align 8
  %and.i63 = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i63)
  %cmp.i = icmp eq i32 %and.i63, 255
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end29
  %pmu.i64 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %13 = ptrtoint ptr %pmu.i64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pmu.i64, align 8
  %used_mask4.i = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  %num_events.i65 = getelementptr inbounds %struct.arm_pmu, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %num_events.i65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_events.i65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp318.i = icmp sgt i32 %16, 1
  br i1 %cmp318.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.armv7pmu_get_event_idx.exit_crit_edge

for.cond.preheader.i.armv7pmu_get_event_idx.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armv7pmu_get_event_idx.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %used_mask.i = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %used_mask.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i66 = icmp eq i32 %call.i, 0
  %..i = select i1 %tobool.not.i66, i32 0, i32 -11
  br label %armv7pmu_get_event_idx.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %idx.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call6.i = tail call i32 @_test_and_set_bit(i32 noundef %idx.019.i, ptr noundef %used_mask4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.body.i.cleanup_crit_edge, label %for.inc.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.019.i, 1
  %17 = ptrtoint ptr %num_events.i65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_events.i65, align 8
  %cmp3.i = icmp slt i32 %inc.i, %18
  br i1 %cmp3.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.armv7pmu_get_event_idx.exit_crit_edge

for.inc.i.armv7pmu_get_event_idx.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armv7pmu_get_event_idx.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

armv7pmu_get_event_idx.exit:                      ; preds = %for.inc.i.armv7pmu_get_event_idx.exit_crit_edge, %if.then.i, %for.cond.preheader.i.armv7pmu_get_event_idx.exit_crit_edge
  %retval.0.i = phi i32 [ %..i, %if.then.i ], [ -11, %for.cond.preheader.i.armv7pmu_get_event_idx.exit_crit_edge ], [ -11, %for.inc.i.armv7pmu_get_event_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp31 = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bit.0)
  %cmp33 = icmp sgt i32 %bit.0, -1
  %or.cond61 = and i1 %cmp33, %cmp31
  br i1 %or.cond61, label %if.then34, label %armv7pmu_get_event_idx.exit.cleanup_crit_edge

armv7pmu_get_event_idx.exit.cleanup_crit_edge:    ; preds = %armv7pmu_get_event_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %armv7pmu_get_event_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %used_mask35 = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %bit.0, ptr noundef %used_mask35) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %armv7pmu_get_event_idx.exit.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %krait_event_to_bit.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -11, %krait_event_to_bit.exit.cleanup_crit_edge ], [ %retval.0.i, %if.then34 ], [ %retval.0.i, %armv7pmu_get_event_idx.exit.cleanup_crit_edge ], [ %idx.019.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @krait_pmu_clear_event_idx(ptr noundef %cpuc, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_base, align 8
  %shr = lshr i32 %1, 12
  %and = and i32 %shr, 15
  %and2 = and i32 %1, 15
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx.i, align 4
  %used_mask.i = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %used_mask.i) #9
  %4 = and i32 %1, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %6 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmu.i, align 8
  %8 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base, align 8
  %and.i = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.krait_event_to_bit.exit_crit_edge

if.then.krait_event_to_bit.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %krait_event_to_bit.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [3 x i32], ptr @krait_get_pmresrn_event.pmresrn_table, i32 0, i32 %and
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = add i32 %11, -204
  br label %krait_event_to_bit.exit

krait_event_to_bit.exit:                          ; preds = %if.else.i, %if.then.krait_event_to_bit.exit_crit_edge
  %bit.0.i = phi i32 [ %phi.bo.i, %if.else.i ], [ 12, %if.then.krait_event_to_bit.exit_crit_edge ]
  %add.i = add i32 %bit.0.i, %and2
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_events.i, align 8
  %add5.i = add i32 %add.i, %13
  tail call void @_clear_bit(i32 noundef %add5.i, ptr noundef %used_mask.i) #9
  br label %if.end

if.end:                                           ; preds = %krait_event_to_bit.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scorpion_map_event(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @scorpion_perf_map, ptr noundef nonnull @scorpion_perf_cache_map, i32 noundef 1048575) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scorpion_pmu_reset(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_events = getelementptr inbounds %struct.arm_pmu, ptr %info, i32 0, i32 17
  %0 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_events, align 8
  %secure_access.i = getelementptr inbounds %struct.arm_pmu, ptr %info, i32 0, i32 18
  %2 = ptrtoint ptr %secure_access.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %secure_access.i, align 4, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c1, 1", "=r"() #9, !srcloc !263
  %or.i = or i32 %4, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c1, 1", "r"(i32 %or.i) #9, !srcloc !264
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not.i = icmp eq i32 %1, 0
  br i1 %cmp9.not.i, label %if.end.i.armv7pmu_reset.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.armv7pmu_reset.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armv7pmu_reset.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %idx.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %sub.i.i = add i32 %idx.010.i, 31
  %and.i.i = and i32 %sub.i.i, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %shl.i.i) #9, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %shl.i.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %shl.i.i) #9, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %inc.i = add nuw i32 %idx.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.body.i.armv7pmu_reset.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.armv7pmu_reset.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armv7pmu_reset.exit

armv7pmu_reset.exit:                              ; preds = %for.body.i.armv7pmu_reset.exit_crit_edge, %if.end.i.armv7pmu_reset.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 0", "r"(i32 6) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r"(i32 0) #9, !srcloc !286
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c0, 0", "r"(i32 0) #9, !srcloc !287
  tail call void asm sideeffect "mcr p15, 2, $0, c15, c0, 0", "r"(i32 0) #9, !srcloc !288
  tail call void asm sideeffect "mcr p15, 3, $0, c15, c2, 0", "r"(i32 0) #9, !srcloc !289
  %5 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %land.rhs.i, label %armv7pmu_reset.exit.venum_pre_pmresr.exit_crit_edge

armv7pmu_reset.exit.venum_pre_pmresr.exit_crit_edge: ; preds = %armv7pmu_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit

land.rhs.i:                                       ; preds = %armv7pmu_reset.exit
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i4 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4)
  %tobool.not.i5 = icmp eq i32 %and.i.i4, 0
  br i1 %tobool.not.i5, label %do.body15.i, label %land.rhs.i.venum_pre_pmresr.exit_crit_edge, !prof !269

land.rhs.i.venum_pre_pmresr.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit

do.body15.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1385, 0\0A.popsection", ""() #9, !srcloc !270
  unreachable

venum_pre_pmresr.exit:                            ; preds = %land.rhs.i.venum_pre_pmresr.exit_crit_edge, %armv7pmu_reset.exit.venum_pre_pmresr.exit_crit_edge
  %10 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #13, !srcloc !271
  %or24.i = or i32 %10, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %or24.i) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %11 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #13, !srcloc !274
  %or26.i = or i32 %11, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %or26.i) #9, !srcloc !275
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 0) #9, !srcloc !276
  %12 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i6 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i6 to ptr
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i8 = icmp eq i32 %15, 0
  br i1 %cmp.i8, label %land.rhs.i11, label %venum_pre_pmresr.exit.venum_post_pmresr.exit_crit_edge

venum_pre_pmresr.exit.venum_post_pmresr.exit_crit_edge: ; preds = %venum_pre_pmresr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit

land.rhs.i11:                                     ; preds = %venum_pre_pmresr.exit
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i9 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %tobool.not.i10 = icmp eq i32 %and.i.i9, 0
  br i1 %tobool.not.i10, label %do.body15.i12, label %land.rhs.i11.venum_post_pmresr.exit_crit_edge, !prof !269

land.rhs.i11.venum_post_pmresr.exit_crit_edge:    ; preds = %land.rhs.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit

do.body15.i12:                                    ; preds = %land.rhs.i11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1399, 0\0A.popsection", ""() #9, !srcloc !277
  unreachable

venum_post_pmresr.exit:                           ; preds = %land.rhs.i11.venum_post_pmresr.exit_crit_edge, %venum_pre_pmresr.exit.venum_post_pmresr.exit_crit_edge
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %11) #9, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %10) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  br i1 %cmp9.not.i, label %venum_post_pmresr.exit.for.end_crit_edge, label %venum_post_pmresr.exit.for.body_crit_edge

venum_post_pmresr.exit.for.body_crit_edge:        ; preds = %venum_post_pmresr.exit
  br label %for.body

venum_post_pmresr.exit.for.end_crit_edge:         ; preds = %venum_post_pmresr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %venum_post_pmresr.exit.for.body_crit_edge
  %idx.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %venum_post_pmresr.exit.for.body_crit_edge ]
  %sub.i = add i32 %idx.014, 31
  %and.i = and i32 %sub.i, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c15, 0", "r"(i32 0) #9, !srcloc !290
  %inc = add nuw i32 %idx.014, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %venum_post_pmresr.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scorpion_pmu_enable_event(ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idx1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx1, align 4
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %13, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #9
  %sub.i = add i32 %1, 31
  %and.i34 = and i32 %sub.i, 31
  %shl.i = shl nuw i32 1, %and.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %shl.i) #9, !srcloc !245
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config_base, align 8
  %and = and i32 %15, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and1.i = and i32 %15, 15
  %shr2.i = lshr i32 %15, 4
  %and3.i = and i32 %shr2.i, 255
  %and4.i = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  %mul.i = shl nuw nsw i32 %and1.i, 3
  %shl.i35 = shl i32 255, %mul.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.critedge.i

if.else.i:                                        ; preds = %if.then
  %shr.i = lshr i32 %15, 12
  %and.i36 = and i32 %shr.i, 15
  %arrayidx.i.i = getelementptr [4 x i32], ptr @scorpion_get_pmresrn_event.pmresrn_table, i32 0, i32 %and.i36
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.c45.i = add i32 %17, %and1.i
  %and7.c46.i = and i32 %15, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i34) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %add.c45.masked.i = and i32 %add.c45.i, -939523841
  %and.i.i = or i32 %add.c45.masked.i, %and7.c46.i
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %and.i.i) #9, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c15, 0", "r"(i32 0) #9, !srcloc !291
  %18 = zext i32 %and.i36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %and.i36, label %do.body.i.i [
    i32 0, label %sw.bb.i48.i
    i32 1, label %sw.bb1.i49.i
    i32 2, label %sw.bb2.i50.i
    i32 3, label %sw.bb3.i51.i
  ]

do.body.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1727, 0\0A.popsection", ""() #9, !srcloc !292
  unreachable

sw.bb.i48.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call i32 asm sideeffect "mrc p15, 0, $0, c15, c0, 0", "=r"() #9, !srcloc !293
  %neg1765.i = xor i32 %shl.i35, -1
  %and1866.i = and i32 %19, %neg1765.i
  %shl1967.i = shl i32 %and3.i, %mul.i
  %or2068.i = or i32 %shl1967.i, %and1866.i
  %or2169.i = or i32 %or2068.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r"(i32 %or2169.i) #9, !srcloc !286
  br label %if.end14

sw.bb1.i49.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 asm sideeffect "mrc p15, 1, $0, c15, c0, 0", "=r"() #9, !srcloc !294
  %neg1773.i = xor i32 %shl.i35, -1
  %and1874.i = and i32 %20, %neg1773.i
  %shl1975.i = shl i32 %and3.i, %mul.i
  %or2076.i = or i32 %shl1975.i, %and1874.i
  %or2177.i = or i32 %or2076.i, -2147483648
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c0, 0", "r"(i32 %or2177.i) #9, !srcloc !287
  br label %if.end14

sw.bb2.i50.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = tail call i32 asm sideeffect "mrc p15, 2, $0, c15, c0, 0", "=r"() #9, !srcloc !295
  %neg1781.i = xor i32 %shl.i35, -1
  %and1882.i = and i32 %21, %neg1781.i
  %shl1983.i = shl i32 %and3.i, %mul.i
  %or2084.i = or i32 %shl1983.i, %and1882.i
  %or2185.i = or i32 %or2084.i, -2147483648
  tail call void asm sideeffect "mcr p15, 2, $0, c15, c0, 0", "r"(i32 %or2185.i) #9, !srcloc !288
  br label %if.end14

sw.bb3.i51.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call i32 asm sideeffect "mrc p15, 3, $0, c15, c2, 0", "=r"() #9, !srcloc !296
  %neg17.i = xor i32 %shl.i35, -1
  %and18.i = and i32 %22, %neg17.i
  %shl19.i = shl i32 %and3.i, %mul.i
  %or20.i = or i32 %shl19.i, %and18.i
  %or21.i = or i32 %or20.i, -2147483648
  tail call void asm sideeffect "mcr p15, 3, $0, c15, c2, 0", "r"(i32 %or21.i) #9, !srcloc !289
  br label %if.end14

if.then9.critedge.i:                              ; preds = %if.then
  %add.c.i = add nuw nsw i32 %and1.i, 92
  %and7.c.i = and i32 %15, -1073741824
  %or.c.i = or i32 %add.c.i, %and7.c.i
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i34) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %or.c.i) #9, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c15, 0", "r"(i32 0) #9, !srcloc !291
  %23 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then9.critedge.i.venum_pre_pmresr.exit.i_crit_edge

if.then9.critedge.i.venum_pre_pmresr.exit.i_crit_edge: ; preds = %if.then9.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit.i

land.rhs.i.i:                                     ; preds = %if.then9.critedge.i
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i56.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i56.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i56.i, 0
  br i1 %tobool.not.i.i, label %do.body15.i.i, label %land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge, !prof !269

land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit.i

do.body15.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1385, 0\0A.popsection", ""() #9, !srcloc !270
  unreachable

venum_pre_pmresr.exit.i:                          ; preds = %land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge, %if.then9.critedge.i.venum_pre_pmresr.exit.i_crit_edge
  %28 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #13, !srcloc !271
  %or24.i.i = or i32 %28, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %or24.i.i) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %29 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #13, !srcloc !274
  %or26.i.i = or i32 %29, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %or26.i.i) #9, !srcloc !275
  %30 = tail call i32 asm sideeffect "mrc p10, 7, $0, c11, c0, 0", "=r"() #9, !srcloc !285
  %neg.i = xor i32 %shl.i35, -1
  %and11.i = and i32 %30, %neg.i
  %shl12.i = shl i32 %and3.i, %mul.i
  %or13.i = or i32 %shl12.i, %and11.i
  %or14.i = or i32 %or13.i, -2147483648
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 %or14.i) #9, !srcloc !276
  %31 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i57.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i57.i to ptr
  %preempt_count.i.i58.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i59.i = icmp eq i32 %34, 0
  br i1 %cmp.i59.i, label %land.rhs.i62.i, label %venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge

venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge: ; preds = %venum_pre_pmresr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit.i

land.rhs.i62.i:                                   ; preds = %venum_pre_pmresr.exit.i
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i60.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i60.i)
  %tobool.not.i61.i = icmp eq i32 %and.i.i60.i, 0
  br i1 %tobool.not.i61.i, label %do.body15.i63.i, label %land.rhs.i62.i.venum_post_pmresr.exit.i_crit_edge, !prof !269

land.rhs.i62.i.venum_post_pmresr.exit.i_crit_edge: ; preds = %land.rhs.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit.i

do.body15.i63.i:                                  ; preds = %land.rhs.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1399, 0\0A.popsection", ""() #9, !srcloc !277
  unreachable

venum_post_pmresr.exit.i:                         ; preds = %land.rhs.i62.i.venum_post_pmresr.exit.i_crit_edge, %venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %29) #9, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %28) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %if.else.if.end14_crit_edge, label %if.then12

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 5", "r"(i32 %and.i34) #9, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %and.i38 = and i32 %15, -939523841
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c13, 1", "r"(i32 %and.i38) #9, !srcloc !248
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else.if.end14_crit_edge, %venum_post_pmresr.exit.i, %sw.bb3.i51.i, %sw.bb2.i50.i, %sw.bb1.i49.i, %sw.bb.i48.i
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 1", "r"(i32 %shl.i) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 1", "r"(i32 %shl.i) #9, !srcloc !250
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scorpion_pmu_disable_event(ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idx1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx1, align 4
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %13, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #9
  %sub.i = add i32 %1, 31
  %and.i24 = and i32 %sub.i, 31
  %shl.i = shl nuw i32 1, %and.i24
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 2", "r"(i32 %shl.i) #9, !srcloc !245
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config_base, align 8
  %and = and i32 %15, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %and1.i = and i32 %15, 15
  %and2.i = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %16 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then.i.venum_pre_pmresr.exit.i_crit_edge

if.then.i.venum_pre_pmresr.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body15.i.i, label %land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge, !prof !269

land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_pre_pmresr.exit.i

do.body15.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1385, 0\0A.popsection", ""() #9, !srcloc !270
  unreachable

venum_pre_pmresr.exit.i:                          ; preds = %land.rhs.i.i.venum_pre_pmresr.exit.i_crit_edge, %if.then.i.venum_pre_pmresr.exit.i_crit_edge
  %21 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #13, !srcloc !271
  %or24.i.i = or i32 %21, 5242880
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %or24.i.i) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %22 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #13, !srcloc !274
  %or26.i.i = or i32 %22, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %or26.i.i) #9, !srcloc !275
  %23 = tail call i32 asm sideeffect "mrc p10, 7, $0, c11, c0, 0", "=r"() #9, !srcloc !285
  %mul.i.i = shl nuw nsw i32 %and1.i, 3
  %shl.i.i = shl i32 255, %mul.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %23, %neg.i.i
  %and1.i.i = and i32 %and.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i15.i = icmp eq i32 %and1.i.i, 0
  %or.i.i = or i32 %and.i.i, -2147483648
  %retval.0.i.i = select i1 %tobool.not.i15.i, i32 0, i32 %or.i.i
  tail call void asm sideeffect "mcr p10, 7, $0, c11, c0, 0", "r"(i32 %retval.0.i.i) #9, !srcloc !276
  %24 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i16.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i16.i to ptr
  %preempt_count.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i18.i = icmp eq i32 %27, 0
  br i1 %cmp.i18.i, label %land.rhs.i21.i, label %venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge

venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge: ; preds = %venum_pre_pmresr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit.i

land.rhs.i21.i:                                   ; preds = %venum_pre_pmresr.exit.i
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !268
  %and.i.i19.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19.i)
  %tobool.not.i20.i = icmp eq i32 %and.i.i19.i, 0
  br i1 %tobool.not.i20.i, label %do.body15.i22.i, label %land.rhs.i21.i.venum_post_pmresr.exit.i_crit_edge, !prof !269

land.rhs.i21.i.venum_post_pmresr.exit.i_crit_edge: ; preds = %land.rhs.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %venum_post_pmresr.exit.i

do.body15.i22.i:                                  ; preds = %land.rhs.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1399, 0\0A.popsection", ""() #9, !srcloc !277
  unreachable

venum_post_pmresr.exit.i:                         ; preds = %land.rhs.i21.i.venum_post_pmresr.exit.i_crit_edge, %venum_pre_pmresr.exit.i.venum_post_pmresr.exit.i_crit_edge
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %22) #9, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %21) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  br label %if.end

if.else.i:                                        ; preds = %if.then
  %shr.i = lshr i32 %15, 12
  %and.i25 = and i32 %shr.i, 15
  %29 = zext i32 %and.i25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %and.i25, label %do.body.i.i [
    i32 0, label %sw.bb.i31.i
    i32 1, label %sw.bb1.i32.i
    i32 2, label %sw.bb2.i33.i
    i32 3, label %sw.bb3.i34.i
  ]

do.body.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/perf_event_v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1727, 0\0A.popsection", ""() #9, !srcloc !292
  unreachable

sw.bb.i31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 asm sideeffect "mrc p15, 0, $0, c15, c0, 0", "=r"() #9, !srcloc !293
  %mul.i2337.i = shl nuw nsw i32 %and1.i, 3
  %shl.i2438.i = shl i32 255, %mul.i2337.i
  %neg.i2539.i = xor i32 %shl.i2438.i, -1
  %and.i2640.i = and i32 %30, %neg.i2539.i
  %and1.i2741.i = and i32 %and.i2640.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i2741.i)
  %tobool.not.i2842.i = icmp eq i32 %and1.i2741.i, 0
  %or.i2943.i = or i32 %and.i2640.i, -2147483648
  %retval.0.i3044.i = select i1 %tobool.not.i2842.i, i32 0, i32 %or.i2943.i
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r"(i32 %retval.0.i3044.i) #9, !srcloc !286
  br label %if.end

sw.bb1.i32.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = tail call i32 asm sideeffect "mrc p15, 1, $0, c15, c0, 0", "=r"() #9, !srcloc !294
  %mul.i2348.i = shl nuw nsw i32 %and1.i, 3
  %shl.i2449.i = shl i32 255, %mul.i2348.i
  %neg.i2550.i = xor i32 %shl.i2449.i, -1
  %and.i2651.i = and i32 %31, %neg.i2550.i
  %and1.i2752.i = and i32 %and.i2651.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i2752.i)
  %tobool.not.i2853.i = icmp eq i32 %and1.i2752.i, 0
  %or.i2954.i = or i32 %and.i2651.i, -2147483648
  %retval.0.i3055.i = select i1 %tobool.not.i2853.i, i32 0, i32 %or.i2954.i
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c0, 0", "r"(i32 %retval.0.i3055.i) #9, !srcloc !287
  br label %if.end

sw.bb2.i33.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = tail call i32 asm sideeffect "mrc p15, 2, $0, c15, c0, 0", "=r"() #9, !srcloc !295
  %mul.i2359.i = shl nuw nsw i32 %and1.i, 3
  %shl.i2460.i = shl i32 255, %mul.i2359.i
  %neg.i2561.i = xor i32 %shl.i2460.i, -1
  %and.i2662.i = and i32 %32, %neg.i2561.i
  %and1.i2763.i = and i32 %and.i2662.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i2763.i)
  %tobool.not.i2864.i = icmp eq i32 %and1.i2763.i, 0
  %or.i2965.i = or i32 %and.i2662.i, -2147483648
  %retval.0.i3066.i = select i1 %tobool.not.i2864.i, i32 0, i32 %or.i2965.i
  tail call void asm sideeffect "mcr p15, 2, $0, c15, c0, 0", "r"(i32 %retval.0.i3066.i) #9, !srcloc !288
  br label %if.end

sw.bb3.i34.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = tail call i32 asm sideeffect "mrc p15, 3, $0, c15, c2, 0", "=r"() #9, !srcloc !296
  %mul.i23.i = shl nuw nsw i32 %and1.i, 3
  %shl.i24.i = shl i32 255, %mul.i23.i
  %neg.i25.i = xor i32 %shl.i24.i, -1
  %and.i26.i = and i32 %33, %neg.i25.i
  %and1.i27.i = and i32 %and.i26.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i27.i)
  %tobool.not.i28.i = icmp eq i32 %and1.i27.i, 0
  %or.i29.i = or i32 %and.i26.i, -2147483648
  %retval.0.i30.i = select i1 %tobool.not.i28.i, i32 0, i32 %or.i29.i
  tail call void asm sideeffect "mcr p15, 3, $0, c15, c2, 0", "r"(i32 %retval.0.i30.i) #9, !srcloc !289
  br label %if.end

if.end:                                           ; preds = %sw.bb3.i34.i, %sw.bb2.i33.i, %sw.bb1.i32.i, %sw.bb.i31.i, %venum_post_pmresr.exit.i, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c14, 2", "r"(i32 %shl.i) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c9, c12, 3", "r"(i32 %shl.i) #9, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scorpion_pmu_get_event_idx(ptr noundef %cpuc, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_base, align 8
  %shr = lshr i32 %1, 12
  %and = and i32 %shr, 15
  %and2 = and i32 %1, 15
  %and4 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %2 = and i32 %1, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp = icmp ugt i32 %and2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp15 = icmp ugt i32 %and, 3
  %or.cond47 = select i1 %cmp, i1 true, i1 %cmp15
  br i1 %or.cond47, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %4 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu.i, align 8
  br i1 %tobool.not, label %if.else.i, label %if.end.scorpion_event_to_bit.exit_crit_edge

if.end.scorpion_event_to_bit.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %scorpion_event_to_bit.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [4 x i32], ptr @scorpion_get_pmresrn_event.pmresrn_table, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = add i32 %7, -76
  br label %scorpion_event_to_bit.exit

scorpion_event_to_bit.exit:                       ; preds = %if.else.i, %if.end.scorpion_event_to_bit.exit_crit_edge
  %bit.0.i = phi i32 [ %phi.bo.i, %if.else.i ], [ 16, %if.end.scorpion_event_to_bit.exit_crit_edge ]
  %add.i = add i32 %bit.0.i, %and2
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %5, i32 0, i32 17
  %8 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_events.i, align 8
  %add5.i = add i32 %add.i, %9
  %used_mask = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  %call17 = tail call i32 @_test_and_set_bit(i32 noundef %add5.i, ptr noundef %used_mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %scorpion_event_to_bit.exit.if.end21_crit_edge, label %scorpion_event_to_bit.exit.cleanup_crit_edge

scorpion_event_to_bit.exit.cleanup_crit_edge:     ; preds = %scorpion_event_to_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

scorpion_event_to_bit.exit.if.end21_crit_edge:    ; preds = %scorpion_event_to_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end21:                                         ; preds = %scorpion_event_to_bit.exit.if.end21_crit_edge, %entry.if.end21_crit_edge
  %bit.0 = phi i32 [ %add5.i, %scorpion_event_to_bit.exit.if.end21_crit_edge ], [ -1, %entry.if.end21_crit_edge ]
  %10 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config_base, align 8
  %and.i50 = and i32 %11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i50)
  %cmp.i = icmp eq i32 %and.i50, 255
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end21
  %pmu.i51 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %12 = ptrtoint ptr %pmu.i51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pmu.i51, align 8
  %used_mask4.i = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  %num_events.i52 = getelementptr inbounds %struct.arm_pmu, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %num_events.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_events.i52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp318.i = icmp sgt i32 %15, 1
  br i1 %cmp318.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.armv7pmu_get_event_idx.exit_crit_edge

for.cond.preheader.i.armv7pmu_get_event_idx.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armv7pmu_get_event_idx.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %used_mask.i = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %used_mask.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i53 = icmp eq i32 %call.i, 0
  %..i = select i1 %tobool.not.i53, i32 0, i32 -11
  br label %armv7pmu_get_event_idx.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %idx.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call6.i = tail call i32 @_test_and_set_bit(i32 noundef %idx.019.i, ptr noundef %used_mask4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.body.i.cleanup_crit_edge, label %for.inc.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.019.i, 1
  %16 = ptrtoint ptr %num_events.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_events.i52, align 8
  %cmp3.i = icmp slt i32 %inc.i, %17
  br i1 %cmp3.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.armv7pmu_get_event_idx.exit_crit_edge

for.inc.i.armv7pmu_get_event_idx.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armv7pmu_get_event_idx.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

armv7pmu_get_event_idx.exit:                      ; preds = %for.inc.i.armv7pmu_get_event_idx.exit_crit_edge, %if.then.i, %for.cond.preheader.i.armv7pmu_get_event_idx.exit_crit_edge
  %retval.0.i = phi i32 [ %..i, %if.then.i ], [ -11, %for.cond.preheader.i.armv7pmu_get_event_idx.exit_crit_edge ], [ -11, %for.inc.i.armv7pmu_get_event_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp23 = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bit.0)
  %cmp24 = icmp sgt i32 %bit.0, -1
  %or.cond48 = and i1 %cmp24, %cmp23
  br i1 %or.cond48, label %if.then25, label %armv7pmu_get_event_idx.exit.cleanup_crit_edge

armv7pmu_get_event_idx.exit.cleanup_crit_edge:    ; preds = %armv7pmu_get_event_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %armv7pmu_get_event_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %used_mask26 = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %bit.0, ptr noundef %used_mask26) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %armv7pmu_get_event_idx.exit.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %scorpion_event_to_bit.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -11, %scorpion_event_to_bit.exit.cleanup_crit_edge ], [ %retval.0.i, %if.then25 ], [ %retval.0.i, %armv7pmu_get_event_idx.exit.cleanup_crit_edge ], [ %idx.019.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scorpion_pmu_clear_event_idx(ptr noundef %cpuc, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_base, align 8
  %shr = lshr i32 %1, 12
  %and = and i32 %shr, 15
  %and2 = and i32 %1, 15
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx.i, align 4
  %used_mask.i = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %used_mask.i) #9
  %4 = and i32 %1, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %6 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmu.i, align 8
  %8 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base, align 8
  %and.i = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.scorpion_event_to_bit.exit_crit_edge

if.then.scorpion_event_to_bit.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %scorpion_event_to_bit.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [4 x i32], ptr @scorpion_get_pmresrn_event.pmresrn_table, i32 0, i32 %and
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = add i32 %11, -76
  br label %scorpion_event_to_bit.exit

scorpion_event_to_bit.exit:                       ; preds = %if.else.i, %if.then.scorpion_event_to_bit.exit_crit_edge
  %bit.0.i = phi i32 [ %phi.bo.i, %if.else.i ], [ 16, %if.then.scorpion_event_to_bit.exit_crit_edge ]
  %add.i = add i32 %bit.0.i, %and2
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_events.i, align 8
  %add5.i = add i32 %add.i, %13
  tail call void @_clear_bit(i32 noundef %add5.i, ptr noundef %used_mask.i) #9
  br label %if.end

if.end:                                           ; preds = %scorpion_event_to_bit.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231}
!llvm.named.register.sp = !{!233}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239, !240, !241}
!llvm.ident = !{!242}

!0 = !{ptr @__initcall__kmod_perf_event_v7__251_2046_armv7_pmu_driver_init6, !1, !"__initcall__kmod_perf_event_v7__251_2046_armv7_pmu_driver_init6", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 2046, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 2039, i32 11}
!4 = !{ptr @armv7_pmu_driver, !5, !"armv7_pmu_driver", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 2037, i32 31}
!6 = !{ptr @armv7_pmu_probe_table, !7, !"armv7_pmu_probe_table", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 2024, i32 36}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1203, i32 19}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/asm-generic/irq_regs.h", i32 21, i32 9}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 880, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @armv7pmu_enable_event._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @armv7pmu_enable_event._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 926, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @armv7pmu_disable_event._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @armv7pmu_disable_event._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 754, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @armv7pmu_read_counter._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @armv7pmu_read_counter._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 773, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @armv7pmu_write_counter._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @armv7pmu_write_counter._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @armv7_a8_perf_map, !34, !"armv7_a8_perf_map", i1 false, i1 false}
!34 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 158, i32 23}
!35 = !{ptr @armv7_a8_perf_cache_map, !36, !"armv7_a8_perf_cache_map", i1 false, i1 false}
!36 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 169, i32 23}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 596, i32 10}
!39 = !{ptr @armv7_pmuv1_events_attr_group, !40, !"armv7_pmuv1_events_attr_group", i1 false, i1 false}
!40 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 595, i32 31}
!41 = !{ptr @armv7_pmuv1_event_attrs, !42, !"armv7_pmuv1_event_attrs", i1 false, i1 false}
!42 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 572, i32 26}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 552, i32 1}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @armv7_event_attr_sw_incr, !44, !"armv7_event_attr_sw_incr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 553, i32 1}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @armv7_event_attr_l1i_cache_refill, !48, !"armv7_event_attr_l1i_cache_refill", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 554, i32 1}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @armv7_event_attr_l1i_tlb_refill, !52, !"armv7_event_attr_l1i_tlb_refill", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 555, i32 1}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @armv7_event_attr_l1d_cache_refill, !56, !"armv7_event_attr_l1d_cache_refill", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 556, i32 1}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @armv7_event_attr_l1d_cache, !60, !"armv7_event_attr_l1d_cache", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 557, i32 1}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @armv7_event_attr_l1d_tlb_refill, !64, !"armv7_event_attr_l1d_tlb_refill", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 558, i32 1}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @armv7_event_attr_ld_retired, !68, !"armv7_event_attr_ld_retired", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 559, i32 1}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @armv7_event_attr_st_retired, !72, !"armv7_event_attr_st_retired", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 560, i32 1}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @armv7_event_attr_inst_retired, !76, !"armv7_event_attr_inst_retired", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 561, i32 1}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @armv7_event_attr_exc_taken, !80, !"armv7_event_attr_exc_taken", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 562, i32 1}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @armv7_event_attr_exc_return, !84, !"armv7_event_attr_exc_return", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 563, i32 1}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @armv7_event_attr_cid_write_retired, !88, !"armv7_event_attr_cid_write_retired", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 564, i32 1}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @armv7_event_attr_pc_write_retired, !92, !"armv7_event_attr_pc_write_retired", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 565, i32 1}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @armv7_event_attr_br_immed_retired, !96, !"armv7_event_attr_br_immed_retired", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 566, i32 1}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @armv7_event_attr_br_return_retired, !100, !"armv7_event_attr_br_return_retired", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 567, i32 1}
!105 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @armv7_event_attr_unaligned_ldst_retired, !104, !"armv7_event_attr_unaligned_ldst_retired", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 568, i32 1}
!109 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @armv7_event_attr_br_mis_pred, !108, !"armv7_event_attr_br_mis_pred", i1 false, i1 false}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 569, i32 1}
!113 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @armv7_event_attr_cpu_cycles, !112, !"armv7_event_attr_cpu_cycles", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 570, i32 1}
!117 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @armv7_event_attr_br_pred, !116, !"armv7_event_attr_br_pred", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 543, i32 10}
!121 = !{ptr @armv7_pmu_format_attr_group, !122, !"armv7_pmu_format_attr_group", i1 false, i1 false}
!122 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 542, i32 31}
!123 = !{ptr @armv7_pmu_format_attrs, !124, !"armv7_pmu_format_attrs", i1 false, i1 false}
!124 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 537, i32 26}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 535, i32 1}
!127 = !{ptr @format_attr_event, !126, !"format_attr_event", i1 false, i1 false}
!128 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1215, i32 19}
!131 = !{ptr @armv7_a9_perf_map, !132, !"armv7_a9_perf_map", i1 false, i1 false}
!132 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 207, i32 23}
!133 = !{ptr @armv7_a9_perf_cache_map, !134, !"armv7_a9_perf_cache_map", i1 false, i1 false}
!134 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 219, i32 23}
!135 = !{ptr @armv7_pmu_of_device_ids, !136, !"armv7_pmu_of_device_ids", i1 false, i1 false}
!136 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 2010, i32 34}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1278, i32 18}
!139 = !{ptr @armv7_pmuv2_events_attr_group, !140, !"armv7_pmuv2_events_attr_group", i1 false, i1 false}
!140 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 646, i32 31}
!141 = !{ptr @armv7_pmuv2_event_attrs, !142, !"armv7_pmuv2_event_attrs", i1 false, i1 false}
!142 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 612, i32 26}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 600, i32 1}
!145 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @armv7_event_attr_mem_access, !144, !"armv7_event_attr_mem_access", i1 false, i1 false}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 601, i32 1}
!149 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @armv7_event_attr_l1i_cache, !148, !"armv7_event_attr_l1i_cache", i1 false, i1 false}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 602, i32 1}
!153 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @armv7_event_attr_l1d_cache_wb, !152, !"armv7_event_attr_l1d_cache_wb", i1 false, i1 false}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 603, i32 1}
!157 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @armv7_event_attr_l2d_cache, !156, !"armv7_event_attr_l2d_cache", i1 false, i1 false}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 604, i32 1}
!161 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @armv7_event_attr_l2d_cache_refill, !160, !"armv7_event_attr_l2d_cache_refill", i1 false, i1 false}
!163 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 605, i32 1}
!165 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @armv7_event_attr_l2d_cache_wb, !164, !"armv7_event_attr_l2d_cache_wb", i1 false, i1 false}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 606, i32 1}
!169 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @armv7_event_attr_bus_access, !168, !"armv7_event_attr_bus_access", i1 false, i1 false}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 607, i32 1}
!173 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @armv7_event_attr_memory_error, !172, !"armv7_event_attr_memory_error", i1 false, i1 false}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 608, i32 1}
!177 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @armv7_event_attr_inst_spec, !176, !"armv7_event_attr_inst_spec", i1 false, i1 false}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 609, i32 1}
!181 = !{ptr @.str.75, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @armv7_event_attr_ttbr_write_retired, !180, !"armv7_event_attr_ttbr_write_retired", i1 false, i1 false}
!183 = !{ptr @.str.76, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 610, i32 1}
!185 = !{ptr @.str.77, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @armv7_event_attr_bus_cycles, !184, !"armv7_event_attr_bus_cycles", i1 false, i1 false}
!187 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1239, i32 19}
!189 = !{ptr @armv7_a15_perf_map, !190, !"armv7_a15_perf_map", i1 false, i1 false}
!190 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 297, i32 23}
!191 = !{ptr @armv7_a15_perf_cache_map, !192, !"armv7_a15_perf_cache_map", i1 false, i1 false}
!192 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 308, i32 23}
!193 = !{ptr @.str.79, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1265, i32 19}
!195 = !{ptr @armv7_a12_perf_map, !196, !"armv7_a12_perf_map", i1 false, i1 false}
!196 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 395, i32 23}
!197 = !{ptr @armv7_a12_perf_cache_map, !198, !"armv7_a12_perf_cache_map", i1 false, i1 false}
!198 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 406, i32 23}
!199 = !{ptr @.str.80, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1252, i32 19}
!201 = !{ptr @armv7_a7_perf_map, !202, !"armv7_a7_perf_map", i1 false, i1 false}
!202 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 346, i32 23}
!203 = !{ptr @armv7_a7_perf_cache_map, !204, !"armv7_a7_perf_cache_map", i1 false, i1 false}
!204 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 357, i32 23}
!205 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1227, i32 19}
!207 = !{ptr @armv7_a5_perf_map, !208, !"armv7_a5_perf_map", i1 false, i1 false}
!208 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 251, i32 23}
!209 = !{ptr @armv7_a5_perf_cache_map, !210, !"armv7_a5_perf_cache_map", i1 false, i1 false}
!210 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 261, i32 23}
!211 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1657, i32 19}
!213 = !{ptr @.str.83, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1660, i32 7}
!215 = !{ptr @krait_perf_map_no_branch, !216, !"krait_perf_map_no_branch", i1 false, i1 false}
!216 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 454, i32 23}
!217 = !{ptr @krait_perf_cache_map, !218, !"krait_perf_cache_map", i1 false, i1 false}
!218 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 462, i32 23}
!219 = !{ptr @krait_perf_map, !220, !"krait_perf_map", i1 false, i1 false}
!220 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 445, i32 23}
!221 = !{ptr @krait_get_pmresrn_event.pmresrn_table, !222, !"pmresrn_table", i1 false, i1 false}
!222 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1409, i32 19}
!223 = !{ptr @.str.84, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1987, i32 19}
!225 = !{ptr @scorpion_perf_map, !226, !"scorpion_perf_map", i1 false, i1 false}
!226 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 495, i32 23}
!227 = !{ptr @scorpion_perf_cache_map, !228, !"scorpion_perf_cache_map", i1 false, i1 false}
!228 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 504, i32 23}
!229 = !{ptr @scorpion_get_pmresrn_event.pmresrn_table, !230, !"pmresrn_table", i1 false, i1 false}
!230 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 1755, i32 19}
!231 = !{ptr @.str.85, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../arch/arm/kernel/perf_event_v7.c", i32 2000, i32 19}
!233 = !{!"sp"}
!234 = !{i32 1, !"wchar_size", i32 2}
!235 = !{i32 1, !"min_enum_size", i32 4}
!236 = !{i32 8, !"branch-target-enforcement", i32 0}
!237 = !{i32 8, !"sign-return-address", i32 0}
!238 = !{i32 8, !"sign-return-address-all", i32 0}
!239 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!240 = !{i32 7, !"uwtable", i32 1}
!241 = !{i32 7, !"frame-pointer", i32 2}
!242 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!243 = !{i64 32349}
!244 = !{i64 32461}
!245 = !{i64 31718}
!246 = !{i64 30090}
!247 = !{i64 2154973464}
!248 = !{i64 31388}
!249 = !{i64 31886}
!250 = !{i64 31548}
!251 = !{i64 32055}
!252 = !{i64 2154981338}
!253 = !{i64 32195}
!254 = !{i64 2154981503}
!255 = !{i64 30531}
!256 = !{i64 30636}
!257 = !{i64 31082}
!258 = !{i64 31193}
!259 = !{i64 29392}
!260 = !{i64 2154972342}
!261 = !{i64 29545}
!262 = !{i8 0, i8 2}
!263 = !{i64 39149}
!264 = !{i64 39236}
!265 = !{i64 46875}
!266 = !{i64 46953}
!267 = !{i64 47031}
!268 = !{i64 693592}
!269 = !{!"branch_weights", i32 1, i32 2000}
!270 = !{i64 2155001393, i64 2155001890, i64 2155001430, i64 2155001486, i64 2155001520, i64 2155001544, i64 2155001585, i64 2155001606, i64 2155001634, i64 2155001668}
!271 = !{i64 531623}
!272 = !{i64 531783}
!273 = !{i64 2148087210}
!274 = !{i64 2155002775, i64 2155002798}
!275 = !{i64 2155002886, i64 2155002909}
!276 = !{i64 47342}
!277 = !{i64 2155004655, i64 2155005152, i64 2155004692, i64 2155004748, i64 2155004782, i64 2155004806, i64 2155004847, i64 2155004868, i64 2155004896, i64 2155004930}
!278 = !{i64 2155005979, i64 2155006002}
!279 = !{i64 2155006095}
!280 = !{i64 52255}
!281 = !{i64 2154996880, i64 2154997377, i64 2154996917, i64 2154996973, i64 2154997007, i64 2154997031, i64 2154997072, i64 2154997093, i64 2154997121, i64 2154997155}
!282 = !{i64 46486}
!283 = !{i64 46563}
!284 = !{i64 46640}
!285 = !{i64 47226}
!286 = !{i64 57043}
!287 = !{i64 57121}
!288 = !{i64 57199}
!289 = !{i64 57277}
!290 = !{i64 61575}
!291 = !{i64 58350}
!292 = !{i64 2155018711, i64 2155019208, i64 2155018748, i64 2155018804, i64 2155018838, i64 2155018862, i64 2155018903, i64 2155018924, i64 2155018952, i64 2155018986}
!293 = !{i64 56571}
!294 = !{i64 56648}
!295 = !{i64 56725}
!296 = !{i64 56802}
