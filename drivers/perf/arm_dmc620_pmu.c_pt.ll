; ModuleID = '/llk/IR_all_yes/drivers/perf/arm_dmc620_pmu.c_pt.bc'
source_filename = "../drivers/perf/arm_dmc620_pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.dmc620_pmu_event_attr = type { %struct.device_attribute, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dmc620_pmu = type { %struct.pmu, ptr, ptr, %struct.list_head, [1 x i32], [10 x ptr] }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmc620_pmu_irq = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.refcount_struct, i32, i32 }
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

@dmc620_pmu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dmc620_pmu_device_probe, ptr @dmc620_pmu_device_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr @dmc620_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@cpuhp_state_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_arm_dmc620_pmu__274_744_dmc620_pmu_init6 = internal global ptr @dmc620_pmu_init, section ".initcall6.init", align 4
@__exitcall_dmc620_pmu_exit = internal global ptr @dmc620_pmu_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description275 = internal constant [77 x i8] c"arm_dmc620_pmu.description=Perf driver for the ARM DMC-620 memory controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [65 x i8] c"arm_dmc620_pmu.author=Tuan Phan <tuanphan@os.amperecomputing.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [48 x i8] c"arm_dmc620_pmu.file=drivers/perf/arm_dmc620_pmu\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [30 x i8] c"arm_dmc620_pmu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm_dmc620_pmu\00", [17 x i8] zeroinitializer }, align 32
@dmc620_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"ARMHD620\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dmc620_pmu_attr_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dmc620_pmu_events_attr_group, ptr @dmc620_pmu_format_attr_group, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_%llx\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arm_dmc620\00", [21 x i8] zeroinitializer }, align 32
@dmc620_pmu_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 682, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Create name failed, PMU @%pa\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dmc620_pmu_device_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/perf/arm_dmc620_pmu.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dmc620_pmu_device_probe._entry_ptr = internal global ptr @dmc620_pmu_device_probe._entry, section ".printk_index", align 4
@dmc620_pmu_events_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.8, ptr null, ptr null, ptr @dmc620_pmu_events_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dmc620_pmu_format_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.67, ptr null, ptr null, ptr @dmc620_pmu_formats_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@dmc620_pmu_events_attrs = internal global { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.11, ptr @.compoundliteral.13, ptr @.compoundliteral.15, ptr @.compoundliteral.17, ptr @.compoundliteral.19, ptr @.compoundliteral.21, ptr @.compoundliteral.23, ptr @.compoundliteral.25, ptr @.compoundliteral.27, ptr @.compoundliteral.29, ptr @.compoundliteral.31, ptr @.compoundliteral.33, ptr @.compoundliteral.35, ptr @.compoundliteral.37, ptr @.compoundliteral.39, ptr @.compoundliteral.41, ptr @.compoundliteral.43, ptr @.compoundliteral.45, ptr @.compoundliteral.47, ptr @.compoundliteral.49, ptr @.compoundliteral.51, ptr @.compoundliteral.53, ptr @.compoundliteral.55, ptr @.compoundliteral.57, ptr @.compoundliteral.59, ptr @.compoundliteral.61, ptr @.compoundliteral.63, ptr @.compoundliteral.65, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clkdiv2_cycle_count\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clkdiv2_allocate\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 1 }], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clkdiv2_queue_depth\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 2 }], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clkdiv2_waiting_for_wr_data\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 3 }], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clkdiv2_read_backlog\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 4 }], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clkdiv2_waiting_for_mi\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 5 }], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clkdiv2_hazard_resolution\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 6 }], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clkdiv2_enqueue\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 7 }], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clkdiv2_arbitrate\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 8 }], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clkdiv2_lrank_turnaround_activate\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 9 }], [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clkdiv2_prank_turnaround_activate\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 10 }], [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clkdiv2_read_depth\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 11 }], [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clkdiv2_write_depth\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 12 }], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clkdiv2_highigh_qos_depth\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 13 }], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clkdiv2_high_qos_depth\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 14 }], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clkdiv2_medium_qos_depth\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 15 }], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clkdiv2_low_qos_depth\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 16 }], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clkdiv2_activate\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 17 }], [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clkdiv2_rdwr\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 18 }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clkdiv2_refresh\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 19 }], [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clkdiv2_training_request\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 20 }], [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clkdiv2_t_mac_tracker\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 21 }], [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clkdiv2_bk_fsm_tracker\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 22 }], [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clkdiv2_bk_open_tracker\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 23 }], [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clkdiv2_ranks_in_pwr_down\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 24 }], [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clkdiv2_ranks_in_sref\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 1, i8 25 }], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_cycle_count\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_request\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 0, i8 1 }], [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_upload_stall\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [1 x %struct.dmc620_pmu_event_attr], [32 x i8] } { [1 x %struct.dmc620_pmu_event_attr] [%struct.dmc620_pmu_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dmc620_pmu_event_show, ptr null }, i8 0, i8 2 }], [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event=0x%x,clkdiv2=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@dmc620_pmu_formats_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @format_attr_mask, ptr @format_attr_match, ptr @format_attr_invert, ptr @format_attr_incr, ptr @format_attr_event, ptr @format_attr_clkdiv2, ptr null], [36 x i8] zeroinitializer }, align 32
@format_attr_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_match = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @match_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_invert = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @invert_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_incr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @incr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_event = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @event_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_clkdiv2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @clkdiv2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config:0-44\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"match\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config1:0-44\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"invert\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config2:0\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"incr\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config2:1-2\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config2:3-8\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkdiv2\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config2:9\0A\00", [21 x i8] zeroinitializer }, align 32
@dmc620_pmu_event_init.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.5, ptr @.str.81, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dmc620_pmu_event_init\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't support per-task counters\0A\00", [63 x i8] zeroinitializer }, align 32
@dmc620_pmu_irqs_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.82, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dmc620_pmu_irqs_lock, i64 52), ptr getelementptr (i8, ptr @dmc620_pmu_irqs_lock, i64 52) }, ptr @dmc620_pmu_irqs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.83, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dmc620_pmu_irqs_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dmc620_pmu_irqs_lock\00", [43 x i8] zeroinitializer }, align 32
@dmc620_pmu_irqs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dmc620_pmu_irqs, ptr @dmc620_pmu_irqs }, [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmc620-pmu\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dmc620_pmu_handle_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@dmc620_pmu_handle_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"dmc620_pmu_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 716, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"cpuhp_state_num\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 100, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 718, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"dmc620_acpi_match\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 711, i32 36 }
@___asan_gen_.101 = private unnamed_addr constant [23 x i8] c"dmc620_pmu_attr_groups\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 230, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 678, i32 7 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 678, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 681, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [29 x i8] c"dmc620_pmu_events_attr_group\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 162, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [29 x i8] c"dmc620_pmu_format_attr_group\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 225, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 163, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant [24 x i8] c"dmc620_pmu_events_attrs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 126, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 128, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 129, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 130, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 131, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 132, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 133, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 134, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 135, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 136, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 137, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 138, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 139, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 140, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 141, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 142, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 143, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 144, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 145, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 146, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 147, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 148, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 149, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 150, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 151, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 152, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 153, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 156, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 157, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 158, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 116, i32 26 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 226, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant [25 x i8] c"dmc620_pmu_formats_attrs\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 215, i32 26 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"format_attr_mask\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [18 x i8] c"format_attr_match\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [19 x i8] c"format_attr_invert\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"format_attr_incr\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [18 x i8] c"format_attr_event\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [20 x i8] c"format_attr_clkdiv2\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 208, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 209, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 210, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 211, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 212, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 213, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 498, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [21 x i8] c"dmc620_pmu_irqs_lock\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 70, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant [16 x i8] c"dmc620_pmu_irqs\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 69, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 420, i32 6 }
@___asan_gen_.341 = private constant [33 x i8] c"../drivers/perf/arm_dmc620_pmu.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 346, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 695, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 723, i32 2 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_dmc620_pmu_exit, ptr @__initcall__kmod_arm_dmc620_pmu__274_744_dmc620_pmu_init6, ptr @dmc620_pmu_device_probe._entry, ptr @dmc620_pmu_device_probe._entry_ptr, ptr @dmc620_pmu_exit, ptr @dmc620_pmu_driver, ptr @cpuhp_state_num, ptr @.str, ptr @dmc620_acpi_match, ptr @dmc620_pmu_attr_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dmc620_pmu_events_attr_group, ptr @dmc620_pmu_format_attr_group, ptr @.str.8, ptr @dmc620_pmu_events_attrs, ptr @.str.9, ptr @.compoundliteral, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.str.67, ptr @dmc620_pmu_formats_attrs, ptr @format_attr_mask, ptr @format_attr_match, ptr @format_attr_invert, ptr @format_attr_incr, ptr @format_attr_event, ptr @format_attr_clkdiv2, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @dmc620_pmu_irqs_lock, ptr @.str.82, ptr @.str.83, ptr @dmc620_pmu_irqs, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc620_pmu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_state_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc620_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc620_pmu_attr_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc620_pmu_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc620_pmu_events_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc620_pmu_format_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc620_pmu_events_attrs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc620_pmu_formats_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_match to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_invert to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_incr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_clkdiv2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc620_pmu_irqs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc620_pmu_irqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dmc620_pmu_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @dmc620_pmu_driver) #12
  %0 = load i32, ptr @cpuhp_state_num, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dmc620_pmu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @dmc620_pmu_cpu_teardown, i1 noundef zeroext true) #12
  store i32 %call.i, ptr @cpuhp_state_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dmc620_pmu_driver, ptr noundef null) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmc620_pmu_device_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 220, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = call ptr @memset(ptr %call.i, i32 0, i32 16)
  %.compoundliteral.sroa.2.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 16
  %2 = ptrtoint ptr %.compoundliteral.sroa.2.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dmc620_pmu_attr_groups, ptr %.compoundliteral.sroa.2.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 20
  %3 = call ptr @memset(ptr %.compoundliteral.sroa.3.0.pmu.sroa_idx, i32 0, i32 12)
  %.compoundliteral.sroa.348.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 32
  %4 = ptrtoint ptr %.compoundliteral.sroa.348.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %.compoundliteral.sroa.348.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 36
  %5 = call ptr @memset(ptr %.compoundliteral.sroa.4.0.pmu.sroa_idx, i32 0, i32 12)
  %.compoundliteral.sroa.449.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 48
  %6 = ptrtoint ptr %.compoundliteral.sroa.449.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %.compoundliteral.sroa.449.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 52
  %7 = call ptr @memset(ptr %.compoundliteral.sroa.5.0.pmu.sroa_idx, i32 0, i32 16)
  %.compoundliteral.sroa.550.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 68
  %8 = ptrtoint ptr %.compoundliteral.sroa.550.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dmc620_pmu_event_init, ptr %.compoundliteral.sroa.550.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.6.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 72
  %9 = ptrtoint ptr %.compoundliteral.sroa.6.0.pmu.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.6.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.651.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 80
  %10 = ptrtoint ptr %.compoundliteral.sroa.651.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dmc620_pmu_add, ptr %.compoundliteral.sroa.651.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.7.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 84
  %11 = ptrtoint ptr %.compoundliteral.sroa.7.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dmc620_pmu_del, ptr %.compoundliteral.sroa.7.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.8.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 88
  %12 = ptrtoint ptr %.compoundliteral.sroa.8.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dmc620_pmu_start, ptr %.compoundliteral.sroa.8.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.9.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 92
  %13 = ptrtoint ptr %.compoundliteral.sroa.9.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dmc620_pmu_stop, ptr %.compoundliteral.sroa.9.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.10.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 96
  %14 = ptrtoint ptr %.compoundliteral.sroa.10.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dmc620_pmu_read, ptr %.compoundliteral.sroa.10.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.11.0.pmu.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 100
  %15 = call ptr @memset(ptr %.compoundliteral.sroa.11.0.pmu.sroa_idx, i32 0, i32 60)
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call4) #12
  %base = getelementptr inbounds %struct.dmc620_pmu, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr1.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr1.i.1 = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr1.i.2 = getelementptr i8, ptr %22, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.2, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr1.i.3 = getelementptr i8, ptr %24, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.3, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr1.i.4 = getelementptr i8, ptr %26, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.4, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr1.i.5 = getelementptr i8, ptr %28, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.5, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr1.i.6 = getelementptr i8, ptr %30, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.6, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr1.i.7 = getelementptr i8, ptr %32, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.7, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr1.i.8 = getelementptr i8, ptr %34, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.8, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr1.i.9 = getelementptr i8, ptr %36, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.9, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !165
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #12, !srcloc !164
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %for.body.preheader.cleanup_crit_edge, label %if.end22

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end22:                                         ; preds = %for.body.preheader
  tail call void @mutex_lock_nested(ptr noundef nonnull @dmc620_pmu_irqs_lock, i32 noundef 0) #12
  %.pn58.i.i = load ptr, ptr @dmc620_pmu_irqs, align 4
  %cmp.not59.i.i = icmp eq ptr %.pn58.i.i, @dmc620_pmu_irqs
  br i1 %cmp.not59.i.i, label %if.end22.for.end.i.i_crit_edge, label %if.end22.for.body.i.i_crit_edge

