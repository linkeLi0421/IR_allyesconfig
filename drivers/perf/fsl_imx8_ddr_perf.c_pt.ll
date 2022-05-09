; ModuleID = '/llk/IR_all_yes/drivers/perf/fsl_imx8_ddr_perf.c_pt.bc'
source_filename = "../drivers/perf/fsl_imx8_ddr_perf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.perf_pmu_events_attr = type { %struct.device_attribute, i64, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_ext_attribute = type { %struct.device_attribute, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.fsl_ddr_devtype_data = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ddr_pmu = type { %struct.pmu, ptr, i32, %struct.hlist_node, ptr, [4 x ptr], i32, i32, ptr, i32, i32 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_fsl_imx8_ddr_perf__259_796_imx_ddr_pmu_driver_init6 = internal global ptr @imx_ddr_pmu_driver_init, section ".initcall6.init", align 4
@imx_ddr_pmu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ddr_perf_probe, ptr @ddr_perf_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @imx_ddr_pmu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_ddr_pmu_driver_exit = internal global ptr @imx_ddr_pmu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file260 = internal constant [54 x i8] c"fsl_imx8_ddr_perf.file=drivers/perf/fsl_imx8_ddr_perf\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [33 x i8] c"fsl_imx8_ddr_perf.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"imx-ddr-pmu\00", [20 x i8] zeroinitializer }, align 32
@imx_ddr_pmu_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8-ddr-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8m-ddr-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8m_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-ddr-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mq_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-ddr-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mm_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mn-ddr-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mn_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-ddr-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mp_devtype_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx8_ddr%d\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx8_ddr_perf_pmu\00", [46 x i8] zeroinitializer }, align 32
@ddr_perf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 719, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cpuhp_setup_state_multi failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ddr_perf_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/perf/fsl_imx8_ddr_perf.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ddr_perf_probe._entry_ptr = internal global ptr @ddr_perf_probe._entry, section ".printk_index", align 4
@ddr_perf_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 728, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error %d registering hotplug\0A\00", [34 x i8] zeroinitializer }, align 32
@ddr_perf_probe._entry_ptr.10 = internal global ptr @ddr_perf_probe._entry.8, section ".printk_index", align 4
@ddr_perf_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 735, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to get irq: %d\00", [42 x i8] zeroinitializer }, align 32
@ddr_perf_probe._entry_ptr.13 = internal global ptr @ddr_perf_probe._entry.11, section ".printk_index", align 4
@ddr_perf_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 746, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Request irq failed: %d\00", [41 x i8] zeroinitializer }, align 32
@ddr_perf_probe._entry_ptr.16 = internal global ptr @ddr_perf_probe._entry.14, section ".printk_index", align 4
@ddr_perf_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 753, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set interrupt affinity!\0A\00", [61 x i8] zeroinitializer }, align 32
@ddr_perf_probe._entry_ptr.19 = internal global ptr @ddr_perf_probe._entry.17, section ".printk_index", align 4
@ddr_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.113, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@ddr_perf_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 769, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"i.MX8 DDR Perf PMU failed (%d), disabled\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ddr_perf_probe._entry_ptr.23 = internal global ptr @ddr_perf_probe._entry.20, section ".printk_index", align 4
@attr_groups = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @ddr_perf_events_attr_group, ptr @ddr_perf_format_attr_group, ptr @ddr_perf_cpumask_attr_group, ptr @ddr_perf_filter_cap_attr_group, ptr @ddr_perf_identifier_attr_group, ptr null], [40 x i8] zeroinitializer }, align 32
@ddr_perf_events_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.24, ptr null, ptr null, ptr @ddr_perf_events_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ddr_perf_format_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.89, ptr null, ptr null, ptr @ddr_perf_format_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ddr_perf_cpumask_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ddr_perf_cpumask_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ddr_perf_filter_cap_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.97, ptr null, ptr null, ptr @ddr_perf_filter_cap_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@ddr_perf_identifier_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @ddr_perf_identifier_attr_visible, ptr null, ptr @ddr_perf_identifier_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@ddr_perf_events_attrs = internal global { [33 x ptr], [60 x i8] } { [33 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.27, ptr @.compoundliteral.29, ptr @.compoundliteral.31, ptr @.compoundliteral.33, ptr @.compoundliteral.35, ptr @.compoundliteral.37, ptr @.compoundliteral.39, ptr @.compoundliteral.41, ptr @.compoundliteral.43, ptr @.compoundliteral.45, ptr @.compoundliteral.47, ptr @.compoundliteral.49, ptr @.compoundliteral.51, ptr @.compoundliteral.53, ptr @.compoundliteral.55, ptr @.compoundliteral.57, ptr @.compoundliteral.59, ptr @.compoundliteral.61, ptr @.compoundliteral.63, ptr @.compoundliteral.65, ptr @.compoundliteral.67, ptr @.compoundliteral.69, ptr @.compoundliteral.71, ptr @.compoundliteral.73, ptr @.compoundliteral.75, ptr @.compoundliteral.77, ptr @.compoundliteral.79, ptr @.compoundliteral.81, ptr @.compoundliteral.83, ptr @.compoundliteral.85, ptr @.compoundliteral.87, ptr null], [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cycles\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"selfresh\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read-accesses\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 4, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write-accesses\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 5, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read-queue-depth\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 8, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write-queue-depth\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 9, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lp-read-credit-cnt\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 16, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hp-read-credit-cnt\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 17, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write-credit-cnt\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 18, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read-command\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 32, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write-command\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 33, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"read-modify-write-command\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 34, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hp-read\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 35, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hp-req-nocredit\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 36, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hp-xact-credit\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 37, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp-req-nocredit\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 38, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lp-xact-credit\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 39, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wr-xact-credit\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 41, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read-cycles\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 42, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write-cycles\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 43, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read-write-transition\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 48, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"precharge\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 49, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"activate\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 50, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"load-mode\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 51, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"perf-mwr\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 52, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 53, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read-activate\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 54, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"refresh\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 55, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 56, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raw-hazard\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 57, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"axid-read\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 65, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axid-write\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [1 x %struct.perf_pmu_events_attr], [48 x i8] } { [1 x %struct.perf_pmu_events_attr] [%struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_pmu_event_show, ptr null }, i64 66, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"event=0x%02llx\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@ddr_perf_format_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @format_attr_event, ptr @format_attr_axi_id, ptr @format_attr_axi_mask, ptr null], [16 x i8] zeroinitializer }, align 32
@format_attr_event = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @event_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_axi_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_axi_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"config:0-7\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"axi_id\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config1:0-15\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"axi_mask\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"config1:16-31\0A\00", [17 x i8] zeroinitializer }, align 32
@ddr_perf_cpumask_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ddr_perf_cpumask_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@ddr_perf_cpumask_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_perf_cpumask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpumask\00", [24 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caps\00", [27 x i8] zeroinitializer }, align 32
@ddr_perf_filter_cap_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.99, ptr @.compoundliteral.101, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"filter\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_perf_filter_cap_show, ptr null }, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enhanced_filter\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_perf_filter_cap_show, ptr null }, ptr inttoptr (i32 1 to ptr) }, [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown filter cap %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ddr_perf_identifier_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ddr_perf_identifier_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@ddr_perf_identifier_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddr_perf_identifier_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"identifier\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ddr_perf_event_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.5, i32 381, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't provide per-task data!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ddr_perf_event_init\00", [44 x i8] zeroinitializer }, align 32
@ddr_perf_event_init._entry_ptr = internal global ptr @ddr_perf_event_init._entry, section ".printk_index", align 4
@ddr_perf_event_add.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.108, ptr @.str.109, ptr @.str.5, ptr @.str.110, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_imx8_ddr_perf\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ddr_perf_event_add\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"There are not enough counters\0A\00", [33 x i8] zeroinitializer }, align 32
@ddr_perf_event_update._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.111, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ddr_perf_event_update = private unnamed_addr constant [22 x i8] c"ddr_perf_event_update\00", align 1
@ddr_perf_event_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @__func__.ddr_perf_event_update, ptr @.str.5, i32 482, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"events lost due to counter overflow (config 0x%llx)\0A\00", [43 x i8] zeroinitializer }, align 32
@ddr_perf_event_update._entry_ptr = internal global ptr @ddr_perf_event_update._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ddr_ida.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@imx8_devtype_data = internal constant { %struct.fsl_ddr_devtype_data, [24 x i8] } zeroinitializer, align 32
@imx8m_devtype_data = internal constant { %struct.fsl_ddr_devtype_data, [24 x i8] } { %struct.fsl_ddr_devtype_data { i32 1, ptr null }, [24 x i8] zeroinitializer }, align 32
@imx8mq_devtype_data = internal constant { %struct.fsl_ddr_devtype_data, [24 x i8] } { %struct.fsl_ddr_devtype_data { i32 1, ptr @.str.114 }, [24 x i8] zeroinitializer }, align 32
@imx8mm_devtype_data = internal constant { %struct.fsl_ddr_devtype_data, [24 x i8] } { %struct.fsl_ddr_devtype_data { i32 1, ptr @.str.115 }, [24 x i8] zeroinitializer }, align 32
@imx8mn_devtype_data = internal constant { %struct.fsl_ddr_devtype_data, [24 x i8] } { %struct.fsl_ddr_devtype_data { i32 1, ptr @.str.116 }, [24 x i8] zeroinitializer }, align 32
@imx8mp_devtype_data = internal constant { %struct.fsl_ddr_devtype_data, [24 x i8] } { %struct.fsl_ddr_devtype_data { i32 3, ptr @.str.117 }, [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX8MQ\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX8MM\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX8MN\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX8MP\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"imx_ddr_pmu_driver\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 786, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 788, i32 13 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"imx_ddr_pmu_dt_ids\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 82, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 703, i32 48 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 714, i32 11 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 719, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 728, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 735, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 746, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 753, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [8 x i8] c"ddr_ida\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 769, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [12 x i8] c"attr_groups\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 285, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant [27 x i8] c"ddr_perf_events_attr_group\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 264, i32 37 }
@___asan_gen_.193 = private unnamed_addr constant [27 x i8] c"ddr_perf_format_attr_group\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 280, i32 37 }
@___asan_gen_.196 = private unnamed_addr constant [28 x i8] c"ddr_perf_cpumask_attr_group\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 211, i32 37 }
@___asan_gen_.199 = private unnamed_addr constant [31 x i8] c"ddr_perf_filter_cap_attr_group\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 190, i32 37 }
@___asan_gen_.202 = private unnamed_addr constant [31 x i8] c"ddr_perf_identifier_attr_group\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 136, i32 37 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 265, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"ddr_perf_events_attrs\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 228, i32 26 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 229, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 230, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 231, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 232, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 233, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 234, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 235, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 236, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 237, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 238, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 239, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 240, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 241, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 242, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 243, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 244, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 245, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 246, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 247, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 248, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 249, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 250, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 251, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 252, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 253, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 254, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 255, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 256, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 257, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 258, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 259, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 260, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 222, i32 26 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 281, i32 10 }
@___asan_gen_.345 = private unnamed_addr constant [22 x i8] c"ddr_perf_format_attrs\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 273, i32 26 }
@___asan_gen_.348 = private unnamed_addr constant [18 x i8] c"format_attr_event\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [19 x i8] c"format_attr_axi_id\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [21 x i8] c"format_attr_axi_mask\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 269, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 270, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 271, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant [23 x i8] c"ddr_perf_cpumask_attrs\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 206, i32 26 }
@___asan_gen_.378 = private unnamed_addr constant [22 x i8] c"ddr_perf_cpumask_attr\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 203, i32 32 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 204, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 191, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant [25 x i8] c"ddr_perf_filter_cap_attr\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 184, i32 26 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 185, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 186, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 173, i32 25 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 158, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant [26 x i8] c"ddr_perf_identifier_attrs\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 131, i32 26 }
@___asan_gen_.407 = private unnamed_addr constant [25 x i8] c"ddr_perf_identifier_attr\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 128, i32 32 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 129, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 113, i32 26 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 381, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 528, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 481, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 45, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant [18 x i8] c"imx8_devtype_data\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 56, i32 42 }
@___asan_gen_.452 = private unnamed_addr constant [19 x i8] c"imx8m_devtype_data\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 58, i32 42 }
@___asan_gen_.455 = private unnamed_addr constant [20 x i8] c"imx8mq_devtype_data\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 62, i32 42 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c"imx8mm_devtype_data\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 67, i32 42 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c"imx8mn_devtype_data\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 72, i32 42 }
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c"imx8mp_devtype_data\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 77, i32 42 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 64, i32 16 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 69, i32 16 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 74, i32 16 }
@___asan_gen_.476 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.477 = private constant [36 x i8] c"../drivers/perf/fsl_imx8_ddr_perf.c\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 79, i32 16 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_license261, ptr @__exitcall_imx_ddr_pmu_driver_exit, ptr @__initcall__kmod_fsl_imx8_ddr_perf__259_796_imx_ddr_pmu_driver_init6, ptr @ddr_perf_event_init._entry, ptr @ddr_perf_event_init._entry_ptr, ptr @ddr_perf_event_update._entry, ptr @ddr_perf_event_update._entry_ptr, ptr @ddr_perf_probe._entry, ptr @ddr_perf_probe._entry.11, ptr @ddr_perf_probe._entry.14, ptr @ddr_perf_probe._entry.17, ptr @ddr_perf_probe._entry.20, ptr @ddr_perf_probe._entry.8, ptr @ddr_perf_probe._entry_ptr, ptr @ddr_perf_probe._entry_ptr.10, ptr @ddr_perf_probe._entry_ptr.13, ptr @ddr_perf_probe._entry_ptr.16, ptr @ddr_perf_probe._entry_ptr.19, ptr @ddr_perf_probe._entry_ptr.23, ptr @imx_ddr_pmu_driver_exit, ptr @imx_ddr_pmu_driver, ptr @.str, ptr @imx_ddr_pmu_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @ddr_ida, ptr @.str.21, ptr @.str.22, ptr @attr_groups, ptr @ddr_perf_events_attr_group, ptr @ddr_perf_format_attr_group, ptr @ddr_perf_cpumask_attr_group, ptr @ddr_perf_filter_cap_attr_group, ptr @ddr_perf_identifier_attr_group, ptr @.str.24, ptr @ddr_perf_events_attrs, ptr @.str.25, ptr @.compoundliteral, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.str.89, ptr @ddr_perf_format_attrs, ptr @format_attr_event, ptr @format_attr_axi_id, ptr @format_attr_axi_mask, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @ddr_perf_cpumask_attrs, ptr @ddr_perf_cpumask_attr, ptr @.str.96, ptr @.str.97, ptr @ddr_perf_filter_cap_attr, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.str.103, ptr @ddr_perf_identifier_attrs, ptr @ddr_perf_identifier_attr, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @ddr_perf_event_update._rs, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @imx8_devtype_data, ptr @imx8m_devtype_data, ptr @imx8mq_devtype_data, ptr @imx8mm_devtype_data, ptr @imx8mn_devtype_data, ptr @imx8mp_devtype_data, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ddr_pmu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ddr_pmu_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_groups to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_events_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_format_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_cpumask_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_filter_cap_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_identifier_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_events_attrs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_format_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_axi_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_axi_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_cpumask_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_cpumask_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_filter_cap_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_identifier_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_identifier_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_event_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_event_update._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_perf_event_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_devtype_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_devtype_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_devtype_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_devtype_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_devtype_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_devtype_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ddr_pmu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_ddr_pmu_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_ddr_pmu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_ddr_pmu_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddr_perf_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 216, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 16
  %3 = call ptr @memset(ptr %call.i, i32 0, i32 16)
  %4 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @attr_groups, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 20
  %5 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 24
  %6 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 28
  %7 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 32
  %8 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %.compoundliteral.sroa.8.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 36
  %9 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %.compoundliteral.sroa.9.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 40
  %10 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 44
  %11 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %.compoundliteral.sroa.11.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 48
  %12 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %.compoundliteral.sroa.12.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.13.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 52
  %13 = ptrtoint ptr %.compoundliteral.sroa.13.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %.compoundliteral.sroa.13.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.14.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 56
  %14 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %.compoundliteral.sroa.14.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.15.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 60
  %15 = ptrtoint ptr %.compoundliteral.sroa.15.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ddr_perf_pmu_enable, ptr %.compoundliteral.sroa.15.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.16.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 64
  %16 = ptrtoint ptr %.compoundliteral.sroa.16.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ddr_perf_pmu_disable, ptr %.compoundliteral.sroa.16.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.17.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 68
  %17 = ptrtoint ptr %.compoundliteral.sroa.17.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ddr_perf_event_init, ptr %.compoundliteral.sroa.17.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.18.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 72
  %18 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %.compoundliteral.sroa.18.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.19.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 76
  %19 = ptrtoint ptr %.compoundliteral.sroa.19.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %.compoundliteral.sroa.19.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.20.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 80
  %20 = ptrtoint ptr %.compoundliteral.sroa.20.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ddr_perf_event_add, ptr %.compoundliteral.sroa.20.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.21.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 84
  %21 = ptrtoint ptr %.compoundliteral.sroa.21.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ddr_perf_event_del, ptr %.compoundliteral.sroa.21.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.22.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 88
  %22 = ptrtoint ptr %.compoundliteral.sroa.22.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ddr_perf_event_start, ptr %.compoundliteral.sroa.22.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.23.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 92
  %23 = ptrtoint ptr %.compoundliteral.sroa.23.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ddr_perf_event_stop, ptr %.compoundliteral.sroa.23.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.24.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 96
  %24 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ddr_perf_event_update, ptr %.compoundliteral.sroa.24.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.25.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 100
  %.compoundliteral.sroa.40.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 160
  %25 = call ptr @memset(ptr %.compoundliteral.sroa.25.0..sroa_idx.i, i32 0, i32 60)
  %26 = ptrtoint ptr %.compoundliteral.sroa.40.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %.compoundliteral.sroa.40.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.41.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 164
  %27 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.42.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 168
  %28 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.42.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.43.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 176
  %29 = ptrtoint ptr %.compoundliteral.sroa.43.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %.compoundliteral.sroa.43.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.44.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 180
  %.compoundliteral.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 212
  %30 = call ptr @memset(ptr %.compoundliteral.sroa.44.0..sroa_idx.i, i32 0, i32 36)
  %call.i124 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ddr_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #9
  %31 = ptrtoint ptr %.compoundliteral.sroa.49.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i124, ptr %.compoundliteral.sroa.49.0..sroa_idx.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call10 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.1, i32 noundef %call.i124) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end6.cpuhp_state_err_crit_edge, label %if.end13

