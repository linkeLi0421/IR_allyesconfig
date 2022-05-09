; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/mmdc.c_pt.bc'
source_filename = "../arch/arm/mach-imx/mmdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.70 }
%union.anon.70 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.fsl_mmdc_devtype_data = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mmdc_pmu = type { %struct.pmu, ptr, %struct.cpumask, %struct.hrtimer, i32, ptr, [6 x ptr], %struct.hlist_node, ptr, ptr }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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

@__param_str_pmu_pmu_poll_period_us = internal constant [28 x i8] c"mmdc.pmu_pmu_poll_period_us\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@mmdc_pmu_poll_period_us = internal global { i32, [28 x i8] } { i32 1000000, [28 x i8] zeroinitializer }, align 32
@__param_pmu_pmu_poll_period_us = internal constant %struct.kernel_param { ptr @__param_str_pmu_pmu_poll_period_us, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.70 { ptr @mmdc_pmu_poll_period_us } }, section "__param", align 4
@__UNIQUE_ID_pmu_pmu_poll_period_ustype250 = internal constant [42 x i8] c"mmdc.parmtype=pmu_pmu_poll_period_us:uint\00", section ".modinfo", align 1
@ddr_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_mmdc__253_602_imx_mmdc_init2 = internal global ptr @imx_mmdc_init, section ".initcall2.init", align 4
@imx_mmdc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_mmdc_probe, ptr @imx_mmdc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_mmdc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx-mmdc\00", [23 x i8] zeroinitializer }, align 32
@imx_mmdc_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-mmdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6qp-mmdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6qp_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@imx_mmdc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 555, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to enable mmdc ipg clock.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_mmdc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-imx/mmdc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_mmdc_probe._entry_ptr = internal global ptr @imx_mmdc_probe._entry, section ".printk_index", align 4
@imx_mmdc_perf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to allocate PMU device!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_mmdc_perf_init\00", [45 x i8] zeroinitializer }, align 32
@imx_mmdc_perf_init._entry_ptr = internal global ptr @imx_mmdc_perf_init._entry, section ".printk_index", align 4
@cpuhp_mmdc_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"perf/arm/mmdc:online\00", [43 x i8] zeroinitializer }, align 32
@imx_mmdc_perf_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cpuhp_setup_state_multi failed\0A\00", [62 x i8] zeroinitializer }, align 32
@imx_mmdc_perf_init._entry_ptr.11 = internal global ptr @imx_mmdc_perf_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmdc\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mmdc%d\00", [25 x i8] zeroinitializer }, align 32
@imx_mmdc_perf_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014MMDC Perf PMU failed (%d), disabled\0A\00", [57 x i8] zeroinitializer }, align 32
@imx_mmdc_perf_init._entry_ptr.16 = internal global ptr @imx_mmdc_perf_init._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@attr_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mmdc_pmu_events_attr_group, ptr @mmdc_pmu_format_attr_group, ptr @mmdc_pmu_cpumask_attr_group, ptr null], [16 x i8] zeroinitializer }, align 32
@mmdc_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.47, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@mmdc_pmu_events_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.18, ptr null, ptr null, ptr @mmdc_pmu_events_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mmdc_pmu_format_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.37, ptr null, ptr null, ptr @mmdc_pmu_format_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mmdc_pmu_cpumask_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mmdc_pmu_cpumask_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@mmdc_pmu_events_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @mmdc_pmu_total_cycles, ptr @mmdc_pmu_busy_cycles, ptr @mmdc_pmu_read_accesses, ptr @mmdc_pmu_write_accesses, ptr @mmdc_pmu_read_bytes, ptr @mmdc_pmu_read_bytes_unit, ptr @mmdc_pmu_read_bytes_scale, ptr @mmdc_pmu_write_bytes, ptr @mmdc_pmu_write_bytes_unit, ptr @mmdc_pmu_write_bytes_scale, ptr null], [52 x i8] zeroinitializer }, align 32
@mmdc_pmu_total_cycles = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.20 }, [48 x i8] zeroinitializer }, align 32
@mmdc_pmu_busy_cycles = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.22 }, [48 x i8] zeroinitializer }, align 32
@mmdc_pmu_read_accesses = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.24 }, [48 x i8] zeroinitializer }, align 32
@mmdc_pmu_write_accesses = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.26 }, [48 x i8] zeroinitializer }, align 32
@mmdc_pmu_read_bytes = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.28 }, [48 x i8] zeroinitializer }, align 32
@mmdc_pmu_read_bytes_unit = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.30 }, [48 x i8] zeroinitializer }, align 32
@mmdc_pmu_read_bytes_scale = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.32 }, [48 x i8] zeroinitializer }, align 32
@mmdc_pmu_write_bytes = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.34 }, [48 x i8] zeroinitializer }, align 32
@mmdc_pmu_write_bytes_unit = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.30 }, [48 x i8] zeroinitializer }, align 32
@mmdc_pmu_write_bytes_scale = internal global { %struct.perf_pmu_events_attr, [48 x i8] } { %struct.perf_pmu_events_attr { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @perf_event_sysfs_show, ptr null }, i64 0, ptr @.str.32 }, [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"total-cycles\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x00\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"busy-cycles\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x01\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read-accesses\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x02\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write-accesses\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x03\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read-bytes\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x04\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read-bytes.unit\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MB\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read-bytes.scale\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.000001\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write-bytes\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event=0x05\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write-bytes.unit\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write-bytes.scale\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@mmdc_pmu_format_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @format_attr_event, ptr @format_attr_axi_id, ptr null], [20 x i8] zeroinitializer }, align 32
@format_attr_event = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @event_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_axi_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axi_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config:0-63\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"axi_id\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config1:0-63\0A\00", [18 x i8] zeroinitializer }, align 32
@mmdc_pmu_cpumask_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mmdc_pmu_cpumask_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@mmdc_pmu_cpumask_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmdc_pmu_cpumask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpumask\00", [24 x i8] zeroinitializer }, align 32
@mmdc_pmu_event_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 288, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't provide per-task data!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmdc_pmu_event_init\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mmdc_pmu_event_init._entry_ptr = internal global ptr @mmdc_pmu_event_init._entry, section ".printk_index", align 4
@mmdc_pmu_read_counter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"invalid configuration %d for mmdc counter\00", [54 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmdc_ida.xa_lock\00", [47 x i8] zeroinitializer }, align 32
@imx6q_data = internal constant { %struct.fsl_mmdc_devtype_data, [28 x i8] } zeroinitializer, align 32
@imx6qp_data = internal constant { %struct.fsl_mmdc_devtype_data, [28 x i8] } { %struct.fsl_mmdc_devtype_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [24 x i8] c"mmdc_pmu_poll_period_us\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 113, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"ddr_type\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 61, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"imx_mmdc_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 589, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 591, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"imx_mmdc_dt_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 74, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 555, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 484, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"cpuhp_mmdc_state\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 82, i32 25 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 491, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 494, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 503, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 506, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 527, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 108, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"attr_groups\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 176, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant [9 x i8] c"mmdc_ida\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"mmdc_pmu_events_attr_group\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 157, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"mmdc_pmu_format_attr_group\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 171, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant [28 x i8] c"mmdc_pmu_cpumask_attr_group\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 139, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 158, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"mmdc_pmu_events_attrs\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 143, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant [22 x i8] c"mmdc_pmu_total_cycles\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [21 x i8] c"mmdc_pmu_busy_cycles\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"mmdc_pmu_read_accesses\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [24 x i8] c"mmdc_pmu_write_accesses\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"mmdc_pmu_read_bytes\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [25 x i8] c"mmdc_pmu_read_bytes_unit\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [26 x i8] c"mmdc_pmu_read_bytes_scale\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [21 x i8] c"mmdc_pmu_write_bytes\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [26 x i8] c"mmdc_pmu_write_bytes_unit\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [27 x i8] c"mmdc_pmu_write_bytes_scale\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 85, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 86, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 87, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 88, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 89, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 90, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 91, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 92, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 93, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 94, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 172, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant [22 x i8] c"mmdc_pmu_format_attrs\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 165, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant [18 x i8] c"format_attr_event\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"format_attr_axi_id\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 162, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 163, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant [23 x i8] c"mmdc_pmu_cpumask_attrs\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 134, i32 26 }
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"mmdc_pmu_cpumask_attr\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 131, i32 32 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 132, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 288, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 209, i32 10 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 83, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant [11 x i8] c"imx6q_data\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 67, i32 43 }
@___asan_gen_.276 = private unnamed_addr constant [12 x i8] c"imx6qp_data\00", align 1
@___asan_gen_.277 = private constant [28 x i8] c"../arch/arm/mach-imx/mmdc.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 70, i32 43 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_pmu_pmu_poll_period_ustype250, ptr @__initcall__kmod_mmdc__253_602_imx_mmdc_init2, ptr @__param_pmu_pmu_poll_period_us, ptr @imx_mmdc_perf_init._entry, ptr @imx_mmdc_perf_init._entry.14, ptr @imx_mmdc_perf_init._entry.9, ptr @imx_mmdc_perf_init._entry_ptr, ptr @imx_mmdc_perf_init._entry_ptr.11, ptr @imx_mmdc_perf_init._entry_ptr.16, ptr @imx_mmdc_probe._entry, ptr @imx_mmdc_probe._entry_ptr, ptr @mmdc_pmu_event_init._entry, ptr @mmdc_pmu_event_init._entry_ptr, ptr @mmdc_pmu_poll_period_us, ptr @ddr_type, ptr @imx_mmdc_driver, ptr @.str, ptr @imx_mmdc_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cpuhp_mmdc_state, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @attr_groups, ptr @mmdc_ida, ptr @mmdc_pmu_events_attr_group, ptr @mmdc_pmu_format_attr_group, ptr @mmdc_pmu_cpumask_attr_group, ptr @.str.18, ptr @mmdc_pmu_events_attrs, ptr @mmdc_pmu_total_cycles, ptr @mmdc_pmu_busy_cycles, ptr @mmdc_pmu_read_accesses, ptr @mmdc_pmu_write_accesses, ptr @mmdc_pmu_read_bytes, ptr @mmdc_pmu_read_bytes_unit, ptr @mmdc_pmu_read_bytes_scale, ptr @mmdc_pmu_write_bytes, ptr @mmdc_pmu_write_bytes_unit, ptr @mmdc_pmu_write_bytes_scale, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @mmdc_pmu_format_attrs, ptr @format_attr_event, ptr @format_attr_axi_id, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @mmdc_pmu_cpumask_attrs, ptr @mmdc_pmu_cpumask_attr, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @imx6q_data, ptr @imx6qp_data], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_poll_period_us to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mmdc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mmdc_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mmdc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mmdc_perf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_mmdc_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mmdc_perf_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mmdc_perf_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_events_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_format_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_cpumask_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_events_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_total_cycles to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_busy_cycles to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_read_accesses to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_write_accesses to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_read_bytes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_read_bytes_unit to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_read_bytes_scale to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_write_bytes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_write_bytes_unit to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_write_bytes_scale to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_format_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_axi_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_cpumask_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_cpumask_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdc_pmu_event_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6qp_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @imx_mmdc_get_ddr_type() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ddr_type, align 4
  ret i32 %0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mmdc_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_mmdc_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mmdc_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call
  %call.i = tail call i32 @clk_prepare(ptr noundef %spec.select) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %spec.select) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %spec.select) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %call7 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end21, label %if.end6.if.end27_crit_edge, !prof !142

