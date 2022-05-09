; ModuleID = '/llk/IR_all_yes/drivers/perf/arm-cci.c_pt.bc'
source_filename = "../drivers/perf/arm-cci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cci_pmu_model = type { ptr, i32, i32, i32, ptr, ptr, [3 x %struct.event_range], ptr, ptr, ptr }
%struct.event_range = type { i32, i32 }
%struct.dev_ext_attribute = type { %struct.device_attribute, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cci_pmu = type { ptr, ptr, %struct.pmu, i32, i32, ptr, i32, ptr, %struct.cci_pmu_hw_events, ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cci_pmu_hw_events = type { ptr, ptr, %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
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
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }

@__initcall__kmod_arm_cci__251_1726_cci_pmu_driver_init6 = internal global ptr @cci_pmu_driver_init, section ".initcall6.init", align 4
@cci_pmu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cci_pmu_probe, ptr @cci_pmu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @arm_cci_pmu_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cci_pmu_driver_exit = internal global ptr @cci_pmu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file252 = internal constant [34 x i8] c"arm_cci.file=drivers/perf/arm-cci\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [23 x i8] c"arm_cci.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [40 x i8] c"arm_cci.description=ARM CCI PMU support\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ARM-CCI PMU\00", [20 x i8] zeroinitializer }, align 32
@arm_cci_pmu_matches = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-400-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-400-pmu,r0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cci_pmu_models }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-400-pmu,r1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @cci_pmu_models, i64 60) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-500-pmu,r0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @cci_pmu_models, i64 120) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cci-550-pmu,r0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @cci_pmu_models, i64 180) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@cci_pmu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1677, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"In-correct number of interrupts: %d, should be %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cci_pmu_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/perf/arm-cci.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cci_pmu_probe._entry_ptr = internal global ptr @cci_pmu_probe._entry, section ".printk_index", align 4
@cci_pmu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&cci_pmu->hw_events.pmu_lock\00", [35 x i8] zeroinitializer }, align 32
@cci_pmu_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&cci_pmu->reserve_mutex\00", [40 x i8] zeroinitializer }, align 32
@g_cci_pmu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"perf/arm/cci:online\00", [44 x i8] zeroinitializer }, align 32
@cci_pmu_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016ARM %s PMU driver probed\00", [37 x i8] zeroinitializer }, align 32
@cci_pmu_probe._entry_ptr.12 = internal global ptr @cci_pmu_probe._entry.10, section ".printk_index", align 4
@cci_pmu_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 1613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"DEPRECATED compatible property, requires secure access to CCI registers\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cci_pmu_alloc\00", [18 x i8] zeroinitializer }, align 32
@cci_pmu_alloc._entry_ptr = internal global ptr @cci_pmu_alloc._entry, section ".printk_index", align 4
@cci_pmu_alloc._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 1617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CCI PMU version not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@cci_pmu_alloc._entry_ptr.17 = internal global ptr @cci_pmu_alloc._entry.15, section ".printk_index", align 4
@cci_pmu_models = internal global { [4 x %struct.cci_pmu_model], [48 x i8] } { [4 x %struct.cci_pmu_model] [%struct.cci_pmu_model { ptr @.str.19, i32 1, i32 4, i32 4096, ptr @cci400_pmu_format_attrs, ptr @cci400_r0_pmu_event_attrs, [3 x %struct.event_range] [%struct.event_range { i32 0, i32 19 }, %struct.event_range { i32 20, i32 26 }, %struct.event_range zeroinitializer], ptr @cci400_validate_hw_event, ptr @cci400_get_event_idx, ptr null }, %struct.cci_pmu_model { ptr @.str.20, i32 1, i32 4, i32 4096, ptr @cci400_pmu_format_attrs, ptr @cci400_r1_pmu_event_attrs, [3 x %struct.event_range] [%struct.event_range { i32 0, i32 20 }, %struct.event_range { i32 0, i32 17 }, %struct.event_range zeroinitializer], ptr @cci400_validate_hw_event, ptr @cci400_get_event_idx, ptr null }, %struct.cci_pmu_model { ptr @.str.21, i32 0, i32 8, i32 65536, ptr @cci5xx_pmu_format_attrs, ptr @cci5xx_pmu_event_attrs, [3 x %struct.event_range] [%struct.event_range { i32 0, i32 31 }, %struct.event_range { i32 0, i32 6 }, %struct.event_range { i32 0, i32 15 }], ptr @cci500_validate_hw_event, ptr null, ptr @cci5xx_pmu_write_counters }, %struct.cci_pmu_model { ptr @.str.22, i32 0, i32 8, i32 65536, ptr @cci5xx_pmu_format_attrs, ptr @cci5xx_pmu_event_attrs, [3 x %struct.event_range] [%struct.event_range { i32 0, i32 31 }, %struct.event_range { i32 0, i32 6 }, %struct.event_range { i32 0, i32 15 }], ptr @cci550_validate_hw_event, ptr null, ptr @cci5xx_pmu_write_counters }], [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CCI_400\00", [24 x i8] zeroinitializer }, align 32
@cci400_pmu_format_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.27, ptr null], [20 x i8] zeroinitializer }, align 32
@cci400_r0_pmu_event_attrs = internal global { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @.compoundliteral.30, ptr @.compoundliteral.32, ptr @.compoundliteral.34, ptr @.compoundliteral.36, ptr @.compoundliteral.38, ptr @.compoundliteral.40, ptr @.compoundliteral.42, ptr @.compoundliteral.44, ptr @.compoundliteral.46, ptr @.compoundliteral.48, ptr @.compoundliteral.50, ptr @.compoundliteral.52, ptr @.compoundliteral.54, ptr @.compoundliteral.56, ptr @.compoundliteral.58, ptr @.compoundliteral.60, ptr @.compoundliteral.62, ptr @.compoundliteral.64, ptr @.compoundliteral.66, ptr @.compoundliteral.68, ptr @.compoundliteral.70, ptr @.compoundliteral.72, ptr @.compoundliteral.74, ptr @.compoundliteral.76, ptr @.compoundliteral.78, ptr @.compoundliteral.80, ptr @.compoundliteral.82, ptr @.compoundliteral.84, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CCI_400_r1\00", [21 x i8] zeroinitializer }, align 32
@cci400_r1_pmu_event_attrs = internal global { [41 x ptr], [60 x i8] } { [41 x ptr] [ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90, ptr @.compoundliteral.91, ptr @.compoundliteral.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.compoundliteral.111, ptr @.compoundliteral.113, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.compoundliteral.117, ptr @.compoundliteral.119, ptr @.compoundliteral.121, ptr @.compoundliteral.123, ptr @.compoundliteral.125, ptr @.compoundliteral.127, ptr @.compoundliteral.129, ptr @.compoundliteral.131, ptr @.compoundliteral.133, ptr @.compoundliteral.135, ptr @.compoundliteral.137, ptr @.compoundliteral.139, ptr @.compoundliteral.141, ptr @.compoundliteral.142, ptr null], [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CCI_500\00", [24 x i8] zeroinitializer }, align 32
@cci5xx_pmu_format_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.143, ptr @.compoundliteral.145, ptr null], [20 x i8] zeroinitializer }, align 32
@cci5xx_pmu_event_attrs = internal global { [56 x ptr], [32 x i8] } { [56 x ptr] [ptr @.compoundliteral.147, ptr @.compoundliteral.149, ptr @.compoundliteral.151, ptr @.compoundliteral.153, ptr @.compoundliteral.155, ptr @.compoundliteral.157, ptr @.compoundliteral.159, ptr @.compoundliteral.160, ptr @.compoundliteral.162, ptr @.compoundliteral.164, ptr @.compoundliteral.166, ptr @.compoundliteral.168, ptr @.compoundliteral.170, ptr @.compoundliteral.172, ptr @.compoundliteral.174, ptr @.compoundliteral.176, ptr @.compoundliteral.178, ptr @.compoundliteral.180, ptr @.compoundliteral.182, ptr @.compoundliteral.184, ptr @.compoundliteral.186, ptr @.compoundliteral.188, ptr @.compoundliteral.190, ptr @.compoundliteral.192, ptr @.compoundliteral.194, ptr @.compoundliteral.196, ptr @.compoundliteral.198, ptr @.compoundliteral.200, ptr @.compoundliteral.202, ptr @.compoundliteral.204, ptr @.compoundliteral.206, ptr @.compoundliteral.208, ptr @.compoundliteral.210, ptr @.compoundliteral.212, ptr @.compoundliteral.214, ptr @.compoundliteral.216, ptr @.compoundliteral.218, ptr @.compoundliteral.220, ptr @.compoundliteral.222, ptr @.compoundliteral.224, ptr @.compoundliteral.226, ptr @.compoundliteral.228, ptr @.compoundliteral.230, ptr @.compoundliteral.232, ptr @.compoundliteral.234, ptr @.compoundliteral.236, ptr @.compoundliteral.238, ptr @.compoundliteral.240, ptr @.compoundliteral.242, ptr @.compoundliteral.244, ptr @.compoundliteral.246, ptr @.compoundliteral.248, ptr @.compoundliteral.250, ptr @.compoundliteral.252, ptr @.compoundliteral.254, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CCI_550\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:0-4\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_format_show, ptr null }, ptr @.str.24 }], [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:5-7\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_format_show, ptr null }, ptr @.str.26 }], [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si_rrq_hs_any\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si_rrq_hs_device\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 1 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"si_rrq_hs_normal_or_nonshareable\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 2 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"si_rrq_hs_inner_or_outershareable\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 3 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"si_rrq_hs_cache_maintenance\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 4 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"si_rrq_hs_mem_barrier\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 5 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si_rrq_hs_sync_barrier\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 6 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"si_rrq_hs_dvm_msg\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 7 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si_rrq_hs_dvm_msg_sync\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 8 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si_rrq_stall_tt_full\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 9 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"si_r_data_last_hs_snoop\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 10 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"si_r_data_stall_rvalids_h_rready_l\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 11 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si_wrq_hs_any\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 12 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si_wrq_hs_device\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 13 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"si_wrq_hs_normal_or_nonshareable\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 14 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"si_wrq_hs_inner_or_outershare_wback_wclean\00", [53 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 15 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si_wrq_hs_write_unique\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 16 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"si_wrq_hs_write_line_unique\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 17 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si_wrq_hs_evict\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 18 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si_wrq_stall_tt_full\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 19 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mi_retry_speculative_fetch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 20 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mi_rrq_stall_addr_hazard\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 21 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mi_rrq_stall_id_hazard\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 22 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi_rrq_stall_tt_full\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 23 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mi_rrq_stall_barrier_hazard\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 24 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mi_wrq_stall_barrier_hazard\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 25 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi_wrq_stall_tt_full\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 26 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cycles\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci400_pmu_cycle_event_show, ptr null }, ptr inttoptr (i32 255 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"source=?,event=0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config=0x%lx\0A\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 1 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 2 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 3 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 4 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 5 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 6 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 7 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 8 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 9 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 10 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 11 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 12 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 13 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 14 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 15 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 16 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 17 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 18 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 19 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"si_rrq_stall_slave_id_hazard\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 20 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mi_stall_cycle_addr_hazard\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 1 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mi_rrq_stall_master_id_hazard\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 2 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mi_rrq_stall_hi_prio_rtq_full\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 3 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 4 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 5 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mi_wrq_stall_wtq_full\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 6 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mi_rrq_stall_low_prio_rtq_full\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 7 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mi_rrq_stall_mid_prio_rtq_full\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 8 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi_rrq_stall_qvn_vn0\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 9 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi_rrq_stall_qvn_vn1\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 10 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi_rrq_stall_qvn_vn2\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 11 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi_rrq_stall_qvn_vn3\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 12 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi_wrq_stall_qvn_vn0\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 13 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi_wrq_stall_qvn_vn1\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 14 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi_wrq_stall_qvn_vn2\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 15 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi_wrq_stall_qvn_vn3\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 16 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mi_wrq_unique_or_line_unique_addr_hazard\00", [55 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 17 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci400_pmu_cycle_event_show, ptr null }, ptr inttoptr (i32 255 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_format_show, ptr null }, ptr @.str.24 }], [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:5-8\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_format_show, ptr null }, ptr @.str.144 }], [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"si_rrq_hs_arvalid\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"si_rrq_dev\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 1 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si_rrq_hs_nonshareable\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 2 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"si_rrq_hs_shareable_non_alloc\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 3 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"si_rrq_hs_shareable_alloc\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 4 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si_rrq_hs_invalidate\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 5 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"si_rrq_hs_cache_maint\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 6 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 7 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si_rrq_hs_rval\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.161, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 8 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"si_rrq_hs_rlast_snoop\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.163, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 9 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si_wrq_hs_awalid\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 10 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"si_wrq_dev\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.167, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 11 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si_wrq_non_shareable\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.169, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 12 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si_wrq_share_wb\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 13 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si_wrq_share_wlu\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.173, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 14 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si_wrq_share_wunique\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.175, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 15 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si_wrq_evict\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 16 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si_wrq_wrevict\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.179, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 17 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si_w_data_beat\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 18 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si_srq_acvalid\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.183, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 19 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si_srq_read\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.185, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 20 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si_srq_clean\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.187, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 21 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si_srq_data_transfer_low\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 22 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si_rrq_stall_arvalid\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.191, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 23 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si_r_data_stall\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.193, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 24 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si_wrq_stall\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.195, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 25 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si_w_data_stall\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.197, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 26 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si_w_resp_stall\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.199, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 27 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si_srq_stall\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.201, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 28 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si_s_data_stall\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.203, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 29 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si_rq_stall_ot_limit\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.205, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 30 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si_r_stall_arbit\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.208 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.207, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 31 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mi_r_data_beat_any\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.210 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.209, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mi_w_data_beat_any\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.212 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.211, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 1 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi_rrq_stall\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.213, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 2 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mi_r_data_stall\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.216 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.215, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 3 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi_wrq_stall\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.217, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 4 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mi_w_data_stall\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.220 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.219, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 5 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mi_w_resp_stall\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.222 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.221, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci_pmu_event_show, ptr null }, ptr inttoptr (i32 6 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cci_snoop_access_filter_bank_0_1\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.224 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.223, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cci_snoop_access_filter_bank_2_3\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.226 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.225, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 1 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cci_snoop_access_filter_bank_4_5\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.228 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.227, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 2 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cci_snoop_access_filter_bank_6_7\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.230 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.229, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 3 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cci_snoop_access_miss_filter_bank_0_1\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.232 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.231, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 4 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cci_snoop_access_miss_filter_bank_2_3\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.234 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.233, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 5 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cci_snoop_access_miss_filter_bank_4_5\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.236 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.235, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 6 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cci_snoop_access_miss_filter_bank_6_7\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.238 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.237, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 7 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cci_snoop_back_invalidation\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.240 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.239, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 8 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cci_snoop_stall_alloc_busy\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.242 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.241, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 9 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cci_snoop_stall_tt_full\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.244 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.243, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 10 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cci_wrq\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.245, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 11 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cci_snoop_cd_hs\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.247, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 12 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cci_rq_stall_addr_hazard\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.249, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 13 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cci_snoop_rq_stall_tt_full\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.252 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.251, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 14 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cci_snoop_rq_tzmp1_prot\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal global { [1 x %struct.dev_ext_attribute], [32 x i8] } { [1 x %struct.dev_ext_attribute] [%struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.253, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cci5xx_pmu_global_event_show, ptr null }, ptr inttoptr (i32 15 to ptr) }], [32 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event=0x%lx,source=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@pmu_event_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.258, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@pmu_format_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.259, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@pmu_attr_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @pmu_attr_group, ptr @pmu_format_attr_group, ptr @pmu_event_attr_group, ptr null], [16 x i8] zeroinitializer }, align 32
@cci_pmu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.257, ptr @.str.3, i32 1435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"PMU implements more counters(%d) than supported by the model(%d), truncated.\00", [51 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cci_pmu_init\00", [19 x i8] zeroinitializer }, align 32
@cci_pmu_init._entry_ptr = internal global ptr @cci_pmu_init._entry, section ".printk_index", align 4
@.str.258 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@pmu_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pmu_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pmu_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pmu_cpumask_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@pmu_cpumask_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.260, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pmu_cpumask_attr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpumask\00", [24 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@pmu_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.3, i32 837, ptr @.str.263, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no irqs for CCI PMUs defined\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pmu_request_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pmu_request_irq._entry_ptr = internal global ptr @pmu_request_irq._entry, section ".printk_index", align 4
@.str.264 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm-cci-pmu\00", [20 x i8] zeroinitializer }, align 32
@pmu_request_irq._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.262, ptr @.str.3, i32 853, ptr @.str.263, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unable to request IRQ%d for ARM CCI PMU counters\0A\00", [46 x i8] zeroinitializer }, align 32
@pmu_request_irq._entry_ptr.267 = internal global ptr @pmu_request_irq._entry.265, section ".printk_index", align 4
@pmu_read_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.269, ptr @.str.3, i32 883, ptr @.str.263, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid CCI PMU counter %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pmu_read_counter\00", [47 x i8] zeroinitializer }, align 32
@pmu_read_counter._entry_ptr = internal global ptr @pmu_read_counter._entry, section ".printk_index", align 4
@__hw_perf_event_init.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.270, ptr @.str.271, ptr @.str.3, ptr @.str.272, i8 1, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.270 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm_cci\00", [24 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__hw_perf_event_init\00", [43 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"event %x:%llx not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@cci_pmu_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cci_pmu_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.273, ptr @.str.3, i32 1150, ptr @.str.263, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cci_pmu_start\00", [18 x i8] zeroinitializer }, align 32
@cci_pmu_start._entry_ptr = internal global ptr @cci_pmu_start._entry, section ".printk_index", align 4
@cci_pmu_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.274, ptr @.str.3, i32 1176, ptr @.str.263, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cci_pmu_stop\00", [19 x i8] zeroinitializer }, align 32
@cci_pmu_stop._entry_ptr = internal global ptr @cci_pmu_stop._entry, section ".printk_index", align 4
@switch.table.cci500_validate_hw_event = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 2], [32 x i8] zeroinitializer }, align 32
@switch.table.cci550_validate_hw_event = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.275 = private unnamed_addr constant [15 x i8] c"cci_pmu_driver\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1716, i32 31 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1718, i32 14 }
@___asan_gen_.281 = private unnamed_addr constant [20 x i8] c"arm_cci_pmu_matches\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1554, i32 34 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1676, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1681, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1682, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [10 x i8] c"g_cci_pmu\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 117, i32 24 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1688, i32 7 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1695, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1612, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1617, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [15 x i8] c"cci_pmu_models\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1459, i32 44 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1462, i32 11 }
@___asan_gen_.347 = private unnamed_addr constant [24 x i8] c"cci400_pmu_format_attrs\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 216, i32 26 }
@___asan_gen_.350 = private unnamed_addr constant [26 x i8] c"cci400_r0_pmu_event_attrs\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 222, i32 26 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1482, i32 11 }
@___asan_gen_.356 = private unnamed_addr constant [26 x i8] c"cci400_r1_pmu_event_attrs\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 257, i32 26 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1504, i32 11 }
@___asan_gen_.362 = private unnamed_addr constant [24 x i8] c"cci5xx_pmu_format_attrs\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 452, i32 26 }
@___asan_gen_.365 = private unnamed_addr constant [23 x i8] c"cci5xx_pmu_event_attrs\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 458, i32 26 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1528, i32 11 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 217, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 218, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 699, i32 25 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 224, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 225, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 226, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 227, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 228, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 229, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 230, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 231, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 232, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 233, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 234, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 235, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 236, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 237, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 238, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 239, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 240, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 241, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 242, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 243, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 245, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 246, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 247, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 248, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 249, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 250, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 251, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 253, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 708, i32 25 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 309, i32 25 }
@___asan_gen_.506 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 279, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 282, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 283, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 284, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 287, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 288, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 289, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 290, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 291, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 292, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 293, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 294, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 295, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 296, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 297, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 298, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 454, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 460, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 461, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 462, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 463, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 464, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 465, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 466, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 468, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 469, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 470, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 471, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 472, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 473, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 474, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 475, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 476, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 477, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 478, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 479, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 480, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 481, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 482, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 483, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 484, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 485, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 486, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 487, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 488, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 489, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 490, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 491, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant [21 x i8] c".compoundliteral.208\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 494, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant [21 x i8] c".compoundliteral.210\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 495, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant [21 x i8] c".compoundliteral.212\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 496, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 497, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [21 x i8] c".compoundliteral.216\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 498, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 499, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant [21 x i8] c".compoundliteral.220\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 500, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [21 x i8] c".compoundliteral.222\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 503, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant [21 x i8] c".compoundliteral.224\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 504, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant [21 x i8] c".compoundliteral.226\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 505, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [21 x i8] c".compoundliteral.228\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 506, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant [21 x i8] c".compoundliteral.230\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 507, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant [21 x i8] c".compoundliteral.232\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 508, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [21 x i8] c".compoundliteral.234\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 509, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant [21 x i8] c".compoundliteral.236\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 510, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant [21 x i8] c".compoundliteral.238\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 511, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant [21 x i8] c".compoundliteral.240\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 512, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant [21 x i8] c".compoundliteral.242\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 513, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant [21 x i8] c".compoundliteral.244\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 514, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 515, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 516, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 517, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant [21 x i8] c".compoundliteral.252\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 518, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 528, i32 25 }
@___asan_gen_.819 = private unnamed_addr constant [21 x i8] c"pmu_event_attr_group\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1387, i32 31 }
@___asan_gen_.822 = private unnamed_addr constant [22 x i8] c"pmu_format_attr_group\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1382, i32 31 }
@___asan_gen_.825 = private unnamed_addr constant [16 x i8] c"pmu_attr_groups\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1392, i32 38 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1432, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1388, i32 10 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1383, i32 10 }
@___asan_gen_.843 = private unnamed_addr constant [15 x i8] c"pmu_attr_group\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1378, i32 37 }
@___asan_gen_.846 = private unnamed_addr constant [10 x i8] c"pmu_attrs\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1373, i32 26 }
@___asan_gen_.849 = private unnamed_addr constant [17 x i8] c"pmu_cpumask_attr\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1370, i32 32 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1371, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 837, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 850, i32 5 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 852, i32 4 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 883, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1288, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1150, i32 3 }
@___asan_gen_.900 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.903 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.904 = private constant [26 x i8] c"../drivers/perf/arm-cci.c\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.904, i32 1176, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant [38 x i8] c"switch.table.cci500_validate_hw_event\00", align 1
@___asan_gen_.907 = private unnamed_addr constant [38 x i8] c"switch.table.cci550_validate_hw_event\00", align 1
@llvm.compiler.used = appending global [313 x ptr] [ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_cci_pmu_driver_exit, ptr @__initcall__kmod_arm_cci__251_1726_cci_pmu_driver_init6, ptr @cci_pmu_alloc._entry, ptr @cci_pmu_alloc._entry.15, ptr @cci_pmu_alloc._entry_ptr, ptr @cci_pmu_alloc._entry_ptr.17, ptr @cci_pmu_driver_exit, ptr @cci_pmu_init._entry, ptr @cci_pmu_init._entry_ptr, ptr @cci_pmu_probe._entry, ptr @cci_pmu_probe._entry.10, ptr @cci_pmu_probe._entry_ptr, ptr @cci_pmu_probe._entry_ptr.12, ptr @cci_pmu_start._entry, ptr @cci_pmu_start._entry_ptr, ptr @cci_pmu_stop._entry, ptr @cci_pmu_stop._entry_ptr, ptr @pmu_read_counter._entry, ptr @pmu_read_counter._entry_ptr, ptr @pmu_request_irq._entry, ptr @pmu_request_irq._entry.265, ptr @pmu_request_irq._entry_ptr, ptr @pmu_request_irq._entry_ptr.267, ptr @cci_pmu_driver, ptr @.str, ptr @arm_cci_pmu_matches, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cci_pmu_probe.__key, ptr @.str.6, ptr @cci_pmu_probe.__key.7, ptr @.str.8, ptr @g_cci_pmu, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @cci_pmu_models, ptr @.str.19, ptr @cci400_pmu_format_attrs, ptr @cci400_r0_pmu_event_attrs, ptr @.str.20, ptr @cci400_r1_pmu_event_attrs, ptr @.str.21, ptr @cci5xx_pmu_format_attrs, ptr @cci5xx_pmu_event_attrs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.compoundliteral, ptr @.str.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90, ptr @.compoundliteral.91, ptr @.compoundliteral.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.str.158, ptr @.compoundliteral.159, ptr @.compoundliteral.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.str.163, ptr @.compoundliteral.164, ptr @.str.165, ptr @.compoundliteral.166, ptr @.str.167, ptr @.compoundliteral.168, ptr @.str.169, ptr @.compoundliteral.170, ptr @.str.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.str.179, ptr @.compoundliteral.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.str.185, ptr @.compoundliteral.186, ptr @.str.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.compoundliteral.190, ptr @.str.191, ptr @.compoundliteral.192, ptr @.str.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @.compoundliteral.196, ptr @.str.197, ptr @.compoundliteral.198, ptr @.str.199, ptr @.compoundliteral.200, ptr @.str.201, ptr @.compoundliteral.202, ptr @.str.203, ptr @.compoundliteral.204, ptr @.str.205, ptr @.compoundliteral.206, ptr @.str.207, ptr @.compoundliteral.208, ptr @.str.209, ptr @.compoundliteral.210, ptr @.str.211, ptr @.compoundliteral.212, ptr @.str.213, ptr @.compoundliteral.214, ptr @.str.215, ptr @.compoundliteral.216, ptr @.str.217, ptr @.compoundliteral.218, ptr @.str.219, ptr @.compoundliteral.220, ptr @.str.221, ptr @.compoundliteral.222, ptr @.str.223, ptr @.compoundliteral.224, ptr @.str.225, ptr @.compoundliteral.226, ptr @.str.227, ptr @.compoundliteral.228, ptr @.str.229, ptr @.compoundliteral.230, ptr @.str.231, ptr @.compoundliteral.232, ptr @.str.233, ptr @.compoundliteral.234, ptr @.str.235, ptr @.compoundliteral.236, ptr @.str.237, ptr @.compoundliteral.238, ptr @.str.239, ptr @.compoundliteral.240, ptr @.str.241, ptr @.compoundliteral.242, ptr @.str.243, ptr @.compoundliteral.244, ptr @.str.245, ptr @.compoundliteral.246, ptr @.str.247, ptr @.compoundliteral.248, ptr @.str.249, ptr @.compoundliteral.250, ptr @.str.251, ptr @.compoundliteral.252, ptr @.str.253, ptr @.compoundliteral.254, ptr @.str.255, ptr @pmu_event_attr_group, ptr @pmu_format_attr_group, ptr @pmu_attr_groups, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @pmu_attr_group, ptr @pmu_attrs, ptr @pmu_cpumask_attr, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.266, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @switch.table.cci500_validate_hw_event, ptr @switch.table.cci550_validate_hw_event], section "llvm.metadata"
@0 = internal global [297 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cci_pmu_matches to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_cci_pmu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_alloc._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_models to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci400_pmu_format_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci400_r0_pmu_event_attrs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci400_r1_pmu_event_attrs to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci5xx_pmu_format_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci5xx_pmu_event_attrs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.208 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.210 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.212 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.216 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.220 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.222 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.224 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.226 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.228 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.230 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.232 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.234 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.236 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.238 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.240 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.242 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.244 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.252 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_event_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_format_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_attr_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_cpumask_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_request_irq._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_read_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pmu_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cci500_validate_hw_event to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cci550_validate_hw_event to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pmu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cci_pmu_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cci_pmu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @cci_pmu_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pmu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i86 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 344, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i86, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ctrl_base.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ctrl_base.i, align 4
  %call2.i = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

do.end.i:                                         ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  %call.i.i.i = tail call zeroext i1 @mcpm_is_available() #10
  br i1 %call.i.i.i, label %if.end6.i, label %do.end.i.do.end11.i_crit_edge

do.end.i.do.end11.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

if.end6.i:                                        ; preds = %do.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4072
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !342
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342177279, i32 %5)
  %cmp.i.i.i = icmp ugt i32 %5, 1342177279
  %..i.i.i = zext i1 %cmp.i.i.i to i32
  %arrayidx.i.i = getelementptr [0 x %struct.cci_pmu_model], ptr @cci_pmu_models, i32 0, i32 %..i.i.i
  %tobool7.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool7.not.i, label %if.end6.i.do.end11.i_crit_edge, label %if.end6.i.if.end13.i_crit_edge

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end6.i.do.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.end6.i.do.end11.i_crit_edge, %do.end.i.do.end11.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  br label %if.then