if.end6.cpuhp_state_err_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpuhp_state_err

if.end13:                                         ; preds = %if.end6
  %call15 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %devtype_data = getelementptr inbounds %struct.ddr_pmu, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %devtype_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call15, ptr %devtype_data, align 4
  %34 = tail call i32 @llvm.read_register.i32(metadata !209) #9
  %and.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu, align 4
  %38 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 4
  %call.i125 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.2, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @ddr_perf_offline_cpu, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %cmp = icmp slt i32 %call.i125, 0
  br i1 %cmp, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  br label %cpuhp_state_err

if.end21:                                         ; preds = %if.end13
  %cpuhp_state = getelementptr inbounds %struct.ddr_pmu, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %cpuhp_state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i125, ptr %cpuhp_state, align 4
  %call.i126 = tail call i32 @__cpuhp_state_add_instance(i32 noundef %call.i125, ptr noundef %.compoundliteral.sroa.42.0..sroa_idx.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool24.not = icmp eq i32 %call.i126, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i126) #12
  br label %cpuhp_instance_err

if.end30:                                         ; preds = %if.end21
  %call31 = tail call i32 @of_irq_get(ptr noundef %2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call31) #12
  br label %ddr_perf_err

if.end38:                                         ; preds = %if.end30
  %call.i127 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call31, ptr noundef nonnull @ddr_perf_irq_handler, ptr noundef null, i32 noundef 67584, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %cmp41 = icmp slt i32 %call.i127, 0
  br i1 %cmp41, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call.i127) #12
  br label %ddr_perf_err