if.end6.if.end27_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.end21:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 560, i32 noundef 9, ptr noundef null) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end21, %if.end6.if.end27_crit_edge
  %add.ptr = getelementptr i8, ptr %call7, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !143
  %3 = lshr i32 %2, 27
  %and = and i32 %3, 3
  store i32 %and, ptr @ddr_type, align 4
  %add.ptr36 = getelementptr i8, ptr %call7, i32 1028
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #11, !srcloc !143
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %5) #11, !srcloc !144
  %call.i68 = tail call ptr @of_match_device(ptr noundef nonnull @imx_mmdc_dt_ids, ptr noundef %dev) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 264) #15
  %tobool.not.i69 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i69, label %do.end.i, label %if.end.i70

do.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %if.then43

if.end.i70:                                       ; preds = %if.end27
  %7 = load i32, ptr @cpuhp_mmdc_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i70.if.end13.i_crit_edge

if.end.i70.if.end13.i_crit_edge:                  ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then4.i:                                       ; preds = %if.end.i70
  %call.i.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.8, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @mmdc_pmu_offline_cpu, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i71 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i71, label %do.end9.i, label %if.end12.i

do.end9.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  br label %pmu_free.i

if.end12.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %call.i.i, ptr @cpuhp_mmdc_state, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end12.i, %if.end.i70.if.end13.i_crit_edge
  %8 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 16)
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 16
  %9 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @attr_groups, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 20
  %10 = call ptr @memset(ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.35.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 32
  %11 = ptrtoint ptr %.compoundliteral.sroa.35.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 128, ptr %.compoundliteral.sroa.35.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 36
  %12 = call ptr @memset(ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.46.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 48
  %13 = ptrtoint ptr %.compoundliteral.sroa.46.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %.compoundliteral.sroa.46.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 52
  %14 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 16)
  %.compoundliteral.sroa.57.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 68
  %15 = ptrtoint ptr %.compoundliteral.sroa.57.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mmdc_pmu_event_init, ptr %.compoundliteral.sroa.57.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 72
  %16 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.68.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 80
  %17 = ptrtoint ptr %.compoundliteral.sroa.68.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mmdc_pmu_event_add, ptr %.compoundliteral.sroa.68.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 84
  %18 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mmdc_pmu_event_del, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 88
  %19 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mmdc_pmu_event_start, ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.9.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 92
  %20 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mmdc_pmu_event_stop, ptr %.compoundliteral.sroa.9.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 96
  %21 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mmdc_pmu_event_update, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.11.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 100
  %22 = call ptr @memset(ptr %.compoundliteral.sroa.11.0..sroa_idx.i.i, i32 0, i32 60)
  %.compoundliteral.sroa.119.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 160
  %23 = ptrtoint ptr %.compoundliteral.sroa.119.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7, ptr %.compoundliteral.sroa.119.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.12.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 164
  %.compoundliteral.sroa.15.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 220
  %24 = call ptr @memset(ptr %.compoundliteral.sroa.12.0..sroa_idx.i.i, i32 0, i32 56)
  %25 = ptrtoint ptr %.compoundliteral.sroa.15.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %.compoundliteral.sroa.15.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.16.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 224
  %26 = call ptr @memset(ptr %.compoundliteral.sroa.16.0..sroa_idx.i.i, i32 0, i32 40)
  %call.i63.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @mmdc_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #11
  %mmdc_ipg_clk16.i = getelementptr inbounds %struct.mmdc_pmu, ptr %call7.i.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %mmdc_ipg_clk16.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spec.select, ptr %mmdc_ipg_clk16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %cmp17.i = icmp eq i32 %call.i63.i, 0
  br i1 %cmp17.i, label %if.end13.i.if.end21.i_crit_edge, label %if.else.i

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.13, i32 noundef %call.i63.i) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.end13.i.if.end21.i_crit_edge
  %name.0.i = phi ptr [ %call20.i, %if.else.i ], [ @.str.12, %if.end13.i.if.end21.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i68, i32 0, i32 3
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %devtype_data.i = getelementptr inbounds %struct.mmdc_pmu, ptr %call7.i.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %devtype_data.i, align 8
  %hrtimer.i = getelementptr inbounds %struct.mmdc_pmu, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @hrtimer_init(ptr noundef %hrtimer.i, i32 noundef 1, i32 noundef 1) #11
  %function.i = getelementptr inbounds %struct.mmdc_pmu, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mmdc_pmu_timer_handler, ptr %function.i, align 8
  %32 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %35)
  %cmp.not.i.i.i.i = icmp ugt i32 %36, %35
  br i1 %cmp.not.i.i.i.i, label %if.end21.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.end21.i.cpumask_set_cpu.exit.i_crit_edge:      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.end21.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !145

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.end21.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %35, ptr noundef %.compoundliteral.sroa.12.0..sroa_idx.i.i) #11
  %37 = load i32, ptr @cpuhp_mmdc_state, align 4
  %node.i = getelementptr inbounds %struct.mmdc_pmu, ptr %call7.i.i.i, i32 0, i32 7
  %call.i64.i = tail call i32 @__cpuhp_state_add_instance(i32 noundef %37, ptr noundef %node.i, i1 noundef zeroext false) #11
  %call26.i = tail call i32 @perf_pmu_register(ptr noundef nonnull %call7.i.i.i, ptr noundef %name.0.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %imx_mmdc_perf_init.exit, label %do.end32.i

do.end32.i:                                       ; preds = %cpumask_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call26.i) #14
  %38 = load i32, ptr @cpuhp_mmdc_state, align 4
  %call.i65.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %38, ptr noundef %node.i, i1 noundef zeroext false) #11
  %call38.i = tail call i32 @hrtimer_cancel(ptr noundef %hrtimer.i) #11
  br label %pmu_free.i