if.end13.i:                                       ; preds = %if.end6.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %model.083.i = phi ptr [ %arrayidx.i.i, %if.end6.i.if.end13.i_crit_edge ], [ %call2.i, %if.end.i.if.end13.i_crit_edge ]
  %model14.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 7
  %6 = ptrtoint ptr %model14.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %model.083.i, ptr %model14.i, align 4
  %num_hw_cntrs.i = getelementptr inbounds %struct.cci_pmu_model, ptr %model.083.i, i32 0, i32 2
  %7 = ptrtoint ptr %num_hw_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_hw_cntrs.i, align 4
  %fixed_hw_cntrs.i = getelementptr inbounds %struct.cci_pmu_model, ptr %model.083.i, i32 0, i32 1
  %9 = ptrtoint ptr %fixed_hw_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fixed_hw_cntrs.i, align 4
  %add.i = add i32 %10, %8
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #10
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !343

devm_kcalloc.exit.thread.i:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %irqs85.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 5
  %13 = ptrtoint ptr %irqs85.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %irqs85.i, align 4
  br label %if.then

devm_kcalloc.exit.i:                              ; preds = %if.end13.i
  %14 = extractvalue { i32, i1 } %11, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #10
  %irqs.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 5
  %15 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i.i, ptr %irqs.i, align 4
  %tobool17.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool17.not.i, label %devm_kcalloc.exit.i.if.then_crit_edge, label %if.end20.i

devm_kcalloc.exit.i.if.then_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end20.i:                                       ; preds = %devm_kcalloc.exit.i
  %16 = ptrtoint ptr %num_hw_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_hw_cntrs.i, align 4
  %18 = ptrtoint ptr %fixed_hw_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fixed_hw_cntrs.i, align 4
  %add23.i = add i32 %19, %17
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add23.i, i32 4) #10
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %devm_kcalloc.exit73.thread.i, label %devm_kcalloc.exit73.i, !prof !343

devm_kcalloc.exit73.thread.i:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw_events88.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 8
  %22 = ptrtoint ptr %hw_events88.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %hw_events88.i, align 4
  br label %if.then

devm_kcalloc.exit73.i:                            ; preds = %if.end20.i
  %23 = extractvalue { i32, i1 } %20, 0
  %call5.i.i70.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %23, i32 noundef 3520) #10
  %hw_events.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 8
  %24 = ptrtoint ptr %hw_events.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i70.i, ptr %hw_events.i, align 4
  %tobool27.not.i = icmp eq ptr %call5.i.i70.i, null
  br i1 %tobool27.not.i, label %devm_kcalloc.exit73.i.if.then_crit_edge, label %devm_kcalloc.exit77.i

devm_kcalloc.exit73.i.if.then_crit_edge:          ; preds = %devm_kcalloc.exit73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

devm_kcalloc.exit77.i:                            ; preds = %devm_kcalloc.exit73.i
  %25 = ptrtoint ptr %num_hw_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_hw_cntrs.i, align 4
  %27 = ptrtoint ptr %fixed_hw_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fixed_hw_cntrs.i, align 4
  %add33.i = add i32 %26, 31
  %sub.i = add i32 %add33.i, %28
  %29 = lshr i32 %sub.i, 3
  %30 = and i32 %29, 536870908
  %call5.i.i74.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %30, i32 noundef 3520) #10
  %used_mask.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %used_mask.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i74.i, ptr %used_mask.i, align 4
  %tobool39.not.i = icmp eq ptr %call5.i.i74.i, null
  br i1 %tobool39.not.i, label %devm_kcalloc.exit77.i.if.then_crit_edge, label %cci_pmu_alloc.exit

devm_kcalloc.exit77.i.if.then_crit_edge:          ; preds = %devm_kcalloc.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

cci_pmu_alloc.exit:                               ; preds = %devm_kcalloc.exit77.i
  %cmp.i = icmp ugt ptr %call.i.i86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cci_pmu_alloc.exit.if.then_crit_edge, label %if.end

cci_pmu_alloc.exit.if.then_crit_edge:             ; preds = %cci_pmu_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %cci_pmu_alloc.exit.if.then_crit_edge, %devm_kcalloc.exit77.i.if.then_crit_edge, %devm_kcalloc.exit73.i.if.then_crit_edge, %devm_kcalloc.exit73.thread.i, %devm_kcalloc.exit.i.if.then_crit_edge, %devm_kcalloc.exit.thread.i, %do.end11.i, %entry.if.then_crit_edge
  %retval.0.i96 = phi ptr [ %call.i.i86, %cci_pmu_alloc.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit73.i.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit73.thread.i ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.thread.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %do.end11.i ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit77.i.if.then_crit_edge ]
  %32 = ptrtoint ptr %retval.0.i96 to i32
  br label %cleanup