if.end47:                                         ; preds = %if.end38
  %irq48 = getelementptr inbounds %struct.ddr_pmu, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %irq48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call31, ptr %irq48, align 4
  %41 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 4
  %rem.i = and i32 %42, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %42, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call52 = tail call i32 @irq_set_affinity(i32 noundef %call31, ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %.compoundliteral.sroa.43.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.compoundliteral.sroa.43.0..sroa_idx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.18) #12
  br label %ddr_perf_err

if.end59:                                         ; preds = %if.end47
  %call61 = tail call i32 @perf_pmu_register(ptr noundef nonnull %call.i, ptr noundef nonnull %call10, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end59.cleanup_crit_edge, label %if.end59.ddr_perf_err_crit_edge

if.end59.ddr_perf_err_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %ddr_perf_err

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ddr_perf_err:                                     ; preds = %if.end59.ddr_perf_err_crit_edge, %do.end57, %do.end45, %do.end36
  %ret.0 = phi i32 [ %call31, %do.end36 ], [ %call.i127, %do.end45 ], [ %call52, %do.end57 ], [ %call61, %if.end59.ddr_perf_err_crit_edge ]
  %45 = ptrtoint ptr %cpuhp_state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpuhp_state, align 4
  %call.i128 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %46, ptr noundef %.compoundliteral.sroa.42.0..sroa_idx.i, i1 noundef zeroext false) #9
  br label %cpuhp_instance_err

cpuhp_instance_err:                               ; preds = %ddr_perf_err, %do.end28
  %ret.1 = phi i32 [ %call.i126, %do.end28 ], [ %ret.0, %ddr_perf_err ]
  %47 = ptrtoint ptr %cpuhp_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpuhp_state, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %48, i1 noundef zeroext false) #9
  br label %cpuhp_state_err