pmu_free.i:                                       ; preds = %do.end32.i, %do.end9.i
  %ret.0.i = phi i32 [ %call26.i, %do.end32.i ], [ %call.i.i, %do.end9.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.then43

imx_mmdc_perf_init.exit:                          ; preds = %cpumask_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  br label %cleanup

if.then43:                                        ; preds = %pmu_free.i, %do.end.i
  %retval.0.i72.ph = phi i32 [ -12, %do.end.i ], [ %ret.0.i, %pmu_free.i ]
  tail call void @iounmap(ptr noundef %call7) #11
  tail call void @clk_disable(ptr noundef %spec.select) #11
  tail call void @clk_unprepare(ptr noundef %spec.select) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %imx_mmdc_perf_init.exit, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i72.ph, %if.then43 ], [ 0, %imx_mmdc_perf_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mmdc_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @cpuhp_mmdc_state, align 4
  %node = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %2, ptr noundef %node, i1 noundef zeroext false) #11
  tail call void @perf_pmu_unregister(ptr noundef %1) #11
  %mmdc_base = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %mmdc_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmdc_base, align 8
  tail call void @iounmap(ptr noundef %4) #11
  %mmdc_ipg_clk = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %mmdc_ipg_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmdc_ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %6) #11
  tail call void @clk_unprepare(ptr noundef %6) #11
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmdc_pmu_offline_cpu(i32 noundef %cpu, ptr noundef %node) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  %add.ptr = getelementptr i8, ptr %node, i32 -248
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %cpu2 = getelementptr inbounds %struct.mmdc_pmu, ptr %spec.select, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_and_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_and_clear_cpu.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_test_and_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !145