if.end22.for.body.i.i_crit_edge:                  ; preds = %if.end22
  br label %for.body.i.i

if.end22.for.end.i.i_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end22.for.body.i.i_crit_edge
  %.pn60.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn58.i.i, %if.end22.for.body.i.i_crit_edge ]
  %irq_num1.i.i = getelementptr i8, ptr %.pn60.i.i, i32 12
  %42 = ptrtoint ptr %irq_num1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq_num1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %call19)
  %cmp2.i.i = icmp eq i32 %43, %call19
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %refcount.i.i = getelementptr i8, ptr %.pn60.i.i, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #12
  %44 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %refcount.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i.i
  %46 = phi i32 [ %45, %land.lhs.true.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %47 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %46, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %48 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %50 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %49, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !167
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %50, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %50, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %49
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !168

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %51 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %52, 1
  %53 = or i32 %add5.i.i.i.i.i, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !168

if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit.i.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 0) #12
  %54 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge
  %55 = phi i32 [ %52, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %55, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  br i1 %tobool12.i.i.i.not.i.i, label %refcount_inc_not_zero.exit.i.i.for.inc.i.i_crit_edge, label %cleanup.loopexit.i.i

refcount_inc_not_zero.exit.i.i.for.inc.i.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %refcount_inc_not_zero.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %56 = ptrtoint ptr %.pn60.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i.i = load ptr, ptr %.pn60.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @dmc620_pmu_irqs
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end22.for.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 36) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %dmc620_pmu_get_irq.exit.thread84, label %if.end10.i.i