cpuhp_state_err:                                  ; preds = %cpuhp_instance_err, %do.end, %if.end6.cpuhp_state_err_crit_edge
  %ret.2 = phi i32 [ %call.i125, %do.end ], [ %ret.1, %cpuhp_instance_err ], [ -12, %if.end6.cpuhp_state_err_crit_edge ]
  %49 = ptrtoint ptr %.compoundliteral.sroa.49.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %.compoundliteral.sroa.49.0..sroa_idx.i, align 4
  tail call void @ida_free(ptr noundef nonnull @ddr_ida, i32 noundef %50) #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %ret.2) #12
  br label %cleanup

cleanup:                                          ; preds = %cpuhp_state_err, %if.end59.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.2, %cpuhp_state_err ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddr_perf_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cpuhp_state = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cpuhp_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpuhp_state, align 4
  %node = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %3, ptr noundef %node, i1 noundef zeroext false) #9
  %4 = ptrtoint ptr %cpuhp_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpuhp_state, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %5, i1 noundef zeroext false) #9
  tail call void @perf_pmu_unregister(ptr noundef %1) #9
  %id = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @ddr_ida, i32 noundef %7) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddr_perf_offline_cpu(i32 noundef %cpu, ptr noundef %node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  %add.ptr = getelementptr i8, ptr %node, i32 -168
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %cpu2 = getelementptr inbounds %struct.ddr_pmu, ptr %spec.select, i32 0, i32 2
  %0 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpu)
  %cmp.not = icmp eq i32 %1, %cpu
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @cpumask_any_but(ptr noundef nonnull @__cpu_online_mask, i32 noundef %cpu) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %2)
  %cmp3.not = icmp ult i32 %call, %2
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @perf_pmu_migrate_context(ptr noundef %spec.select, i32 noundef %cpu, i32 noundef %call) #9
  %3 = ptrtoint ptr %cpu2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %cpu2, align 4
  %irq = getelementptr inbounds %struct.ddr_pmu, ptr %spec.select, i32 0, i32 9
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %rem.i = and i32 %call, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %call, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call10 = tail call i32 @irq_set_affinity(i32 noundef %5, ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end5.cleanup_crit_edge, label %do.end, !prof !219

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 674, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddr_perf_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base26.i = getelementptr inbounds %struct.ddr_pmu, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base26.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !220
  %3 = and i32 %2, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base26.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #9, !srcloc !222
  %arrayidx = getelementptr %struct.ddr_pmu, ptr %p, i32 0, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ddr_perf_event_update(ptr noundef nonnull %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.ddr_pmu, ptr %p, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ddr_perf_event_update(ptr noundef nonnull %9)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.ddr_pmu, ptr %p, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %11, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ddr_perf_event_update(ptr noundef nonnull %11)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.ddr_pmu, ptr %p, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %13, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ddr_perf_event_update(ptr noundef nonnull %13)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base26.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base26.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 100663296) #9, !srcloc !222
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ddr_perf_pmu_enable(ptr nocapture noundef readonly %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %events = getelementptr inbounds %struct.ddr_pmu, ptr %pmu, i32 0, i32 5
  %0 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %events, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.ddr_pmu, ptr %pmu, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 100663296) #9, !srcloc !222
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ddr_perf_pmu_disable(ptr nocapture noundef readonly %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %events = getelementptr inbounds %struct.ddr_pmu, ptr %pmu, i32 0, i32 5
  %0 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %events, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base26.i = getelementptr inbounds %struct.ddr_pmu, ptr %pmu, i32 0, i32 1
  %2 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base26.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !220
  %5 = and i32 %4, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base26.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #9, !srcloc !222
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddr_perf_event_init(ptr nocapture noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu1, align 8
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %cpu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 34
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.106) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %group_leader = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 11
  %15 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %group_leader, align 4
  %pmu9 = getelementptr inbounds %struct.perf_event, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %pmu9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pmu9, align 8
  %cmp11.not = icmp eq ptr %18, %1
  br i1 %cmp11.not, label %if.end8.if.end16_crit_edge, label %land.lhs.true

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %event_caps.i = getelementptr inbounds %struct.perf_event, ptr %16, i32 0, i32 9
  %19 = ptrtoint ptr %event_caps.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %event_caps.i, align 4
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not = icmp eq i32 %and.i, 0
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %devtype_data = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %devtype_data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %and17 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end46_crit_edge, label %if.then19

if.end16.if.end46_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then19:                                        ; preds = %if.end16
  %config.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %config.i.i, align 8
  %27 = add i64 %26, -65
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %27)
  %28 = icmp ult i64 %27, 2
  br i1 %28, label %if.end.i, label %if.then19.if.end23_crit_edge

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end.i:                                         ; preds = %if.then19
  %config.i8.i = getelementptr inbounds %struct.perf_event, ptr %16, i32 0, i32 21, i32 2
  %29 = ptrtoint ptr %config.i8.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %config.i8.i, align 8
  %31 = add i64 %30, -65
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %31)
  %32 = icmp ult i64 %31, 2
  br i1 %32, label %ddr_perf_filters_compatible.exit, label %if.end.i.if.end23_crit_edge

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

ddr_perf_filters_compatible.exit:                 ; preds = %if.end.i
  %33 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 9
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  %conv.i.i = trunc i64 %35 to i32
  %36 = getelementptr inbounds %struct.perf_event, ptr %16, i32 0, i32 21, i32 9
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  %conv.i9.i = trunc i64 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv.i9.i)
  %cmp.i117 = icmp eq i32 %conv.i.i, %conv.i9.i
  br i1 %cmp.i117, label %ddr_perf_filters_compatible.exit.if.end23_crit_edge, label %ddr_perf_filters_compatible.exit.cleanup_crit_edge

ddr_perf_filters_compatible.exit.cleanup_crit_edge: ; preds = %ddr_perf_filters_compatible.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ddr_perf_filters_compatible.exit.if.end23_crit_edge: ; preds = %ddr_perf_filters_compatible.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %ddr_perf_filters_compatible.exit.if.end23_crit_edge, %if.end.i.if.end23_crit_edge, %if.then19.if.end23_crit_edge
  %group_leader25 = getelementptr inbounds %struct.perf_event, ptr %16, i32 0, i32 11
  %39 = ptrtoint ptr %group_leader25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %group_leader25, align 4
  %cmp27 = icmp eq ptr %40, %16
  br i1 %cmp27, label %if.then28, label %if.end23.if.end46_crit_edge

if.end23.if.end46_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then28:                                        ; preds = %if.end23
  %sibling_list = getelementptr inbounds %struct.perf_event, ptr %16, i32 0, i32 1
  %41 = ptrtoint ptr %sibling_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn116131 = load ptr, ptr %sibling_list, align 8
  %cmp36.not132 = icmp eq ptr %.pn116131, %sibling_list
  br i1 %cmp36.not132, label %if.then28.if.end46_crit_edge, label %for.body.lr.ph

if.then28.if.end46_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

for.body.lr.ph:                                   ; preds = %if.then28
  %42 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 9
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %.pn116133 = phi ptr [ %.pn116131, %for.body.lr.ph ], [ %.pn116, %for.cond.backedge.for.body_crit_edge ]
  br i1 %28, label %if.end.i120, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end.i120:                                      ; preds = %for.body
  %config.i8.i119 = getelementptr i8, ptr %.pn116133, i32 144
  %43 = ptrtoint ptr %config.i8.i119 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %config.i8.i119, align 8
  %45 = add i64 %44, -65
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %45)
  %46 = icmp ult i64 %45, 2
  br i1 %46, label %if.end3.i124, label %if.end.i120.for.cond.backedge_crit_edge