land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_test_and_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_test_and_clear_cpu.exit

cpumask_test_and_clear_cpu.exit:                  ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_and_clear_cpu.exit_crit_edge, %entry.cpumask_test_and_clear_cpu.exit_crit_edge
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef %cpu, ptr noundef %cpu2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  br i1 %tobool3.not, label %cpumask_test_and_clear_cpu.exit.cleanup_crit_edge, label %if.end

cpumask_test_and_clear_cpu.exit.cleanup_crit_edge: ; preds = %cpumask_test_and_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cpumask_test_and_clear_cpu.exit
  %call4 = tail call i32 @cpumask_any_but(ptr noundef nonnull @__cpu_online_mask, i32 noundef %cpu) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %1)
  %cmp.not = icmp ult i32 %call4, %1
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @perf_pmu_migrate_context(ptr noundef %spec.select, i32 noundef %cpu, i32 noundef %call4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %call4)
  %cmp.not.i.i.i16 = icmp ugt i32 %2, %call4
  br i1 %cmp.not.i.i.i16, label %if.end6.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i18

if.end6.cpumask_set_cpu.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i18:                                 ; preds = %if.end6
  %.b37.i.i.i17 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i17, label %land.rhs.i.i.i18.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i19, !prof !145

land.rhs.i.i.i18.cpumask_set_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_set_cpu.exit

if.then.i.i.i19:                                  ; preds = %land.rhs.i.i.i18
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i19, %land.rhs.i.i.i18.cpumask_set_cpu.exit_crit_edge, %if.end6.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %call4, ptr noundef %cpu2) #11
  br label %cleanup

cleanup:                                          ; preds = %cpumask_set_cpu.exit, %if.end.cleanup_crit_edge, %cpumask_test_and_clear_cpu.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmdc_pmu_timer_handler(ptr noundef %hrtimer) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %hrtimer, i32 56
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %1) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %arrayidx.1.i = getelementptr i8, ptr %hrtimer, i32 60
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %3, null
  br i1 %tobool.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %3) #11
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr i8, ptr %hrtimer, i32 64
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %5, null
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %if.then.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %5) #11
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %arrayidx.3.i = getelementptr i8, ptr %hrtimer, i32 68
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %7, null
  br i1 %tobool.not.3.i, label %if.end.2.i.if.end.3.i_crit_edge, label %if.then.3.i

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %7) #11
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %if.end.2.i.if.end.3.i_crit_edge
  %arrayidx.4.i = getelementptr i8, ptr %hrtimer, i32 72
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %9, null
  br i1 %tobool.not.4.i, label %if.end.3.i.if.end.4.i_crit_edge, label %if.then.4.i

if.end.3.i.if.end.4.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.4.i

if.then.4.i:                                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %9) #11
  br label %if.end.4.i