dmc620_pmu_get_irq.exit.thread84:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef nonnull @dmc620_pmu_irqs_lock) #12
  br label %cleanup

if.end10.i.i:                                     ; preds = %for.end.i.i
  %pmus_node.i.i = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %call7.i.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %pmus_node.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %pmus_node.i.i, ptr %pmus_node.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %pmus_node.i.i, ptr %prev.i.i.i, align 4
  %60 = call i32 @llvm.read_register.i32(metadata !153) #12
  %and.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i.i, align 4
  %cpu12.i.i = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %call7.i.i.i.i, i32 0, i32 5
  %64 = ptrtoint ptr %cpu12.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %cpu12.i.i, align 8
  %refcount13.i.i = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %call7.i.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount13.i.i, i32 noundef 4) #12
  %65 = ptrtoint ptr %refcount13.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 1, ptr %refcount13.i.i, align 8
  %call.i.i.i = call i32 @request_threaded_irq(i32 noundef %call19, ptr noundef nonnull @dmc620_pmu_handle_irq, ptr noundef null, i32 noundef 67584, ptr noundef nonnull @.str.84, ptr noundef nonnull %call7.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool15.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %if.end10.i.i.out_free_aff.i.i_crit_edge

if.end10.i.i.out_free_aff.i.i_crit_edge:          ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_aff.i.i

if.end17.i.i:                                     ; preds = %if.end10.i.i
  %66 = ptrtoint ptr %cpu12.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu12.i.i, align 8
  %rem.i.i.i = and i32 %67, 31
  %add.i.i.i = add nuw nsw i32 %rem.i.i.i, 1
  %arrayidx.i.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i.i
  %div3.i.i.i = lshr i32 %67, 5
  %idx.neg.i.i.i = sub nsw i32 0, %div3.i.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 %idx.neg.i.i.i
  %call20.i.i = call i32 @irq_set_affinity(i32 noundef %call19, ptr noundef %add.ptr.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.end17.i.i.out_free_irq.i.i_crit_edge

if.end17.i.i.out_free_irq.i.i_crit_edge:          ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irq.i.i

if.end23.i.i:                                     ; preds = %if.end17.i.i
  %68 = load i32, ptr @cpuhp_state_num, align 4
  %call.i56.i.i = call i32 @__cpuhp_state_add_instance(i32 noundef %68, ptr noundef nonnull %call7.i.i.i.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i.i)
  %tobool25.not.i.i = icmp eq i32 %call.i56.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end27.i.i, label %if.end23.i.i.out_free_irq.i.i_crit_edge

if.end23.i.i.out_free_irq.i.i_crit_edge:          ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irq.i.i

if.end27.i.i:                                     ; preds = %if.end23.i.i
  %irq_num28.i.i = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %call7.i.i.i.i, i32 0, i32 4
  %69 = ptrtoint ptr %irq_num28.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call19, ptr %irq_num28.i.i, align 4
  %irqs_node29.i.i = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %call7.i.i.i.i, i32 0, i32 2
  %70 = load ptr, ptr @dmc620_pmu_irqs, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %irqs_node29.i.i, ptr noundef nonnull @dmc620_pmu_irqs, ptr noundef %70) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end27.i.i.__dmc620_pmu_get_irq.exit.i_crit_edge

if.end27.i.i.__dmc620_pmu_get_irq.exit.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__dmc620_pmu_get_irq.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %irqs_node29.i.i, ptr %prev1.i.i.i.i, align 4
  %72 = ptrtoint ptr %irqs_node29.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %70, ptr %irqs_node29.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @dmc620_pmu_irqs, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %irqs_node29.i.i, ptr @dmc620_pmu_irqs, align 4
  br label %__dmc620_pmu_get_irq.exit.i

out_free_irq.i.i:                                 ; preds = %if.end23.i.i.out_free_irq.i.i_crit_edge, %if.end17.i.i.out_free_irq.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call20.i.i, %if.end17.i.i.out_free_irq.i.i_crit_edge ], [ %call.i56.i.i, %if.end23.i.i.out_free_irq.i.i_crit_edge ]
  %call30.i.i = call ptr @free_irq(i32 noundef %call19, ptr noundef nonnull %call7.i.i.i.i) #12
  br label %out_free_aff.i.i

out_free_aff.i.i:                                 ; preds = %out_free_irq.i.i, %if.end10.i.i.out_free_aff.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %call.i.i.i, %if.end10.i.i.out_free_aff.i.i_crit_edge ], [ %ret.0.i.i, %out_free_irq.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  %74 = inttoptr i32 %ret.1.i.i to ptr
  br label %__dmc620_pmu_get_irq.exit.i

cleanup.loopexit.i.i:                             ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %irq.0.le.i.i = getelementptr i8, ptr %.pn60.i.i, i32 -16
  br label %__dmc620_pmu_get_irq.exit.i

__dmc620_pmu_get_irq.exit.i:                      ; preds = %cleanup.loopexit.i.i, %out_free_aff.i.i, %if.end.i.i.i.i, %if.end27.i.i.__dmc620_pmu_get_irq.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %74, %out_free_aff.i.i ], [ %call7.i.i.i.i, %if.end27.i.i.__dmc620_pmu_get_irq.exit.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i.i ], [ %irq.0.le.i.i, %cleanup.loopexit.i.i ]
  call void @mutex_unlock(ptr noundef nonnull @dmc620_pmu_irqs_lock) #12
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dmc620_pmu_get_irq.exit, label %if.end.i

if.end.i:                                         ; preds = %__dmc620_pmu_get_irq.exit.i
  %irq3.i = getelementptr inbounds %struct.dmc620_pmu, ptr %call.i, i32 0, i32 2
  %75 = ptrtoint ptr %irq3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %retval.0.i.i, ptr %irq3.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @dmc620_pmu_irqs_lock, i32 noundef 0) #12
  %pmus_node.i = getelementptr inbounds %struct.dmc620_pmu, ptr %call.i, i32 0, i32 3
  %pmus_node4.i = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %retval.0.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %pmus_node4.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pmus_node4.i, align 4
  %call.i.i9.i = call zeroext i1 @__list_add_valid(ptr noundef %pmus_node.i, ptr noundef %pmus_node4.i, ptr noundef %77) #12
  br i1 %call.i.i9.i, label %if.end.i.i.i, label %if.end.i.dmc620_pmu_get_irq.exit.thread_crit_edge