if.end.i120.for.cond.backedge_crit_edge:          ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end3.i124:                                     ; preds = %if.end.i120
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %42, align 8
  %conv.i.i121 = trunc i64 %48 to i32
  %49 = getelementptr i8, ptr %.pn116133, i32 192
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %49, align 8
  %conv.i9.i122 = trunc i64 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i121, i32 %conv.i9.i122)
  %cmp.i123 = icmp eq i32 %conv.i.i121, %conv.i9.i122
  br i1 %cmp.i123, label %if.end3.i124.for.cond.backedge_crit_edge, label %if.end3.i124.cleanup_crit_edge

if.end3.i124.cleanup_crit_edge:                   ; preds = %if.end3.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i124.for.cond.backedge_crit_edge:         ; preds = %if.end3.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end3.i124.for.cond.backedge_crit_edge, %if.end.i120.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %52 = ptrtoint ptr %.pn116133 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn116 = load ptr, ptr %.pn116133, align 8
  %cmp36.not = icmp eq ptr %.pn116, %sibling_list
  br i1 %cmp36.not, label %for.cond.backedge.if.end46_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.backedge.if.end46_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end46:                                         ; preds = %for.cond.backedge.if.end46_crit_edge, %if.then28.if.end46_crit_edge, %if.end23.if.end46_crit_edge, %if.end16.if.end46_crit_edge
  %group_leader48 = getelementptr inbounds %struct.perf_event, ptr %16, i32 0, i32 11
  %53 = ptrtoint ptr %group_leader48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %group_leader48, align 4
  %cmp50 = icmp eq ptr %54, %16
  br i1 %cmp50, label %if.then51, label %if.end46.if.end80_crit_edge

if.end46.if.end80_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then51:                                        ; preds = %if.end46
  %sibling_list54 = getelementptr inbounds %struct.perf_event, ptr %16, i32 0, i32 1
  %55 = ptrtoint ptr %sibling_list54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn134 = load ptr, ptr %sibling_list54, align 8
  %cmp62.not135 = icmp eq ptr %.pn134, %sibling_list54
  br i1 %cmp62.not135, label %if.then51.if.end80_crit_edge, label %if.then51.for.body64_crit_edge

if.then51.for.body64_crit_edge:                   ; preds = %if.then51
  br label %for.body64

if.then51.if.end80_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.body64:                                       ; preds = %for.inc73.for.body64_crit_edge, %if.then51.for.body64_crit_edge
  %.pn136 = phi ptr [ %.pn, %for.inc73.for.body64_crit_edge ], [ %.pn134, %if.then51.for.body64_crit_edge ]
  %pmu65 = getelementptr i8, ptr %.pn136, i32 80
  %56 = ptrtoint ptr %pmu65 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pmu65, align 8
  %cmp67.not = icmp eq ptr %57, %1
  br i1 %cmp67.not, label %for.body64.for.inc73_crit_edge, label %land.lhs.true68

for.body64.for.inc73_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc73

land.lhs.true68:                                  ; preds = %for.body64
  %event_caps.i127 = getelementptr i8, ptr %.pn136, i32 68
  %58 = ptrtoint ptr %event_caps.i127 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %event_caps.i127, align 4
  %and.i128 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool70.not = icmp eq i32 %and.i128, 0
  br i1 %tobool70.not, label %land.lhs.true68.cleanup_crit_edge, label %land.lhs.true68.for.inc73_crit_edge

land.lhs.true68.for.inc73_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc73

land.lhs.true68.cleanup_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc73:                                        ; preds = %land.lhs.true68.for.inc73_crit_edge, %for.body64.for.inc73_crit_edge
  %60 = ptrtoint ptr %.pn136 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn = load ptr, ptr %.pn136, align 8
  %cmp62.not = icmp eq ptr %.pn, %sibling_list54
  br i1 %cmp62.not, label %for.inc73.if.end80_crit_edge, label %for.inc73.for.body64_crit_edge

for.inc73.for.body64_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body64

for.inc73.if.end80_crit_edge:                     ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.end80:                                         ; preds = %for.inc73.if.end80_crit_edge, %if.then51.if.end80_crit_edge, %if.end46.if.end80_crit_edge
  %cpu81 = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %cpu81 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu81, align 4
  %63 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %cpu, align 4
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %64 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %land.lhs.true68.cleanup_crit_edge, %if.end3.i124.cleanup_crit_edge, %ddr_perf_filters_compatible.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.end80 ], [ -2, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %ddr_perf_filters_compatible.exit.cleanup_crit_edge ], [ -22, %land.lhs.true68.cleanup_crit_edge ], [ -22, %if.end3.i124.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddr_perf_event_add(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu1, align 8
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %config, align 8
  %conv = trunc i64 %3 to i32
  %4 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %conv3 = trunc i64 %6 to i32
  %devtype_data = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devtype_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %for.cond.preheader

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

for.cond.preheader:                               ; preds = %entry
  %11 = add i64 %3, -65
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %11)
  %12 = icmp ult i64 %11, 2
  %arrayidx = getelementptr %struct.ddr_pmu, ptr %1, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp ne ptr %14, null
  %or.cond = select i1 %tobool5.not, i1 %12, i1 false
  br i1 %or.cond, label %if.end.i, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %for.cond.preheader
  %config.i8.i = getelementptr inbounds %struct.perf_event, ptr %14, i32 0, i32 21, i32 2
  %15 = ptrtoint ptr %config.i8.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %config.i8.i, align 8
  %17 = add i64 %16, -65
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %17)
  %18 = icmp ult i64 %17, 2
  br i1 %18, label %ddr_perf_filters_compatible.exit, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

ddr_perf_filters_compatible.exit:                 ; preds = %if.end.i
  %19 = getelementptr inbounds %struct.perf_event, ptr %14, i32 0, i32 21, i32 9
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  %conv.i9.i = trunc i64 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv.i9.i)
  %cmp.i = icmp eq i32 %conv3, %conv.i9.i
  br i1 %cmp.i, label %ddr_perf_filters_compatible.exit.for.inc_crit_edge, label %ddr_perf_filters_compatible.exit.cleanup36_crit_edge

ddr_perf_filters_compatible.exit.cleanup36_crit_edge: ; preds = %ddr_perf_filters_compatible.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

ddr_perf_filters_compatible.exit.for.inc_crit_edge: ; preds = %ddr_perf_filters_compatible.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %ddr_perf_filters_compatible.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.ddr_pmu, ptr %1, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1, align 4
  %tobool5.not.1 = icmp ne ptr %23, null
  %or.cond.1 = select i1 %tobool5.not.1, i1 %12, i1 false
  br i1 %or.cond.1, label %if.end.i.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end.i.1:                                       ; preds = %for.inc
  %config.i8.i.1 = getelementptr inbounds %struct.perf_event, ptr %23, i32 0, i32 21, i32 2
  %24 = ptrtoint ptr %config.i8.i.1 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %config.i8.i.1, align 8
  %26 = add i64 %25, -65
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %26)
  %27 = icmp ult i64 %26, 2
  br i1 %27, label %ddr_perf_filters_compatible.exit.1, label %if.end.i.1.for.inc.1_crit_edge

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

ddr_perf_filters_compatible.exit.1:               ; preds = %if.end.i.1
  %28 = getelementptr inbounds %struct.perf_event, ptr %23, i32 0, i32 21, i32 9
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %conv.i9.i.1 = trunc i64 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv.i9.i.1)
  %cmp.i.1 = icmp eq i32 %conv3, %conv.i9.i.1
  br i1 %cmp.i.1, label %ddr_perf_filters_compatible.exit.1.for.inc.1_crit_edge, label %ddr_perf_filters_compatible.exit.1.cleanup36_crit_edge