if.end.4.i:                                       ; preds = %if.then.4.i, %if.end.3.i.if.end.4.i_crit_edge
  %arrayidx.5.i = getelementptr i8, ptr %hrtimer, i32 76
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %11, null
  br i1 %tobool.not.5.i, label %if.end.4.i.mmdc_pmu_overflow_handler.exit_crit_edge, label %if.then.5.i

if.end.4.i.mmdc_pmu_overflow_handler.exit_crit_edge: ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mmdc_pmu_overflow_handler.exit

if.then.5.i:                                      ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mmdc_pmu_event_update(ptr noundef nonnull %11) #11
  br label %mmdc_pmu_overflow_handler.exit

mmdc_pmu_overflow_handler.exit:                   ; preds = %if.then.5.i, %if.end.4.i.mmdc_pmu_overflow_handler.exit_crit_edge
  %12 = load i32, ptr @mmdc_pmu_poll_period_us, align 4
  %conv.i = zext i32 %12 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 3
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %16() #11
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %hrtimer, i64 noundef %call.i, i64 noundef %mul.i) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_migrate_context(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmdc_pmu_event_init(ptr noundef %event) #3 align 64 {
entry:
  %counter_mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %config, align 8
  %conv = trunc i64 %3 to i32
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr, align 8
  %type3 = getelementptr inbounds %struct.pmu, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp.i.not = icmp eq i64 %10, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %attach_state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 15
  %11 = ptrtoint ptr %attach_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attach_state, align 4
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %cpu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 34
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8 = icmp slt i32 %14, 0
  br i1 %cmp8, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.43) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv)
  %17 = icmp ugt i32 %conv, 5
  br i1 %17, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %group_leader.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 11
  %18 = ptrtoint ptr %group_leader.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group_leader.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %counter_mask.i) #11
  %20 = ptrtoint ptr %counter_mask.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %counter_mask.i, align 4
  %config.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 21, i32 2
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %config.i, align 8
  %conv.i = trunc i64 %22 to i32
  call void @_set_bit(i32 noundef %conv.i, ptr noundef nonnull %counter_mask.i) #11
  %cmp.not.i = icmp eq ptr %19, %event
  br i1 %cmp.not.i, label %if.end22.if.end4.i_crit_edge, label %if.then.i

if.end22.if.end4.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end22
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %config, align 8
  %conv.i.i = trunc i64 %24 to i32
  %event_caps.i.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 9
  %25 = ptrtoint ptr %event_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %event_caps.i.i.i, align 4
  %and.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.end.i.i:                                       ; preds = %if.then.i
  %27 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pmu, align 8
  %cmp.not.i.i = icmp eq ptr %28, %1
  br i1 %cmp.not.i.i, label %mmdc_pmu_group_event_is_valid.exit.i, label %if.end.i.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge

if.end.i.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mmdc_pmu_group_is_valid.exit.thread

mmdc_pmu_group_event_is_valid.exit.i:             ; preds = %if.end.i.i
  %call5.i.i = call i32 @_test_and_set_bit(i32 noundef %conv.i.i, ptr noundef nonnull %counter_mask.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %mmdc_pmu_group_event_is_valid.exit.i.if.end4.i_crit_edge, label %mmdc_pmu_group_event_is_valid.exit.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge

mmdc_pmu_group_event_is_valid.exit.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge: ; preds = %mmdc_pmu_group_event_is_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mmdc_pmu_group_is_valid.exit.thread

mmdc_pmu_group_event_is_valid.exit.i.if.end4.i_crit_edge: ; preds = %mmdc_pmu_group_event_is_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %mmdc_pmu_group_event_is_valid.exit.i.if.end4.i_crit_edge, %if.then.i.if.end4.i_crit_edge, %if.end22.if.end4.i_crit_edge
  %group_leader5.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 11
  %29 = ptrtoint ptr %group_leader5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %group_leader5.i, align 4
  %cmp6.i = icmp eq ptr %30, %19
  br i1 %cmp6.i, label %if.then8.i, label %if.end4.i.if.end25_crit_edge

if.end4.i.if.end25_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then8.i:                                       ; preds = %if.end4.i
  %sibling_list.i = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 1
  %31 = ptrtoint ptr %sibling_list.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn53.i = load ptr, ptr %sibling_list.i, align 8
  %cmp11.not54.i = icmp eq ptr %.pn53.i, %sibling_list.i
  br i1 %cmp11.not54.i, label %if.then8.i.if.end25_crit_edge, label %if.then8.i.for.body.i_crit_edge

if.then8.i.for.body.i_crit_edge:                  ; preds = %if.then8.i
  br label %for.body.i

if.then8.i.if.end25_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %if.then8.i.for.body.i_crit_edge
  %.pn55.i = phi ptr [ %.pn.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %.pn53.i, %if.then8.i.for.body.i_crit_edge ]
  %config.i36.i = getelementptr i8, ptr %.pn55.i, i32 144
  %32 = ptrtoint ptr %config.i36.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %config.i36.i, align 8
  %conv.i37.i = trunc i64 %33 to i32
  %event_caps.i.i38.i = getelementptr i8, ptr %.pn55.i, i32 68
  %34 = ptrtoint ptr %event_caps.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %event_caps.i.i38.i, align 4
  %and.i.i39.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39.i)
  %tobool.not.i40.i = icmp eq i32 %and.i.i39.i, 0
  br i1 %tobool.not.i40.i, label %if.end.i43.i, label %for.body.i.for.cond.backedge.i_crit_edge

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