if.end:                                           ; preds = %cci_pmu_alloc.exit
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %33 = ptrtoint ptr %call.i.i86 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call3, ptr %call.i.i86, align 4
  %cmp.i87 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %nr_irqs = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 4
  %34 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %nr_irqs, align 4
  %35 = ptrtoint ptr %model14.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %model14.i, align 4
  %num_hw_cntrs105 = getelementptr inbounds %struct.cci_pmu_model, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %num_hw_cntrs105 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_hw_cntrs105, align 4
  %fixed_hw_cntrs106 = getelementptr inbounds %struct.cci_pmu_model, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %fixed_hw_cntrs106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fixed_hw_cntrs106, align 4
  %add107 = sub i32 0, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add107)
  %cmp108.not = icmp eq i32 %40, %add107
  br i1 %cmp108.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.0109 = phi i32 [ %inc19, %for.inc.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %for.body.for.end_crit_edge, label %if.end12

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end12:                                         ; preds = %for.body
  %41 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irqs.i, align 4
  %43 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp4.i = icmp sgt i32 %44, 0
  br i1 %cmp4.i, label %for.body.i.preheader, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

for.body.i.preheader:                             ; preds = %if.end12
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %call9)
  %cmp1.i102 = icmp eq i32 %46, %call9
  br i1 %cmp1.i102, label %for.body.i.preheader.for.inc_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.for.inc_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.05.i103 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.05.i103, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %44)
  %exitcond.not.i = icmp eq i32 %inc.i, %44
  br i1 %exitcond.not.i, label %for.cond.i.is_duplicate_irq.exit_crit_edge, label %for.body.i

for.cond.i.is_duplicate_irq.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_duplicate_irq.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i32, ptr %42, i32 %inc.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq i32 %48, %call9
  br i1 %cmp1.i, label %for.body.i.is_duplicate_irq.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i.is_duplicate_irq.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_duplicate_irq.exit

is_duplicate_irq.exit:                            ; preds = %for.body.i.is_duplicate_irq.exit_crit_edge, %for.cond.i.is_duplicate_irq.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %44)
  %cmp.i88.le = icmp slt i32 %inc.i, %44
  br i1 %cmp.i88.le, label %is_duplicate_irq.exit.for.inc_crit_edge, label %is_duplicate_irq.exit.if.end16_crit_edge

is_duplicate_irq.exit.if.end16_crit_edge:         ; preds = %is_duplicate_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

is_duplicate_irq.exit.for.inc_crit_edge:          ; preds = %is_duplicate_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end16:                                         ; preds = %is_duplicate_irq.exit.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %inc = add i32 %44, 1
  %49 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc, ptr %nr_irqs, align 4
  %arrayidx = getelementptr i32, ptr %42, i32 %44
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call9, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %is_duplicate_irq.exit.for.inc_crit_edge, %for.body.i.preheader.for.inc_crit_edge
  %inc19 = add nuw i32 %i.0109, 1
  %51 = ptrtoint ptr %model14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %model14.i, align 4
  %num_hw_cntrs = getelementptr inbounds %struct.cci_pmu_model, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %num_hw_cntrs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_hw_cntrs, align 4
  %fixed_hw_cntrs = getelementptr inbounds %struct.cci_pmu_model, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %fixed_hw_cntrs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fixed_hw_cntrs, align 4
  %add = add i32 %56, %54
  %cmp = icmp ult i32 %inc19, %add
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end7.for.end_crit_edge ], [ %i.0109, %for.body.for.end_crit_edge ], [ %inc19, %for.inc.for.end_crit_edge ]
  %57 = ptrtoint ptr %model14.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %model14.i, align 4
  %num_hw_cntrs21 = getelementptr inbounds %struct.cci_pmu_model, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %num_hw_cntrs21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_hw_cntrs21, align 4
  %fixed_hw_cntrs23 = getelementptr inbounds %struct.cci_pmu_model, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %fixed_hw_cntrs23 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fixed_hw_cntrs23, align 4
  %add24 = add i32 %62, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %add24)
  %cmp25 = icmp ult i32 %i.0.lcssa, %add24
  br i1 %cmp25, label %do.end, label %do.body34

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %i.0.lcssa, i32 noundef %add24) #13
  br label %cleanup

do.body34:                                        ; preds = %for.end
  %pmu_lock = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %pmu_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @cci_pmu_probe.__key, i16 noundef signext 2) #10
  %reserve_mutex = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %reserve_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @cci_pmu_probe.__key.7) #10
  %active_events = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_events, i32 noundef 4) #10
  %63 = ptrtoint ptr %active_events to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 0, ptr %active_events, align 4
  %64 = tail call i32 @llvm.read_register.i32(metadata !332) #10
  %and.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu, align 4
  %cpu41 = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 3
  %68 = ptrtoint ptr %cpu41 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %cpu41, align 4
  store ptr %call.i.i86, ptr @g_cci_pmu, align 4
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 170, ptr noundef nonnull @.str.9, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @cci_pmu_offline_cpu, i1 noundef zeroext false) #10
  %69 = ptrtoint ptr %model14.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %model14.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %num_hw_cntrs.i89 = getelementptr inbounds %struct.cci_pmu_model, ptr %70, i32 0, i32 2
  %73 = ptrtoint ptr %num_hw_cntrs.i89 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_hw_cntrs.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %74)
  %cmp.i90 = icmp ugt i32 %74, 8
  br i1 %cmp.i90, label %do.body34.error_pmu_init.sink.split_crit_edge, label %if.end23.i, !prof !343

do.body34.error_pmu_init.sink.split_crit_edge:    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_pmu_init.sink.split

if.end23.i:                                       ; preds = %do.body34
  %fixed_hw_cntrs.i92 = getelementptr inbounds %struct.cci_pmu_model, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %fixed_hw_cntrs.i92 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fixed_hw_cntrs.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp25.i = icmp ugt i32 %76, 1
  br i1 %cmp25.i, label %if.end23.i.error_pmu_init.sink.split_crit_edge, label %if.end57.i, !prof !343

if.end23.i.error_pmu_init.sink.split_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_pmu_init.sink.split

if.end57.i:                                       ; preds = %if.end23.i
  %event_attrs.i = getelementptr inbounds %struct.cci_pmu_model, ptr %70, i32 0, i32 5
  %77 = ptrtoint ptr %event_attrs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %event_attrs.i, align 4
  store ptr %78, ptr getelementptr inbounds (%struct.attribute_group, ptr @pmu_event_attr_group, i32 0, i32 3), align 4
  %format_attrs.i = getelementptr inbounds %struct.cci_pmu_model, ptr %70, i32 0, i32 4
  %79 = ptrtoint ptr %format_attrs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %format_attrs.i, align 4
  store ptr %80, ptr getelementptr inbounds (%struct.attribute_group, ptr @pmu_format_attr_group, i32 0, i32 3), align 4
  %pmu.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2
  %81 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %70, align 4
  %.compoundliteral.sroa.4.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 3
  %83 = call ptr @memset(ptr %pmu.i, i32 0, i32 16)
  %84 = ptrtoint ptr %.compoundliteral.sroa.4.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @pmu_attr_groups, ptr %.compoundliteral.sroa.4.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 4
  %85 = ptrtoint ptr %.compoundliteral.sroa.5.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %.compoundliteral.sroa.5.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.6.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 5
  %86 = ptrtoint ptr %.compoundliteral.sroa.6.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %82, ptr %.compoundliteral.sroa.6.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 6
  %87 = ptrtoint ptr %.compoundliteral.sroa.7.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %.compoundliteral.sroa.7.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.8.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 7
  %88 = ptrtoint ptr %.compoundliteral.sroa.8.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 128, ptr %.compoundliteral.sroa.8.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.9.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 8
  %89 = ptrtoint ptr %.compoundliteral.sroa.9.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %.compoundliteral.sroa.9.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.10.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 9
  %90 = ptrtoint ptr %.compoundliteral.sroa.10.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %.compoundliteral.sroa.10.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.11.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 10
  %91 = ptrtoint ptr %.compoundliteral.sroa.11.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %.compoundliteral.sroa.11.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.12.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 11
  %92 = ptrtoint ptr %.compoundliteral.sroa.12.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %.compoundliteral.sroa.12.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.13.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 12
  %93 = ptrtoint ptr %.compoundliteral.sroa.13.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %.compoundliteral.sroa.13.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.14.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 13
  %94 = ptrtoint ptr %.compoundliteral.sroa.14.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %.compoundliteral.sroa.14.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.15.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 14
  %95 = ptrtoint ptr %.compoundliteral.sroa.15.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @cci_pmu_enable, ptr %.compoundliteral.sroa.15.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.16.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 15
  %96 = ptrtoint ptr %.compoundliteral.sroa.16.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @cci_pmu_disable, ptr %.compoundliteral.sroa.16.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.17.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 16
  %97 = ptrtoint ptr %.compoundliteral.sroa.17.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @cci_pmu_event_init, ptr %.compoundliteral.sroa.17.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.18.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 17
  %98 = ptrtoint ptr %.compoundliteral.sroa.18.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %.compoundliteral.sroa.18.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.19.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 18
  %99 = ptrtoint ptr %.compoundliteral.sroa.19.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %.compoundliteral.sroa.19.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.20.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 19
  %100 = ptrtoint ptr %.compoundliteral.sroa.20.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @cci_pmu_add, ptr %.compoundliteral.sroa.20.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.21.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 20
  %101 = ptrtoint ptr %.compoundliteral.sroa.21.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @cci_pmu_del, ptr %.compoundliteral.sroa.21.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.22.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 21
  %102 = ptrtoint ptr %.compoundliteral.sroa.22.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @cci_pmu_start, ptr %.compoundliteral.sroa.22.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.23.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 22
  %103 = ptrtoint ptr %.compoundliteral.sroa.23.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @cci_pmu_stop, ptr %.compoundliteral.sroa.23.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.24.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 23
  %104 = ptrtoint ptr %.compoundliteral.sroa.24.0.pmu.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @pmu_read, ptr %.compoundliteral.sroa.24.0.pmu.sroa_idx.i, align 4
  %.compoundliteral.sroa.25.0.pmu.sroa_idx.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 2, i32 24
  %plat_device.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 9
  %105 = call ptr @memset(ptr %.compoundliteral.sroa.25.0.pmu.sroa_idx.i, i32 0, i32 60)
  %106 = ptrtoint ptr %plat_device.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %pdev, ptr %plat_device.i, align 4
  %107 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %108, i32 256
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !342
  %110 = lshr i32 %109, 19
  %and.i.i = and i32 %110, 31
  %111 = ptrtoint ptr %model14.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %model14.i, align 4
  %num_hw_cntrs63.i = getelementptr inbounds %struct.cci_pmu_model, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %num_hw_cntrs63.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_hw_cntrs63.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %114)
  %cmp64.i = icmp ugt i32 %and.i.i, %114
  br i1 %cmp64.i, label %do.end68.i, label %if.end57.i.cci_pmu_init.exit_crit_edge

if.end57.i.cci_pmu_init.exit_crit_edge:           ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_pmu_init.exit

do.end68.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.256, i32 noundef %and.i.i, i32 noundef %114) #13
  %115 = ptrtoint ptr %model14.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %model14.i, align 4
  %num_hw_cntrs73.i = getelementptr inbounds %struct.cci_pmu_model, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %num_hw_cntrs73.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_hw_cntrs73.i, align 4
  br label %cci_pmu_init.exit

cci_pmu_init.exit:                                ; preds = %do.end68.i, %if.end57.i.cci_pmu_init.exit_crit_edge
  %num_cntrs.0.i = phi i32 [ %118, %do.end68.i ], [ %and.i.i, %if.end57.i.cci_pmu_init.exit_crit_edge ]
  %119 = ptrtoint ptr %model14.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %model14.i, align 4
  %fixed_hw_cntrs76.i = getelementptr inbounds %struct.cci_pmu_model, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %fixed_hw_cntrs76.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fixed_hw_cntrs76.i, align 4
  %add77.i = add i32 %122, %num_cntrs.0.i
  %num_cntrs78.i = getelementptr inbounds %struct.cci_pmu, ptr %call.i.i86, i32 0, i32 10
  %123 = ptrtoint ptr %num_cntrs78.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add77.i, ptr %num_cntrs78.i, align 4
  %call80.i = tail call i32 @perf_pmu_register(ptr noundef %pmu.i, ptr noundef %72, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool.not = icmp eq i32 %call80.i, 0
  br i1 %tobool.not, label %do.end48, label %cci_pmu_init.exit.error_pmu_init_crit_edge

cci_pmu_init.exit.error_pmu_init_crit_edge:       ; preds = %cci_pmu_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_pmu_init

do.end48:                                         ; preds = %cci_pmu_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %model14.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %model14.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %127) #13
  br label %cleanup

error_pmu_init.sink.split:                        ; preds = %if.end23.i.error_pmu_init.sink.split_crit_edge, %do.body34.error_pmu_init.sink.split_crit_edge
  %.sink = phi i32 [ 1405, %do.body34.error_pmu_init.sink.split_crit_edge ], [ 1407, %if.end23.i.error_pmu_init.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #10
  br label %error_pmu_init

error_pmu_init:                                   ; preds = %error_pmu_init.sink.split, %cci_pmu_init.exit.error_pmu_init_crit_edge
  %retval.0.i93100 = phi i32 [ %call80.i, %cci_pmu_init.exit.error_pmu_init_crit_edge ], [ -22, %error_pmu_init.sink.split ]
  tail call void @__cpuhp_remove_state(i32 noundef 170, i1 noundef zeroext true) #10
  store ptr null, ptr @g_cci_pmu, align 4
  br label %cleanup

cleanup:                                          ; preds = %error_pmu_init, %do.end48, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %32, %if.then ], [ -22, %do.end ], [ %retval.0.i93100, %error_pmu_init ], [ 0, %do.end48 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pmu_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @g_cci_pmu, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__cpuhp_remove_state(i32 noundef 170, i1 noundef zeroext true) #10
  %1 = load ptr, ptr @g_cci_pmu, align 4
  %pmu = getelementptr inbounds %struct.cci_pmu, ptr %1, i32 0, i32 2
  tail call void @perf_pmu_unregister(ptr noundef %pmu) #10
  store ptr null, ptr @g_cci_pmu, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pmu_offline_cpu(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @g_cci_pmu, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cpu1 = getelementptr inbounds %struct.cci_pmu, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cpu)
  %cmp.not = icmp eq i32 %2, %cpu
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @cpumask_any_but(ptr noundef nonnull @__cpu_online_mask, i32 noundef %cpu) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %3)
  %cmp2.not = icmp ult i32 %call, %3
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pmu = getelementptr inbounds %struct.cci_pmu, ptr %0, i32 0, i32 2
  tail call void @perf_pmu_migrate_context(ptr noundef %pmu, i32 noundef %cpu, i32 noundef %call) #10
  %4 = load ptr, ptr @g_cci_pmu, align 4
  %cpu5 = getelementptr inbounds %struct.cci_pmu, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %cpu5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mcpm_is_available() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cci400_validate_hw_event(ptr nocapture noundef readonly %cci_pmu, i32 noundef %hw_event) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv3 = and i32 %hw_event, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %hw_event)
  %tobool.not = icmp ult i32 %hw_event, 256
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %hw_event)
  %cmp = icmp eq i32 %hw_event, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %0 = and i32 %hw_event, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %0)
  %switch = icmp ugt i32 %0, 159
  %. = zext i1 %switch to i32
  %model = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 7
  %1 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %model, align 4
  %arrayidx = getelementptr %struct.cci_pmu_model, ptr %2, i32 0, i32 6, i32 %.
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %4)
  %cmp11.not = icmp ult i32 %conv3, %4
  br i1 %cmp11.not, label %if.end7.if.end20_crit_edge, label %land.lhs.true

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end7
  %max = getelementptr %struct.cci_pmu_model, ptr %2, i32 0, i32 6, i32 %., i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %6)
  %cmp17.not = icmp ugt i32 %conv3, %6
  br i1 %cmp17.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end20 ], [ -2, %entry.cleanup_crit_edge ], [ 255, %if.end.cleanup_crit_edge ], [ %hw_event, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci400_get_event_idx(ptr nocapture noundef readonly %cci_pmu, ptr nocapture noundef readonly %hw, i32 noundef %cci_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %cci_event)
  %cmp = icmp eq i32 %cci_event, 255
  %used_mask = getelementptr inbounds %struct.cci_pmu_hw_events, ptr %hw, i32 0, i32 1
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_cntrs = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 10
  %0 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cntrs, align 4
  %sub13 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub13)
  %cmp3.not14 = icmp slt i32 %sub13, 1
  br i1 %cmp3.not14, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %used_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used_mask, align 4
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %idx.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %used_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %used_mask, align 4
  %call5 = tail call i32 @_test_and_set_bit(i32 noundef %idx.015, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %idx.015, 1
  %6 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cntrs, align 4
  %sub = add i32 %7, -1
  %cmp3.not = icmp sgt i32 %inc, %sub
  br i1 %cmp3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then ], [ -11, %for.cond.preheader.cleanup_crit_edge ], [ %idx.015, %for.body.cleanup_crit_edge ], [ -11, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cci500_validate_hw_event(ptr nocapture noundef readonly %cci_pmu, i32 noundef %hw_event) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and2 = and i32 %hw_event, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %hw_event)
  %tobool.not = icmp ult i32 %hw_event, 512
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %hw_event, 5
  %switch.maskindex = trunc i32 %shr to i16
  %switch.shifted = lshr i16 -16513, %switch.maskindex
  %0 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %switch.lobit.not = icmp eq i16 %0, 0
  br i1 %switch.lobit.not, label %if.end.cleanup_crit_edge, label %switch.lookup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.cci500_validate_hw_event, i32 0, i32 %shr
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %model = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 7
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model, align 4
  %arrayidx = getelementptr %struct.cci_pmu_model, ptr %3, i32 0, i32 6, i32 %switch.load
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %5)
  %cmp.not = icmp ult i32 %and2, %5
  br i1 %cmp.not, label %switch.lookup.if.end11_crit_edge, label %land.lhs.true