ddr_perf_filters_compatible.exit.1.cleanup36_crit_edge: ; preds = %ddr_perf_filters_compatible.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

ddr_perf_filters_compatible.exit.1.for.inc.1_crit_edge: ; preds = %ddr_perf_filters_compatible.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %ddr_perf_filters_compatible.exit.1.for.inc.1_crit_edge, %if.end.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.ddr_pmu, ptr %1, i32 0, i32 5, i32 3
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.2, align 4
  %tobool5.not.2 = icmp ne ptr %32, null
  %or.cond.2 = select i1 %tobool5.not.2, i1 %12, i1 false
  br i1 %or.cond.2, label %if.end.i.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end.i.2:                                       ; preds = %for.inc.1
  %config.i8.i.2 = getelementptr inbounds %struct.perf_event, ptr %32, i32 0, i32 21, i32 2
  %33 = ptrtoint ptr %config.i8.i.2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %config.i8.i.2, align 8
  %35 = add i64 %34, -65
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %35)
  %36 = icmp ult i64 %35, 2
  br i1 %36, label %ddr_perf_filters_compatible.exit.2, label %if.end.i.2.for.inc.2_crit_edge

if.end.i.2.for.inc.2_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

ddr_perf_filters_compatible.exit.2:               ; preds = %if.end.i.2
  %37 = getelementptr inbounds %struct.perf_event, ptr %32, i32 0, i32 21, i32 9
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %37, align 8
  %conv.i9.i.2 = trunc i64 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv.i9.i.2)
  %cmp.i.2 = icmp eq i32 %conv3, %conv.i9.i.2
  br i1 %cmp.i.2, label %ddr_perf_filters_compatible.exit.2.for.inc.2_crit_edge, label %ddr_perf_filters_compatible.exit.2.cleanup36_crit_edge

ddr_perf_filters_compatible.exit.2.cleanup36_crit_edge: ; preds = %ddr_perf_filters_compatible.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

ddr_perf_filters_compatible.exit.2.for.inc.2_crit_edge: ; preds = %ddr_perf_filters_compatible.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %ddr_perf_filters_compatible.exit.2.for.inc.2_crit_edge, %if.end.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br i1 %12, label %if.then10, label %for.inc.2.if.end13_crit_edge

for.inc.2.if.end13_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %xor = xor i32 %conv3, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %xor)
  %base = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %42, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %40) #9, !srcloc !222
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.inc.2.if.end13_crit_edge, %entry.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp.i65 = icmp eq i32 %conv, 0
  br i1 %cmp.i65, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end13
  %arrayidx5.i = getelementptr %struct.ddr_pmu, ptr %1, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx5.i, align 4
  %cmp6.i = icmp eq ptr %44, null
  br i1 %cmp6.i, label %for.body.preheader.i.if.end28_crit_edge, label %for.inc.i

for.body.preheader.i.if.end28_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %events.i = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 5
  br label %cleanup.sink.split.i

for.inc.i:                                        ; preds = %for.body.preheader.i
  %arrayidx5.1.i = getelementptr %struct.ddr_pmu, ptr %1, i32 0, i32 5, i32 2
  %45 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx5.1.i, align 4
  %cmp6.1.i = icmp eq ptr %46, null
  br i1 %cmp6.1.i, label %for.inc.i.if.end28_crit_edge, label %for.inc.1.i

for.inc.i.if.end28_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.2.i = getelementptr %struct.ddr_pmu, ptr %1, i32 0, i32 5, i32 3
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.inc.1.i, %if.then.i
  %arrayidx5.2.sink.i = phi ptr [ %arrayidx5.2.i, %for.inc.1.i ], [ %events.i, %if.then.i ]
  %.sink.i = phi i32 [ 3, %for.inc.1.i ], [ 0, %if.then.i ]
  %47 = ptrtoint ptr %arrayidx5.2.sink.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx5.2.sink.i, align 4
  %cmp6.2.i = icmp eq ptr %48, null
  br i1 %cmp6.2.i, label %cleanup.sink.split.i.if.end28_crit_edge, label %do.body18

cleanup.sink.split.i.if.end28_crit_edge:          ; preds = %cleanup.sink.split.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.body18:                                        ; preds = %cleanup.sink.split.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ddr_perf_event_add.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ddr_perf_event_add, %if.then24)) #9
          to label %cleanup36 [label %if.then24], !srcloc !226

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ddr_perf_event_add.__UNIQUE_ID_ddebug258, ptr noundef %50, ptr noundef nonnull @.str.110) #9
  br label %cleanup36

if.end28:                                         ; preds = %cleanup.sink.split.i.if.end28_crit_edge, %for.inc.i.if.end28_crit_edge, %for.body.preheader.i.if.end28_crit_edge
  %retval.0.i66.ph = phi i32 [ 2, %for.inc.i.if.end28_crit_edge ], [ 1, %for.body.preheader.i.if.end28_crit_edge ], [ %.sink.i, %cleanup.sink.split.i.if.end28_crit_edge ]
  %arrayidx30 = getelementptr %struct.ddr_pmu, ptr %1, i32 0, i32 5, i32 %retval.0.i66.ph
  %51 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %event, ptr %arrayidx30, align 4
  %active_events = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %active_events to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %active_events, align 4
  %inc31 = add i32 %53, 1
  store i32 %inc31, ptr %active_events, align 4
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %54 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i66.ph, ptr %idx, align 4
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %state, align 4
  %or = or i32 %56, 1
  store i32 %or, ptr %state, align 4
  %and32 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end28.cleanup36_crit_edge, label %if.then34