if.end.i43.i:                                     ; preds = %for.body.i
  %pmu1.i41.i = getelementptr i8, ptr %.pn55.i, i32 80
  %36 = ptrtoint ptr %pmu1.i41.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pmu1.i41.i, align 8
  %cmp.not.i42.i = icmp eq ptr %37, %1
  br i1 %cmp.not.i42.i, label %if.end4.i46.i, label %if.end.i43.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge

if.end.i43.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge: ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mmdc_pmu_group_is_valid.exit.thread

if.end4.i46.i:                                    ; preds = %if.end.i43.i
  %call5.i44.i = call i32 @_test_and_set_bit(i32 noundef %conv.i37.i, ptr noundef nonnull %counter_mask.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i44.i)
  %tobool6.not.i45.i = icmp eq i32 %call5.i44.i, 0
  br i1 %tobool6.not.i45.i, label %if.end4.i46.i.for.cond.backedge.i_crit_edge, label %if.end4.i46.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge

if.end4.i46.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge: ; preds = %if.end4.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mmdc_pmu_group_is_valid.exit.thread

if.end4.i46.i.for.cond.backedge.i_crit_edge:      ; preds = %if.end4.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %if.end4.i46.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %38 = ptrtoint ptr %.pn55.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i = load ptr, ptr %.pn55.i, align 8
  %cmp11.not.i = icmp eq ptr %.pn.i, %sibling_list.i
  br i1 %cmp11.not.i, label %for.cond.backedge.i.if.end25_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.backedge.i.if.end25_crit_edge:           ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

mmdc_pmu_group_is_valid.exit.thread:              ; preds = %if.end4.i46.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge, %if.end.i43.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge, %mmdc_pmu_group_event_is_valid.exit.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge, %if.end.i.i.mmdc_pmu_group_is_valid.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counter_mask.i) #11
  br label %cleanup

if.end25:                                         ; preds = %for.cond.backedge.i.if.end25_crit_edge, %if.then8.i.if.end25_crit_edge, %if.end4.i.if.end25_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counter_mask.i) #11
  %cpu26 = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = call i32 @_find_first_bit_be(ptr noundef %cpu26, i32 noundef %39) #11
  %40 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call.i, ptr %cpu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %mmdc_pmu_group_is_valid.exit.thread, %if.end15.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.end25 ], [ -2, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %mmdc_pmu_group_is_valid.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmdc_pmu_event_add(ptr noundef %event, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %config, align 8
  %conv = trunc i64 %3 to i32
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mmdc_base1.i = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mmdc_base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmdc_base1.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 1040
  %hrtimer.i = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 3
  %6 = load i32, ptr @mmdc_pmu_poll_period_us, align 4
  %conv.i.i = zext i32 %6 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 1000
  tail call void @hrtimer_start_range_ns(ptr noundef %hrtimer.i, i64 noundef %mul.i.i, i64 noundef 0, i32 noundef 3) #11
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef 0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 33554432) #11, !srcloc !144
  %7 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %conv.i = trunc i64 %9 to i32
  %add.ptr3.i = getelementptr i8, ptr %5, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @arm_heavy_mb() #11
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #11, !srcloc !144
  %devtype_data.i = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devtype_data.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 16777216, i32 285212672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %spec.select.i) #11, !srcloc !144
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.mmdc_pmu, ptr %1, i32 0, i32 6, i32 %conv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %16, null
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %event, ptr %arrayidx, align 4
  %active_events = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %active_events to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active_events, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %active_events, align 8
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv)
  %20 = icmp ult i32 %conv, 6
  br i1 %20, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %if.end3
  %.b55.i = load i1, ptr @mmdc_pmu_read_counter.__already_done, align 1
  br i1 %.b55.i, label %land.end.i.mmdc_pmu_read_counter.exit_crit_edge, label %if.then.i, !prof !145

land.end.i.mmdc_pmu_read_counter.exit_crit_edge:  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mmdc_pmu_read_counter.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mmdc_pmu_read_counter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.46, i32 noundef %conv) #11
  br label %mmdc_pmu_read_counter.exit

switch.lookup:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %mmdc_base1.i19 = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %mmdc_base1.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmdc_base1.i19, align 8
  %switch.idx.mult = shl i32 %conv, 2
  %switch.offset = add i32 %switch.idx.mult, 1048
  %add.ptr11.i = getelementptr i8, ptr %22, i32 %switch.offset
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #11, !srcloc !143
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  br label %mmdc_pmu_read_counter.exit

mmdc_pmu_read_counter.exit:                       ; preds = %switch.lookup, %if.then.i, %land.end.i.mmdc_pmu_read_counter.exit_crit_edge
  %retval.0.i = phi i32 [ %24, %switch.lookup ], [ 1, %if.then.i ], [ 1, %land.end.i.mmdc_pmu_read_counter.exit_crit_edge ]
  %conv6 = zext i32 %retval.0.i to i64
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %prev_count, i64 noundef %conv6) #11
  br label %cleanup