if.end.i.dmc620_pmu_get_irq.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmc620_pmu_get_irq.exit.thread

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %pmus_node.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %pmus_node.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.dmc620_pmu, ptr %call.i, i32 0, i32 3, i32 1
  %79 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %pmus_node4.i, ptr %prev2.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !169
  %80 = ptrtoint ptr %pmus_node4.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %pmus_node.i, ptr %pmus_node4.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %81 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %pmus_node.i, ptr %prev37.i.i.i, align 4
  br label %dmc620_pmu_get_irq.exit.thread

dmc620_pmu_get_irq.exit.thread:                   ; preds = %if.end.i.i.i, %if.end.i.dmc620_pmu_get_irq.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @dmc620_pmu_irqs_lock) #12
  %82 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %call4, align 4
  %shr = lshr i32 %83, 12
  %conv = zext i32 %shr to i64
  %call29 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %conv) #12
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end34, label %if.end37

dmc620_pmu_get_irq.exit:                          ; preds = %__dmc620_pmu_get_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %retval.0.i.i to i32
  br label %cleanup

do.end34:                                         ; preds = %dmc620_pmu_get_irq.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %call4) #16
  br label %out_teardown_dev

if.end37:                                         ; preds = %dmc620_pmu_get_irq.exit.thread
  %call39 = call i32 @perf_pmu_register(ptr noundef nonnull %call.i, ptr noundef nonnull %call29, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end37.cleanup_crit_edge, label %if.end37.out_teardown_dev_crit_edge

if.end37.out_teardown_dev_crit_edge:              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_teardown_dev

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_teardown_dev:                                 ; preds = %if.end37.out_teardown_dev_crit_edge, %do.end34
  %ret.0 = phi i32 [ %call39, %if.end37.out_teardown_dev_crit_edge ], [ -12, %do.end34 ]
  call fastcc void @dmc620_pmu_put_irq(ptr noundef nonnull %call.i)
  call void @synchronize_rcu() #12
  br label %cleanup

cleanup:                                          ; preds = %out_teardown_dev, %if.end37.cleanup_crit_edge, %dmc620_pmu_get_irq.exit, %dmc620_pmu_get_irq.exit.thread84, %if.then9, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %41, %if.then9 ], [ %ret.0, %out_teardown_dev ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %for.body.preheader.cleanup_crit_edge ], [ %84, %dmc620_pmu_get_irq.exit ], [ 0, %if.end37.cleanup_crit_edge ], [ -12, %dmc620_pmu_get_irq.exit.thread84 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmc620_pmu_device_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @dmc620_pmu_put_irq(ptr noundef %1)
  tail call void @perf_pmu_unregister(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmc620_pmu_event_init(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %type2 = getelementptr inbounds %struct.pmu, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.i.not = icmp eq i64 %8, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %attach_state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 15
  %9 = ptrtoint ptr %attach_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attach_state, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmc620_pmu_event_init.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmc620_pmu_event_init, %if.then9)) #12
          to label %cleanup [label %if.then9], !srcloc !170

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pmu, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dmc620_pmu_event_init.__UNIQUE_ID_ddebug273, ptr noundef %12, ptr noundef nonnull @.str.81) #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %irq = getelementptr inbounds %struct.dmc620_pmu, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq, align 4
  %cpu = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %cpu13 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 34
  %17 = ptrtoint ptr %cpu13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cpu13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15 = icmp slt i32 %16, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %group_leader = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 11
  %18 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group_leader, align 4
  %cmp18.not = icmp eq ptr %19, %event
  br i1 %cmp18.not, label %if.end17.if.end23_crit_edge, label %land.lhs.true

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end17
  %event_caps.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %event_caps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_caps.i, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not = icmp eq i32 %and.i, 0
  br i1 %tobool21.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end17.if.end23_crit_edge
  %group_leader25 = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 11
  %22 = ptrtoint ptr %group_leader25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group_leader25, align 4
  %cmp27 = icmp eq ptr %23, %19
  br i1 %cmp27, label %if.then28, label %if.end23.if.end50_crit_edge

if.end23.if.end50_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then28:                                        ; preds = %if.end23
  %sibling_list = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %sibling_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn76 = load ptr, ptr %sibling_list, align 8
  %cmp36.not77 = icmp eq ptr %.pn76, %sibling_list
  br i1 %cmp36.not77, label %if.then28.if.end50_crit_edge, label %if.then28.for.body_crit_edge

if.then28.for.body_crit_edge:                     ; preds = %if.then28
  br label %for.body

if.then28.if.end50_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then28.for.body_crit_edge
  %.pn78 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn76, %if.then28.for.body_crit_edge ]
  %sibling.0 = getelementptr i8, ptr %.pn78, i32 -8
  %cmp39.not = icmp eq ptr %sibling.0, %event
  br i1 %cmp39.not, label %for.body.for.inc_crit_edge, label %land.lhs.true40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true40:                                  ; preds = %for.body
  %event_caps.i73 = getelementptr i8, ptr %.pn78, i32 68
  %25 = ptrtoint ptr %event_caps.i73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %event_caps.i73, align 4
  %and.i74 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool42.not = icmp eq i32 %and.i74, 0
  br i1 %tobool42.not, label %land.lhs.true40.cleanup_crit_edge, label %land.lhs.true40.for.inc_crit_edge