if.end28.cleanup36_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pmu1, align 8
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #9
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef 0) #9
  %59 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %config, align 8
  %conv.i = trunc i64 %60 to i32
  %conv.i.i68 = shl nuw nsw i32 %retval.0.i66.ph, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %base.i.i = getelementptr inbounds %struct.ddr_pmu, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i, align 4
  %conv1.i.i = and i32 %conv.i.i68, 252
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !222
  %shl.i.i = shl i32 %conv.i, 24
  %or.i.i = or i32 %shl.i.i, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %64 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i.i, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %65, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 %63) #9, !srcloc !222
  %66 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %state, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %if.then34, %if.end28.cleanup36_crit_edge, %if.then24, %do.body18, %ddr_perf_filters_compatible.exit.2.cleanup36_crit_edge, %ddr_perf_filters_compatible.exit.1.cleanup36_crit_edge, %ddr_perf_filters_compatible.exit.cleanup36_crit_edge
  %retval.1 = phi i32 [ -95, %if.then24 ], [ 0, %if.then34 ], [ 0, %if.end28.cleanup36_crit_edge ], [ -95, %do.body18 ], [ -22, %ddr_perf_filters_compatible.exit.2.cleanup36_crit_edge ], [ -22, %ddr_perf_filters_compatible.exit.1.cleanup36_crit_edge ], [ -22, %ddr_perf_filters_compatible.exit.cleanup36_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ddr_perf_event_del(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu1, align 8
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %conv.i.i = shl i32 %3, 2
  %base26.i.i = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base26.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base26.i.i, align 4
  %conv27.i.i = and i32 %conv.i.i, 252
  %add.ptr28.i.i = getelementptr i8, ptr %5, i32 %conv27.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i.i) #9, !srcloc !220
  %7 = and i32 %6, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %base26.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base26.i.i, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %9, i32 %conv27.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 %7) #9, !srcloc !222
  tail call void @ddr_perf_event_update(ptr noundef %event) #9
  %state.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  %or.i = or i32 %11, 1
  store i32 %or.i, ptr %state.i, align 4
  %arrayidx.i = getelementptr %struct.ddr_pmu, ptr %1, i32 0, i32 5, i32 %3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  %active_events = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %active_events to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_events, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %active_events, align 4
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ddr_perf_event_start(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu1, align 8
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #9
  tail call void @generic_atomic64_set(ptr noundef %prev_count, i64 noundef 0) #9
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %config, align 8
  %conv = trunc i64 %5 to i32
  %conv.i = shl i32 %3, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %conv1.i = and i32 %conv.i, 252
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !222
  %shl.i = shl i32 %conv, 24
  %or.i = or i32 %shl.i, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %10, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %8) #9, !srcloc !222
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ddr_perf_event_stop(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu1, align 8
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %conv.i = shl i32 %3, 2
  %base26.i = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base26.i, align 4
  %conv27.i = and i32 %conv.i, 252
  %add.ptr28.i = getelementptr i8, ptr %5, i32 %conv27.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #9, !srcloc !220
  %7 = and i32 %6, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base26.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %9, i32 %conv27.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %7) #9, !srcloc !222
  tail call void @ddr_perf_event_update(ptr noundef %event)
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ddr_perf_event_update(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu1, align 8
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %arrayidx.i = getelementptr %struct.ddr_pmu, ptr %1, i32 0, i32 5, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %base1.i = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base1.i, align 4
  %pmu1.i.i = getelementptr inbounds %struct.perf_event, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %pmu1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmu1.i.i, align 8
  %devtype_data.i.i = getelementptr inbounds %struct.ddr_pmu, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devtype_data.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %ddr_perf_is_enhanced_filtered.exit.i, label %entry.ddr_perf_read_counter.exit_crit_edge

entry.ddr_perf_read_counter.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ddr_perf_read_counter.exit

ddr_perf_is_enhanced_filtered.exit.i:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %config.i.i.i = getelementptr inbounds %struct.perf_event, ptr %5, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %config.i.i.i, align 8
  %16 = add i64 %15, -65
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %16)
  %17 = icmp ult i64 %16, 2
  %spec.select.i = select i1 %17, i32 48, i32 32
  br label %ddr_perf_read_counter.exit

ddr_perf_read_counter.exit:                       ; preds = %ddr_perf_is_enhanced_filtered.exit.i, %entry.ddr_perf_read_counter.exit_crit_edge
  %18 = phi i32 [ 32, %entry.ddr_perf_read_counter.exit_crit_edge ], [ %spec.select.i, %ddr_perf_is_enhanced_filtered.exit.i ]
  %add.ptr.i = getelementptr i8, ptr %7, i32 %18
  %mul.i = shl i32 %3, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !220
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %conv = zext i32 %20 to i64
  %count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %conv, ptr noundef %count) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %ddr_perf_read_counter.exit.if.end13_crit_edge, label %if.then

ddr_perf_read_counter.exit.if.end13_crit_edge:    ; preds = %ddr_perf_read_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %ddr_perf_read_counter.exit
  %21 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base1.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %22, i32 %mul.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #9, !srcloc !220
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not = icmp eq i32 %24, 0
  br i1 %tobool.i.not, label %if.then.if.end13_crit_edge, label %do.body

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.body:                                          ; preds = %if.then
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @ddr_perf_event_update._rs, ptr noundef nonnull @__func__.ddr_perf_event_update) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.if.end13_crit_edge, label %do.end

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %27 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %config, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.112, i64 noundef %28) #12
  br label %if.end13

if.end13:                                         ; preds = %do.end, %do.body.if.end13_crit_edge, %if.then.if.end13_crit_edge, %ddr_perf_read_counter.exit.if.end13_crit_edge
  %29 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base1.i, align 4
  %conv1.i = and i32 %mul.i, 252
  %add.ptr.i26 = getelementptr i8, ptr %30, i32 %conv1.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #9, !srcloc !220
  %32 = and i32 %31, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base1.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %34, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %32) #9, !srcloc !222
  %35 = or i32 %31, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base1.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %37, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %35) #9, !srcloc !222
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddr_pmu_event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.perf_pmu_events_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %id, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.88, i64 noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.91, i32 12)
  ret i32 11
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @axi_id_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.93, i32 14)
  ret i32 13
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @axi_mask_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.95, i32 15)
  ret i32 14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddr_perf_cpumask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpu = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 2
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
  %call.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef %add.ptr.i, i32 noundef %4) #9
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddr_perf_filter_cap_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %var, align 4
  %4 = ptrtoint ptr %3 to i32
  %devtype_data.i = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devtype_data.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  br label %ddr_perf_filter_cap_get.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and4.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and4.i)
  %cmp.i = icmp eq i32 %and4.i, 3
  br label %ddr_perf_filter_cap_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 158, i32 noundef 9, ptr noundef nonnull @.str.103, i32 noundef %4) #9
  br label %ddr_perf_filter_cap_get.exit

ddr_perf_filter_cap_get.exit:                     ; preds = %do.end.i, %sw.bb3.i, %sw.bb.i
  %retval.0.shrunk.i = phi i1 [ false, %do.end.i ], [ %cmp.i, %sw.bb3.i ], [ %tobool.i, %sw.bb.i ]
  %retval.0.i = zext i1 %retval.0.shrunk.i to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %retval.0.i) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ddr_perf_identifier_attr_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %devtype_data = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 4
  %identifier = getelementptr inbounds %struct.fsl_ddr_devtype_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %identifier, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddr_perf_identifier_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %devtype_data = getelementptr inbounds %struct.ddr_pmu, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 4
  %identifier = getelementptr inbounds %struct.fsl_ddr_devtype_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %identifier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %identifier, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.105, ptr noundef %5) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_migrate_context(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !183, !184, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207}