cleanup:                                          ; preds = %mmdc_pmu_read_counter.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mmdc_pmu_read_counter.exit ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmdc_pmu_event_del(ptr noundef %event, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %config, align 8
  %conv = trunc i64 %3 to i32
  %arrayidx = getelementptr %struct.mmdc_pmu, ptr %1, i32 0, i32 6, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %active_events = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %active_events to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_events, align 8
  %dec = add i32 %6, -1
  store i32 %dec, ptr %active_events, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hrtimer = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 3
  %call = tail call i32 @hrtimer_cancel(ptr noundef %hrtimer) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pmu, align 8
  %mmdc_base1.i = getelementptr inbounds %struct.mmdc_pmu, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %mmdc_base1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmdc_base1.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %10, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !150
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 67108864) #11, !srcloc !144
  %add.ptr3.i = getelementptr i8, ptr %10, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #11, !srcloc !144
  tail call void @mmdc_pmu_event_update(ptr noundef %event) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmdc_pmu_event_start(ptr noundef %event, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %mmdc_base1 = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmdc_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmdc_base1, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 1040
  %hrtimer = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 3
  %4 = load i32, ptr @mmdc_pmu_poll_period_us, align 4
  %conv.i = zext i32 %4 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  tail call void @hrtimer_start_range_ns(ptr noundef %hrtimer, i64 noundef %mul.i, i64 noundef 0, i32 noundef 3) #11
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %prev_count, i64 noundef 0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 33554432) #11, !srcloc !144
  %5 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %conv = trunc i64 %7 to i32
  %add.ptr3 = getelementptr i8, ptr %3, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %8) #11, !srcloc !144
  %devtype_data = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devtype_data, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 16777216, i32 285212672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %spec.select) #11, !srcloc !144
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmdc_pmu_event_stop(ptr noundef %event, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %mmdc_base1 = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmdc_base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmdc_base1, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !150
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 67108864) #11, !srcloc !144
  %add.ptr3 = getelementptr i8, ptr %3, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #11, !srcloc !144
  tail call void @mmdc_pmu_event_update(ptr noundef %event)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmdc_pmu_event_update(ptr noundef %event) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %mmdc_base1.i = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %mmdc_pmu_read_counter.exit.do.body_crit_edge, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prev_count, i32 noundef 8) #11
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %prev_count) #11
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %config, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv)
  %4 = icmp ult i32 %conv, 6
  br i1 %4, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %do.body
  %.b55.i = load i1, ptr @mmdc_pmu_read_counter.__already_done, align 1
  br i1 %.b55.i, label %land.end.i.mmdc_pmu_read_counter.exit_crit_edge, label %if.then.i, !prof !145

land.end.i.mmdc_pmu_read_counter.exit_crit_edge:  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mmdc_pmu_read_counter.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mmdc_pmu_read_counter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 210, i32 noundef 9, ptr noundef nonnull @.str.46, i32 noundef %conv) #11
  br label %mmdc_pmu_read_counter.exit

switch.lookup:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %mmdc_base1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmdc_base1.i, align 8
  %switch.idx.mult = shl i32 %conv, 2
  %switch.offset = add i32 %switch.idx.mult, 1048
  %add.ptr11.i = getelementptr i8, ptr %6, i32 %switch.offset
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #11, !srcloc !143
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  br label %mmdc_pmu_read_counter.exit

mmdc_pmu_read_counter.exit:                       ; preds = %switch.lookup, %if.then.i, %land.end.i.mmdc_pmu_read_counter.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %switch.lookup ], [ 1, %if.then.i ], [ 1, %land.end.i.mmdc_pmu_read_counter.exit_crit_edge ]
  %conv2 = zext i32 %retval.0.i to i64
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #11
  %call.i16 = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %prev_count, i64 noundef %call.i, i64 noundef %conv2) #11
  %cmp.not = icmp eq i64 %call.i16, %call.i
  br i1 %cmp.not, label %do.end, label %mmdc_pmu_read_counter.exit.do.body_crit_edge