switch.lookup.if.end11_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %switch.lookup
  %max = getelementptr %struct.cci_pmu_model, ptr %3, i32 0, i32 6, i32 %switch.load, i32 1
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %7)
  %cmp9.not = icmp ugt i32 %and2, %7
  br i1 %cmp9.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %switch.lookup.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end11 ], [ -2, %entry.cleanup_crit_edge ], [ %hw_event, %land.lhs.true.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cci5xx_pmu_write_counters(ptr noundef readonly %cci_pmu, ptr noundef %mask) #2 align 64 {
entry:
  %saved_mask = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved_mask) #10
  %0 = ptrtoint ptr %saved_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %saved_mask, align 4, !annotation !344
  %num_cntrs = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 10
  %1 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_cntrs, align 4
  %sub.i = add i32 %2, 31
  %3 = lshr i32 %sub.i, 3
  %mul.i = and i32 %3, 536870908
  %4 = call ptr @memset(ptr %saved_mask, i32 0, i32 %mul.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp12.i = icmp sgt i32 %2, 0
  br i1 %cmp12.i, label %for.body.lr.ph.i, label %entry.pmu_save_counters.exit_crit_edge

entry.pmu_save_counters.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmu_save_counters.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %model.i.i.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %cci_pmu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cci_pmu, align 4
  %7 = ptrtoint ptr %model.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %model.i.i.i, align 4
  %cntr_size.i.i.i = getelementptr inbounds %struct.cci_pmu_model, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cntr_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cntr_size.i.i.i, align 4
  %mul.i.i.i = mul i32 %10, %i.013.i
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #10, !srcloc !342
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, 0
  br i1 %cmp.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef %i.013.i, ptr noundef nonnull %saved_mask) #10
  %13 = ptrtoint ptr %cci_pmu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cci_pmu, align 4
  %15 = ptrtoint ptr %model.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %model.i.i.i, align 4
  %cntr_size.i.i8.i = getelementptr inbounds %struct.cci_pmu_model, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cntr_size.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cntr_size.i.i8.i, align 4
  %mul.i.i9.i = mul i32 %18, %i.013.i
  %add.ptr.i.i10.i = getelementptr i8, ptr %14, i32 8
  %add.ptr1.i.i11.i = getelementptr i8, ptr %add.ptr.i.i10.i, i32 %mul.i.i9.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i11.i, i32 0) #10, !srcloc !345
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %19 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_cntrs, align 4
  %cmp.i = icmp slt i32 %inc.i, %20
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.pmu_save_counters.exit_crit_edge

for.inc.i.pmu_save_counters.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmu_save_counters.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

pmu_save_counters.exit:                           ; preds = %for.inc.i.pmu_save_counters.exit_crit_edge, %entry.pmu_save_counters.exit_crit_edge
  %ctrl_base.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 1
  %21 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 256
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !342
  %24 = or i32 %23, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %26, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %24) #10, !srcloc !345
  %27 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_cntrs, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %28, i32 noundef 0) #10
  %29 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_cntrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %30)
  %cmp87 = icmp slt i32 %call, %30
  br i1 %cmp87, label %for.body.lr.ph, label %pmu_save_counters.exit.for.end_crit_edge

pmu_save_counters.exit.for.end_crit_edge:         ; preds = %pmu_save_counters.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %pmu_save_counters.exit
  %hw_events = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 8
  %model.i.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.088 = phi i32 [ %call, %for.body.lr.ph ], [ %call30, %cleanup.for.body_crit_edge ]
  %31 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_events, align 4
  %arrayidx = getelementptr ptr, ptr %32, i32 %i.088
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %34, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !343

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 966, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %cci_pmu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cci_pmu, align 4
  %37 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %model.i.i, align 4
  %cntr_size.i.i = getelementptr inbounds %struct.cci_pmu_model, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cntr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cntr_size.i.i, align 4
  %mul.i.i = mul i32 %40, %i.088
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %mul.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 520159232) #10, !srcloc !345
  %41 = ptrtoint ptr %cci_pmu to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cci_pmu, align 4
  %43 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %model.i.i, align 4
  %cntr_size.i.i57 = getelementptr inbounds %struct.cci_pmu_model, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cntr_size.i.i57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cntr_size.i.i57, align 4
  %mul.i.i58 = mul i32 %46, %i.088
  %add.ptr.i.i59 = getelementptr i8, ptr %42, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i59, i32 %mul.i.i58
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 16777216) #10, !srcloc !345
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %34, i32 0, i32 25, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %prev_count, i32 noundef 8) #10
  %call.i = call i64 @generic_atomic64_read(ptr noundef %prev_count) #10
  %conv = trunc i64 %call.i to i32
  %47 = call i32 @llvm.bswap.i32(i32 %conv) #10
  %48 = ptrtoint ptr %cci_pmu to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cci_pmu, align 4
  %50 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %model.i.i, align 4
  %cntr_size.i.i61 = getelementptr inbounds %struct.cci_pmu_model, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cntr_size.i.i61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cntr_size.i.i61, align 4
  %mul.i.i62 = mul i32 %53, %i.088
  %add.ptr.i.i63 = getelementptr i8, ptr %49, i32 4
  %add.ptr1.i.i64 = getelementptr i8, ptr %add.ptr.i.i63, i32 %mul.i.i62
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i64, i32 %47) #10, !srcloc !345
  %54 = ptrtoint ptr %cci_pmu to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cci_pmu, align 4
  %56 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %model.i.i, align 4
  %cntr_size.i.i66 = getelementptr inbounds %struct.cci_pmu_model, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cntr_size.i.i66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cntr_size.i.i66, align 4
  %mul.i.i67 = mul i32 %59, %i.088
  %add.ptr.i.i68 = getelementptr i8, ptr %55, i32 8
  %add.ptr1.i.i69 = getelementptr i8, ptr %add.ptr.i.i68, i32 %mul.i.i67
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i69, i32 0) #10, !srcloc !345
  %config_base = getelementptr inbounds %struct.perf_event, ptr %34, i32 0, i32 25, i32 0, i32 0, i32 2
  %60 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %config_base, align 8
  %62 = call i32 @llvm.bswap.i32(i32 %61) #10
  %63 = ptrtoint ptr %cci_pmu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cci_pmu, align 4
  %65 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %model.i.i, align 4
  %cntr_size.i.i71 = getelementptr inbounds %struct.cci_pmu_model, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %cntr_size.i.i71 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cntr_size.i.i71, align 4
  %mul.i.i72 = mul i32 %68, %i.088
  %add.ptr.i.i73 = getelementptr i8, ptr %64, i32 %mul.i.i72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i73, i32 %62) #10, !srcloc !345
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  %69 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_cntrs, align 4
  %add = add nsw i32 %i.088, 1
  %call30 = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %70, i32 noundef %add) #10
  %71 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_cntrs, align 4
  %cmp = icmp slt i32 %call30, %72
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %pmu_save_counters.exit.for.end_crit_edge
  %73 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %74, i32 256
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #10, !srcloc !342
  %76 = and i32 %75, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  call void @arm_heavy_mb() #10
  %77 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr2.i76 = getelementptr i8, ptr %78, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i76, i32 %76) #10, !srcloc !345
  %79 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_cntrs, align 4
  %call.i78 = call i32 @_find_next_bit_be(ptr noundef nonnull %saved_mask, i32 noundef %80, i32 noundef 0) #10
  %81 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_cntrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i78, i32 %82)
  %cmp10.i = icmp slt i32 %call.i78, %82
  br i1 %cmp10.i, label %for.body.lr.ph.i80, label %for.end.pmu_restore_counters.exit_crit_edge

for.end.pmu_restore_counters.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmu_restore_counters.exit

for.body.lr.ph.i80:                               ; preds = %for.end
  %model.i.i.i79 = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 7
  br label %for.body.i86

for.body.i86:                                     ; preds = %for.body.i86.for.body.i86_crit_edge, %for.body.lr.ph.i80
  %i.011.i = phi i32 [ %call.i78, %for.body.lr.ph.i80 ], [ %call3.i, %for.body.i86.for.body.i86_crit_edge ]
  %83 = ptrtoint ptr %cci_pmu to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cci_pmu, align 4
  %85 = ptrtoint ptr %model.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %model.i.i.i79, align 4
  %cntr_size.i.i.i81 = getelementptr inbounds %struct.cci_pmu_model, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %cntr_size.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cntr_size.i.i.i81, align 4
  %mul.i.i.i82 = mul i32 %88, %i.011.i
  %add.ptr.i.i.i83 = getelementptr i8, ptr %84, i32 8
  %add.ptr1.i.i.i84 = getelementptr i8, ptr %add.ptr.i.i.i83, i32 %mul.i.i.i82
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i84, i32 16777216) #10, !srcloc !345
  %89 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_cntrs, align 4
  %add.i = add nsw i32 %i.011.i, 1
  %call3.i = call i32 @_find_next_bit_be(ptr noundef nonnull %saved_mask, i32 noundef %90, i32 noundef %add.i) #10
  %91 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_cntrs, align 4
  %cmp.i85 = icmp slt i32 %call3.i, %92
  br i1 %cmp.i85, label %for.body.i86.for.body.i86_crit_edge, label %for.body.i86.pmu_restore_counters.exit_crit_edge

for.body.i86.pmu_restore_counters.exit_crit_edge: ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmu_restore_counters.exit

for.body.i86.for.body.i86_crit_edge:              ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i86

pmu_restore_counters.exit:                        ; preds = %for.body.i86.pmu_restore_counters.exit_crit_edge, %for.end.pmu_restore_counters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved_mask) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cci550_validate_hw_event(ptr nocapture noundef readonly %cci_pmu, i32 noundef %hw_event) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and2 = and i32 %hw_event, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %hw_event)
  %tobool.not = icmp ult i32 %hw_event, 512
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %hw_event, 5
  %switch.maskindex = trunc i32 %shr to i16
  %switch.shifted = lshr i16 -129, %switch.maskindex
  %0 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %switch.lobit.not = icmp eq i16 %0, 0
  br i1 %switch.lobit.not, label %if.end.cleanup_crit_edge, label %switch.lookup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.cci550_validate_hw_event, i32 0, i32 %shr
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %model = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 7
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model, align 4
  %arrayidx = getelementptr %struct.cci_pmu_model, ptr %3, i32 0, i32 6, i32 %switch.load
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %5)
  %cmp.not = icmp ult i32 %and2, %5
  br i1 %cmp.not, label %switch.lookup.if.end11_crit_edge, label %land.lhs.true

switch.lookup.if.end11_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %switch.lookup
  %max = getelementptr %struct.cci_pmu_model, ptr %3, i32 0, i32 6, i32 %switch.load, i32 1
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %7)
  %cmp9.not = icmp ugt i32 %and2, %7
  br i1 %cmp9.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %switch.lookup.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end11 ], [ -2, %entry.cleanup_crit_edge ], [ %hw_event, %land.lhs.true.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pmu_format_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pmu_event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %2 = ptrtoint ptr %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.85, i32 noundef %2) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci400_pmu_cycle_event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %2 = ptrtoint ptr %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.86, i32 noundef %2) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci5xx_pmu_global_event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %2 = ptrtoint ptr %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.255, i32 noundef %2, i32 noundef 15) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_migrate_context(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cci_pmu_enable(ptr noundef %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_cntrs = getelementptr i8, ptr %pmu, i32 236
  %0 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cntrs, align 4
  %used_mask = getelementptr i8, ptr %pmu, i32 184
  %2 = ptrtoint ptr %used_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used_mask, align 4
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %3, i32 noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %pmu, i32 -8
  %pmu_lock = getelementptr i8, ptr %pmu, i32 188
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #10
  tail call fastcc void @__cci_pmu_enable_sync(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cci_pmu_disable(ptr noundef %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu_lock = getelementptr i8, ptr %pmu, i32 188
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #10
  %ctrl_base.i = getelementptr i8, ptr %pmu, i32 -4
  %0 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !342
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #10, !srcloc !345
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pmu_event_init(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %active_events1 = getelementptr i8, ptr %1, i32 240
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %type3 = getelementptr inbounds %struct.pmu, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.i.not = icmp eq i64 %8, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %attach_state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 15
  %9 = ptrtoint ptr %attach_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attach_state, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %cpu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 34
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %cpu9 = getelementptr i8, ptr %1, i32 160
  %13 = ptrtoint ptr %cpu9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu9, align 4
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cpu, align 4
  %destroy = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 55
  %16 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hw_perf_event_destroy, ptr %destroy, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_events1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !348
  tail call void @llvm.prefetch.p0(ptr %active_events1, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %active_events1, ptr %active_events1, i32 0, i32 1, ptr elementtype(i32) %active_events1) #10, !srcloc !349
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then12, label %if.end22.thread

if.end22.thread:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !350
  br label %if.end25

if.then12:                                        ; preds = %if.end8
  %reserve_mutex = getelementptr i8, ptr %1, i32 244
  tail call void @mutex_lock_nested(ptr noundef %reserve_mutex, i32 noundef 0) #10
  %call.i.i51 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_events1, i32 noundef 4) #10
  %18 = ptrtoint ptr %active_events1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %active_events1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp14 = icmp eq i32 %19, 0
  br i1 %cmp14, label %if.end17, label %if.then12.if.end22.thread60_crit_edge

if.then12.if.end22.thread60_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.thread60

if.end17:                                         ; preds = %if.then12
  %call16 = tail call fastcc i32 @cci_pmu_get_hw(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end17.if.end22.thread60_crit_edge, label %if.end22

if.end17.if.end22.thread60_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.thread60

if.end22.thread60:                                ; preds = %if.end17.if.end22.thread60_crit_edge, %if.then12.if.end22.thread60_crit_edge
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_events1, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %active_events1, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_events1, ptr %active_events1, i32 1, ptr elementtype(i32) %active_events1) #10, !srcloc !351
  tail call void @mutex_unlock(ptr noundef %reserve_mutex) #10
  br label %if.end25

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %reserve_mutex) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end22.thread60, %if.end22.thread
  %call26 = tail call fastcc i32 @__hw_perf_event_init(ptr noundef %event)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.then28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hw_perf_event_destroy(ptr noundef %event)
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end25.cleanup_crit_edge, %if.end22, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %call16, %if.end22 ], [ %call26, %if.then28 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pmu_add(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %hw_events1 = getelementptr i8, ptr %1, i32 180
  %model.i = getelementptr i8, ptr %1, i32 176
  %2 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model.i, align 4
  %get_event_idx.i = getelementptr inbounds %struct.cci_pmu_model, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_event_idx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %entry
  %used_mask.i = getelementptr i8, ptr %1, i32 184
  %num_cntrs.i = getelementptr i8, ptr %1, i32 236
  %6 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cntrs.i, align 4
  %sub18.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i)
  %cmp.not19.i = icmp slt i32 %sub18.i, 0
  br i1 %cmp.not19.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %config_base.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %config_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base.i, align 8
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i, ptr noundef %hw_events1, i32 noundef %9) #10
  br label %pmu_get_event_idx.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %idx.020.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %used_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %used_mask.i, align 4
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef %idx.020.i, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.body.i.pmu_get_event_idx.exit_crit_edge, label %for.inc.i

for.body.i.pmu_get_event_idx.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmu_get_event_idx.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %idx.020.i, 1
  %12 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_cntrs.i, align 4
  %sub.i = add i32 %13, -1
  %cmp.not.i = icmp sgt i32 %inc.i, %sub.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pmu_get_event_idx.exit:                           ; preds = %for.body.i.pmu_get_event_idx.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %idx.020.i, %for.body.i.pmu_get_event_idx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %pmu_get_event_idx.exit.cleanup_crit_edge, label %if.end

pmu_get_event_idx.exit.cleanup_crit_edge:         ; preds = %pmu_get_event_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %pmu_get_event_idx.exit
  %idx3 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %14 = ptrtoint ptr %idx3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %idx3, align 4
  %15 = ptrtoint ptr %hw_events1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_events1, align 4
  %arrayidx = getelementptr ptr, ptr %16, i32 %retval.0.i
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %event, ptr %arrayidx, align 4
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %state, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cci_pmu_start(ptr noundef %event, i32 noundef 2)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @perf_event_update_userpage(ptr noundef %event) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %pmu_get_event_idx.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %retval.0.i, %pmu_get_event_idx.exit.cleanup_crit_edge ], [ -11, %for.cond.preheader.i.cleanup_crit_edge ], [ -11, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cci_pmu_del(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %idx2 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx2, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %state.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cci_pmu_stop.exit_crit_edge

entry.cci_pmu_stop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_pmu_stop.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.i = icmp sgt i32 %3, -1
  br i1 %cmp.i.i, label %pmu_is_valid_counter.exit.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

pmu_is_valid_counter.exit.i:                      ; preds = %if.end.i
  %num_cntrs.i.i = getelementptr i8, ptr %1, i32 236
  %6 = ptrtoint ptr %num_cntrs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cntrs.i.i, align 4
  %sub.i.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %3)
  %cmp1.i.not.i = icmp slt i32 %sub.i.i, %3
  br i1 %cmp1.i.not.i, label %pmu_is_valid_counter.exit.i.do.end.i_crit_edge, label %if.end7.i, !prof !343

pmu_is_valid_counter.exit.i.do.end.i_crit_edge:   ; preds = %pmu_is_valid_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %pmu_is_valid_counter.exit.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %plat_device.i = getelementptr i8, ptr %1, i32 232
  %8 = ptrtoint ptr %plat_device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_device.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.268, i32 noundef %3) #13
  br label %cci_pmu_stop.exit

if.end7.i:                                        ; preds = %pmu_is_valid_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %model.i.i.i = getelementptr i8, ptr %1, i32 176
  %12 = ptrtoint ptr %model.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %model.i.i.i, align 4
  %cntr_size.i.i.i = getelementptr inbounds %struct.cci_pmu_model, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cntr_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cntr_size.i.i.i, align 4
  %mul.i.i.i = mul i32 %15, %3
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %mul.i.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 0) #10, !srcloc !345
  tail call fastcc void @pmu_event_update(ptr noundef %event) #10
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  %or.i = or i32 %17, 3
  store i32 %or.i, ptr %state.i, align 4
  br label %cci_pmu_stop.exit