!llvm.named.register.sp = !{!209}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @__initcall__kmod_fsl_imx8_ddr_perf__259_796_imx_ddr_pmu_driver_init6, !1, !"__initcall__kmod_fsl_imx8_ddr_perf__259_796_imx_ddr_pmu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 796, i32 1}
!2 = !{ptr @__exitcall_imx_ddr_pmu_driver_exit, !1, !"__exitcall_imx_ddr_pmu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file260, !4, !"__UNIQUE_ID_file260", i1 false, i1 false}
!4 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 797, i32 1}
!5 = !{ptr @__UNIQUE_ID_license261, !4, !"__UNIQUE_ID_license261", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 788, i32 13}
!8 = !{ptr @imx_ddr_pmu_driver, !9, !"imx_ddr_pmu_driver", i1 false, i1 false}
!9 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 786, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 703, i32 48}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 714, i32 11}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 719, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ddr_perf_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ddr_perf_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 728, i32 3}
!24 = !{ptr @ddr_perf_probe._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ddr_perf_probe._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 735, i32 3}
!28 = !{ptr @ddr_perf_probe._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ddr_perf_probe._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 746, i32 3}
!32 = !{ptr @ddr_perf_probe._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ddr_perf_probe._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 753, i32 3}
!36 = !{ptr @ddr_perf_probe._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ddr_perf_probe._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 769, i32 2}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ddr_perf_probe._entry.20, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ddr_perf_probe._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @attr_groups, !44, !"attr_groups", i1 false, i1 false}
!44 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 285, i32 38}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 265, i32 10}
!47 = !{ptr @ddr_perf_events_attr_group, !48, !"ddr_perf_events_attr_group", i1 false, i1 false}
!48 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 264, i32 37}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 229, i32 2}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 230, i32 2}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 231, i32 2}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 232, i32 2}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 233, i32 2}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 234, i32 2}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 235, i32 2}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 236, i32 2}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 237, i32 2}
!67 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 238, i32 2}
!69 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 239, i32 2}
!71 = !{ptr @.str.46, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 240, i32 2}
!73 = !{ptr @.str.48, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 241, i32 2}
!75 = !{ptr @.str.50, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 242, i32 2}
!77 = !{ptr @.str.52, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 243, i32 2}
!79 = !{ptr @.str.54, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 244, i32 2}
!81 = !{ptr @.str.56, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 245, i32 2}
!83 = !{ptr @.str.58, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 246, i32 2}
!85 = !{ptr @.str.60, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 247, i32 2}
!87 = !{ptr @.str.62, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 248, i32 2}
!89 = !{ptr @.str.64, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 249, i32 2}
!91 = !{ptr @.str.66, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 250, i32 2}
!93 = !{ptr @.str.68, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 251, i32 2}
!95 = !{ptr @.str.70, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 252, i32 2}
!97 = !{ptr @.str.72, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 253, i32 2}
!99 = !{ptr @.str.74, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 254, i32 2}
!101 = !{ptr @.str.76, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 255, i32 2}
!103 = !{ptr @.str.78, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 256, i32 2}
!105 = !{ptr @.str.80, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 257, i32 2}
!107 = !{ptr @.str.82, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 258, i32 2}
!109 = !{ptr @.str.84, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 259, i32 2}
!111 = !{ptr @.str.86, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 260, i32 2}
!113 = !{ptr @ddr_perf_events_attrs, !114, !"ddr_perf_events_attrs", i1 false, i1 false}
!114 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 228, i32 26}
!115 = !{ptr @.str.88, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 222, i32 26}
!117 = !{ptr @.str.89, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 281, i32 10}
!119 = !{ptr @ddr_perf_format_attr_group, !120, !"ddr_perf_format_attr_group", i1 false, i1 false}
!120 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 280, i32 37}
!121 = !{ptr @ddr_perf_format_attrs, !122, !"ddr_perf_format_attrs", i1 false, i1 false}
!122 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 273, i32 26}
!123 = !{ptr @.str.90, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 269, i32 1}
!125 = !{ptr @format_attr_event, !124, !"format_attr_event", i1 false, i1 false}
!126 = !{ptr @.str.91, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.92, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 270, i32 1}
!129 = !{ptr @format_attr_axi_id, !128, !"format_attr_axi_id", i1 false, i1 false}
!130 = !{ptr @.str.93, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.94, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 271, i32 1}
!133 = !{ptr @format_attr_axi_mask, !132, !"format_attr_axi_mask", i1 false, i1 false}
!134 = !{ptr @.str.95, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ddr_perf_cpumask_attr_group, !136, !"ddr_perf_cpumask_attr_group", i1 false, i1 false}
!136 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 211, i32 37}
!137 = !{ptr @ddr_perf_cpumask_attrs, !138, !"ddr_perf_cpumask_attrs", i1 false, i1 false}
!138 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 206, i32 26}
!139 = !{ptr @.str.96, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 204, i32 2}
!141 = !{ptr @ddr_perf_cpumask_attr, !142, !"ddr_perf_cpumask_attr", i1 false, i1 false}
!142 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 203, i32 32}
!143 = !{ptr @.str.97, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 191, i32 10}
!145 = !{ptr @ddr_perf_filter_cap_attr_group, !146, !"ddr_perf_filter_cap_attr_group", i1 false, i1 false}
!146 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 190, i32 37}
!147 = !{ptr @.str.98, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 185, i32 2}
!149 = !{ptr @.str.100, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 186, i32 2}
!151 = !{ptr @ddr_perf_filter_cap_attr, !152, !"ddr_perf_filter_cap_attr", i1 false, i1 false}
!152 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 184, i32 26}
!153 = !{ptr @.str.102, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 173, i32 25}
!155 = !{ptr @.str.103, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 158, i32 3}
!157 = !{ptr @ddr_perf_identifier_attr_group, !158, !"ddr_perf_identifier_attr_group", i1 false, i1 false}
!158 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 136, i32 37}
!159 = !{ptr @ddr_perf_identifier_attrs, !160, !"ddr_perf_identifier_attrs", i1 false, i1 false}
!160 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 131, i32 26}
!161 = !{ptr @.str.104, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 129, i32 2}
!163 = !{ptr @ddr_perf_identifier_attr, !164, !"ddr_perf_identifier_attr", i1 false, i1 false}
!164 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 128, i32 32}
!165 = !{ptr @.str.105, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 113, i32 26}
!167 = !{ptr @.str.106, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 381, i32 3}
!169 = !{ptr @.str.107, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @ddr_perf_event_init._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @ddr_perf_event_init._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.108, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 528, i32 3}
!174 = !{ptr @.str.109, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.110, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ddr_perf_event_add.__UNIQUE_ID_ddebug258, !173, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!177 = !{ptr @.str.111, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 481, i32 4}
!179 = !{ptr @ddr_perf_event_update._rs, !178, !"_rs", i1 false, i1 false}
!180 = !{ptr @__func__.ddr_perf_event_update, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.112, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @ddr_perf_event_update._entry, !178, !"_entry", i1 false, i1 false}
!183 = !{ptr @ddr_perf_event_update._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.113, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 45, i32 8}
!186 = !{ptr @ddr_ida, !185, !"ddr_ida", i1 false, i1 false}
!187 = !{ptr @imx_ddr_pmu_dt_ids, !188, !"imx_ddr_pmu_dt_ids", i1 false, i1 false}
!188 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 82, i32 34}
!189 = !{ptr @imx8_devtype_data, !190, !"imx8_devtype_data", i1 false, i1 false}
!190 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 56, i32 42}
!191 = !{ptr @imx8m_devtype_data, !192, !"imx8m_devtype_data", i1 false, i1 false}
!192 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 58, i32 42}
!193 = !{ptr @.str.114, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 64, i32 16}
!195 = !{ptr @imx8mq_devtype_data, !196, !"imx8mq_devtype_data", i1 false, i1 false}
!196 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 62, i32 42}
!197 = !{ptr @.str.115, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 69, i32 16}
!199 = !{ptr @imx8mm_devtype_data, !200, !"imx8mm_devtype_data", i1 false, i1 false}
!200 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 67, i32 42}
!201 = !{ptr @.str.116, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 74, i32 16}
!203 = !{ptr @imx8mn_devtype_data, !204, !"imx8mn_devtype_data", i1 false, i1 false}
!204 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 72, i32 42}
!205 = !{ptr @.str.117, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 79, i32 16}
!207 = !{ptr @imx8mp_devtype_data, !208, !"imx8mp_devtype_data", i1 false, i1 false}
!208 = !{!"../drivers/perf/fsl_imx8_ddr_perf.c", i32 77, i32 42}
!209 = !{!"sp"}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{!"branch_weights", i32 2000, i32 1}
!220 = !{i64 4248891}
!221 = !{i64 2154983560}
!222 = !{i64 4248473}
!223 = !{i64 2154968118}
!224 = !{i64 2154982849}
!225 = !{i64 2154992331}
!226 = !{i64 2148767665, i64 2148767670, i64 2148767683, i64 2148767727, i64 2148767761, i64 2148767782}
!227 = !{i64 2154984633}
!228 = !{i64 2154985022}