mmdc_pmu_read_counter.exit.do.body_crit_edge:     ; preds = %mmdc_pmu_read_counter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %mmdc_pmu_read_counter.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i64 %conv2, %call.i
  %and = and i64 %sub, 4294967295
  %count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 8) #11
  tail call void @generic_atomic64_add(i64 noundef %and, ptr noundef %count) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_sysfs_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.39, i32 13)
  ret i32 12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @axi_id_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.41, i32 14)
  ret i32 13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmdc_pmu_cpumask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpu = getelementptr inbounds %struct.mmdc_pmu, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef %cpu, i32 noundef %2) #11
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !39, !40, !41, !43, !45, !46, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !94, !96, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !116, !117, !118, !119, !120, !122, !123, !125, !126, !128, !130}
!llvm.named.register.sp = !{!132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__param_pmu_pmu_poll_period_us, !1, !"__param_pmu_pmu_poll_period_us", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/mmdc.c", i32 115, i32 1}
!2 = !{ptr @__UNIQUE_ID_pmu_pmu_poll_period_ustype250, !1, !"__UNIQUE_ID_pmu_pmu_poll_period_ustype250", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_mmdc__253_602_imx_mmdc_init2, !4, !"__initcall__kmod_mmdc__253_602_imx_mmdc_init2", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-imx/mmdc.c", i32 602, i32 1}
!5 = !{ptr @ddr_type, !6, !"ddr_type", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-imx/mmdc.c", i32 61, i32 12}
!7 = !{ptr @__param_str_pmu_pmu_poll_period_us, !1, !"__param_str_pmu_pmu_poll_period_us", i1 false, i1 false}
!8 = !{ptr @mmdc_pmu_poll_period_us, !9, !"mmdc_pmu_poll_period_us", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-imx/mmdc.c", i32 113, i32 21}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-imx/mmdc.c", i32 591, i32 11}
!12 = !{ptr @imx_mmdc_driver, !13, !"imx_mmdc_driver", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-imx/mmdc.c", i32 589, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-imx/mmdc.c", i32 555, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @imx_mmdc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @imx_mmdc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-imx/mmdc.c", i32 484, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @imx_mmdc_perf_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @imx_mmdc_perf_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-imx/mmdc.c", i32 491, i32 12}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-imx/mmdc.c", i32 494, i32 4}
!31 = !{ptr @imx_mmdc_perf_init._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @imx_mmdc_perf_init._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-imx/mmdc.c", i32 503, i32 10}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-imx/mmdc.c", i32 506, i32 17}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-imx/mmdc.c", i32 527, i32 2}
!39 = !{ptr @imx_mmdc_perf_init._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @imx_mmdc_perf_init._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @cpuhp_mmdc_state, !42, !"cpuhp_mmdc_state", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-imx/mmdc.c", i32 82, i32 25}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @attr_groups, !47, !"attr_groups", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-imx/mmdc.c", i32 176, i32 38}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-imx/mmdc.c", i32 158, i32 10}
!50 = !{ptr @mmdc_pmu_events_attr_group, !51, !"mmdc_pmu_events_attr_group", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-imx/mmdc.c", i32 157, i32 31}
!52 = !{ptr @mmdc_pmu_events_attrs, !53, !"mmdc_pmu_events_attrs", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-imx/mmdc.c", i32 143, i32 26}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-imx/mmdc.c", i32 85, i32 1}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mmdc_pmu_total_cycles, !55, !"mmdc_pmu_total_cycles", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-imx/mmdc.c", i32 86, i32 1}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mmdc_pmu_busy_cycles, !59, !"mmdc_pmu_busy_cycles", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-imx/mmdc.c", i32 87, i32 1}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mmdc_pmu_read_accesses, !63, !"mmdc_pmu_read_accesses", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-imx/mmdc.c", i32 88, i32 1}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @mmdc_pmu_write_accesses, !67, !"mmdc_pmu_write_accesses", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-imx/mmdc.c", i32 89, i32 1}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mmdc_pmu_read_bytes, !71, !"mmdc_pmu_read_bytes", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-imx/mmdc.c", i32 90, i32 1}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mmdc_pmu_read_bytes_unit, !75, !"mmdc_pmu_read_bytes_unit", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-imx/mmdc.c", i32 91, i32 1}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mmdc_pmu_read_bytes_scale, !79, !"mmdc_pmu_read_bytes_scale", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-imx/mmdc.c", i32 92, i32 1}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mmdc_pmu_write_bytes, !83, !"mmdc_pmu_write_bytes", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-imx/mmdc.c", i32 93, i32 1}
!88 = !{ptr @mmdc_pmu_write_bytes_unit, !87, !"mmdc_pmu_write_bytes_unit", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-imx/mmdc.c", i32 94, i32 1}
!91 = !{ptr @mmdc_pmu_write_bytes_scale, !90, !"mmdc_pmu_write_bytes_scale", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-imx/mmdc.c", i32 172, i32 10}
!94 = !{ptr @mmdc_pmu_format_attr_group, !95, !"mmdc_pmu_format_attr_group", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-imx/mmdc.c", i32 171, i32 31}
!96 = !{ptr @mmdc_pmu_format_attrs, !97, !"mmdc_pmu_format_attrs", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-imx/mmdc.c", i32 165, i32 26}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../arch/arm/mach-imx/mmdc.c", i32 162, i32 1}
!100 = !{ptr @format_attr_event, !99, !"format_attr_event", i1 false, i1 false}
!101 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-imx/mmdc.c", i32 163, i32 1}
!104 = !{ptr @format_attr_axi_id, !103, !"format_attr_axi_id", i1 false, i1 false}
!105 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mmdc_pmu_cpumask_attr_group, !107, !"mmdc_pmu_cpumask_attr_group", i1 false, i1 false}
!107 = !{!"../arch/arm/mach-imx/mmdc.c", i32 139, i32 31}
!108 = !{ptr @mmdc_pmu_cpumask_attrs, !109, !"mmdc_pmu_cpumask_attrs", i1 false, i1 false}
!109 = !{!"../arch/arm/mach-imx/mmdc.c", i32 134, i32 26}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../arch/arm/mach-imx/mmdc.c", i32 132, i32 2}
!112 = !{ptr @mmdc_pmu_cpumask_attr, !113, !"mmdc_pmu_cpumask_attr", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-imx/mmdc.c", i32 131, i32 32}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../arch/arm/mach-imx/mmdc.c", i32 288, i32 3}
!116 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mmdc_pmu_event_init._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @mmdc_pmu_event_init._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../arch/arm/mach-imx/mmdc.c", i32 209, i32 10}
!122 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../arch/arm/mach-imx/mmdc.c", i32 83, i32 8}
!125 = !{ptr @mmdc_ida, !124, !"mmdc_ida", i1 false, i1 false}
!126 = !{ptr @imx_mmdc_dt_ids, !127, !"imx_mmdc_dt_ids", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-imx/mmdc.c", i32 74, i32 34}
!128 = !{ptr @imx6q_data, !129, !"imx6q_data", i1 false, i1 false}
!129 = !{!"../arch/arm/mach-imx/mmdc.c", i32 67, i32 43}
!130 = !{ptr @imx6qp_data, !131, !"imx6qp_data", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-imx/mmdc.c", i32 70, i32 43}
!132 = !{!"sp"}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{!"branch_weights", i32 1, i32 2000}
!143 = !{i64 4242886}
!144 = !{i64 4242468}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2154901844}
!147 = !{i64 2154902211}
!148 = !{i64 2154902591}
!149 = !{i64 2154890181}
!150 = !{i64 2154905556}
!151 = !{i64 2154905927}