land.lhs.true40.for.inc_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn78, align 8
  %cmp36.not = icmp eq ptr %.pn, %sibling_list
  br i1 %cmp36.not, label %for.inc.if.end50_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end50_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.end50:                                         ; preds = %for.inc.if.end50_crit_edge, %if.then28.if.end50_crit_edge, %if.end23.if.end50_crit_edge
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %28 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %land.lhs.true40.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -2, %entry.cleanup_crit_edge ], [ -95, %if.then9 ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -95, %do.body ], [ -22, %land.lhs.true40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmc620_pmu_add(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %2 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = and i64 %4, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not.i = icmp eq i64 %5, 0
  %6 = lshr exact i64 %5, 6
  %7 = trunc i64 %6 to i32
  %8 = xor i32 %7, 8
  %.11.i = select i1 %tobool.not.i, i32 10, i32 8
  %used_mask.i = getelementptr inbounds %struct.dmc620_pmu, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %.11.i)
  %cmp12.not.i = icmp eq i32 %8, %.11.i
  br i1 %cmp12.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %idx.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %8, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef %idx.013.i, ptr noundef %used_mask.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %.11.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %idx2 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %9 = ptrtoint ptr %idx2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %idx.013.i, ptr %idx2, align 4
  %arrayidx = getelementptr %struct.dmc620_pmu, ptr %1, i32 0, i32 5, i32 %idx.013.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %event, ptr %arrayidx, align 4
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %state, align 4
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %config, align 8
  %conv = trunc i64 %13 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  %base.i = getelementptr inbounds %struct.dmc620_pmu, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %mul.i = mul i32 %idx.013.i, 40
  %add.i = add i32 %mul.i, 16
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #12, !srcloc !164
  %and = lshr i64 %13, 32
  %17 = trunc i64 %and to i32
  %conv6 = and i32 %17, 8191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv6) #12
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %20, i32 %add.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i46, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %18) #12, !srcloc !164
  %21 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 9
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  %conv10 = trunc i64 %23 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv10) #12
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %26, i32 %add.i
  %add.ptr1.i51 = getelementptr i8, ptr %add.ptr.i50, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i51, i32 %24) #12, !srcloc !164
  %and8 = lshr i64 %23, 32
  %27 = trunc i64 %and8 to i32
  %conv13 = and i32 %27, 8191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv13) #12
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %30, i32 %add.i
  %add.ptr1.i56 = getelementptr i8, ptr %add.ptr.i55, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i56, i32 %28) #12, !srcloc !164
  %and14 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then15

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %state, align 4
  %32 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pmu, align 8
  %prev_count.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i.i, i64 noundef 2147483648) #12
  %34 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %base.i.i.i = getelementptr inbounds %struct.dmc620_pmu, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i.i, align 4
  %mul.i.i.i = mul i32 %35, 40
  %add.i.i.i = add i32 %mul.i.i.i, 16
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 %add.i.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 128) #12, !srcloc !164
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %2, align 8
  %40 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pmu, align 8
  %42 = trunc i64 %39 to i32
  %conv.i.i.i = shl i32 %42, 1
  %shl.i.i.i = and i32 %conv.i.i.i, 2
  %43 = lshr i32 %42, 1
  %and50.i.i.i = and i32 %43, 124
  %44 = shl i32 %42, 6
  %shl81.i.i.i = and i32 %44, 384
  %or51.i.i.i = or i32 %and50.i.i.i, %shl.i.i.i
  %or83.i.i.i = or i32 %or51.i.i.i, %shl81.i.i.i
  %or.i.i = or i32 %or83.i.i.i, 1
  %45 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %idx2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %base.i.i5.i = getelementptr inbounds %struct.dmc620_pmu, ptr %41, i32 0, i32 1
  %48 = ptrtoint ptr %base.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i5.i, align 4
  %mul.i.i6.i = mul i32 %46, 40
  %add.i.i7.i = add i32 %mul.i.i6.i, 16
  %add.ptr.i.i8.i = getelementptr i8, ptr %49, i32 %add.i.i7.i
  %add.ptr1.i.i9.i = getelementptr i8, ptr %add.ptr.i.i8.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i9.i, i32 %47) #12, !srcloc !164
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  tail call void @perf_event_update_userpage(ptr noundef %event) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -11, %entry.cleanup_crit_edge ], [ -11, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmc620_pmu_del(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %idx1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx1, align 4
  %state.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.dmc620_pmu_stop.exit_crit_edge

entry.dmc620_pmu_stop.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmc620_pmu_stop.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %base.i.i.i = getelementptr inbounds %struct.dmc620_pmu, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %mul.i.i.i = mul i32 %3, 40
  %add.i.i.i = add i32 %mul.i.i.i, 16
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %add.i.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 0) #12, !srcloc !164
  tail call fastcc void @dmc620_pmu_event_update(ptr noundef %event) #12
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %or.i = or i32 %9, 3
  store i32 %or.i, ptr %state.i, align 4
  br label %dmc620_pmu_stop.exit

dmc620_pmu_stop.exit:                             ; preds = %if.end.i, %entry.dmc620_pmu_stop.exit_crit_edge
  %arrayidx = getelementptr %struct.dmc620_pmu, ptr %1, i32 0, i32 5, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  %used_mask = getelementptr inbounds %struct.dmc620_pmu, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %used_mask) #12
  tail call void @perf_event_update_userpage(ptr noundef %event) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmc620_pmu_start(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %1 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pmu.i, align 8
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef 2147483648) #12
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %3 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %base.i.i = getelementptr inbounds %struct.dmc620_pmu, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %mul.i.i = mul i32 %4, 40
  %add.i.i = add i32 %mul.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %add.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 128) #12, !srcloc !164
  %7 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %10 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pmu.i, align 8
  %12 = trunc i64 %9 to i32
  %conv.i.i = shl i32 %12, 1
  %shl.i.i = and i32 %conv.i.i, 2
  %13 = lshr i32 %12, 1
  %and50.i.i = and i32 %13, 124
  %14 = shl i32 %12, 6
  %shl81.i.i = and i32 %14, 384
  %or51.i.i = or i32 %shl.i.i, %and50.i.i
  %or83.i.i = or i32 %or51.i.i, %shl81.i.i
  %or.i = or i32 %or83.i.i, 1
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %base.i.i5 = getelementptr inbounds %struct.dmc620_pmu, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i5, align 4
  %mul.i.i6 = mul i32 %16, 40
  %add.i.i7 = add i32 %mul.i.i6, 16
  %add.ptr.i.i8 = getelementptr i8, ptr %19, i32 %add.i.i7
  %add.ptr1.i.i9 = getelementptr i8, ptr %add.ptr.i.i8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i9, i32 %17) #12, !srcloc !164
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmc620_pmu_stop(ptr noundef %event, i32 noundef %flags) #2 align 64 {
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
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu.i, align 8
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %base.i.i = getelementptr inbounds %struct.dmc620_pmu, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %mul.i.i = mul i32 %5, 40
  %add.i.i = add i32 %mul.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #12, !srcloc !164
  tail call fastcc void @dmc620_pmu_event_update(ptr noundef %event)
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %or = or i32 %9, 3
  store i32 %or, ptr %state, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmc620_pmu_read(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dmc620_pmu_event_update(ptr noundef %event)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmc620_pmu_put_irq(ptr noundef %dmc620_pmu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.dmc620_pmu, ptr %dmc620_pmu, i32 0, i32 2
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @dmc620_pmu_irqs_lock, i32 noundef 0) #12
  %pmus_node = getelementptr inbounds %struct.dmc620_pmu, ptr %dmc620_pmu, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pmus_node) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.dmc620_pmu, ptr %dmc620_pmu, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %pmus_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmus_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.dmc620_pmu, ptr %dmc620_pmu, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !171
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !172
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then_crit_edge, label %if.then10.i.i.i, !prof !168

if.end5.i.i.i.if.then_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %if.then

if.then:                                          ; preds = %if.then10.i.i.i, %if.end5.i.i.i.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dmc620_pmu_irqs_lock) #12
  br label %cleanup