cci_pmu_stop.exit:                                ; preds = %if.end7.i, %do.end.i, %entry.cci_pmu_stop.exit_crit_edge
  %hw_events1 = getelementptr i8, ptr %1, i32 180
  %18 = ptrtoint ptr %hw_events1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_events1, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  %used_mask = getelementptr i8, ptr %1, i32 184
  %21 = ptrtoint ptr %used_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %used_mask, align 4
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %22) #10
  tail call void @perf_event_update_userpage(ptr noundef %event) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cci_pmu_start(ptr noundef %event, i32 noundef %pmu_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %idx2 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx2, align 4
  %and = and i32 %pmu_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end43_crit_edge, label %if.then

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and3 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.rhs, label %if.then.if.end43_crit_edge

if.then.if.end43_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.rhs:                                         ; preds = %if.then
  %.b97 = load i1, ptr @cci_pmu_start.__already_done, align 1
  br i1 %.b97, label %land.rhs.if.end43_crit_edge, label %if.then13, !prof !352

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cci_pmu_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1145, i32 noundef 9, ptr noundef null) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then13, %land.rhs.if.end43_crit_edge, %if.then.if.end43_crit_edge, %entry.if.end43_crit_edge
  %state44 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %6 = ptrtoint ptr %state44 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %pmu_is_valid_counter.exit, label %if.end43.do.end57_crit_edge

if.end43.do.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

pmu_is_valid_counter.exit:                        ; preds = %if.end43
  %num_cntrs.i = getelementptr i8, ptr %1, i32 236
  %7 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cntrs.i, align 4
  %sub.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %3)
  %cmp1.i.not = icmp slt i32 %sub.i, %3
  br i1 %cmp1.i.not, label %pmu_is_valid_counter.exit.do.end57_crit_edge, label %pmu_fixed_hw_idx.exit, !prof !343

pmu_is_valid_counter.exit.do.end57_crit_edge:     ; preds = %pmu_is_valid_counter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

do.end57:                                         ; preds = %pmu_is_valid_counter.exit.do.end57_crit_edge, %if.end43.do.end57_crit_edge
  %plat_device = getelementptr i8, ptr %1, i32 232
  %9 = ptrtoint ptr %plat_device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plat_device, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.268, i32 noundef %3) #13
  br label %cleanup

pmu_fixed_hw_idx.exit:                            ; preds = %pmu_is_valid_counter.exit
  %pmu_lock = getelementptr i8, ptr %1, i32 188
  %call61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #10
  %model.i = getelementptr i8, ptr %1, i32 176
  %11 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model.i, align 4
  %fixed_hw_cntrs.i = getelementptr inbounds %struct.cci_pmu_model, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %fixed_hw_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fixed_hw_cntrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp1.i99 = icmp ugt i32 %14, %3
  br i1 %cmp1.i99, label %pmu_fixed_hw_idx.exit.if.end66_crit_edge, label %if.then65

pmu_fixed_hw_idx.exit.if.end66_crit_edge:         ; preds = %pmu_fixed_hw_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then65:                                        ; preds = %pmu_fixed_hw_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config_base, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %model.i, align 4
  %cntr_size.i.i = getelementptr inbounds %struct.cci_pmu_model, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cntr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cntr_size.i.i, align 4
  %mul.i.i = mul i32 %23, %3
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #10, !srcloc !345
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %pmu_fixed_hw_idx.exit.if.end66_crit_edge
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef 2147483648) #10
  %24 = ptrtoint ptr %state44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state44, align 4
  %or.i = or i32 %25, 4
  store i32 %or.i, ptr %state44, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %model.i, align 4
  %cntr_size.i.i102 = getelementptr inbounds %struct.cci_pmu_model, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cntr_size.i.i102 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cntr_size.i.i102, align 4
  %mul.i.i103 = mul i32 %31, %3
  %add.ptr.i.i104 = getelementptr i8, ptr %27, i32 %mul.i.i103
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i104, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 16777216) #10, !srcloc !345
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call61) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cci_pmu_stop(ptr noundef %event, i32 noundef %pmu_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %idx1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx1, align 4
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %pmu_is_valid_counter.exit, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

pmu_is_valid_counter.exit:                        ; preds = %if.end
  %num_cntrs.i = getelementptr i8, ptr %1, i32 236
  %6 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cntrs.i, align 4
  %sub.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %3)
  %cmp1.i.not = icmp slt i32 %sub.i, %3
  br i1 %cmp1.i.not, label %pmu_is_valid_counter.exit.do.end_crit_edge, label %if.end7, !prof !343

pmu_is_valid_counter.exit.do.end_crit_edge:       ; preds = %pmu_is_valid_counter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %pmu_is_valid_counter.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %plat_device = getelementptr i8, ptr %1, i32 232
  %8 = ptrtoint ptr %plat_device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_device, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.268, i32 noundef %3) #13
  br label %cleanup

if.end7:                                          ; preds = %pmu_is_valid_counter.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %model.i.i = getelementptr i8, ptr %1, i32 176
  %12 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %model.i.i, align 4
  %cntr_size.i.i = getelementptr inbounds %struct.cci_pmu_model, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cntr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cntr_size.i.i, align 4
  %mul.i.i = mul i32 %15, %3
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #10, !srcloc !345
  tail call fastcc void @pmu_event_update(ptr noundef %event)
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  %or = or i32 %17, 3
  store i32 %or, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmu_read(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pmu_event_update(ptr noundef %event)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmu_cpumask_attr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpu = getelementptr i8, ptr %1, i32 160
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %rem.i = and i32 %3, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %3, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef %add.ptr.i, i32 noundef %4) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cci_pmu_enable_sync(ptr noundef %cci_pmu) unnamed_addr #2 align 64 {
entry:
  %mask.i = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_events.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #10
  %0 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask.i, align 4, !annotation !344
  %num_cntrs.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 10
  %1 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_cntrs.i, align 4
  %sub.i.i = add i32 %2, 31
  %3 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %3, 536870908
  %4 = call ptr @memset(ptr %mask.i, i32 0, i32 %mul.i.i)
  %used_mask.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %used_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %used_mask.i, align 4
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %6, i32 noundef %2, i32 noundef 0) #10
  %7 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cntrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %8)
  %cmp59.i = icmp slt i32 %call.i, %8
  br i1 %cmp59.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.060.i = phi i32 [ %call43.i, %cleanup.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %hw_events.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_events.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %i.060.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end26.i, !prof !343

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 652, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.i

if.end26.i:                                       ; preds = %for.body.i
  %state.i = getelementptr inbounds %struct.perf_event, ptr %12, i32 0, i32 25, i32 4
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 4
  %15 = and i32 %14, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %.not.i = icmp eq i32 %15, 4
  br i1 %.not.i, label %if.then34.i, label %if.end26.i.cleanup.i_crit_edge

if.end26.i.cleanup.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then34.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef %i.060.i, ptr noundef nonnull %mask.i) #10
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  %and38.i = and i32 %17, -5
  store i32 %and38.i, ptr %state.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then34.i, %if.end26.i.cleanup.i_crit_edge, %do.end.i
  %18 = ptrtoint ptr %used_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %used_mask.i, align 4
  %20 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_cntrs.i, align 4
  %add.i = add nsw i32 %i.060.i, 1
  %call43.i = call i32 @_find_next_bit_be(ptr noundef %19, i32 noundef %21, i32 noundef %add.i) #10
  %22 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_cntrs.i, align 4
  %cmp.i = icmp slt i32 %call43.i, %23
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %8, %entry.for.end.i_crit_edge ], [ %23, %cleanup.i.for.end.i_crit_edge ]
  %model.i.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 7
  %24 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %model.i.i, align 4
  %write_counters.i.i = getelementptr inbounds %struct.cci_pmu_model, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %write_counters.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_counters.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %27(ptr noundef %cci_pmu, ptr noundef nonnull %mask.i) #10
  br label %cci_pmu_sync_counters.exit

if.else.i.i:                                      ; preds = %for.end.i
  %call.i.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef %.lcssa.i, i32 noundef 0) #10
  %28 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_cntrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %29)
  %cmp38.i.i.i = icmp slt i32 %call.i.i.i, %29
  br i1 %cmp38.i.i.i, label %if.else.i.i.for.body.i.i.i_crit_edge, label %if.else.i.i.cci_pmu_sync_counters.exit_crit_edge

if.else.i.i.cci_pmu_sync_counters.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_pmu_sync_counters.exit

if.else.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cleanup.i.i.i.for.body.i.i.i_crit_edge, %if.else.i.i.for.body.i.i.i_crit_edge
  %i.039.i.i.i = phi i32 [ %call27.i.i.i, %cleanup.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i.i, %if.else.i.i.for.body.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %hw_events.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_events.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %31, i32 %i.039.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end24.i.i.i, !prof !343

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 904, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.i.i.i

if.end24.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev_count.i.i.i = getelementptr inbounds %struct.perf_event, ptr %33, i32 0, i32 25, i32 5
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %prev_count.i.i.i, i32 noundef 8) #10
  %call.i.i.i.i = call i64 @generic_atomic64_read(ptr noundef %prev_count.i.i.i) #10
  %conv.i.i.i = trunc i64 %call.i.i.i.i to i32
  %34 = call i32 @llvm.bswap.i32(i32 %conv.i.i.i) #10
  %35 = ptrtoint ptr %cci_pmu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cci_pmu, align 4
  %37 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %model.i.i, align 4
  %cntr_size.i.i.i.i.i = getelementptr inbounds %struct.cci_pmu_model, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cntr_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cntr_size.i.i.i.i.i, align 4
  %mul.i.i.i.i.i = mul i32 %40, %i.039.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %36, i32 4
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i.i.i, i32 %34) #10, !srcloc !345
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.end24.i.i.i, %do.end.i.i.i
  %41 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_cntrs.i, align 4
  %add.i.i.i = add nsw i32 %i.039.i.i.i, 1
  %call27.i.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef %42, i32 noundef %add.i.i.i) #10
  %43 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_cntrs.i, align 4
  %cmp.i.i.i = icmp slt i32 %call27.i.i.i, %44
  br i1 %cmp.i.i.i, label %cleanup.i.i.i.for.body.i.i.i_crit_edge, label %cleanup.i.i.i.cci_pmu_sync_counters.exit_crit_edge

cleanup.i.i.i.cci_pmu_sync_counters.exit_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_pmu_sync_counters.exit

cleanup.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

cci_pmu_sync_counters.exit:                       ; preds = %cleanup.i.i.i.cci_pmu_sync_counters.exit_crit_edge, %if.else.i.i.cci_pmu_sync_counters.exit_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #10
  %ctrl_base.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 1
  %45 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 256
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !342
  %48 = or i32 %47, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %50, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %48) #10, !srcloc !345
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_perf_event_destroy(ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %active_events1 = getelementptr i8, ptr %1, i32 240
  %reserve_mutex2 = getelementptr i8, ptr %1, i32 244
  %call = tail call i32 @atomic_dec_and_mutex_lock(ptr noundef %active_events1, ptr noundef %reserve_mutex2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %nr_irqs.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %nr_irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_irqs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i.i, label %for.body.lr.ph.i.i, label %if.then.cci_pmu_put_hw.exit_crit_edge

if.then.cci_pmu_put_hw.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_pmu_put_hw.exit

for.body.lr.ph.i.i:                               ; preds = %if.then
  %active_irqs.i.i = getelementptr i8, ptr %1, i32 172
  %irqs.i.i = getelementptr i8, ptr %1, i32 168
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef %i.09.i.i, ptr noundef %active_irqs.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irqs.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %5, i32 %i.09.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %call1.i.i = tail call ptr @free_irq(i32 noundef %7, ptr noundef %add.ptr) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %8 = ptrtoint ptr %nr_irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_irqs.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %9
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.cci_pmu_put_hw.exit_crit_edge

for.inc.i.i.cci_pmu_put_hw.exit_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cci_pmu_put_hw.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

cci_pmu_put_hw.exit:                              ; preds = %for.inc.i.i.cci_pmu_put_hw.exit_crit_edge, %if.then.cci_pmu_put_hw.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %reserve_mutex2) #10
  br label %if.end

if.end:                                           ; preds = %cci_pmu_put_hw.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cci_pmu_get_hw(ptr noundef %cci_pmu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_device.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 9
  %0 = ptrtoint ptr %plat_device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_device.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i, !prof !343

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %entry
  %nr_irqs.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 4
  %2 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %do.end.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %irqs.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 5
  %active_irqs.i = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 6
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.261) #13
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irqs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %i.05.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @pmu_handle_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.264, ptr noundef %cci_pmu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %for.inc.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev13.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irqs.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %9, i32 %i.05.i
  %10 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.266, i32 noundef %11) #13
  br label %if.then

for.inc.i:                                        ; preds = %for.body.i
  tail call void @_set_bit(i32 noundef %i.05.i, ptr noundef %active_irqs.i) #10
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %12 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_irqs.i, align 4
  %cmp7.i = icmp slt i32 %inc.i, %13
  br i1 %cmp7.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then:                                          ; preds = %cleanup.i, %do.end.i, %entry.if.then_crit_edge
  %retval.2.i.ph = phi i32 [ -19, %entry.if.then_crit_edge ], [ %call.i.i, %cleanup.i ], [ -19, %do.end.i ]
  %nr_irqs.i3 = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 4
  %14 = ptrtoint ptr %nr_irqs.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_irqs.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.i = icmp sgt i32 %15, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i6, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i6:                                ; preds = %if.then
  %active_irqs.i4 = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 6
  %irqs.i5 = getelementptr inbounds %struct.cci_pmu, ptr %cci_pmu, i32 0, i32 5
  br label %for.body.i8