if.end:                                           ; preds = %list_del_rcu.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !173
  %irqs_node = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %1, i32 0, i32 2
  %call.i.i10 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %irqs_node) #12
  br i1 %call.i.i10, label %if.end.i.i13, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i13:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i11 = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i11, align 4
  %12 = ptrtoint ptr %irqs_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irqs_node, align 4
  %prev1.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i12, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i13, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %irqs_node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %irqs_node, align 4
  %prev.i14 = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i14, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dmc620_pmu_irqs_lock) #12
  %irq_num = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_num, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %1) #12
  %20 = load i32, ptr @cpuhp_state_num, align 4
  %call.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %20, ptr noundef %1, i1 noundef zeroext false) #12
  tail call void @kfree(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmc620_pmu_event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %eventid = getelementptr inbounds %struct.dmc620_pmu_event_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %eventid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eventid, align 1
  %conv = zext i8 %1 to i32
  %clkdiv2 = getelementptr inbounds %struct.dmc620_pmu_event_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %clkdiv2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clkdiv2, align 4
  %conv1 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.66, i32 noundef %conv, i32 noundef %conv1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mask_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.69, i32 13)
  ret i32 12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @match_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.71, i32 14)
  ret i32 13
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @invert_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.73, i32 11)
  ret i32 10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @incr_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.75, i32 13)
  ret i32 12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.77, i32 13)
  ret i32 12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clkdiv2_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.79, i32 11)
  ret i32 10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_update_userpage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmc620_pmu_event_update(ptr noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prev_count1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prev_count1, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %prev_count1) #12
  %0 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu.i, align 8
  %2 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx.i, align 4
  %base.i.i = getelementptr inbounds %struct.dmc620_pmu, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %mul.i.i = mul i32 %3, 40
  %add.i.i = add i32 %mul.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !174
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !175
  %conv.i = zext i32 %7 to i64
  %call.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count1, i32 noundef 8) #12
  %call.i14 = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %prev_count1, i64 noundef %call.i, i64 noundef %conv.i) #12
  %cmp.not = icmp eq i64 %call.i14, %call.i
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i64 %conv.i, %call.i
  %and = and i64 %sub, 4294967295
  %count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef %and, ptr noundef %count) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmc620_pmu_handle_irq(i32 noundef %irq_num, ptr noundef %data) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !176
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.86, i32 noundef 696, ptr noundef nonnull @.str.87) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b158 = load i1, ptr @dmc620_pmu_handle_irq.__warned, align 1
  br i1 %.b158, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dmc620_pmu_handle_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 346, ptr noundef nonnull @.str.85) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %pmus_node = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %pmus_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn188 = load volatile ptr, ptr %pmus_node, align 4
  %cmp.not189 = icmp eq ptr %.pn188, %pmus_node
  br i1 %cmp.not189, label %do.end.for.end128_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end128_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end128

for.body:                                         ; preds = %for.end117.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn190 = phi ptr [ %.pn, %for.end117.for.body_crit_edge ], [ %.pn188, %do.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %status, align 4, !annotation !177
  %events = getelementptr i8, ptr %.pn190, i32 12
  br label %for.body13

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body
  %idx.0184 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body13_crit_edge ]
  %arrayidx = getelementptr [10 x ptr], ptr %events, i32 0, i32 %idx.0184
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %for.body13.for.inc_crit_edge, label %if.end16

for.body13.for.inc_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end16:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmu.i, align 8
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %7, i32 0, i32 25, i32 0, i32 0, i32 5
  %10 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  call void @arm_heavy_mb() #12
  %base.i.i = getelementptr inbounds %struct.dmc620_pmu, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %mul.i.i = mul i32 %11, 40
  %add.i.i = add i32 %mul.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 16
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #12, !srcloc !164
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %for.body13.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.0184, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body13_crit_edge

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

for.end:                                          ; preds = %for.inc
  %base = getelementptr i8, ptr %.pn190, i32 -8
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %15, i32 8
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #12, !srcloc !174
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !178
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %status, align 4
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %20, i32 12
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #12, !srcloc !174
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !179
  %shl = shl i32 %22, 8
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %or = or i32 %24, %shl
  store i32 %or, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool28.not = icmp eq i32 %or, 0
  br i1 %tobool28.not, label %for.end.for.body105.preheader_crit_edge, label %if.then29

for.end.for.body105.preheader_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body105.preheader

if.then29:                                        ; preds = %for.end
  %call30 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 10, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call30)
  %cmp32185 = icmp ult i32 %call30, 10
  br i1 %cmp32185, label %if.then29.for.body33_crit_edge, label %if.then29.for.end84_crit_edge

if.then29.for.end84_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end84

if.then29.for.body33_crit_edge:                   ; preds = %if.then29
  br label %for.body33

for.body33:                                       ; preds = %for.inc82.for.body33_crit_edge, %if.then29.for.body33_crit_edge
  %idx.1186 = phi i32 [ %call83, %for.inc82.for.body33_crit_edge ], [ %call30, %if.then29.for.body33_crit_edge ]
  %arrayidx35 = getelementptr [10 x ptr], ptr %events, i32 0, i32 %idx.1186
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %26, null
  br i1 %tobool36.not, label %land.rhs, label %if.end81.critedge

land.rhs:                                         ; preds = %for.body33
  %.b156157 = load i1, ptr @dmc620_pmu_handle_irq.__already_done, align 1
  br i1 %.b156157, label %land.rhs.for.inc82_crit_edge, label %if.then45, !prof !168

land.rhs.for.inc82_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc82

if.then45:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dmc620_pmu_handle_irq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 370, i32 noundef 9, ptr noundef null) #12
  br label %for.inc82

if.end81.critedge:                                ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dmc620_pmu_event_update(ptr noundef nonnull %26)
  %pmu.i160 = getelementptr inbounds %struct.perf_event, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %pmu.i160 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pmu.i160, align 8
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %26, i32 0, i32 25, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #12
  call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef 2147483648) #12
  %idx.i161 = getelementptr inbounds %struct.perf_event, ptr %26, i32 0, i32 25, i32 0, i32 0, i32 5
  %29 = ptrtoint ptr %idx.i161 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx.i161, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  call void @arm_heavy_mb() #12
  %base.i.i162 = getelementptr inbounds %struct.dmc620_pmu, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %base.i.i162 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i162, align 4
  %mul.i.i163 = mul i32 %30, 40
  %add.i.i164 = add i32 %mul.i.i163, 16
  %add.ptr.i.i165 = getelementptr i8, ptr %32, i32 32
  %add.ptr1.i.i166 = getelementptr i8, ptr %add.ptr.i.i165, i32 %add.i.i164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i166, i32 128) #12, !srcloc !164
  br label %for.inc82

for.inc82:                                        ; preds = %if.end81.critedge, %if.then45, %land.rhs.for.inc82_crit_edge
  %add = add nuw nsw i32 %idx.1186, 1
  %call83 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 10, i32 noundef %add) #12
  %cmp32 = icmp ult i32 %call83, 10
  br i1 %cmp32, label %for.inc82.for.body33_crit_edge, label %for.inc82.for.end84_crit_edge

for.inc82.for.end84_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end84

for.inc82.for.body33_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33

for.end84:                                        ; preds = %for.inc82.for.end84_crit_edge, %if.then29.for.end84_crit_edge
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 4
  %and = and i32 %34, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool85.not = icmp eq i32 %and, 0
  br i1 %tobool85.not, label %for.end84.if.end92_crit_edge, label %do.body87

for.end84.if.end92_crit_edge:                     ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

do.body87:                                        ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !180
  call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr91 = getelementptr i8, ptr %36, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 0) #12, !srcloc !164
  br label %if.end92

if.end92:                                         ; preds = %do.body87, %for.end84.if.end92_crit_edge
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  %39 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool94.not = icmp eq i32 %39, 0
  br i1 %tobool94.not, label %if.end92.for.body105.preheader_crit_edge, label %do.body96

if.end92.for.body105.preheader_crit_edge:         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body105.preheader

do.body96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr100 = getelementptr i8, ptr %41, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 0) #12, !srcloc !164
  br label %for.body105.preheader

for.body105.preheader:                            ; preds = %do.body96, %if.end92.for.body105.preheader_crit_edge, %for.end.for.body105.preheader_crit_edge
  br label %for.body105

for.body105:                                      ; preds = %for.inc115.for.body105_crit_edge, %for.body105.preheader
  %idx.2187 = phi i32 [ %inc116, %for.inc115.for.body105_crit_edge ], [ 0, %for.body105.preheader ]
  %arrayidx107 = getelementptr [10 x ptr], ptr %events, i32 0, i32 %idx.2187
  %42 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx107, align 4
  %tobool108.not = icmp eq ptr %43, null
  br i1 %tobool108.not, label %for.body105.for.inc115_crit_edge, label %if.end110

for.body105.for.inc115_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc115

if.end110:                                        ; preds = %for.body105
  %state = getelementptr inbounds %struct.perf_event, ptr %43, i32 0, i32 25, i32 4
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state, align 4
  %and111 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %dmc620_pmu_enable_counter.exit, label %if.end110.for.inc115_crit_edge

if.end110.for.inc115_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc115

dmc620_pmu_enable_counter.exit:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %46 = getelementptr inbounds %struct.perf_event, ptr %43, i32 0, i32 21, i32 10
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %46, align 8
  %pmu.i167 = getelementptr inbounds %struct.perf_event, ptr %43, i32 0, i32 12
  %49 = ptrtoint ptr %pmu.i167 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pmu.i167, align 8
  %51 = trunc i64 %48 to i32
  %conv.i.i = shl i32 %51, 1
  %shl.i.i = and i32 %conv.i.i, 2
  %52 = lshr i32 %51, 1
  %and50.i.i = and i32 %52, 124
  %53 = shl i32 %51, 6
  %shl81.i.i = and i32 %53, 384
  %or51.i.i = or i32 %shl.i.i, %and50.i.i
  %or83.i.i = or i32 %or51.i.i, %shl81.i.i
  %or.i = or i32 %or83.i.i, 1
  %idx.i168 = getelementptr inbounds %struct.perf_event, ptr %43, i32 0, i32 25, i32 0, i32 0, i32 5
  %54 = ptrtoint ptr %idx.i168 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %idx.i168, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  call void @arm_heavy_mb() #12
  %56 = call i32 @llvm.bswap.i32(i32 %or.i) #12
  %base.i.i169 = getelementptr inbounds %struct.dmc620_pmu, ptr %50, i32 0, i32 1
  %57 = ptrtoint ptr %base.i.i169 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i169, align 4
  %mul.i.i170 = mul i32 %55, 40
  %add.i.i171 = add i32 %mul.i.i170, 16
  %add.ptr.i.i172 = getelementptr i8, ptr %58, i32 16
  %add.ptr1.i.i173 = getelementptr i8, ptr %add.ptr.i.i172, i32 %add.i.i171
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i173, i32 %56) #12, !srcloc !164
  br label %for.inc115

for.inc115:                                       ; preds = %dmc620_pmu_enable_counter.exit, %if.end110.for.inc115_crit_edge, %for.body105.for.inc115_crit_edge
  %inc116 = add nuw nsw i32 %idx.2187, 1
  %exitcond191.not = icmp eq i32 %inc116, 10
  br i1 %exitcond191.not, label %for.end117, label %for.inc115.for.body105_crit_edge

for.inc115.for.body105_crit_edge:                 ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body105

for.end117:                                       ; preds = %for.inc115
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #12
  %59 = ptrtoint ptr %.pn190 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn = load volatile ptr, ptr %.pn190, align 4
  %cmp.not = icmp eq ptr %.pn, %pmus_node
  br i1 %cmp.not, label %for.end117.for.end128_crit_edge, label %for.end117.for.body_crit_edge

for.end117.for.body_crit_edge:                    ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end117.for.end128_crit_edge:                  ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end128

for.end128:                                       ; preds = %for.end117.for.end128_crit_edge, %do.end.for.end128_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %do.end.for.end128_crit_edge ], [ 1, %for.end117.for.end128_crit_edge ]
  %call.i174 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i174, label %for.end128.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i177

for.end128.rcu_read_unlock.exit_crit_edge:        ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i177:                               ; preds = %for.end128
  %call1.i175 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i175)
  %tobool.not.i176 = icmp eq i32 %call1.i175, 0
  br i1 %tobool.not.i176, label %land.lhs.true.i177.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i179

land.lhs.true.i177.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i179:                              ; preds = %land.lhs.true.i177
  %.b4.i178 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i178, label %land.lhs.true2.i179.rcu_read_unlock.exit_crit_edge, label %if.then.i180

land.lhs.true2.i179.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i179
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i180:                                     ; preds = %land.lhs.true2.i179
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.86, i32 noundef 724, ptr noundef nonnull @.str.88) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i180, %land.lhs.true2.i179.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i177.rcu_read_unlock.exit_crit_edge, %for.end128.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !182
  %60 = call i32 @llvm.read_register.i32(metadata !153) #12
  %and.i.i.i.i.i181 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i181 to ptr
  %preempt_count.i.i.i.i182 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i182, align 4
  %sub.i.i.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i182, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmc620_pmu_cpu_teardown(i32 noundef %cpu, ptr noundef %node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu2 = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %node, i32 0, i32 5
  %0 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpu)
  %cmp.not = icmp eq i32 %1, %cpu
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @cpumask_any_but(ptr noundef nonnull @__cpu_online_mask, i32 noundef %cpu) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %2)
  %cmp3.not = icmp ult i32 %call, %2
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @dmc620_pmu_irqs_lock, i32 noundef 0) #12
  %pmus_node = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %node, i32 0, i32 1
  %3 = ptrtoint ptr %pmus_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn60 = load ptr, ptr %pmus_node, align 4
  %cmp11.not61 = icmp eq ptr %.pn60, %pmus_node
  br i1 %cmp11.not61, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %.pn62 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn60, %if.end5.for.body_crit_edge ]
  %dmc620_pmu.0 = getelementptr i8, ptr %.pn62, i32 -168
  %4 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu2, align 4
  tail call void @perf_pmu_migrate_context(ptr noundef %dmc620_pmu.0, i32 noundef %5, i32 noundef %call) #12
  %6 = ptrtoint ptr %.pn62 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn62, align 4
  %cmp11.not = icmp eq ptr %.pn, %pmus_node
  br i1 %cmp11.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dmc620_pmu_irqs_lock) #12
  %irq_num = getelementptr inbounds %struct.dmc620_pmu_irq, ptr %node, i32 0, i32 4
  %7 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_num, align 4
  %rem.i = and i32 %call, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %call, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call19 = tail call i32 @irq_set_affinity(i32 noundef %8, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.end.if.end36_crit_edge, label %do.end, !prof !168

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 624, i32 noundef 9, ptr noundef null) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end, %for.end.if.end36_crit_edge
  %9 = ptrtoint ptr %cpu2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %cpu2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_migrate_context(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !139, !141, !142, !144, !146, !147, !148, !150, !151}