for.body.i8:                                      ; preds = %for.inc.i13.for.body.i8_crit_edge, %for.body.lr.ph.i6
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i6 ], [ %inc.i11, %for.inc.i13.for.body.i8_crit_edge ]
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %i.09.i, ptr noundef %active_irqs.i4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i7 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i7, label %for.body.i8.for.inc.i13_crit_edge, label %if.end.i10

for.body.i8.for.inc.i13_crit_edge:                ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i13

if.end.i10:                                       ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %irqs.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irqs.i5, align 4
  %arrayidx.i9 = getelementptr i32, ptr %17, i32 %i.09.i
  %18 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i9, align 4
  %call1.i = tail call ptr @free_irq(i32 noundef %19, ptr noundef %cci_pmu) #10
  br label %for.inc.i13

for.inc.i13:                                      ; preds = %if.end.i10, %for.body.i8.for.inc.i13_crit_edge
  %inc.i11 = add nuw nsw i32 %i.09.i, 1
  %20 = ptrtoint ptr %nr_irqs.i3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_irqs.i3, align 4
  %cmp.i12 = icmp slt i32 %inc.i11, %21
  br i1 %cmp.i12, label %for.inc.i13.for.body.i8_crit_edge, label %for.inc.i13.cleanup_crit_edge

for.inc.i13.cleanup_crit_edge:                    ; preds = %for.inc.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i13.for.body.i8_crit_edge:                ; preds = %for.inc.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i8

cleanup:                                          ; preds = %for.inc.i13.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.2.i.ph, %if.then.cleanup_crit_edge ], [ %retval.2.i.ph, %for.inc.i13.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hw_perf_event_init(ptr noundef %event) unnamed_addr #2 align 64 {
entry:
  %mask.i = alloca [1 x i32], align 4
  %fake_pmu.i = alloca %struct.cci_pmu_hw_events, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %attr.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %2 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.i = icmp ult i32 %3, 6
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %lor.lhs.false.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false.i:                                  ; preds = %entry
  %model.i = getelementptr i8, ptr %1, i32 176
  %4 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model.i, align 4
  %validate_hw_event.i = getelementptr inbounds %struct.cci_pmu_model, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %validate_hw_event.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %validate_hw_event.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.do.body_crit_edge, label %pmu_map_event.exit

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

pmu_map_event.exit:                               ; preds = %lor.lhs.false.i
  %config.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %config.i, align 8
  %conv.i = trunc i64 %9 to i32
  %call.i = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %pmu_map_event.exit.do.body_crit_edge, label %if.end6

pmu_map_event.exit.do.body_crit_edge:             ; preds = %pmu_map_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %pmu_map_event.exit.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %entry.do.body_crit_edge
  %retval.0.i2937 = phi i32 [ %call.i, %pmu_map_event.exit.do.body_crit_edge ], [ -2, %lor.lhs.false.i.do.body_crit_edge ], [ -2, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hw_perf_event_init.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hw_perf_event_init, %if.then4)) #10
          to label %cleanup [label %if.then4], !srcloc !353

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attr.i, align 8
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %config, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__hw_perf_event_init.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.272, i32 noundef %11, i64 noundef %13) #10
  br label %cleanup

if.end6:                                          ; preds = %pmu_map_event.exit
  %hw = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %idx, align 4
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %hw, align 8
  %event_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %event_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %event_base, align 4
  %17 = ptrtoint ptr %config_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %config_base, align 8
  %group_leader = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 11
  %18 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group_leader, align 4
  %cmp9.not = icmp eq ptr %19, %event
  br i1 %cmp9.not, label %if.end6.cleanup_crit_edge, label %if.then10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  %20 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmu.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #10
  %22 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %mask.i, align 4, !annotation !344
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %fake_pmu.i) #10
  %23 = call ptr @memset(ptr %fake_pmu.i, i32 0, i32 52)
  %used_mask.i = getelementptr inbounds %struct.cci_pmu_hw_events, ptr %fake_pmu.i, i32 0, i32 1
  %24 = ptrtoint ptr %used_mask.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mask.i, ptr %used_mask.i, align 4
  %num_cntrs.i = getelementptr i8, ptr %21, i32 236
  %25 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_cntrs.i, align 4
  %sub.i = add i32 %26, 31
  %27 = lshr i32 %sub.i, 3
  %mul.i = and i32 %27, 536870908
  %28 = call ptr @memset(ptr %mask.i, i32 0, i32 %mul.i)
  %event_caps.i.i.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 9
  %29 = ptrtoint ptr %event_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %event_caps.i.i.i, align 4
  %and.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then10.if.end.i33_crit_edge

if.then10.if.end.i33_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i33

if.end.i.i:                                       ; preds = %if.then10
  %pmu.i.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 12
  %31 = ptrtoint ptr %pmu.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pmu.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %32, %21
  br i1 %cmp.not.i.i, label %if.end2.i.i, label %if.end.i.i.validate_group.exit.thread_crit_edge

if.end.i.i.validate_group.exit.thread_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

if.end2.i.i:                                      ; preds = %if.end.i.i
  %state.i.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 14
  %33 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp3.i.i = icmp slt i32 %34, -1
  br i1 %cmp3.i.i, label %if.end2.i.i.if.end.i33_crit_edge, label %if.end5.i.i

if.end2.i.i.if.end.i33_crit_edge:                 ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i33

if.end5.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp7.i.i = icmp eq i32 %34, -1
  br i1 %cmp7.i.i, label %land.lhs.true.i.i, label %if.end5.i.i.if.end10.i.i_crit_edge

if.end5.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

land.lhs.true.i.i:                                ; preds = %if.end5.i.i
  %enable_on_exec.i.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 21, i32 6
  %35 = ptrtoint ptr %enable_on_exec.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %bf.load.i.i = load i64, ptr %enable_on_exec.i.i, align 8
  %36 = and i64 %bf.load.i.i, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool8.not.i.i = icmp eq i64 %36, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.if.end.i33_crit_edge, label %land.lhs.true.i.i.if.end10.i.i_crit_edge

land.lhs.true.i.i.if.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

land.lhs.true.i.i.if.end.i33_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i33

if.end10.i.i:                                     ; preds = %land.lhs.true.i.i.if.end10.i.i_crit_edge, %if.end5.i.i.if.end10.i.i_crit_edge
  %model.i.i.i = getelementptr i8, ptr %21, i32 176
  %37 = ptrtoint ptr %model.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %model.i.i.i, align 4
  %get_event_idx.i.i.i = getelementptr inbounds %struct.cci_pmu_model, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %get_event_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_event_idx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i, label %for.cond.preheader.i.i.i, label %if.then.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end10.i.i
  %41 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_cntrs.i, align 4
  %sub18.i.i.i = add i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i.i.i)
  %cmp.not19.i.i.i = icmp slt i32 %sub18.i.i.i, 0
  br i1 %cmp.not19.i.i.i, label %for.cond.preheader.i.i.i.validate_group.exit.thread_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.validate_group.exit.thread_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

if.then.i.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 -8
  %config_base.i.i.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 25, i32 0, i32 0, i32 2
  %43 = ptrtoint ptr %config_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %config_base.i.i.i, align 8
  %call.i.i.i = call i32 %40(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %fake_pmu.i, i32 noundef %44) #10
  br label %validate_event.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %idx.020.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %45 = ptrtoint ptr %used_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %used_mask.i, align 4
  %call4.i.i.i = call i32 @_test_and_set_bit(i32 noundef %idx.020.i.i.i, ptr noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %for.body.i.i.i.validate_event.exit.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.validate_event.exit.i_crit_edge:   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add i32 %idx.020.i.i.i, 1
  %47 = ptrtoint ptr %num_cntrs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_cntrs.i, align 4
  %sub.i.i.i = add i32 %48, -1
  %cmp.not.i.i.i = icmp sgt i32 %inc.i.i.i, %sub.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.validate_group.exit.thread_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.validate_group.exit.thread_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

validate_event.exit.i:                            ; preds = %for.body.i.i.i.validate_event.exit.i_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %idx.020.i.i.i, %for.body.i.i.i.validate_event.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool.not.i31 = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %tobool.not.i31, label %validate_event.exit.i.validate_group.exit.thread_crit_edge, label %validate_event.exit.i.if.end.i33_crit_edge

validate_event.exit.i.if.end.i33_crit_edge:       ; preds = %validate_event.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i33

validate_event.exit.i.validate_group.exit.thread_crit_edge: ; preds = %validate_event.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

if.end.i33:                                       ; preds = %validate_event.exit.i.if.end.i33_crit_edge, %land.lhs.true.i.i.if.end.i33_crit_edge, %if.end2.i.i.if.end.i33_crit_edge, %if.then10.if.end.i33_crit_edge
  %group_leader3.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 11
  %49 = ptrtoint ptr %group_leader3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %group_leader3.i, align 4
  %cmp.i32 = icmp eq ptr %50, %19
  br i1 %cmp.i32, label %if.then4.i, label %if.end.i33.if.end21.i_crit_edge

if.end.i33.if.end21.i_crit_edge:                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then4.i:                                       ; preds = %if.end.i33
  %sibling_list.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %validate_event.exit83.i.for.cond.i_crit_edge, %if.then4.i
  %.pn.in.i = phi ptr [ %sibling_list.i, %if.then4.i ], [ %.pn.i, %validate_event.exit83.i.for.cond.i_crit_edge ]
  %51 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp10.not.i = icmp eq ptr %.pn.i, %sibling_list.i
  br i1 %cmp10.not.i, label %for.cond.i.if.end21.i_crit_edge, label %for.body.i

for.cond.i.if.end21.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

for.body.i:                                       ; preds = %for.cond.i
  %52 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pmu.i, align 8
  %event_caps.i.i43.i = getelementptr i8, ptr %.pn.i, i32 68
  %54 = ptrtoint ptr %event_caps.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %event_caps.i.i43.i, align 4
  %and.i.i44.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44.i)
  %tobool.not.i45.i = icmp eq i32 %and.i.i44.i, 0
  br i1 %tobool.not.i45.i, label %if.end.i48.i, label %for.body.i.validate_event.exit83.i_crit_edge

for.body.i.validate_event.exit83.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit83.i

if.end.i48.i:                                     ; preds = %for.body.i
  %pmu.i46.i = getelementptr i8, ptr %.pn.i, i32 80
  %56 = ptrtoint ptr %pmu.i46.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pmu.i46.i, align 8
  %cmp.not.i47.i = icmp eq ptr %57, %53
  br i1 %cmp.not.i47.i, label %if.end2.i51.i, label %if.end.i48.i.validate_group.exit.thread_crit_edge

if.end.i48.i.validate_group.exit.thread_crit_edge: ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

if.end2.i51.i:                                    ; preds = %if.end.i48.i
  %state.i49.i = getelementptr i8, ptr %.pn.i, i32 88
  %58 = ptrtoint ptr %state.i49.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i49.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp3.i50.i = icmp slt i32 %59, -1
  br i1 %cmp3.i50.i, label %if.end2.i51.i.validate_event.exit83.i_crit_edge, label %if.end5.i53.i

if.end2.i51.i.validate_event.exit83.i_crit_edge:  ; preds = %if.end2.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit83.i

if.end5.i53.i:                                    ; preds = %if.end2.i51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp7.i52.i = icmp eq i32 %59, -1
  br i1 %cmp7.i52.i, label %land.lhs.true.i57.i, label %if.end5.i53.i.if.end10.i61.i_crit_edge

if.end5.i53.i.if.end10.i61.i_crit_edge:           ; preds = %if.end5.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i61.i

land.lhs.true.i57.i:                              ; preds = %if.end5.i53.i
  %enable_on_exec.i54.i = getelementptr i8, ptr %.pn.i, i32 176
  %60 = ptrtoint ptr %enable_on_exec.i54.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %bf.load.i55.i = load i64, ptr %enable_on_exec.i54.i, align 8
  %61 = and i64 %bf.load.i55.i, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool8.not.i56.i = icmp eq i64 %61, 0
  br i1 %tobool8.not.i56.i, label %land.lhs.true.i57.i.validate_event.exit83.i_crit_edge, label %land.lhs.true.i57.i.if.end10.i61.i_crit_edge

land.lhs.true.i57.i.if.end10.i61.i_crit_edge:     ; preds = %land.lhs.true.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i61.i

land.lhs.true.i57.i.validate_event.exit83.i_crit_edge: ; preds = %land.lhs.true.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit83.i

if.end10.i61.i:                                   ; preds = %land.lhs.true.i57.i.if.end10.i61.i_crit_edge, %if.end5.i53.i.if.end10.i61.i_crit_edge
  %model.i.i58.i = getelementptr i8, ptr %53, i32 176
  %62 = ptrtoint ptr %model.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %model.i.i58.i, align 4
  %get_event_idx.i.i59.i = getelementptr inbounds %struct.cci_pmu_model, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %get_event_idx.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_event_idx.i.i59.i, align 4
  %tobool.not.i.i60.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i60.i, label %for.cond.preheader.i.i66.i, label %if.then.i.i70.i

for.cond.preheader.i.i66.i:                       ; preds = %if.end10.i61.i
  %num_cntrs.i.i63.i = getelementptr i8, ptr %53, i32 236
  %66 = ptrtoint ptr %num_cntrs.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_cntrs.i.i63.i, align 4
  %sub18.i.i64.i = add i32 %67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i.i64.i)
  %cmp.not19.i.i65.i = icmp slt i32 %sub18.i.i64.i, 0
  br i1 %cmp.not19.i.i65.i, label %for.cond.preheader.i.i66.i.pmu_get_event_idx.exit.i81.i_crit_edge, label %for.cond.preheader.i.i66.i.for.body.i.i74.i_crit_edge

for.cond.preheader.i.i66.i.for.body.i.i74.i_crit_edge: ; preds = %for.cond.preheader.i.i66.i
  br label %for.body.i.i74.i

for.cond.preheader.i.i66.i.pmu_get_event_idx.exit.i81.i_crit_edge: ; preds = %for.cond.preheader.i.i66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmu_get_event_idx.exit.i81.i

if.then.i.i70.i:                                  ; preds = %if.end10.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i67.i = getelementptr i8, ptr %53, i32 -8
  %config_base.i.i68.i = getelementptr i8, ptr %.pn.i, i32 288
  %68 = ptrtoint ptr %config_base.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %config_base.i.i68.i, align 8
  %call.i.i69.i = call i32 %65(ptr noundef %add.ptr.i.i67.i, ptr noundef nonnull %fake_pmu.i, i32 noundef %69) #10
  br label %pmu_get_event_idx.exit.i81.i

for.body.i.i74.i:                                 ; preds = %for.inc.i.i78.i.for.body.i.i74.i_crit_edge, %for.cond.preheader.i.i66.i.for.body.i.i74.i_crit_edge
  %idx.020.i.i71.i = phi i32 [ %inc.i.i75.i, %for.inc.i.i78.i.for.body.i.i74.i_crit_edge ], [ 0, %for.cond.preheader.i.i66.i.for.body.i.i74.i_crit_edge ]
  %70 = ptrtoint ptr %used_mask.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %used_mask.i, align 4
  %call4.i.i72.i = call i32 @_test_and_set_bit(i32 noundef %idx.020.i.i71.i, ptr noundef %71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i72.i)
  %tobool5.not.i.i73.i = icmp eq i32 %call4.i.i72.i, 0
  br i1 %tobool5.not.i.i73.i, label %for.body.i.i74.i.pmu_get_event_idx.exit.i81.i_crit_edge, label %for.inc.i.i78.i

for.body.i.i74.i.pmu_get_event_idx.exit.i81.i_crit_edge: ; preds = %for.body.i.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmu_get_event_idx.exit.i81.i

for.inc.i.i78.i:                                  ; preds = %for.body.i.i74.i
  %inc.i.i75.i = add i32 %idx.020.i.i71.i, 1
  %72 = ptrtoint ptr %num_cntrs.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_cntrs.i.i63.i, align 4
  %sub.i.i76.i = add i32 %73, -1
  %cmp.not.i.i77.i = icmp sgt i32 %inc.i.i75.i, %sub.i.i76.i
  br i1 %cmp.not.i.i77.i, label %for.inc.i.i78.i.pmu_get_event_idx.exit.i81.i_crit_edge, label %for.inc.i.i78.i.for.body.i.i74.i_crit_edge

for.inc.i.i78.i.for.body.i.i74.i_crit_edge:       ; preds = %for.inc.i.i78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i74.i

for.inc.i.i78.i.pmu_get_event_idx.exit.i81.i_crit_edge: ; preds = %for.inc.i.i78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmu_get_event_idx.exit.i81.i

pmu_get_event_idx.exit.i81.i:                     ; preds = %for.inc.i.i78.i.pmu_get_event_idx.exit.i81.i_crit_edge, %for.body.i.i74.i.pmu_get_event_idx.exit.i81.i_crit_edge, %if.then.i.i70.i, %for.cond.preheader.i.i66.i.pmu_get_event_idx.exit.i81.i_crit_edge
  %retval.0.i.i79.i = phi i32 [ %call.i.i69.i, %if.then.i.i70.i ], [ -11, %for.cond.preheader.i.i66.i.pmu_get_event_idx.exit.i81.i_crit_edge ], [ -11, %for.inc.i.i78.i.pmu_get_event_idx.exit.i81.i_crit_edge ], [ %idx.020.i.i71.i, %for.body.i.i74.i.pmu_get_event_idx.exit.i81.i_crit_edge ]
  %74 = xor i32 %retval.0.i.i79.i, -1
  %call11.lobit.not.i80.i = lshr i32 %74, 31
  br label %validate_event.exit83.i

validate_event.exit83.i:                          ; preds = %pmu_get_event_idx.exit.i81.i, %land.lhs.true.i57.i.validate_event.exit83.i_crit_edge, %if.end2.i51.i.validate_event.exit83.i_crit_edge, %for.body.i.validate_event.exit83.i_crit_edge
  %retval.0.i82.i = phi i32 [ %call11.lobit.not.i80.i, %pmu_get_event_idx.exit.i81.i ], [ 1, %for.body.i.validate_event.exit83.i_crit_edge ], [ 1, %if.end2.i51.i.validate_event.exit83.i_crit_edge ], [ 1, %land.lhs.true.i57.i.validate_event.exit83.i_crit_edge ]
  %tobool13.not.i = icmp eq i32 %retval.0.i82.i, 0
  br i1 %tobool13.not.i, label %validate_event.exit83.i.validate_group.exit.thread_crit_edge, label %validate_event.exit83.i.for.cond.i_crit_edge

validate_event.exit83.i.for.cond.i_crit_edge:     ; preds = %validate_event.exit83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

validate_event.exit83.i.validate_group.exit.thread_crit_edge: ; preds = %validate_event.exit83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

if.end21.i:                                       ; preds = %for.cond.i.if.end21.i_crit_edge, %if.end.i33.if.end21.i_crit_edge
  %75 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pmu.i, align 8
  %event_caps.i.i84.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 9
  %77 = ptrtoint ptr %event_caps.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %event_caps.i.i84.i, align 4
  %and.i.i85.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i85.i)
  %tobool.not.i86.i = icmp eq i32 %and.i.i85.i, 0
  br i1 %tobool.not.i86.i, label %if.end2.i92.i, label %if.end21.i.validate_group.exit_crit_edge

if.end21.i.validate_group.exit_crit_edge:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit

if.end2.i92.i:                                    ; preds = %if.end21.i
  %state.i90.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 14
  %79 = ptrtoint ptr %state.i90.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state.i90.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp3.i91.i = icmp slt i32 %80, -1
  br i1 %cmp3.i91.i, label %if.end2.i92.i.validate_group.exit_crit_edge, label %if.end5.i94.i

if.end2.i92.i.validate_group.exit_crit_edge:      ; preds = %if.end2.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit

if.end5.i94.i:                                    ; preds = %if.end2.i92.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp7.i93.i = icmp eq i32 %80, -1
  br i1 %cmp7.i93.i, label %land.lhs.true.i98.i, label %if.end5.i94.i.if.end10.i102.i_crit_edge

if.end5.i94.i.if.end10.i102.i_crit_edge:          ; preds = %if.end5.i94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i102.i

land.lhs.true.i98.i:                              ; preds = %if.end5.i94.i
  %enable_on_exec.i95.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 6
  %81 = ptrtoint ptr %enable_on_exec.i95.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %bf.load.i96.i = load i64, ptr %enable_on_exec.i95.i, align 8
  %82 = and i64 %bf.load.i96.i, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %tobool8.not.i97.i = icmp eq i64 %82, 0
  br i1 %tobool8.not.i97.i, label %land.lhs.true.i98.i.validate_group.exit_crit_edge, label %land.lhs.true.i98.i.if.end10.i102.i_crit_edge

land.lhs.true.i98.i.if.end10.i102.i_crit_edge:    ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i102.i

land.lhs.true.i98.i.validate_group.exit_crit_edge: ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit

if.end10.i102.i:                                  ; preds = %land.lhs.true.i98.i.if.end10.i102.i_crit_edge, %if.end5.i94.i.if.end10.i102.i_crit_edge
  %model.i.i99.i = getelementptr i8, ptr %76, i32 176
  %83 = ptrtoint ptr %model.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %model.i.i99.i, align 4
  %get_event_idx.i.i100.i = getelementptr inbounds %struct.cci_pmu_model, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %get_event_idx.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %get_event_idx.i.i100.i, align 4
  %tobool.not.i.i101.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i101.i, label %for.cond.preheader.i.i107.i, label %if.then.i.i111.i

for.cond.preheader.i.i107.i:                      ; preds = %if.end10.i102.i
  %num_cntrs.i.i104.i = getelementptr i8, ptr %76, i32 236
  %87 = ptrtoint ptr %num_cntrs.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_cntrs.i.i104.i, align 4
  %sub18.i.i105.i = add i32 %88, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i.i105.i)
  %cmp.not19.i.i106.i = icmp slt i32 %sub18.i.i105.i, 0
  br i1 %cmp.not19.i.i106.i, label %for.cond.preheader.i.i107.i.validate_group.exit.thread_crit_edge, label %for.cond.preheader.i.i107.i.for.body.i.i115.i_crit_edge

for.cond.preheader.i.i107.i.for.body.i.i115.i_crit_edge: ; preds = %for.cond.preheader.i.i107.i
  br label %for.body.i.i115.i

for.cond.preheader.i.i107.i.validate_group.exit.thread_crit_edge: ; preds = %for.cond.preheader.i.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

if.then.i.i111.i:                                 ; preds = %if.end10.i102.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i108.i = getelementptr i8, ptr %76, i32 -8
  %89 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %config_base, align 8
  %call.i.i110.i = call i32 %86(ptr noundef %add.ptr.i.i108.i, ptr noundef nonnull %fake_pmu.i, i32 noundef %90) #10
  br label %validate_event.exit124.i

for.body.i.i115.i:                                ; preds = %for.inc.i.i119.i.for.body.i.i115.i_crit_edge, %for.cond.preheader.i.i107.i.for.body.i.i115.i_crit_edge
  %idx.020.i.i112.i = phi i32 [ %inc.i.i116.i, %for.inc.i.i119.i.for.body.i.i115.i_crit_edge ], [ 0, %for.cond.preheader.i.i107.i.for.body.i.i115.i_crit_edge ]
  %91 = ptrtoint ptr %used_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %used_mask.i, align 4
  %call4.i.i113.i = call i32 @_test_and_set_bit(i32 noundef %idx.020.i.i112.i, ptr noundef %92) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i113.i)
  %tobool5.not.i.i114.i = icmp eq i32 %call4.i.i113.i, 0
  br i1 %tobool5.not.i.i114.i, label %for.body.i.i115.i.validate_event.exit124.i_crit_edge, label %for.inc.i.i119.i

for.body.i.i115.i.validate_event.exit124.i_crit_edge: ; preds = %for.body.i.i115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_event.exit124.i

for.inc.i.i119.i:                                 ; preds = %for.body.i.i115.i
  %inc.i.i116.i = add i32 %idx.020.i.i112.i, 1
  %93 = ptrtoint ptr %num_cntrs.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_cntrs.i.i104.i, align 4
  %sub.i.i117.i = add i32 %94, -1
  %cmp.not.i.i118.i = icmp sgt i32 %inc.i.i116.i, %sub.i.i117.i
  br i1 %cmp.not.i.i118.i, label %for.inc.i.i119.i.validate_group.exit.thread_crit_edge, label %for.inc.i.i119.i.for.body.i.i115.i_crit_edge

for.inc.i.i119.i.for.body.i.i115.i_crit_edge:     ; preds = %for.inc.i.i119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i115.i

for.inc.i.i119.i.validate_group.exit.thread_crit_edge: ; preds = %for.inc.i.i119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

validate_event.exit124.i:                         ; preds = %for.body.i.i115.i.validate_event.exit124.i_crit_edge, %if.then.i.i111.i
  %retval.0.i.i120.i = phi i32 [ %call.i.i110.i, %if.then.i.i111.i ], [ %idx.020.i.i112.i, %for.body.i.i115.i.validate_event.exit124.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i120.i)
  %tobool24.not.i = icmp slt i32 %retval.0.i.i120.i, 0
  br i1 %tobool24.not.i, label %validate_event.exit124.i.validate_group.exit.thread_crit_edge, label %validate_event.exit124.i.validate_group.exit_crit_edge

validate_event.exit124.i.validate_group.exit_crit_edge: ; preds = %validate_event.exit124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit

validate_event.exit124.i.validate_group.exit.thread_crit_edge: ; preds = %validate_event.exit124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_group.exit.thread

validate_group.exit.thread:                       ; preds = %validate_event.exit124.i.validate_group.exit.thread_crit_edge, %for.inc.i.i119.i.validate_group.exit.thread_crit_edge, %for.cond.preheader.i.i107.i.validate_group.exit.thread_crit_edge, %validate_event.exit83.i.validate_group.exit.thread_crit_edge, %if.end.i48.i.validate_group.exit.thread_crit_edge, %validate_event.exit.i.validate_group.exit.thread_crit_edge, %for.inc.i.i.i.validate_group.exit.thread_crit_edge, %for.cond.preheader.i.i.i.validate_group.exit.thread_crit_edge, %if.end.i.i.validate_group.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %fake_pmu.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #10
  br label %cleanup

validate_group.exit:                              ; preds = %validate_event.exit124.i.validate_group.exit_crit_edge, %land.lhs.true.i98.i.validate_group.exit_crit_edge, %if.end2.i92.i.validate_group.exit_crit_edge, %if.end21.i.validate_group.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %fake_pmu.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #10
  br label %cleanup

cleanup:                                          ; preds = %validate_group.exit, %validate_group.exit.thread, %if.end6.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ %retval.0.i2937, %if.then4 ], [ %retval.0.i2937, %do.body ], [ -22, %validate_group.exit.thread ], [ 0, %validate_group.exit ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmu_handle_irq(i32 noundef %irq_num, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_events = getelementptr inbounds %struct.cci_pmu, ptr %dev, i32 0, i32 8
  %pmu_lock = getelementptr inbounds %struct.cci_pmu, ptr %dev, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %pmu_lock) #10
  %ctrl_base.i = getelementptr inbounds %struct.cci_pmu, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !342
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #10, !srcloc !345
  %num_cntrs = getelementptr inbounds %struct.cci_pmu, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cntrs, align 4
  %sub31 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31)
  %cmp.not32 = icmp slt i32 %sub31, 0
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %model.i = getelementptr inbounds %struct.cci_pmu, ptr %dev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %handled.035 = phi i32 [ 0, %for.body.lr.ph ], [ %handled.1, %cleanup.for.body_crit_edge ]
  %idx.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %8 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_events, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %idx.033
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %model.i, align 4
  %cntr_size.i = getelementptr inbounds %struct.cci_pmu_model, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cntr_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cntr_size.i, align 4
  %mul.i = mul i32 %17, %idx.033
  %add.ptr.i25 = getelementptr i8, ptr %13, i32 12
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i25, i32 %mul.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #10, !srcloc !342
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not = icmp eq i32 %19, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %model.i, align 4
  %cntr_size.i27 = getelementptr inbounds %struct.cci_pmu_model, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cntr_size.i27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cntr_size.i27, align 4
  %mul.i28 = mul i32 %25, %idx.033
  %add.ptr.i29 = getelementptr i8, ptr %21, i32 12
  %add.ptr1.i30 = getelementptr i8, ptr %add.ptr.i29, i32 %mul.i28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30, i32 16777216) #10, !srcloc !345
  tail call fastcc void @pmu_event_update(ptr noundef nonnull %11)
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef 2147483648) #10
  %state.i = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 25, i32 4
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i, align 4
  %or.i = or i32 %27, 4
  store i32 %or.i, ptr %state.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %handled.1 = phi i32 [ 1, %if.end4 ], [ %handled.035, %for.body.cleanup_crit_edge ], [ %handled.035, %if.end.cleanup_crit_edge ]
  %inc = add i32 %idx.033, 1
  %28 = ptrtoint ptr %num_cntrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_cntrs, align 4
  %sub = add i32 %29, -1
  %cmp.not = icmp sgt i32 %inc, %sub
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %handled.1, %cleanup.for.end_crit_edge ]
  tail call fastcc void @__cci_pmu_enable_sync(ptr noundef %dev)
  tail call void @_raw_spin_unlock(ptr noundef %pmu_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0.lcssa)
  %tobool7.not = icmp ne i32 %handled.0.lcssa, 0
  %cond = zext i1 %tobool7.not to i32
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pmu_event_update(ptr noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %idx1.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %pmu_read_counter.exit.do.body_crit_edge, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prev_count, i32 noundef 8) #10
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %prev_count) #10
  %0 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %idx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.i = icmp sgt i32 %3, -1
  br i1 %cmp.i.i, label %pmu_is_valid_counter.exit.i, label %do.body.do.end.i_crit_edge

do.body.do.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

pmu_is_valid_counter.exit.i:                      ; preds = %do.body
  %num_cntrs.i.i = getelementptr i8, ptr %1, i32 236
  %4 = ptrtoint ptr %num_cntrs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cntrs.i.i, align 4
  %sub.i.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %3)
  %cmp1.i.not.i = icmp slt i32 %sub.i.i, %3
  br i1 %cmp1.i.not.i, label %pmu_is_valid_counter.exit.i.do.end.i_crit_edge, label %if.end.i, !prof !343

pmu_is_valid_counter.exit.i.do.end.i_crit_edge:   ; preds = %pmu_is_valid_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %pmu_is_valid_counter.exit.i.do.end.i_crit_edge, %do.body.do.end.i_crit_edge
  %plat_device.i = getelementptr i8, ptr %1, i32 232
  %6 = ptrtoint ptr %plat_device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat_device.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.268, i32 noundef %3) #13
  br label %pmu_read_counter.exit

if.end.i:                                         ; preds = %pmu_is_valid_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %model.i.i = getelementptr i8, ptr %1, i32 176
  %10 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %model.i.i, align 4
  %cntr_size.i.i = getelementptr inbounds %struct.cci_pmu_model, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cntr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cntr_size.i.i, align 4
  %mul.i.i = mul i32 %13, %3
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #10, !srcloc !342
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  br label %pmu_read_counter.exit

pmu_read_counter.exit:                            ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %15, %if.end.i ]
  %conv = zext i32 %retval.0.i to i64
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #10
  %call.i2 = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %prev_count, i64 noundef %call.i, i64 noundef %conv) #10
  %cmp.not = icmp eq i64 %call.i2, %call.i
  br i1 %cmp.not, label %do.end, label %pmu_read_counter.exit.do.body_crit_edge

pmu_read_counter.exit.do.body_crit_edge:          ; preds = %pmu_read_counter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %pmu_read_counter.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i64 %conv, %call.i
  %and = and i64 %sub, 4294967295
  %count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 8) #10
  tail call void @generic_atomic64_add(i64 noundef %and, ptr noundef %count) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_update_userpage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 297)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 297)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !278, !279, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !301, !302, !303, !304, !306, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !320, !322, !324, !325, !326, !328, !329, !330}
!llvm.named.register.sp = !{!332}
!llvm.module.flags = !{!333, !334, !335, !336, !337, !338, !339, !340}
!llvm.ident = !{!341}