!llvm.named.register.sp = !{!153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__initcall__kmod_arm_dmc620_pmu__274_744_dmc620_pmu_init6, !1, !"__initcall__kmod_arm_dmc620_pmu__274_744_dmc620_pmu_init6", i1 false, i1 false}
!1 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 744, i32 1}
!2 = !{ptr @__exitcall_dmc620_pmu_exit, !3, !"__exitcall_dmc620_pmu_exit", i1 false, i1 false}
!3 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 745, i32 1}
!4 = !{ptr @__UNIQUE_ID_description275, !5, !"__UNIQUE_ID_description275", i1 false, i1 false}
!5 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 747, i32 1}
!6 = !{ptr @__UNIQUE_ID_author276, !7, !"__UNIQUE_ID_author276", i1 false, i1 false}
!7 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 748, i32 1}
!8 = !{ptr @__UNIQUE_ID_file277, !9, !"__UNIQUE_ID_file277", i1 false, i1 false}
!9 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 749, i32 1}
!10 = !{ptr @__UNIQUE_ID_license278, !9, !"__UNIQUE_ID_license278", i1 false, i1 false}
!11 = !{ptr @cpuhp_state_num, !12, !"cpuhp_state_num", i1 false, i1 false}
!12 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 100, i32 12}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 718, i32 12}
!15 = !{ptr @dmc620_pmu_driver, !16, !"dmc620_pmu_driver", i1 false, i1 false}
!16 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 716, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 678, i32 7}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 678, i32 18}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 681, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dmc620_pmu_device_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @dmc620_pmu_device_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dmc620_pmu_attr_groups, !30, !"dmc620_pmu_attr_groups", i1 false, i1 false}
!30 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 230, i32 38}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 163, i32 10}
!33 = !{ptr @dmc620_pmu_events_attr_group, !34, !"dmc620_pmu_events_attr_group", i1 false, i1 false}
!34 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 162, i32 37}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 128, i32 2}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 129, i32 2}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 130, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 131, i32 2}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 132, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 133, i32 2}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 134, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 135, i32 2}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 136, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 137, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 138, i32 2}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 139, i32 2}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 140, i32 2}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 141, i32 2}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 142, i32 2}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 143, i32 2}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 144, i32 2}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 145, i32 2}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 146, i32 2}
!73 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 147, i32 2}
!75 = !{ptr @.str.48, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 148, i32 2}
!77 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 149, i32 2}
!79 = !{ptr @.str.52, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 150, i32 2}
!81 = !{ptr @.str.54, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 151, i32 2}
!83 = !{ptr @.str.56, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 152, i32 2}
!85 = !{ptr @.str.58, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 153, i32 2}
!87 = !{ptr @.str.60, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 156, i32 2}
!89 = !{ptr @.str.62, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 157, i32 2}
!91 = !{ptr @.str.64, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 158, i32 2}
!93 = !{ptr @dmc620_pmu_events_attrs, !94, !"dmc620_pmu_events_attrs", i1 false, i1 false}
!94 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 126, i32 26}
!95 = !{ptr @.str.66, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 116, i32 26}
!97 = !{ptr @.str.67, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 226, i32 10}
!99 = !{ptr @dmc620_pmu_format_attr_group, !100, !"dmc620_pmu_format_attr_group", i1 false, i1 false}
!100 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 225, i32 37}
!101 = !{ptr @dmc620_pmu_formats_attrs, !102, !"dmc620_pmu_formats_attrs", i1 false, i1 false}
!102 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 215, i32 26}
!103 = !{ptr @.str.68, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 208, i32 1}
!105 = !{ptr @format_attr_mask, !104, !"format_attr_mask", i1 false, i1 false}
!106 = !{ptr @.str.69, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.70, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 209, i32 1}
!109 = !{ptr @format_attr_match, !108, !"format_attr_match", i1 false, i1 false}
!110 = !{ptr @.str.71, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.72, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 210, i32 1}
!113 = !{ptr @format_attr_invert, !112, !"format_attr_invert", i1 false, i1 false}
!114 = !{ptr @.str.73, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.74, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 211, i32 1}
!117 = !{ptr @format_attr_incr, !116, !"format_attr_incr", i1 false, i1 false}
!118 = !{ptr @.str.75, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.76, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 212, i32 1}
!121 = !{ptr @format_attr_event, !120, !"format_attr_event", i1 false, i1 false}
!122 = !{ptr @.str.77, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.78, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 213, i32 1}
!125 = !{ptr @format_attr_clkdiv2, !124, !"format_attr_clkdiv2", i1 false, i1 false}
!126 = !{ptr @.str.79, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 498, i32 3}
!129 = !{ptr @.str.81, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @dmc620_pmu_event_init.__UNIQUE_ID_ddebug273, !128, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!131 = !{ptr @.str.82, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 70, i32 8}
!133 = !{ptr @.str.83, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @dmc620_pmu_irqs_lock, !132, !"dmc620_pmu_irqs_lock", i1 false, i1 false}
!135 = !{ptr @.str.84, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 420, i32 6}
!137 = !{ptr @dmc620_pmu_irqs, !138, !"dmc620_pmu_irqs", i1 false, i1 false}
!138 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 69, i32 8}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 346, i32 2}
!141 = !{ptr @.str.85, !140, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 370, i32 9}
!144 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!145 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!146 = !{ptr @.str.86, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.87, !145, !"<string literal>", i1 false, i1 false}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!150 = !{ptr @.str.88, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @dmc620_acpi_match, !152, !"dmc620_acpi_match", i1 false, i1 false}
!152 = !{!"../drivers/perf/arm_dmc620_pmu.c", i32 711, i32 36}
!153 = !{!"sp"}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i64 2155412313}
!164 = !{i64 5938821}
!165 = !{i64 2155602727}
!166 = !{i64 2155603122}
!167 = !{i64 806380, i64 806404, i64 806425, i64 806442, i64 806459}
!168 = !{!"branch_weights", i32 2000, i32 1}
!169 = !{i64 2151866814}
!170 = !{i64 2148966936, i64 2148966941, i64 2148966954, i64 2148966998, i64 2148967032, i64 2148967053}
!171 = !{i64 2148412187}
!172 = !{i64 2148326639, i64 2148326671, i64 2148326700, i64 2148326734, i64 2148326765, i64 2148326788}
!173 = !{i64 2150060338}
!174 = !{i64 5939239}
!175 = !{i64 2155411849}
!176 = !{i64 2150109881}
!177 = !{!"auto-init"}
!178 = !{i64 2155576756}
!179 = !{i64 2155577266}
!180 = !{i64 2155578905}
!181 = !{i64 2155579338}
!182 = !{i64 2150110147}