!0 = !{ptr @__initcall__kmod_arm_cci__251_1726_cci_pmu_driver_init6, !1, !"__initcall__kmod_arm_cci__251_1726_cci_pmu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/perf/arm-cci.c", i32 1726, i32 1}
!2 = !{ptr @__exitcall_cci_pmu_driver_exit, !1, !"__exitcall_cci_pmu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file252, !4, !"__UNIQUE_ID_file252", i1 false, i1 false}
!4 = !{!"../drivers/perf/arm-cci.c", i32 1727, i32 1}
!5 = !{ptr @__UNIQUE_ID_license253, !4, !"__UNIQUE_ID_license253", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description254, !7, !"__UNIQUE_ID_description254", i1 false, i1 false}
!7 = !{!"../drivers/perf/arm-cci.c", i32 1728, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/perf/arm-cci.c", i32 1718, i32 14}
!10 = !{ptr @cci_pmu_driver, !11, !"cci_pmu_driver", i1 false, i1 false}
!11 = !{!"../drivers/perf/arm-cci.c", i32 1716, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/perf/arm-cci.c", i32 1676, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cci_pmu_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @cci_pmu_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @cci_pmu_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/perf/arm-cci.c", i32 1681, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cci_pmu_probe.__key.7, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/perf/arm-cci.c", i32 1682, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/perf/arm-cci.c", i32 1688, i32 7}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/perf/arm-cci.c", i32 1695, i32 2}
!30 = !{ptr @cci_pmu_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cci_pmu_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/perf/arm-cci.c", i32 1612, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cci_pmu_alloc._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cci_pmu_alloc._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/perf/arm-cci.c", i32 1617, i32 3}
!39 = !{ptr @cci_pmu_alloc._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cci_pmu_alloc._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/perf/arm-cci.c", i32 1462, i32 11}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/perf/arm-cci.c", i32 1482, i32 11}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/perf/arm-cci.c", i32 1504, i32 11}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/perf/arm-cci.c", i32 1528, i32 11}
!49 = !{ptr @cci_pmu_models, !50, !"cci_pmu_models", i1 false, i1 false}
!50 = !{!"../drivers/perf/arm-cci.c", i32 1459, i32 44}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/perf/arm-cci.c", i32 217, i32 2}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/perf/arm-cci.c", i32 218, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cci400_pmu_format_attrs, !58, !"cci400_pmu_format_attrs", i1 false, i1 false}
!58 = !{!"../drivers/perf/arm-cci.c", i32 216, i32 26}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/perf/arm-cci.c", i32 699, i32 25}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/perf/arm-cci.c", i32 224, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/perf/arm-cci.c", i32 225, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/perf/arm-cci.c", i32 226, i32 2}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/perf/arm-cci.c", i32 227, i32 2}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/perf/arm-cci.c", i32 228, i32 2}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/perf/arm-cci.c", i32 229, i32 2}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/perf/arm-cci.c", i32 230, i32 2}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/perf/arm-cci.c", i32 231, i32 2}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/perf/arm-cci.c", i32 232, i32 2}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/perf/arm-cci.c", i32 233, i32 2}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/perf/arm-cci.c", i32 234, i32 2}
!83 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/perf/arm-cci.c", i32 235, i32 2}
!85 = !{ptr @.str.53, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/perf/arm-cci.c", i32 236, i32 2}
!87 = !{ptr @.str.55, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/perf/arm-cci.c", i32 237, i32 2}
!89 = !{ptr @.str.57, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/perf/arm-cci.c", i32 238, i32 2}
!91 = !{ptr @.str.59, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/perf/arm-cci.c", i32 239, i32 2}
!93 = !{ptr @.str.61, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/perf/arm-cci.c", i32 240, i32 2}
!95 = !{ptr @.str.63, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/perf/arm-cci.c", i32 241, i32 2}
!97 = !{ptr @.str.65, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/perf/arm-cci.c", i32 242, i32 2}
!99 = !{ptr @.str.67, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/perf/arm-cci.c", i32 243, i32 2}
!101 = !{ptr @.str.69, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/perf/arm-cci.c", i32 245, i32 2}
!103 = !{ptr @.str.71, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/perf/arm-cci.c", i32 246, i32 2}
!105 = !{ptr @.str.73, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/perf/arm-cci.c", i32 247, i32 2}
!107 = !{ptr @.str.75, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/perf/arm-cci.c", i32 248, i32 2}
!109 = !{ptr @.str.77, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/perf/arm-cci.c", i32 249, i32 2}
!111 = !{ptr @.str.79, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/perf/arm-cci.c", i32 250, i32 2}
!113 = !{ptr @.str.81, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/perf/arm-cci.c", i32 251, i32 2}
!115 = !{ptr @.str.83, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/perf/arm-cci.c", i32 253, i32 2}
!117 = !{ptr @cci400_r0_pmu_event_attrs, !118, !"cci400_r0_pmu_event_attrs", i1 false, i1 false}
!118 = !{!"../drivers/perf/arm-cci.c", i32 222, i32 26}
!119 = !{ptr @.str.85, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/perf/arm-cci.c", i32 708, i32 25}
!121 = !{ptr @.str.86, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/perf/arm-cci.c", i32 309, i32 25}
!123 = !{ptr @.str.107, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/perf/arm-cci.c", i32 279, i32 2}
!125 = !{ptr @.str.110, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/perf/arm-cci.c", i32 282, i32 2}
!127 = !{ptr @.str.112, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/perf/arm-cci.c", i32 283, i32 2}
!129 = !{ptr @.str.114, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/perf/arm-cci.c", i32 284, i32 2}
!131 = !{ptr @.str.118, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/perf/arm-cci.c", i32 287, i32 2}
!133 = !{ptr @.str.120, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/perf/arm-cci.c", i32 288, i32 2}
!135 = !{ptr @.str.122, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/perf/arm-cci.c", i32 289, i32 2}
!137 = !{ptr @.str.124, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/perf/arm-cci.c", i32 290, i32 2}
!139 = !{ptr @.str.126, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/perf/arm-cci.c", i32 291, i32 2}
!141 = !{ptr @.str.128, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/perf/arm-cci.c", i32 292, i32 2}
!143 = !{ptr @.str.130, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/perf/arm-cci.c", i32 293, i32 2}
!145 = !{ptr @.str.132, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/perf/arm-cci.c", i32 294, i32 2}
!147 = !{ptr @.str.134, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/perf/arm-cci.c", i32 295, i32 2}
!149 = !{ptr @.str.136, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/perf/arm-cci.c", i32 296, i32 2}
!151 = !{ptr @.str.138, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/perf/arm-cci.c", i32 297, i32 2}
!153 = !{ptr @.str.140, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/perf/arm-cci.c", i32 298, i32 2}
!155 = !{ptr @cci400_r1_pmu_event_attrs, !156, !"cci400_r1_pmu_event_attrs", i1 false, i1 false}
!156 = !{!"../drivers/perf/arm-cci.c", i32 257, i32 26}
!157 = !{ptr @.str.144, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/perf/arm-cci.c", i32 454, i32 2}
!159 = !{ptr @cci5xx_pmu_format_attrs, !160, !"cci5xx_pmu_format_attrs", i1 false, i1 false}
!160 = !{!"../drivers/perf/arm-cci.c", i32 452, i32 26}
!161 = !{ptr @.str.146, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/perf/arm-cci.c", i32 460, i32 2}
!163 = !{ptr @.str.148, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/perf/arm-cci.c", i32 461, i32 2}
!165 = !{ptr @.str.150, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/perf/arm-cci.c", i32 462, i32 2}
!167 = !{ptr @.str.152, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/perf/arm-cci.c", i32 463, i32 2}
!169 = !{ptr @.str.154, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/perf/arm-cci.c", i32 464, i32 2}
!171 = !{ptr @.str.156, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/perf/arm-cci.c", i32 465, i32 2}
!173 = !{ptr @.str.158, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/perf/arm-cci.c", i32 466, i32 2}
!175 = !{ptr @.str.161, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/perf/arm-cci.c", i32 468, i32 2}
!177 = !{ptr @.str.163, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/perf/arm-cci.c", i32 469, i32 2}
!179 = !{ptr @.str.165, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/perf/arm-cci.c", i32 470, i32 2}
!181 = !{ptr @.str.167, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/perf/arm-cci.c", i32 471, i32 2}
!183 = !{ptr @.str.169, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/perf/arm-cci.c", i32 472, i32 2}
!185 = !{ptr @.str.171, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/perf/arm-cci.c", i32 473, i32 2}
!187 = !{ptr @.str.173, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/perf/arm-cci.c", i32 474, i32 2}
!189 = !{ptr @.str.175, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/perf/arm-cci.c", i32 475, i32 2}
!191 = !{ptr @.str.177, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/perf/arm-cci.c", i32 476, i32 2}
!193 = !{ptr @.str.179, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/perf/arm-cci.c", i32 477, i32 2}
!195 = !{ptr @.str.181, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/perf/arm-cci.c", i32 478, i32 2}
!197 = !{ptr @.str.183, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/perf/arm-cci.c", i32 479, i32 2}
!199 = !{ptr @.str.185, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/perf/arm-cci.c", i32 480, i32 2}
!201 = !{ptr @.str.187, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/perf/arm-cci.c", i32 481, i32 2}
!203 = !{ptr @.str.189, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/perf/arm-cci.c", i32 482, i32 2}
!205 = !{ptr @.str.191, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/perf/arm-cci.c", i32 483, i32 2}
!207 = !{ptr @.str.193, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/perf/arm-cci.c", i32 484, i32 2}
!209 = !{ptr @.str.195, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/perf/arm-cci.c", i32 485, i32 2}
!211 = !{ptr @.str.197, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/perf/arm-cci.c", i32 486, i32 2}
!213 = !{ptr @.str.199, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/perf/arm-cci.c", i32 487, i32 2}
!215 = !{ptr @.str.201, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/perf/arm-cci.c", i32 488, i32 2}
!217 = !{ptr @.str.203, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/perf/arm-cci.c", i32 489, i32 2}
!219 = !{ptr @.str.205, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/perf/arm-cci.c", i32 490, i32 2}
!221 = !{ptr @.str.207, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/perf/arm-cci.c", i32 491, i32 2}
!223 = !{ptr @.str.209, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/perf/arm-cci.c", i32 494, i32 2}
!225 = !{ptr @.str.211, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/perf/arm-cci.c", i32 495, i32 2}
!227 = !{ptr @.str.213, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/perf/arm-cci.c", i32 496, i32 2}
!229 = !{ptr @.str.215, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/perf/arm-cci.c", i32 497, i32 2}
!231 = !{ptr @.str.217, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/perf/arm-cci.c", i32 498, i32 2}
!233 = !{ptr @.str.219, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/perf/arm-cci.c", i32 499, i32 2}
!235 = !{ptr @.str.221, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/perf/arm-cci.c", i32 500, i32 2}
!237 = !{ptr @.str.223, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/perf/arm-cci.c", i32 503, i32 2}
!239 = !{ptr @.str.225, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/perf/arm-cci.c", i32 504, i32 2}
!241 = !{ptr @.str.227, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/perf/arm-cci.c", i32 505, i32 2}
!243 = !{ptr @.str.229, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/perf/arm-cci.c", i32 506, i32 2}
!245 = !{ptr @.str.231, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/perf/arm-cci.c", i32 507, i32 2}
!247 = !{ptr @.str.233, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/perf/arm-cci.c", i32 508, i32 2}
!249 = !{ptr @.str.235, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/perf/arm-cci.c", i32 509, i32 2}
!251 = !{ptr @.str.237, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/perf/arm-cci.c", i32 510, i32 2}
!253 = !{ptr @.str.239, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/perf/arm-cci.c", i32 511, i32 2}
!255 = !{ptr @.str.241, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/perf/arm-cci.c", i32 512, i32 2}
!257 = !{ptr @.str.243, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/perf/arm-cci.c", i32 513, i32 2}
!259 = !{ptr @.str.245, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/perf/arm-cci.c", i32 514, i32 2}
!261 = !{ptr @.str.247, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/perf/arm-cci.c", i32 515, i32 2}
!263 = !{ptr @.str.249, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/perf/arm-cci.c", i32 516, i32 2}
!265 = !{ptr @.str.251, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/perf/arm-cci.c", i32 517, i32 2}
!267 = !{ptr @.str.253, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/perf/arm-cci.c", i32 518, i32 2}
!269 = !{ptr @cci5xx_pmu_event_attrs, !270, !"cci5xx_pmu_event_attrs", i1 false, i1 false}
!270 = !{!"../drivers/perf/arm-cci.c", i32 458, i32 26}
!271 = !{ptr @.str.255, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/perf/arm-cci.c", i32 528, i32 25}
!273 = !{ptr @g_cci_pmu, !274, !"g_cci_pmu", i1 false, i1 false}
!274 = !{!"../drivers/perf/arm-cci.c", i32 117, i32 24}
!275 = !{ptr @.str.256, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/perf/arm-cci.c", i32 1432, i32 3}
!277 = !{ptr @.str.257, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @cci_pmu_init._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @cci_pmu_init._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.258, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/perf/arm-cci.c", i32 1388, i32 10}
!282 = !{ptr @pmu_event_attr_group, !283, !"pmu_event_attr_group", i1 false, i1 false}
!283 = !{!"../drivers/perf/arm-cci.c", i32 1387, i32 31}
!284 = !{ptr @.str.259, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/perf/arm-cci.c", i32 1383, i32 10}
!286 = !{ptr @pmu_format_attr_group, !287, !"pmu_format_attr_group", i1 false, i1 false}
!287 = !{!"../drivers/perf/arm-cci.c", i32 1382, i32 31}
!288 = !{ptr @pmu_attr_groups, !289, !"pmu_attr_groups", i1 false, i1 false}
!289 = !{!"../drivers/perf/arm-cci.c", i32 1392, i32 38}
!290 = !{ptr @pmu_attr_group, !291, !"pmu_attr_group", i1 false, i1 false}
!291 = !{!"../drivers/perf/arm-cci.c", i32 1378, i32 37}
!292 = !{ptr @pmu_attrs, !293, !"pmu_attrs", i1 false, i1 false}
!293 = !{!"../drivers/perf/arm-cci.c", i32 1373, i32 26}
!294 = !{ptr @.str.260, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/perf/arm-cci.c", i32 1371, i32 2}
!296 = !{ptr @pmu_cpumask_attr, !297, !"pmu_cpumask_attr", i1 false, i1 false}
!297 = !{!"../drivers/perf/arm-cci.c", i32 1370, i32 32}
!298 = !{ptr @.str.261, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/perf/arm-cci.c", i32 837, i32 3}
!300 = !{ptr @.str.262, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.263, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @pmu_request_irq._entry, !299, !"_entry", i1 false, i1 false}
!303 = !{ptr @pmu_request_irq._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.264, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/perf/arm-cci.c", i32 850, i32 5}
!306 = !{ptr @.str.266, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/perf/arm-cci.c", i32 852, i32 4}
!308 = !{ptr @pmu_request_irq._entry.265, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @pmu_request_irq._entry_ptr.267, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.268, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/perf/arm-cci.c", i32 883, i32 3}
!312 = !{ptr @.str.269, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @pmu_read_counter._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @pmu_read_counter._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.270, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/perf/arm-cci.c", i32 1288, i32 3}
!317 = !{ptr @.str.271, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.272, !316, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @__hw_perf_event_init.__UNIQUE_ID_ddebug250, !316, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!320 = distinct !{null, !321, !"__already_done", i1 false, i1 false}
!321 = !{!"../drivers/perf/arm-cci.c", i32 1145, i32 3}
!322 = !{ptr @.str.273, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/perf/arm-cci.c", i32 1150, i32 3}
!324 = !{ptr @cci_pmu_start._entry, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @cci_pmu_start._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.274, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/perf/arm-cci.c", i32 1176, i32 3}
!328 = !{ptr @cci_pmu_stop._entry, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @cci_pmu_stop._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @arm_cci_pmu_matches, !331, !"arm_cci_pmu_matches", i1 false, i1 false}
!331 = !{!"../drivers/perf/arm-cci.c", i32 1554, i32 34}
!332 = !{!"sp"}
!333 = !{i32 1, !"wchar_size", i32 2}
!334 = !{i32 1, !"min_enum_size", i32 4}
!335 = !{i32 8, !"branch-target-enforcement", i32 0}
!336 = !{i32 8, !"sign-return-address", i32 0}
!337 = !{i32 8, !"sign-return-address-all", i32 0}
!338 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!339 = !{i32 7, !"uwtable", i32 1}
!340 = !{i32 7, !"frame-pointer", i32 2}
!341 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!342 = !{i64 5866910}
!343 = !{!"branch_weights", i32 1, i32 2000}
!344 = !{!"auto-init"}
!345 = !{i64 5866492}
!346 = !{i64 2155196709}
!347 = !{i64 2155197494}
!348 = !{i64 2148741611}
!349 = !{i64 1228211, i64 1228236, i64 1228258, i64 1228274, i64 1228286, i64 1228306, i64 1228330, i64 1228346, i64 1228358}
!350 = !{i64 2148741799}
!351 = !{i64 2148742192, i64 2148742218, i64 2148742247, i64 2148742281, i64 2148742312, i64 2148742335}
!352 = !{!"branch_weights", i32 2000, i32 1}
!353 = !{i64 2148342869, i64 2148342874, i64 2148342887, i64 2148342931, i64 2148342965, i64 2148342986}
