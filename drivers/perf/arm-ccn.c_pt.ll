; ModuleID = '/llk/IR_all_yes/drivers/perf/arm-ccn.c_pt.bc'
source_filename = "../drivers/perf/arm-ccn.c"
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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.dev_ext_attribute = type { %struct.device_attribute, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_ccn_pmu_event = type { %struct.device_attribute, i32, i32, i32, i32, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.arm_ccn = type { ptr, ptr, i32, i8, i32, ptr, i32, ptr, %struct.arm_ccn_dt, i32 }
%struct.arm_ccn_dt = type { i32, ptr, %struct.spinlock, [1 x i32], [9 x %struct.anon.97], [12 x %struct.anon.98], %struct.hrtimer, i32, %struct.hlist_node, %struct.pmu }
%struct.anon.97 = type { ptr, ptr }
%struct.anon.98 = type { i64, i64 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_ccn_component = type { ptr, i32, [1 x i32], %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { [1 x i32] }
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
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__param_str_pmu_poll_period_us = internal constant [27 x i8] c"arm_ccn.pmu_poll_period_us\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@arm_ccn_pmu_poll_period_us = internal global { i32, [28 x i8] } { i32 10000, [28 x i8] zeroinitializer }, align 32
@__param_pmu_poll_period_us = internal constant %struct.kernel_param { ptr @__param_str_pmu_poll_period_us, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.70 { ptr @arm_ccn_pmu_poll_period_us } }, section "__param", align 4
@__UNIQUE_ID_pmu_poll_period_ustype250 = internal constant [41 x i8] c"arm_ccn.parmtype=pmu_poll_period_us:uint\00", section ".modinfo", align 1
@arm_ccn_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arm_ccn_probe, ptr @arm_ccn_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @arm_ccn_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_arm_ccn__271_1572_arm_ccn_init6 = internal global ptr @arm_ccn_init, section ".initcall6.init", align 4
@__exitcall_arm_ccn_exit = internal global ptr @arm_ccn_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author272 = internal constant [47 x i8] c"arm_ccn.author=Pawel Moll <pawel.moll@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file273 = internal constant [34 x i8] c"arm_ccn.file=drivers/perf/arm-ccn\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [23 x i8] c"arm_ccn.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm-ccn\00", [24 x i8] zeroinitializer }, align 32
@arm_ccn_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,ccn-502\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,ccn-504\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,ccn-512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_overflow_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/perf/arm-ccn.c\00", [41 x i8] zeroinitializer }, align 32
@arm_ccn_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 1419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error reported in %08x%08x%08x%08x%08x%08x.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arm_ccn_error_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arm_ccn_error_handler._entry_ptr = internal global ptr @arm_ccn_error_handler._entry, section ".printk_index", align 4
@arm_ccn_error_handler._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.1, i32 1420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Disabling interrupt generation for all errors.\0A\00", [48 x i8] zeroinitializer }, align 32
@arm_ccn_error_handler._entry_ptr.8 = internal global ptr @arm_ccn_error_handler._entry.6, section ".printk_index", align 4
@arm_ccn_init_nodes.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.1, ptr @.str.11, i8 1, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm_ccn\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm_ccn_init_nodes\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Region %d: id=%u, type=0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ccn->dt.config_lock\00", [43 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ccn\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ccn_%d\00", [25 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_attr_groups = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @arm_ccn_pmu_events_attr_group, ptr @arm_ccn_pmu_format_attr_group, ptr @arm_ccn_pmu_cmp_mask_attr_group, ptr @arm_ccn_pmu_cpumask_attr_group, ptr null], [44 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.1, i32 1283, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No access to interrupts, using timer.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm_ccn_pmu_init\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_init._entry_ptr = internal global ptr @arm_ccn_pmu_init._entry, section ".printk_index", align 4
@arm_ccn_pmu_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.1, i32 1296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set interrupt affinity!\0A\00", [61 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_init._entry_ptr.20 = internal global ptr @arm_ccn_pmu_init._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arm_ccn_pmu_ida.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_events_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.22, ptr @arm_ccn_pmu_events_is_visible, ptr null, ptr @arm_ccn_pmu_events_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.23, ptr null, ptr null, ptr @arm_ccn_pmu_format_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.45, ptr null, ptr null, ptr @arm_ccn_pmu_cmp_mask_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cpumask_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @arm_ccn_pmu_cpumask_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_events_attrs = internal global { [52 x ptr], [48 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attrs = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @arm_ccn_pmu_format_attr_node, ptr @arm_ccn_pmu_format_attr_xp, ptr @arm_ccn_pmu_format_attr_type, ptr @arm_ccn_pmu_format_attr_event, ptr @arm_ccn_pmu_format_attr_port, ptr @arm_ccn_pmu_format_attr_bus, ptr @arm_ccn_pmu_format_attr_vc, ptr @arm_ccn_pmu_format_attr_dir, ptr @arm_ccn_pmu_format_attr_mask, ptr @arm_ccn_pmu_format_attr_cmp_l, ptr @arm_ccn_pmu_format_attr_cmp_h, ptr null], [48 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_node = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.25 }, [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_xp = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.25 }, [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_type = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.29 }, [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_event = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.31 }, [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_port = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.33 }, [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_bus = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.33 }, [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_vc = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.36 }, [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_dir = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.38 }, [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_mask = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.40 }, [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_cmp_l = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.42 }, [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_format_attr_cmp_h = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_format_show, ptr null }, ptr @.str.44 }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:0-7\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xp\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"config:8-15\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config:16-23\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config:24-25\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vc\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config:26-28\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config:29-29\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config:30-33\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cmp_l\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config1:0-62\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cmp_h\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config2:0-59\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmp_mask\00", [23 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attrs = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @arm_ccn_pmu_cmp_mask_attr_0l, ptr @arm_ccn_pmu_cmp_mask_attr_0h, ptr @arm_ccn_pmu_cmp_mask_attr_1l, ptr @arm_ccn_pmu_cmp_mask_attr_1h, ptr @arm_ccn_pmu_cmp_mask_attr_2l, ptr @arm_ccn_pmu_cmp_mask_attr_2h, ptr @arm_ccn_pmu_cmp_mask_attr_3l, ptr @arm_ccn_pmu_cmp_mask_attr_3h, ptr @arm_ccn_pmu_cmp_mask_attr_4l, ptr @arm_ccn_pmu_cmp_mask_attr_4h, ptr @arm_ccn_pmu_cmp_mask_attr_5l, ptr @arm_ccn_pmu_cmp_mask_attr_5h, ptr @arm_ccn_pmu_cmp_mask_attr_6l, ptr @arm_ccn_pmu_cmp_mask_attr_6h, ptr @arm_ccn_pmu_cmp_mask_attr_7l, ptr @arm_ccn_pmu_cmp_mask_attr_7h, ptr @arm_ccn_pmu_cmp_mask_attr_8l, ptr @arm_ccn_pmu_cmp_mask_attr_8h, ptr @arm_ccn_pmu_cmp_mask_attr_9l, ptr @arm_ccn_pmu_cmp_mask_attr_9h, ptr @arm_ccn_pmu_cmp_mask_attr_al, ptr @arm_ccn_pmu_cmp_mask_attr_ah, ptr @arm_ccn_pmu_cmp_mask_attr_bl, ptr @arm_ccn_pmu_cmp_mask_attr_bh, ptr null], [60 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_0l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_0h = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_1l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_1h = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_2l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_2h = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_3l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_3h = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_4l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_4h = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_5l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_5h = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_6l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_6h = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_7l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_7h = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr @arm_ccn_pmu_cmp_mask_store }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_8l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_8h = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_9l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_9h = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_al = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_ah = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_bl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cmp_mask_attr_bh = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cmp_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0l\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%016llx\0A\00", [21 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0h\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1l\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1h\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2l\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2h\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3l\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3h\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4l\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4h\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5l\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5h\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6l\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6h\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7l\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7h\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"8l\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"8h\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9l\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9h\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"al\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ah\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bl\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bh\00", [29 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cpumask_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @arm_ccn_pmu_cpumask_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_cpumask_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_cpumask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpumask\00", [24 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.72, ptr @.str.1, ptr @.str.73, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm_ccn_pmu_event_init\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sampling not supported!\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.72, ptr @.str.1, ptr @.str.74, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't exclude execution levels!\0A\00", [63 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.72, ptr @.str.1, ptr @.str.75, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't provide per-task data!\0A\00", [34 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.72, ptr @.str.1, ptr @.str.76, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid MN ID %d!\0A\00", [45 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.72, ptr @.str.1, ptr @.str.77, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid XP ID %d!\0A\00", [45 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.72, ptr @.str.1, ptr @.str.78, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid node ID %d!\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.72, ptr @.str.1, ptr @.str.79, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid type 0x%x for node %d!\0A\00", [32 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_events = internal global { [51 x %struct.arm_ccn_pmu_event], [644 x i8] } { [51 x %struct.arm_ccn_pmu_event] [%struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 1, i32 254, i32 2, i32 4, ptr @.str.84, i32 11 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 1, i32 254, i32 2, i32 4, ptr @.str.86, i32 11 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 1, i32 254, i32 2, i32 4, ptr @.str.88, i32 11 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 5, i32 254, i32 2, i32 4, ptr @.str.90, i32 8 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 5, i32 254, i32 2, i32 4, ptr @.str.92, i32 8 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 5, i32 254, i32 2, i32 4, ptr @.str.94, i32 8 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 5, i32 254, i32 2, i32 4, ptr @.str.96, i32 8 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 5, i32 254, i32 2, i32 4, ptr @.str.98, i32 10 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 12, i32 254, i32 2, i32 4, ptr @.str.90, i32 8 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 12, i32 254, i32 2, i32 4, ptr @.str.92, i32 8 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 12, i32 254, i32 2, i32 4, ptr @.str.94, i32 8 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 12, i32 254, i32 2, i32 4, ptr @.str.96, i32 8 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 12, i32 254, i32 2, i32 4, ptr @.str.98, i32 10 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 1, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 2, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 3, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 4, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 5, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 6, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 7, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 8, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 9, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 10, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 11, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 12, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 13, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 4, i32 14, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 22, i32 1, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 22, i32 2, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 22, i32 3, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 22, i32 4, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 22, i32 5, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 22, i32 6, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 22, i32 7, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 22, i32 8, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 22, i32 9, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 22, i32 10, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 8, i32 1, i32 2, i32 4, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 8, i32 2, i32 2, i32 4, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 8, i32 3, i32 2, i32 4, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 8, i32 4, i32 2, i32 4, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 8, i32 254, i32 2, i32 4, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 16, i32 1, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 16, i32 4, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 16, i32 5, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 16, i32 6, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 16, i32 7, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 16, i32 8, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 16, i32 9, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 16, i32 10, i32 0, i32 0, ptr null, i32 0 }, %struct.arm_ccn_pmu_event { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ccn_pmu_event_show, ptr null }, i32 255, i32 0, i32 0, i32 0, ptr null, i32 0 }], [644 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.72, ptr @.str.1, ptr @.str.80, i8 0, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid port %d for node/XP %d!\0A\00", [63 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.72, ptr @.str.1, ptr @.str.81, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid vc %d for node/XP %d!\0A\00", [33 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.72, ptr @.str.1, ptr @.str.82, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid event 0x%x for node/XP %d!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mn_eobarrier\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dir=1,vc=0,cmp_h=0x1c00\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mn_ecbarrier\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dir=1,vc=0,cmp_h=0x1e00\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mn_dvmop\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dir=1,vc=0,cmp_h=0x2800\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hni_txdatflits\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dir=1,vc=3\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hni_rxdatflits\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dir=0,vc=3\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hni_txreqflits\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dir=1,vc=0\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hni_rxreqflits\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dir=0,vc=0\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hni_rxreqflits_order\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dir=0,vc=0,cmp_h=0x8000\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sbsx_txdatflits\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sbsx_rxdatflits\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sbsx_txreqflits\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sbsx_rxreqflits\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sbsx_rxreqflits_order\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hnf_cache_miss\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hnf_l3_sf_cache_access\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hnf_cache_fill\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hnf_pocq_retry\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hnf_pocq_reqs_recvd\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hnf_sf_hit\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hnf_sf_evictions\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hnf_snoops_sent\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hnf_snoops_broadcast\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hnf_l3_eviction\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hnf_l3_fill_invalid_way\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hnf_mc_retries\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hnf_mc_reqs\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hnf_qos_hh_retry\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rni_rdata_beats_p0\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rni_rdata_beats_p1\00", [45 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rni_rdata_beats_p2\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rni_rxdat_flits\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rni_txdat_flits\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rni_txreq_flits\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rni_txreq_flits_retried\00", [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rni_rrt_full\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rni_wrt_full\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rni_txreq_flits_replayed\00", [39 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xp_upload_starvation\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xp_download_starvation\00", [41 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xp_respin\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xp_valid_flit\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xp_watchpoint\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sbas_rdata_beats_p0\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbas_rxdat_flits\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbas_txdat_flits\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbas_txreq_flits\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sbas_txreq_flits_retried\00", [39 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sbas_rrt_full\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sbas_wrt_full\00", [18 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sbas_txreq_flits_replayed\00", [38 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cycles\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"type=0x%x\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",event=0x%x\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c",%s\00", [28 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",mask=0x%x\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",xp=?,vc=?\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c",port=?,dir=?,cmp_l=?,cmp_h=?,mask=?\00", [59 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",bus=?\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",node=%d\00", [23 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",node=?\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_alloc.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.152, ptr @.str.1, ptr @.str.153, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arm_ccn_pmu_event_alloc\00", [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No more counters available!\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_ccn_pmu_event_alloc.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.152, ptr @.str.1, ptr @.str.154, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No more event sources/watchpoints on node/XP %d!\0A\00", [46 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.155 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"perf/arm/ccn:online\00", [44 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 8, i64 255]
@__sancov_gen_cov_switch_values.157 = internal global [8 x i64] [i64 6, i64 8, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.158 = internal global [8 x i64] [i64 6, i64 32, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.159 = internal global [8 x i64] [i64 6, i64 8, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.160 = internal global [8 x i64] [i64 6, i64 32, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.161 = internal global [10 x i64] [i64 8, i64 8, i64 4, i64 16, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 8, i64 104, i64 108]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 8, i64 104, i64 108]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 255]
@___asan_gen_.166 = private unnamed_addr constant [27 x i8] c"arm_ccn_pmu_poll_period_us\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 571, i32 21 }
@___asan_gen_.169 = private unnamed_addr constant [15 x i8] c"arm_ccn_driver\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1537, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1539, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"arm_ccn_match\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1529, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1173, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1417, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1420, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1383, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1228, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [16 x i8] c"arm_ccn_pmu_ida\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1255, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1257, i32 47 }
@___asan_gen_.226 = private unnamed_addr constant [24 x i8] c"arm_ccn_pmu_attr_groups\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 581, i32 38 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1283, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1296, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1218, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant [30 x i8] c"arm_ccn_pmu_events_attr_group\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 443, i32 37 }
@___asan_gen_.253 = private unnamed_addr constant [30 x i8] c"arm_ccn_pmu_format_attr_group\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 259, i32 37 }
@___asan_gen_.256 = private unnamed_addr constant [32 x i8] c"arm_ccn_pmu_cmp_mask_attr_group\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 540, i32 37 }
@___asan_gen_.259 = private unnamed_addr constant [31 x i8] c"arm_ccn_pmu_cpumask_attr_group\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 561, i32 37 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 444, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant [25 x i8] c"arm_ccn_pmu_events_attrs\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 441, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 260, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant [25 x i8] c"arm_ccn_pmu_format_attrs\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 244, i32 26 }
@___asan_gen_.274 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_format_attr_node\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [27 x i8] c"arm_ccn_pmu_format_attr_xp\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_format_attr_type\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [30 x i8] c"arm_ccn_pmu_format_attr_event\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_format_attr_port\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [28 x i8] c"arm_ccn_pmu_format_attr_bus\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [27 x i8] c"arm_ccn_pmu_format_attr_vc\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [28 x i8] c"arm_ccn_pmu_format_attr_dir\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_format_attr_mask\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [30 x i8] c"arm_ccn_pmu_format_attr_cmp_l\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [30 x i8] c"arm_ccn_pmu_format_attr_cmp_h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 232, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 224, i32 25 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 233, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 234, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 235, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 236, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 237, i32 8 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 238, i32 8 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 239, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 240, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 241, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 242, i32 8 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 541, i32 10 }
@___asan_gen_.373 = private unnamed_addr constant [27 x i8] c"arm_ccn_pmu_cmp_mask_attrs\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 524, i32 26 }
@___asan_gen_.376 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_0l\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_0h\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_1l\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_1h\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_2l\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_2h\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_3l\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_3h\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_4l\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_4h\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_5l\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_5h\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_6l\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_6h\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_7l\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_7h\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_8l\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_8h\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_9l\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_9h\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_al\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_ah\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_bl\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [29 x i8] c"arm_ccn_pmu_cmp_mask_attr_bh\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 499, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 474, i32 32 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 500, i32 8 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 501, i32 8 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 502, i32 8 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 503, i32 8 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 504, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 505, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 506, i32 8 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 507, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 508, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 509, i32 8 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 510, i32 8 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 511, i32 8 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 512, i32 8 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 513, i32 8 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 514, i32 8 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 515, i32 8 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 516, i32 8 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 517, i32 8 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 518, i32 8 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 519, i32 8 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 520, i32 8 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 521, i32 8 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 522, i32 8 }
@___asan_gen_.523 = private unnamed_addr constant [26 x i8] c"arm_ccn_pmu_cpumask_attrs\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 556, i32 26 }
@___asan_gen_.526 = private unnamed_addr constant [25 x i8] c"arm_ccn_pmu_cpumask_attr\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 553, i32 32 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 554, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 728, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 733, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 738, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 760, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 766, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 774, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 778, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant [19 x i8] c"arm_ccn_pmu_events\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 383, i32 33 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 797, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 802, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 809, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 384, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 385, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 386, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 387, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 388, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 389, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 390, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 391, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 393, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 394, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 395, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 396, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 397, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 399, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 400, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 401, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 402, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 403, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 404, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 405, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 406, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 407, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 408, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 409, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 410, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 411, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 412, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 413, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 414, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 415, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 416, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 417, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 418, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 419, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 420, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 421, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 422, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 423, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 424, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 425, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 426, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 427, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 428, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 429, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 430, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 431, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 432, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 433, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 434, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 435, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 436, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 331, i32 24 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 333, i32 34 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 335, i32 34 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 337, i32 34 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 344, i32 34 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 347, i32 6 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 349, i32 35 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 353, i32 34 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 356, i32 34 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 360, i32 33 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 659, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 677, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.785 = private constant [26 x i8] c"../drivers/perf/arm-ccn.c\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 1552, i32 11 }
@llvm.compiler.used = appending global [219 x ptr] [ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__UNIQUE_ID_pmu_poll_period_ustype250, ptr @__exitcall_arm_ccn_exit, ptr @__initcall__kmod_arm_ccn__271_1572_arm_ccn_init6, ptr @__param_pmu_poll_period_us, ptr @arm_ccn_error_handler._entry, ptr @arm_ccn_error_handler._entry.6, ptr @arm_ccn_error_handler._entry_ptr, ptr @arm_ccn_error_handler._entry_ptr.8, ptr @arm_ccn_exit, ptr @arm_ccn_pmu_init._entry, ptr @arm_ccn_pmu_init._entry.18, ptr @arm_ccn_pmu_init._entry_ptr, ptr @arm_ccn_pmu_init._entry_ptr.20, ptr @arm_ccn_pmu_poll_period_us, ptr @arm_ccn_driver, ptr @.str, ptr @arm_ccn_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @arm_ccn_pmu_init.__key, ptr @.str.12, ptr @arm_ccn_pmu_ida, ptr @.str.13, ptr @.str.14, ptr @arm_ccn_pmu_attr_groups, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @arm_ccn_pmu_events_attr_group, ptr @arm_ccn_pmu_format_attr_group, ptr @arm_ccn_pmu_cmp_mask_attr_group, ptr @arm_ccn_pmu_cpumask_attr_group, ptr @.str.22, ptr @arm_ccn_pmu_events_attrs, ptr @.str.23, ptr @arm_ccn_pmu_format_attrs, ptr @arm_ccn_pmu_format_attr_node, ptr @arm_ccn_pmu_format_attr_xp, ptr @arm_ccn_pmu_format_attr_type, ptr @arm_ccn_pmu_format_attr_event, ptr @arm_ccn_pmu_format_attr_port, ptr @arm_ccn_pmu_format_attr_bus, ptr @arm_ccn_pmu_format_attr_vc, ptr @arm_ccn_pmu_format_attr_dir, ptr @arm_ccn_pmu_format_attr_mask, ptr @arm_ccn_pmu_format_attr_cmp_l, ptr @arm_ccn_pmu_format_attr_cmp_h, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @arm_ccn_pmu_cmp_mask_attrs, ptr @arm_ccn_pmu_cmp_mask_attr_0l, ptr @arm_ccn_pmu_cmp_mask_attr_0h, ptr @arm_ccn_pmu_cmp_mask_attr_1l, ptr @arm_ccn_pmu_cmp_mask_attr_1h, ptr @arm_ccn_pmu_cmp_mask_attr_2l, ptr @arm_ccn_pmu_cmp_mask_attr_2h, ptr @arm_ccn_pmu_cmp_mask_attr_3l, ptr @arm_ccn_pmu_cmp_mask_attr_3h, ptr @arm_ccn_pmu_cmp_mask_attr_4l, ptr @arm_ccn_pmu_cmp_mask_attr_4h, ptr @arm_ccn_pmu_cmp_mask_attr_5l, ptr @arm_ccn_pmu_cmp_mask_attr_5h, ptr @arm_ccn_pmu_cmp_mask_attr_6l, ptr @arm_ccn_pmu_cmp_mask_attr_6h, ptr @arm_ccn_pmu_cmp_mask_attr_7l, ptr @arm_ccn_pmu_cmp_mask_attr_7h, ptr @arm_ccn_pmu_cmp_mask_attr_8l, ptr @arm_ccn_pmu_cmp_mask_attr_8h, ptr @arm_ccn_pmu_cmp_mask_attr_9l, ptr @arm_ccn_pmu_cmp_mask_attr_9h, ptr @arm_ccn_pmu_cmp_mask_attr_al, ptr @arm_ccn_pmu_cmp_mask_attr_ah, ptr @arm_ccn_pmu_cmp_mask_attr_bl, ptr @arm_ccn_pmu_cmp_mask_attr_bh, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @arm_ccn_pmu_cpumask_attrs, ptr @arm_ccn_pmu_cpumask_attr, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @arm_ccn_pmu_events, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155], section "llvm.metadata"
@0 = internal global [207 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_poll_period_us to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_error_handler._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_attr_groups to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_events_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cpumask_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_events_attrs to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_node to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_xp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_event to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_port to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_bus to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_vc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_dir to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_mask to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_cmp_l to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_format_attr_cmp_h to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attrs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_0l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_0h to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_1l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_1h to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_2l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_2h to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_3l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_3h to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_4l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_4h to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_5l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_5h to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_6l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_6h to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_7l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_7h to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_8l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_8h to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_9l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_9h to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_al to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_ah to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_bl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cmp_mask_attr_bh to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cpumask_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_cpumask_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_ccn_pmu_events to i32), i32 2652, i32 3296, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arm_ccn_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @arm_ccn_driver) #8
  tail call void @__cpuhp_remove_state(i32 noundef 171, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 171, ptr noundef nonnull @.str.155, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @arm_ccn_pmu_offline_cpu, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [51 x %struct.arm_ccn_pmu_event], ptr @arm_ccn_pmu_events, i32 0, i32 %i.014
  %arrayidx2 = getelementptr [52 x ptr], ptr @arm_ccn_pmu_events_attrs, i32 0, i32 %i.014
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 51
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @arm_ccn_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.end.cleanup_crit_edge, label %if.then5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__cpuhp_remove_state(i32 noundef 171, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call3, %if.then5 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 584, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.arm_ccn, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2013265920) #8, !srcloc !389
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool19.not = icmp sgt i32 %10, -1
  br i1 %tobool19.not, label %if.end13.if.end34_crit_edge, label %do.body21

if.end13.if.end34_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.body21:                                        ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !392
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 134217728) #8, !srcloc !389
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body21.dev_name.exit_crit_edge

do.body21.dev_name.exit_crit_edge:                ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body21.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %do.body21.dev_name.exit_crit_edge ]
  %call.i91 = tail call i32 @devm_request_threaded_irq(ptr noundef %14, i32 noundef %5, ptr noundef nonnull @arm_ccn_irq_handler, ptr noundef null, i32 noundef 67584, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool30.not = icmp eq i32 %call.i91, 0
  br i1 %tobool30.not, label %if.end32, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %irq33 = getelementptr inbounds %struct.arm_ccn, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %irq33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %5, ptr %irq33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end13.if.end34_crit_edge
  %num_xps.i = getelementptr inbounds %struct.arm_ccn, ptr %call.i, i32 0, i32 6
  %num_nodes.i = getelementptr inbounds %struct.arm_ccn, ptr %call.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end34
  %region.041.i = phi i32 [ 0, %if.end34 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 480
  %22 = lshr i32 %region.041.i, 3
  %mul.i = and i32 %22, 268435452
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !390
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !393
  %rem36.i = and i32 %region.041.i, 31
  %shl.i = shl nuw i32 1, %rem36.i
  %and.i = and i32 %24, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i92 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i92, label %for.body.i.for.inc.i_crit_edge, label %if.end.i93

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i93:                                       ; preds = %for.body.i
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %mul5.i = shl i32 %region.041.i, 16
  %add.ptr6.i = getelementptr i8, ptr %26, i32 65280
  %add.ptr9.i = getelementptr i8, ptr %add.ptr6.i, i32 %mul5.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #8, !srcloc !390
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !394
  %and13.i = and i32 %28, 31
  %shr14.i = lshr i32 %28, 8
  %and15.i = and i32 %shr14.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and13.i)
  %cmp.i122 = icmp eq i32 %and13.i, 8
  br i1 %cmp.i122, label %land.lhs.true.i, label %if.end.i93.if.else.i_crit_edge

if.end.i93.if.else.i_crit_edge:                   ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i93
  %29 = ptrtoint ptr %num_xps.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_xps.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %and15.i)
  %cmp1.not.i = icmp ugt i32 %30, %and15.i
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end7.sink.split.i_crit_edge

land.lhs.true.i.if.end7.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.sink.split.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i93.if.else.i_crit_edge
  %31 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_nodes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %and15.i)
  %cmp3.not.i = icmp ugt i32 %32, %and15.i
  br i1 %cmp3.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.if.end7.sink.split.i_crit_edge

if.else.i.if.end7.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.sink.split.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end7.sink.split.i:                             ; preds = %if.else.i.if.end7.sink.split.i_crit_edge, %land.lhs.true.i.if.end7.sink.split.i_crit_edge
  %num_nodes.sink.i = phi ptr [ %num_xps.i, %land.lhs.true.i.if.end7.sink.split.i_crit_edge ], [ %num_nodes.i, %if.else.i.if.end7.sink.split.i_crit_edge ]
  %add5.i = add nuw nsw i32 %and15.i, 1
  %33 = ptrtoint ptr %num_nodes.sink.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add5.i, ptr %num_nodes.sink.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.sink.split.i, %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %region.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end38, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end38:                                         ; preds = %for.inc.i
  %34 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_nodes.i, align 8
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 16) #8
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %if.end38.devm_kcalloc.exit_crit_edge, label %if.end.i.i, !prof !395

if.end38.devm_kcalloc.exit_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 8
  %40 = extractvalue { i32, i1 } %36, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %39, i32 noundef %40, i32 noundef 3520) #8
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i, %if.end38.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %if.end38.devm_kcalloc.exit_crit_edge ]
  %node = getelementptr inbounds %struct.arm_ccn, ptr %call.i, i32 0, i32 5
  %41 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %retval.0.i.i, ptr %node, align 4
  %42 = ptrtoint ptr %num_xps.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_xps.i, align 8
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %43, i32 16) #8
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %devm_kcalloc.exit97.thread, label %devm_kcalloc.exit97, !prof !395

devm_kcalloc.exit97.thread:                       ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %xp124 = getelementptr inbounds %struct.arm_ccn, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %xp124 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %xp124, align 4
  br label %cleanup

devm_kcalloc.exit97:                              ; preds = %devm_kcalloc.exit
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 8
  %49 = extractvalue { i32, i1 } %44, 0
  %call5.i.i94 = tail call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef %49, i32 noundef 3520) #8
  %xp = getelementptr inbounds %struct.arm_ccn, ptr %call.i, i32 0, i32 7
  %50 = ptrtoint ptr %xp to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call5.i.i94, ptr %xp, align 4
  %51 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %node, align 4
  %tobool44.not = icmp eq ptr %52, null
  %tobool46.not = icmp eq ptr %call5.i.i94, null
  %or.cond = select i1 %tobool44.not, i1 true, i1 %tobool46.not
  br i1 %or.cond, label %devm_kcalloc.exit97.cleanup_crit_edge, label %for.body.i107.preheader

devm_kcalloc.exit97.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i107.preheader:                          ; preds = %devm_kcalloc.exit97
  %sbas_present.i = getelementptr inbounds %struct.arm_ccn, ptr %call.i, i32 0, i32 3
  %mn_id.i = getelementptr inbounds %struct.arm_ccn, ptr %call.i, i32 0, i32 9
  br label %for.body.i107

for.body.i107:                                    ; preds = %for.inc.i119.for.body.i107_crit_edge, %for.body.i107.preheader
  %region.041.i99 = phi i32 [ %inc.i117, %for.inc.i119.for.body.i107_crit_edge ], [ 0, %for.body.i107.preheader ]
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr.i100 = getelementptr i8, ptr %54, i32 480
  %55 = lshr i32 %region.041.i99, 3
  %mul.i101 = and i32 %55, 268435452
  %add.ptr2.i102 = getelementptr i8, ptr %add.ptr.i100, i32 %mul.i101
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i102) #8, !srcloc !390
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !393
  %rem36.i103 = and i32 %region.041.i99, 31
  %shl.i104 = shl nuw i32 1, %rem36.i103
  %and.i105 = and i32 %57, %shl.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.not.i106 = icmp eq i32 %and.i105, 0
  br i1 %tobool.not.i106, label %for.body.i107.for.inc.i119_crit_edge, label %if.end.i116

for.body.i107.for.inc.i119_crit_edge:             ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i119

if.end.i116:                                      ; preds = %for.body.i107
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %mul5.i108 = shl i32 %region.041.i99, 16
  %add.ptr6.i109 = getelementptr i8, ptr %59, i32 %mul5.i108
  %add.ptr9.i110 = getelementptr i8, ptr %add.ptr6.i109, i32 65280
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i110) #8, !srcloc !390
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !394
  %and13.i111 = and i32 %61, 31
  %shr14.i112 = lshr i32 %61, 8
  %and15.i113 = and i32 %shr14.i112, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_init_nodes.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_probe, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !396

if.then.i:                                        ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_init_nodes.__UNIQUE_ID_ddebug270, ptr noundef %63, ptr noundef nonnull @.str.11, i32 noundef %region.041.i99, i32 noundef %and15.i113, i32 noundef %and13.i111) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end.i116
  %64 = zext i32 %and13.i111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and13.i111, label %do.end.i.sw.default.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %do.end.i.for.inc.i119_crit_edge
    i32 8, label %do.end.i.sw.epilog.i_crit_edge
    i32 12, label %sw.bb5.i
    i32 16, label %sw.bb7.i
  ]

do.end.i.sw.epilog.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end.i.for.inc.i119_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i119

do.end.i.sw.default.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb.i:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %mn_id.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and15.i113, ptr %mn_id.i, align 8
  br label %for.inc.i119

sw.bb5.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %sbas_present.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i = load i8, ptr %sbas_present.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %sbas_present.i, align 4
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %sbas_present.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load8.i = load i8, ptr %sbas_present.i, align 4
  %bf.set10.i = or i8 %bf.load8.i, -128
  store i8 %bf.set10.i, ptr %sbas_present.i, align 4
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb7.i, %do.end.i.sw.default.i_crit_edge
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb5.i, %do.end.i.sw.epilog.i_crit_edge
  %node11.sink.i = phi ptr [ %node, %sw.default.i ], [ %node, %sw.bb5.i ], [ %xp, %do.end.i.sw.epilog.i_crit_edge ]
  %68 = ptrtoint ptr %node11.sink.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %node11.sink.i, align 4
  %arrayidx12.i = getelementptr %struct.arm_ccn_component, ptr %69, i32 %and15.i113
  %70 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr6.i109, ptr %arrayidx12.i, align 4
  %type14.i = getelementptr %struct.arm_ccn_component, ptr %69, i32 %and15.i113, i32 1
  %71 = ptrtoint ptr %type14.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and13.i111, ptr %type14.i, align 4
  br label %for.inc.i119

for.inc.i119:                                     ; preds = %sw.epilog.i, %sw.bb.i, %do.end.i.for.inc.i119_crit_edge, %for.body.i107.for.inc.i119_crit_edge
  %inc.i117 = add nuw nsw i32 %region.041.i99, 1
  %exitcond.not.i118 = icmp eq i32 %inc.i117, 256
  br i1 %exitcond.not.i118, label %if.end52, label %for.inc.i119.for.body.i107_crit_edge

for.inc.i119.for.body.i107_crit_edge:             ; preds = %for.inc.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i107

if.end52:                                         ; preds = %for.inc.i119
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call fastcc i32 @arm_ccn_pmu_init(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %devm_kcalloc.exit97.cleanup_crit_edge, %devm_kcalloc.exit97.thread, %dev_name.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %call53, %if.end52 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call.i91, %dev_name.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit97.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit97.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %node.i = getelementptr inbounds %struct.arm_ccn, ptr %1, i32 0, i32 8, i32 8
  %call.i.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 171, ptr noundef %node.i, i1 noundef zeroext false) #8
  %num_xps.i = getelementptr inbounds %struct.arm_ccn, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_xps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_xps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16.i = icmp sgt i32 %3, 0
  br i1 %cmp16.i, label %do.body.lr.ph.i, label %entry.arm_ccn_pmu_cleanup.exit_crit_edge

entry.arm_ccn_pmu_cleanup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_ccn_pmu_cleanup.exit

do.body.lr.ph.i:                                  ; preds = %entry
  %xp.i = getelementptr inbounds %struct.arm_ccn, ptr %1, i32 0, i32 7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !397
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %xp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xp.i, align 4
  %arrayidx.i = getelementptr %struct.arm_ccn_component, ptr %5, i32 %i.017.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !389
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %8 = ptrtoint ptr %num_xps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_xps.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.arm_ccn_pmu_cleanup.exit_crit_edge

do.body.i.arm_ccn_pmu_cleanup.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_ccn_pmu_cleanup.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

arm_ccn_pmu_cleanup.exit:                         ; preds = %do.body.i.arm_ccn_pmu_cleanup.exit_crit_edge, %entry.arm_ccn_pmu_cleanup.exit_crit_edge
  %dt.i = getelementptr inbounds %struct.arm_ccn, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !398
  tail call void @arm_heavy_mb() #8
  %base5.i = getelementptr inbounds %struct.arm_ccn, ptr %1, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %base5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %11, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !389
  %pmu.i = getelementptr inbounds %struct.arm_ccn, ptr %1, i32 0, i32 8, i32 9
  tail call void @perf_pmu_unregister(ptr noundef %pmu.i) #8
  %12 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dt.i, align 8
  tail call void @ida_free(ptr noundef nonnull @arm_ccn_pmu_ida, i32 noundef %13) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.arm_ccn, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 768
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !390
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !399
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and2 = and i32 %3, -3
  %dt = getelementptr inbounds %struct.arm_ccn, ptr %dev_id, i32 0, i32 8
  %call3 = tail call fastcc i32 @arm_ccn_pmu_overflow_handler(ptr noundef %dt)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err_or.0 = phi i32 [ %and2, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %res.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 772
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !390
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  %or = or i32 %7, %err_or.0
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr8.1 = getelementptr i8, ptr %9, i32 776
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.1) #8, !srcloc !390
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  %or.1 = or i32 %11, %or
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr8.2 = getelementptr i8, ptr %13, i32 780
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.2) #8, !srcloc !390
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  %or.2 = or i32 %15, %or.1
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr8.3 = getelementptr i8, ptr %17, i32 784
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.3) #8, !srcloc !390
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  %or.3 = or i32 %19, %or.2
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr8.4 = getelementptr i8, ptr %21, i32 788
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.4) #8, !srcloc !390
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  %or.4 = or i32 %23, %or.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.4)
  %tobool14.not = icmp eq i32 %or.4, 0
  br i1 %tobool14.not, label %if.end18, label %if.end18.thread

if.end18.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.2, i32 noundef %23, i32 noundef %19, i32 noundef %15, i32 noundef %11, i32 noundef %7, i32 noundef %3) #11
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !401
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 570425344) #8, !srcloc !389
  %or17 = or i32 %res.0, 1
  br label %do.body

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %cmp19.not = icmp eq i32 %res.0, 0
  br i1 %cmp19.not, label %if.end18.if.end23_crit_edge, label %if.end18.do.body_crit_edge

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %if.end18.thread
  %res.139 = phi i32 [ %or17, %if.end18.thread ], [ %res.0, %if.end18.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !402
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 285212672) #8, !srcloc !389
  br label %if.end23

if.end23:                                         ; preds = %do.body, %if.end18.if.end23_crit_edge
  %res.140 = phi i32 [ %res.139, %do.body ], [ 0, %if.end18.if.end23_crit_edge ]
  ret i32 %res.140
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_ccn_pmu_init(ptr noundef %ccn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 65536
  %dt = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8
  %base1 = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %base1, align 4
  %config_lock = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %config_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @arm_ccn_pmu_init.__key, i16 noundef signext 3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !403
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base1, align 4
  %add.ptr8 = getelementptr i8, ptr %4, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 520093696) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !404
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base1, align 4
  %add.ptr14 = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 16777216) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !405
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base1, align 4
  %add.ptr20 = getelementptr i8, ptr %8, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 1090519040) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !406
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base1, align 4
  %add.ptr26 = getelementptr i8, ptr %10, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 16777216) #8, !srcloc !389
  %num_xps = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 6
  %11 = ptrtoint ptr %num_xps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_xps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp194 = icmp sgt i32 %12, 0
  br i1 %cmp194, label %do.body27.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body27.lr.ph:                                  ; preds = %entry
  %xp = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 7
  br label %do.body27

do.body27:                                        ; preds = %do.body27.do.body27_crit_edge, %do.body27.lr.ph
  %i.0195 = phi i32 [ 0, %do.body27.lr.ph ], [ %inc, %do.body27.do.body27_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !407
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %xp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xp, align 4
  %arrayidx = getelementptr %struct.arm_ccn_component, ptr %14, i32 %i.0195
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %add.ptr31 = getelementptr i8, ptr %16, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !408
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %xp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xp, align 4
  %arrayidx36 = getelementptr %struct.arm_ccn_component, ptr %18, i32 %i.0195
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx36, align 4
  %add.ptr38 = getelementptr i8, ptr %20, i32 880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 32509696) #8, !srcloc !389
  %inc = add nuw nsw i32 %i.0195, 1
  %21 = ptrtoint ptr %num_xps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_xps, align 8
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %do.body27.do.body27_crit_edge, label %do.body27.for.end_crit_edge

do.body27.for.end_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body27.do.body27_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

for.end:                                          ; preds = %do.body27.for.end_crit_edge, %entry.for.end_crit_edge
  %arrayidx40 = getelementptr %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 5, i32 8
  %arrayidx46 = getelementptr %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 5, i32 9
  %23 = call ptr @memset(ptr %arrayidx40, i32 255, i32 16)
  %arrayidx54 = getelementptr %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 5, i32 10
  %24 = call ptr @memset(ptr %arrayidx46, i32 0, i32 16)
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %arrayidx54, align 8
  %h59 = getelementptr %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 5, i32 10, i32 1
  %26 = ptrtoint ptr %h59 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -32769, ptr %h59, align 8
  %arrayidx62 = getelementptr %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 5, i32 11
  %27 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 -1, ptr %arrayidx62, align 8
  %h67 = getelementptr %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 5, i32 11, i32 1
  %28 = ptrtoint ptr %h67 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -15873, ptr %h67, align 8
  %call68 = tail call i32 @ida_alloc_range(ptr noundef nonnull @arm_ccn_pmu_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  %29 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call68, ptr %dt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp72 = icmp eq i32 %call68, 0
  br i1 %cmp72, label %for.end.if.end77_crit_edge, label %if.else

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.else:                                          ; preds = %for.end
  %30 = ptrtoint ptr %ccn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ccn, align 8
  %call75 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %31, i32 noundef 3264, ptr noundef nonnull @.str.14, i32 noundef %call68) #8
  %tobool.not = icmp eq ptr %call75, null
  br i1 %tobool.not, label %if.else.error_choose_name_crit_edge, label %if.else.if.end77_crit_edge

if.else.if.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.else.error_choose_name_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_choose_name

if.end77:                                         ; preds = %if.else.if.end77_crit_edge, %for.end.if.end77_crit_edge
  %name.0 = phi ptr [ %call75, %if.else.if.end77_crit_edge ], [ @.str.13, %for.end.if.end77_crit_edge ]
  %pmu = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9
  %.compoundliteral.sroa.4.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 3
  %32 = call ptr @memset(ptr %pmu, i32 0, i32 16)
  %33 = ptrtoint ptr %.compoundliteral.sroa.4.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @arm_ccn_pmu_attr_groups, ptr %.compoundliteral.sroa.4.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 4
  %34 = ptrtoint ptr %.compoundliteral.sroa.5.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %.compoundliteral.sroa.5.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.6.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 5
  %35 = ptrtoint ptr %.compoundliteral.sroa.6.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %.compoundliteral.sroa.6.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.7.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 6
  %36 = ptrtoint ptr %.compoundliteral.sroa.7.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %.compoundliteral.sroa.7.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.8.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 7
  %37 = ptrtoint ptr %.compoundliteral.sroa.8.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 128, ptr %.compoundliteral.sroa.8.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.9.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 8
  %38 = ptrtoint ptr %.compoundliteral.sroa.9.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %.compoundliteral.sroa.9.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.10.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 9
  %39 = ptrtoint ptr %.compoundliteral.sroa.10.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %.compoundliteral.sroa.10.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.11.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 10
  %40 = ptrtoint ptr %.compoundliteral.sroa.11.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %.compoundliteral.sroa.11.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.12.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 11
  %41 = ptrtoint ptr %.compoundliteral.sroa.12.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %.compoundliteral.sroa.12.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.13.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 12
  %42 = ptrtoint ptr %.compoundliteral.sroa.13.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %.compoundliteral.sroa.13.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.14.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 13
  %43 = ptrtoint ptr %.compoundliteral.sroa.14.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %.compoundliteral.sroa.14.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.15.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 14
  %44 = ptrtoint ptr %.compoundliteral.sroa.15.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @arm_ccn_pmu_enable, ptr %.compoundliteral.sroa.15.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.16.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 15
  %45 = ptrtoint ptr %.compoundliteral.sroa.16.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @arm_ccn_pmu_disable, ptr %.compoundliteral.sroa.16.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.17.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 16
  %46 = ptrtoint ptr %.compoundliteral.sroa.17.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @arm_ccn_pmu_event_init, ptr %.compoundliteral.sroa.17.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.18.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 17
  %47 = ptrtoint ptr %.compoundliteral.sroa.18.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %.compoundliteral.sroa.18.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.19.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 18
  %48 = ptrtoint ptr %.compoundliteral.sroa.19.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %.compoundliteral.sroa.19.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.20.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 19
  %49 = ptrtoint ptr %.compoundliteral.sroa.20.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @arm_ccn_pmu_event_add, ptr %.compoundliteral.sroa.20.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.21.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 20
  %50 = ptrtoint ptr %.compoundliteral.sroa.21.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @arm_ccn_pmu_event_del, ptr %.compoundliteral.sroa.21.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.22.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 21
  %51 = ptrtoint ptr %.compoundliteral.sroa.22.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @arm_ccn_pmu_event_start, ptr %.compoundliteral.sroa.22.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.23.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 22
  %52 = ptrtoint ptr %.compoundliteral.sroa.23.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @arm_ccn_pmu_event_stop, ptr %.compoundliteral.sroa.23.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.24.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 23
  %53 = ptrtoint ptr %.compoundliteral.sroa.24.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @arm_ccn_pmu_event_read, ptr %.compoundliteral.sroa.24.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.25.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 9, i32 24
  %irq = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 2
  %54 = call ptr @memset(ptr %.compoundliteral.sroa.25.0.pmu.sroa_idx, i32 0, i32 60)
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool82.not = icmp eq i32 %56, 0
  br i1 %tobool82.not, label %do.end86, label %if.end77.if.end91_crit_edge

if.end77.if.end91_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %ccn to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ccn, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.15) #11
  %hrtimer = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 6
  tail call void @hrtimer_init(ptr noundef %hrtimer, i32 noundef 1, i32 noundef 1) #8
  %function = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 6, i32 2
  %59 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @arm_ccn_pmu_timer_handler, ptr %function, align 8
  br label %if.end91

if.end91:                                         ; preds = %do.end86, %if.end77.if.end91_crit_edge
  %60 = tail call i32 @llvm.read_register.i32(metadata !378) #8
  %and.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu, align 4
  %cpu94 = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 7
  %64 = ptrtoint ptr %cpu94 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %cpu94, align 8
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool96.not = icmp eq i32 %66, 0
  br i1 %tobool96.not, label %if.end91.if.end110_crit_edge, label %if.then97

if.end91.if.end110_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then97:                                        ; preds = %if.end91
  %rem.i = and i32 %63, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %63, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call102 = tail call i32 @irq_set_affinity(i32 noundef %66, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then97.if.end110_crit_edge, label %do.end107

if.then97.if.end110_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

do.end107:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %ccn to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ccn, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.19) #11
  br label %error_choose_name

if.end110:                                        ; preds = %if.then97.if.end110_crit_edge, %if.end91.if.end110_crit_edge
  %node = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 8
  %call.i = tail call i32 @__cpuhp_state_add_instance(i32 noundef 171, ptr noundef %node, i1 noundef zeroext false) #8
  %call115 = tail call i32 @perf_pmu_register(ptr noundef %pmu, ptr noundef %name.0, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end110.cleanup_crit_edge, label %error_pmu_register

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_pmu_register:                               ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  %call.i193 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 171, ptr noundef %node, i1 noundef zeroext false) #8
  br label %error_choose_name

error_choose_name:                                ; preds = %error_pmu_register, %do.end107, %if.else.error_choose_name_crit_edge
  %err.0 = phi i32 [ %call102, %do.end107 ], [ %call115, %error_pmu_register ], [ -12, %if.else.error_choose_name_crit_edge ]
  %69 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dt, align 8
  tail call void @ida_free(ptr noundef nonnull @arm_ccn_pmu_ida, i32 noundef %70) #8
  %71 = ptrtoint ptr %num_xps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_xps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp126196 = icmp sgt i32 %72, 0
  br i1 %cmp126196, label %do.body128.lr.ph, label %error_choose_name.do.body138_crit_edge

error_choose_name.do.body138_crit_edge:           ; preds = %error_choose_name
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body138

do.body128.lr.ph:                                 ; preds = %error_choose_name
  %xp131 = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 7
  br label %do.body128

do.body128:                                       ; preds = %do.body128.do.body128_crit_edge, %do.body128.lr.ph
  %i.1197 = phi i32 [ 0, %do.body128.lr.ph ], [ %inc136, %do.body128.do.body128_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !409
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %xp131 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %xp131, align 4
  %arrayidx132 = getelementptr %struct.arm_ccn_component, ptr %74, i32 %i.1197
  %75 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx132, align 4
  %add.ptr134 = getelementptr i8, ptr %76, i32 880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 0) #8, !srcloc !389
  %inc136 = add nuw nsw i32 %i.1197, 1
  %77 = ptrtoint ptr %num_xps to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_xps, align 8
  %cmp126 = icmp slt i32 %inc136, %78
  br i1 %cmp126, label %do.body128.do.body128_crit_edge, label %do.body128.do.body138_crit_edge

do.body128.do.body138_crit_edge:                  ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body138

do.body128.do.body128_crit_edge:                  ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body128

do.body138:                                       ; preds = %do.body128.do.body138_crit_edge, %error_choose_name.do.body138_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !410
  tail call void @arm_heavy_mb() #8
  %79 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base1, align 4
  %add.ptr143 = getelementptr i8, ptr %80, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 0) #8, !srcloc !389
  br label %cleanup

cleanup:                                          ; preds = %do.body138, %if.end110.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.body138 ], [ 0, %if.end110.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_ccn_pmu_overflow_handler(ptr nocapture noundef readonly %dt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.arm_ccn_dt, ptr %dt, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 408
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !390
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !411
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup59_crit_edge, label %do.body

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !412
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #8, !srcloc !389
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.body
  %idx.078 = phi i32 [ 0, %do.body ], [ %inc, %cleanup.for.body_crit_edge ]
  %event7 = getelementptr %struct.arm_ccn_dt, ptr %dt, i32 0, i32 4, i32 %idx.078, i32 1
  %6 = ptrtoint ptr %event7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event7, align 4
  %shl = shl nuw nsw i32 1, %idx.078
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %tobool8.not.not = xor i1 %tobool8.not, true
  %tobool9.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool8.not.not, i1 %tobool9.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %idx.078)
  %cmp10 = icmp ne i32 %idx.078, 8
  %or.cond77 = select i1 %or.cond, i1 %cmp10, i1 false
  br i1 %or.cond77, label %land.rhs13, label %for.body.if.end46_crit_edge

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.rhs13:                                       ; preds = %for.body
  %.b75 = load i1, ptr @arm_ccn_pmu_overflow_handler.__already_done, align 1
  br i1 %.b75, label %land.rhs13.if.end46_crit_edge, label %if.then20, !prof !413

land.rhs13.if.end46_crit_edge:                    ; preds = %land.rhs13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then20:                                        ; preds = %land.rhs13
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @arm_ccn_pmu_overflow_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1174, i32 noundef 9, ptr noundef null) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then20, %land.rhs13.if.end46_crit_edge, %for.body.if.end46_crit_edge
  %brmerge = select i1 %tobool9.not, i1 true, i1 %tobool8.not
  br i1 %brmerge, label %if.end46.cleanup_crit_edge, label %if.end57

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @arm_ccn_pmu_event_update(ptr noundef nonnull %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end46.cleanup_crit_edge
  %inc = add nuw nsw i32 %idx.078, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %cleanup.cleanup59_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.cleanup59_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

cleanup59:                                        ; preds = %cleanup.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup59_crit_edge ], [ 1, %cleanup.cleanup59_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_ccn_pmu_event_update(ptr noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %add.ptr3 = getelementptr i8, ptr %1, i32 -412
  %prev_count5 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prev_count5, i32 noundef 8) #8
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %prev_count5) #8
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %call6 = tail call fastcc i64 @arm_ccn_pmu_read_counter(ptr noundef %add.ptr3, i32 noundef %3)
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count5, i32 noundef 8) #8
  %call.i22 = tail call i64 @generic_atomic64_xchg(ptr noundef %prev_count5, i64 noundef %call6) #8
  %cmp.not = icmp eq i64 %call.i22, %call.i
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp11 = icmp eq i32 %5, 8
  %cond = select i1 %cmp11, i32 40, i32 32
  %sh_prom = zext i32 %cond to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %sub12 = sub i64 %call6, %call.i
  %and = and i64 %sub12, %sub
  %count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 8) #8
  tail call void @generic_atomic64_add(i64 noundef %and, ptr noundef %count) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @arm_ccn_pmu_read_counter(ptr nocapture noundef readonly %ccn, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %idx)
  %cmp = icmp eq i32 %idx, 8
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !414
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !389
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.body
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 432
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !415
  %5 = and i32 %4, 16777216
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.cond.while.cond_crit_edge, label %do.body5

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.body5:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !416
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #8, !srcloc !389
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 404
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !390
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  %conv = zext i32 %11 to i64
  %shl = shl nuw nsw i64 %conv, 32
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %13, i32 400
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !390
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  %conv29 = zext i32 %15 to i64
  %or = or i64 %shl, %conv29
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base33 = getelementptr inbounds %struct.arm_ccn, ptr %ccn, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base33, align 4
  %mul = shl i32 %idx, 3
  %add = add i32 %mul, 256
  %add.ptr34 = getelementptr i8, ptr %17, i32 %add
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #8, !srcloc !390
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  %conv38 = zext i32 %19 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body5
  %res.0 = phi i64 [ %or, %do.body5 ], [ %conv38, %if.else ]
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_xchg(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_ccn_pmu_enable(ptr nocapture noundef readonly %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %pmu, i32 -376
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 424
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !420
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %5, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %3) #8, !srcloc !389
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_ccn_pmu_disable(ptr nocapture noundef readonly %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %pmu, i32 -376
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 424
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !422
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !423
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %5, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %3) #8, !srcloc !389
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_pmu_event_init(ptr nocapture noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %type3 = getelementptr inbounds %struct.pmu, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.not = icmp eq i32 %1, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup308_crit_edge

entry.cleanup308_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup308

if.end:                                           ; preds = %entry
  %add.ptr7 = getelementptr i8, ptr %3, i32 -412
  %sample_period = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 6
  %6 = ptrtoint ptr %sample_period to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sample_period, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_init, %if.then13)) #8
          to label %cleanup308 [label %if.then13], !srcloc !396

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug253, ptr noundef %9, ptr noundef nonnull @.str.73) #8
  br label %cleanup308

if.end15:                                         ; preds = %if.end
  %sample_type.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 4
  %10 = ptrtoint ptr %sample_type.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sample_type.i, align 8
  %and.i = and i64 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end35, label %do.body18

do.body18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_init, %if.then30)) #8
          to label %cleanup308 [label %if.then30], !srcloc !396

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug254, ptr noundef %13, ptr noundef nonnull @.str.74) #8
  br label %cleanup308

if.end35:                                         ; preds = %if.end15
  %cpu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 34
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp36 = icmp slt i32 %15, 0
  br i1 %cmp36, label %do.body38, label %if.end55

do.body38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_init, %if.then50)) #8
          to label %cleanup308 [label %if.then50], !srcloc !396

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug255, ptr noundef %17, ptr noundef nonnull @.str.75) #8
  br label %cleanup308

if.end55:                                         ; preds = %if.end35
  %cpu56 = getelementptr i8, ptr %3, i32 -12
  %18 = ptrtoint ptr %cpu56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu56, align 8
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cpu, align 4
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %21 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %config, align 8
  %23 = trunc i64 %22 to i32
  %conv = and i32 %23, 255
  %24 = lshr i32 %23, 8
  %conv63 = and i32 %24, 255
  %25 = lshr i32 %23, 16
  %conv68 = and i32 %25, 255
  %trunc = trunc i32 %24 to i8
  %26 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %trunc, label %sw.default [
    i8 1, label %sw.bb
    i8 8, label %sw.bb90
    i8 -1, label %if.end55.sw.epilog_crit_edge
  ]

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end55
  %mn_id = getelementptr i8, ptr %3, i32 164
  %27 = ptrtoint ptr %mn_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mn_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %28)
  %cmp69.not = icmp eq i32 %conv, %28
  br i1 %cmp69.not, label %sw.bb.sw.epilog_crit_edge, label %do.body72

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body72:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_init, %if.then84)) #8
          to label %cleanup308 [label %if.then84], !srcloc !396

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug256, ptr noundef %30, ptr noundef nonnull @.str.76, i32 noundef %conv) #8
  br label %cleanup308

sw.bb90:                                          ; preds = %if.end55
  %num_xps = getelementptr i8, ptr %3, i32 -388
  %31 = ptrtoint ptr %num_xps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_xps, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %32)
  %cmp91.not = icmp ult i32 %conv, %32
  br i1 %cmp91.not, label %sw.bb90.sw.epilog_crit_edge, label %do.body94

sw.bb90.sw.epilog_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body94:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_init, %if.then106)) #8
          to label %cleanup308 [label %if.then106], !srcloc !396

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug257, ptr noundef %34, ptr noundef nonnull @.str.77, i32 noundef %conv) #8
  br label %cleanup308

sw.default:                                       ; preds = %if.end55
  %num_nodes = getelementptr i8, ptr %3, i32 -396
  %35 = ptrtoint ptr %num_nodes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_nodes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %36)
  %cmp112.not = icmp ult i32 %conv, %36
  br i1 %cmp112.not, label %if.end132, label %do.body115

do.body115:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_init, %if.then127)) #8
          to label %cleanup308 [label %if.then127], !srcloc !396

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug258, ptr noundef %38, ptr noundef nonnull @.str.78, i32 noundef %conv) #8
  br label %cleanup308

if.end132:                                        ; preds = %sw.default
  %node = getelementptr i8, ptr %3, i32 -392
  %39 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %node, align 4
  %type133 = getelementptr %struct.arm_ccn_component, ptr %40, i32 %conv, i32 1
  %41 = ptrtoint ptr %type133 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv63, i32 %42)
  %cmp.i = icmp eq i32 %conv63, %42
  br i1 %cmp.i, label %if.end132.sw.epilog_crit_edge, label %if.end.i

if.end132.sw.epilog_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end132
  %43 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %trunc, label %if.end.i.do.body137_crit_edge [
    i8 20, label %if.end.i.sw.bb.i_crit_edge
    i8 21, label %if.end.i.sw.bb.i_crit_edge466
    i8 22, label %if.end.i.sw.bb.i_crit_edge467
    i8 24, label %if.end.i.sw.bb.i_crit_edge468
    i8 25, label %if.end.i.sw.bb.i_crit_edge469
    i8 26, label %if.end.i.sw.bb.i_crit_edge470
  ]

if.end.i.sw.bb.i_crit_edge470:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge469:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge468:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge467:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge466:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.do.body137_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body137

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge466, %if.end.i.sw.bb.i_crit_edge467, %if.end.i.sw.bb.i_crit_edge468, %if.end.i.sw.bb.i_crit_edge469, %if.end.i.sw.bb.i_crit_edge470
  %44 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %42, label %sw.bb.i.do.body137_crit_edge [
    i32 20, label %sw.bb.i.sw.epilog_crit_edge
    i32 21, label %sw.bb.i.sw.epilog_crit_edge471
    i32 22, label %sw.bb.i.sw.epilog_crit_edge472
    i32 24, label %sw.bb.i.sw.epilog_crit_edge473
    i32 25, label %sw.bb.i.sw.epilog_crit_edge474
    i32 26, label %sw.bb.i.sw.epilog_crit_edge475
  ]

sw.bb.i.sw.epilog_crit_edge475:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i.sw.epilog_crit_edge474:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i.sw.epilog_crit_edge473:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i.sw.epilog_crit_edge472:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i.sw.epilog_crit_edge471:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i.do.body137_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body137

do.body137:                                       ; preds = %sw.bb.i.do.body137_crit_edge, %if.end.i.do.body137_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_init, %if.then149)) #8
          to label %cleanup308 [label %if.then149], !srcloc !396

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug259, ptr noundef %46, ptr noundef nonnull @.str.79, i32 noundef %conv63, i32 noundef %conv) #8
  br label %cleanup308

sw.epilog:                                        ; preds = %sw.bb.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge471, %sw.bb.i.sw.epilog_crit_edge472, %sw.bb.i.sw.epilog_crit_edge473, %sw.bb.i.sw.epilog_crit_edge474, %sw.bb.i.sw.epilog_crit_edge475, %if.end132.sw.epilog_crit_edge, %sw.bb90.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end55.sw.epilog_crit_edge
  %47 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %config, align 8
  %49 = trunc i64 %48 to i32
  %50 = lshr i32 %49, 24
  %conv165 = and i32 %50, 3
  %51 = lshr i32 %49, 26
  %conv170 = and i32 %51, 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %i.0450 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body_crit_edge ]
  %type171 = getelementptr [51 x %struct.arm_ccn_pmu_event], ptr @arm_ccn_pmu_events, i32 0, i32 %i.0450, i32 1
  %52 = ptrtoint ptr %type171 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type171, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv63, i32 %53)
  %cmp.i416 = icmp eq i32 %conv63, %53
  br i1 %cmp.i416, label %for.body.if.end175_crit_edge, label %if.end.i417

for.body.if.end175_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.end.i417:                                      ; preds = %for.body
  %54 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %trunc, label %if.end.i417.for.inc_crit_edge [
    i8 20, label %if.end.i417.sw.bb.i418_crit_edge
    i8 21, label %if.end.i417.sw.bb.i418_crit_edge476
    i8 22, label %if.end.i417.sw.bb.i418_crit_edge477
    i8 24, label %if.end.i417.sw.bb.i418_crit_edge478
    i8 25, label %if.end.i417.sw.bb.i418_crit_edge479
    i8 26, label %if.end.i417.sw.bb.i418_crit_edge480
  ]

if.end.i417.sw.bb.i418_crit_edge480:              ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i418

if.end.i417.sw.bb.i418_crit_edge479:              ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i418

if.end.i417.sw.bb.i418_crit_edge478:              ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i418

if.end.i417.sw.bb.i418_crit_edge477:              ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i418

if.end.i417.sw.bb.i418_crit_edge476:              ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i418

if.end.i417.sw.bb.i418_crit_edge:                 ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i418

if.end.i417.for.inc_crit_edge:                    ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb.i418:                                       ; preds = %if.end.i417.sw.bb.i418_crit_edge, %if.end.i417.sw.bb.i418_crit_edge476, %if.end.i417.sw.bb.i418_crit_edge477, %if.end.i417.sw.bb.i418_crit_edge478, %if.end.i417.sw.bb.i418_crit_edge479, %if.end.i417.sw.bb.i418_crit_edge480
  %55 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %53, label %sw.bb.i418.for.inc_crit_edge [
    i32 20, label %sw.bb.i418.if.end175_crit_edge
    i32 21, label %sw.bb.i418.if.end175_crit_edge481
    i32 22, label %sw.bb.i418.if.end175_crit_edge482
    i32 24, label %sw.bb.i418.if.end175_crit_edge483
    i32 25, label %sw.bb.i418.if.end175_crit_edge484
    i32 26, label %sw.bb.i418.if.end175_crit_edge485
  ]

sw.bb.i418.if.end175_crit_edge485:                ; preds = %sw.bb.i418
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

sw.bb.i418.if.end175_crit_edge484:                ; preds = %sw.bb.i418
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

sw.bb.i418.if.end175_crit_edge483:                ; preds = %sw.bb.i418
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

sw.bb.i418.if.end175_crit_edge482:                ; preds = %sw.bb.i418
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

sw.bb.i418.if.end175_crit_edge481:                ; preds = %sw.bb.i418
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

sw.bb.i418.if.end175_crit_edge:                   ; preds = %sw.bb.i418
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

sw.bb.i418.for.inc_crit_edge:                     ; preds = %sw.bb.i418
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end175:                                        ; preds = %sw.bb.i418.if.end175_crit_edge, %sw.bb.i418.if.end175_crit_edge481, %sw.bb.i418.if.end175_crit_edge482, %sw.bb.i418.if.end175_crit_edge483, %sw.bb.i418.if.end175_crit_edge484, %sw.bb.i418.if.end175_crit_edge485, %for.body.if.end175_crit_edge
  %event176 = getelementptr [51 x %struct.arm_ccn_pmu_event], ptr @arm_ccn_pmu_events, i32 0, i32 %i.0450, i32 2
  %56 = ptrtoint ptr %event176 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %event176, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv68, i32 %57)
  %cmp177.not = icmp eq i32 %conv68, %57
  br i1 %cmp177.not, label %if.end180, label %if.end175.for.inc_crit_edge

if.end175.for.inc_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end180:                                        ; preds = %if.end175
  %num_ports = getelementptr [51 x %struct.arm_ccn_pmu_event], ptr @arm_ccn_pmu_events, i32 0, i32 %i.0450, i32 3
  %58 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool181.not = icmp eq i32 %59, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv165, i32 %59)
  %cmp183.not = icmp ult i32 %conv165, %59
  %or.cond385 = select i1 %tobool181.not, i1 true, i1 %cmp183.not
  br i1 %or.cond385, label %if.end203, label %do.body186

do.body186:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_init, %if.then198)) #8
          to label %cleanup308 [label %if.then198], !srcloc !396

if.then198:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug260, ptr noundef %61, ptr noundef nonnull @.str.80, i32 noundef %conv165, i32 noundef %conv) #8
  br label %cleanup308

if.end203:                                        ; preds = %if.end180
  %num_vcs = getelementptr [51 x %struct.arm_ccn_pmu_event], ptr @arm_ccn_pmu_events, i32 0, i32 %i.0450, i32 4
  %62 = ptrtoint ptr %num_vcs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_vcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool204.not = icmp eq i32 %63, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv170, i32 %63)
  %cmp207.not = icmp ult i32 %conv170, %63
  %or.cond386 = select i1 %tobool204.not, i1 true, i1 %cmp207.not
  br i1 %or.cond386, label %if.end249, label %do.body210

do.body210:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_init, %if.then222)) #8
          to label %cleanup308 [label %if.then222], !srcloc !396

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug261, ptr noundef %65, ptr noundef nonnull @.str.81, i32 noundef %conv170, i32 noundef %conv) #8
  br label %cleanup308

for.inc:                                          ; preds = %if.end175.for.inc_crit_edge, %sw.bb.i418.for.inc_crit_edge, %if.end.i417.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0450, 1
  %cmp155 = icmp ult i32 %i.0450, 50
  br i1 %cmp155, label %for.inc.for.body_crit_edge, label %do.body232

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body232:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_init, %if.then244)) #8
          to label %cleanup308 [label %if.then244], !srcloc !396

if.then244:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug262, ptr noundef %67, ptr noundef nonnull @.str.82, i32 noundef %conv68, i32 noundef %conv) #8
  br label %cleanup308

if.end249:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %conv68)
  %cmp250 = icmp ne i32 %conv68, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv63)
  %cmp253.not = icmp eq i32 %conv63, 8
  %or.cond387 = select i1 %cmp250, i1 true, i1 %cmp253.not
  br i1 %or.cond387, label %if.end249.if.end261_crit_edge, label %if.then255

if.end249.if.end261_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end261

if.then255:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  %div.i443 = lshr i32 %conv, 1
  %68 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %config, align 8
  %and.i422 = and i64 %69, -50397184
  %rem.i = shl i32 %23, 24
  %shl2.i = and i32 %rem.i, 16777216
  %or.i = or i32 %div.i443, %shl2.i
  %or3.i = or i32 %or.i, 2048
  %conv.i = zext i32 %or3.i to i64
  %or4.i = or i64 %and.i422, %conv.i
  store i64 %or4.i, ptr %config, align 8
  br label %if.end261

if.end261:                                        ; preds = %if.then255, %if.end249.if.end261_crit_edge
  %group_leader = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 11
  %70 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %group_leader, align 4
  %pmu262 = getelementptr inbounds %struct.perf_event, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %pmu262 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pmu262, align 8
  %74 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pmu, align 8
  %cmp264.not = icmp eq ptr %73, %75
  br i1 %cmp264.not, label %if.end261.if.end271_crit_edge, label %land.lhs.true266

if.end261.if.end271_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end271

land.lhs.true266:                                 ; preds = %if.end261
  %event_caps.i = getelementptr inbounds %struct.perf_event, ptr %71, i32 0, i32 9
  %76 = ptrtoint ptr %event_caps.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %event_caps.i, align 4
  %and.i423 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i423)
  %tobool269.not = icmp eq i32 %and.i423, 0
  br i1 %tobool269.not, label %land.lhs.true266.cleanup308_crit_edge, label %land.lhs.true266.if.end271_crit_edge

land.lhs.true266.if.end271_crit_edge:             ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end271

land.lhs.true266.cleanup308_crit_edge:            ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup308

if.end271:                                        ; preds = %land.lhs.true266.if.end271_crit_edge, %if.end261.if.end271_crit_edge
  %group_leader273 = getelementptr inbounds %struct.perf_event, ptr %71, i32 0, i32 11
  %78 = ptrtoint ptr %group_leader273 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %group_leader273, align 4
  %cmp275 = icmp eq ptr %79, %71
  br i1 %cmp275, label %if.then277, label %if.end271.cleanup308_crit_edge

if.end271.cleanup308_crit_edge:                   ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup308

if.then277:                                       ; preds = %if.end271
  %sibling_list = getelementptr inbounds %struct.perf_event, ptr %71, i32 0, i32 1
  %80 = ptrtoint ptr %sibling_list to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn452 = load ptr, ptr %sibling_list, align 8
  %cmp286.not453 = icmp eq ptr %.pn452, %sibling_list
  br i1 %cmp286.not453, label %if.then277.cleanup308_crit_edge, label %if.then277.for.body290_crit_edge

if.then277.for.body290_crit_edge:                 ; preds = %if.then277
  br label %for.body290

if.then277.cleanup308_crit_edge:                  ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup308

for.body290:                                      ; preds = %for.inc300.for.body290_crit_edge, %if.then277.for.body290_crit_edge
  %.pn454 = phi ptr [ %.pn, %for.inc300.for.body290_crit_edge ], [ %.pn452, %if.then277.for.body290_crit_edge ]
  %pmu291 = getelementptr i8, ptr %.pn454, i32 80
  %81 = ptrtoint ptr %pmu291 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pmu291, align 8
  %cmp293.not = icmp eq ptr %82, %75
  br i1 %cmp293.not, label %for.body290.for.inc300_crit_edge, label %land.lhs.true295

for.body290.for.inc300_crit_edge:                 ; preds = %for.body290
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc300

land.lhs.true295:                                 ; preds = %for.body290
  %event_caps.i424 = getelementptr i8, ptr %.pn454, i32 68
  %83 = ptrtoint ptr %event_caps.i424 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %event_caps.i424, align 4
  %and.i425 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i425)
  %tobool297.not = icmp eq i32 %and.i425, 0
  br i1 %tobool297.not, label %land.lhs.true295.cleanup308_crit_edge, label %land.lhs.true295.for.inc300_crit_edge

land.lhs.true295.for.inc300_crit_edge:            ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc300

land.lhs.true295.cleanup308_crit_edge:            ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup308

for.inc300:                                       ; preds = %land.lhs.true295.for.inc300_crit_edge, %for.body290.for.inc300_crit_edge
  %85 = ptrtoint ptr %.pn454 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn = load ptr, ptr %.pn454, align 8
  %cmp286.not = icmp eq ptr %.pn, %sibling_list
  br i1 %cmp286.not, label %for.inc300.cleanup308_crit_edge, label %for.inc300.for.body290_crit_edge

for.inc300.for.body290_crit_edge:                 ; preds = %for.inc300
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body290

for.inc300.cleanup308_crit_edge:                  ; preds = %for.inc300
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup308

cleanup308:                                       ; preds = %for.inc300.cleanup308_crit_edge, %land.lhs.true295.cleanup308_crit_edge, %if.then277.cleanup308_crit_edge, %if.end271.cleanup308_crit_edge, %land.lhs.true266.cleanup308_crit_edge, %if.then244, %do.body232, %if.then222, %do.body210, %if.then198, %do.body186, %if.then149, %do.body137, %if.then127, %do.body115, %if.then106, %do.body94, %if.then84, %do.body72, %if.then50, %do.body38, %if.then30, %do.body18, %if.then13, %do.body, %entry.cleanup308_crit_edge
  %retval.2 = phi i32 [ -2, %entry.cleanup308_crit_edge ], [ -95, %if.then13 ], [ -22, %if.then30 ], [ -95, %if.then50 ], [ -22, %if.then84 ], [ -22, %if.then106 ], [ -22, %if.then127 ], [ -22, %if.then149 ], [ -22, %if.then244 ], [ -22, %land.lhs.true266.cleanup308_crit_edge ], [ 0, %if.end271.cleanup308_crit_edge ], [ -95, %do.body ], [ -22, %do.body18 ], [ -95, %do.body38 ], [ -22, %do.body72 ], [ -22, %do.body94 ], [ -22, %do.body115 ], [ -22, %do.body137 ], [ -22, %do.body210 ], [ -22, %do.body186 ], [ -22, %if.then222 ], [ -22, %if.then198 ], [ -22, %do.body232 ], [ 0, %if.then277.cleanup308_crit_edge ], [ -22, %land.lhs.true295.cleanup308_crit_edge ], [ 0, %for.inc300.cleanup308_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_pmu_event_add(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %call = tail call fastcc i32 @arm_ccn_pmu_event_alloc(ptr noundef %event)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr i8, ptr %1, i32 -404
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %cond.false.i.i.i, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

cond.false.i.i.i:                                 ; preds = %if.end
  %pmu_counters_mask.i = getelementptr i8, ptr %1, i32 -328
  %4 = ptrtoint ptr %pmu_counters_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pmu_counters_mask.i, align 4
  %and3.i.i = and i32 %5, 511
  %call.i.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and3.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i)
  %cmp = icmp eq i32 %call.i.i.i.i, 1
  br i1 %cmp, label %if.then7, label %cond.false.i.i.i.if.end9_crit_edge

cond.false.i.i.i.if.end9_crit_edge:               ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %hrtimer = getelementptr i8, ptr %1, i32 -60
  %6 = load i32, ptr @arm_ccn_pmu_poll_period_us, align 4
  %conv.i = zext i32 %6 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  tail call void @hrtimer_start_range_ns(ptr noundef %hrtimer, i64 noundef %mul.i, i64 noundef 0, i32 noundef 3) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %cond.false.i.i.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp.i = icmp eq i32 %8, 8
  br i1 %cmp.i, label %if.end9.arm_ccn_pmu_event_config.exit_crit_edge, label %if.end.i

if.end9.arm_ccn_pmu_event_config.exit_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_ccn_pmu_event_config.exit

if.end.i:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pmu, align 8
  %config.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %config.i, align 8
  %13 = and i64 %12, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %13)
  %cmp5.i = icmp eq i64 %13, 2048
  %14 = trunc i64 %12 to i32
  %conv.i22 = and i32 %14, 255
  %div.i101102103.i = lshr i32 %14, 1
  %div.i101.zext.i = and i32 %div.i101102103.i, 127
  %xp.0.i = select i1 %cmp5.i, i32 %conv.i22, i32 %div.i101.zext.i
  %config_lock.i = getelementptr i8, ptr %10, i32 -372
  tail call void @_raw_spin_lock(ptr noundef %config_lock.i) #8
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx.i, align 4
  %div.i = sdiv i32 %16, 4
  %mul.i23 = shl nsw i32 %div.i, 2
  %base.i = getelementptr i8, ptr %10, i32 -376
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %18, i32 %mul.i23
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #8, !srcloc !390
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !424
  %21 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx.i, align 4
  %rem.i = srem i32 %22, 4
  %mul25.i = shl nsw i32 %rem.i, 3
  %shl.i = shl i32 255, %mul25.i
  %neg.i = xor i32 %shl.i, -1
  %and26.i = and i32 %20, %neg.i
  %shl30.i = shl i32 %xp.0.i, %mul25.i
  %or.i = or i32 %and26.i, %shl30.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !425
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %25, i32 %mul.i23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %23) #8, !srcloc !389
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %config.i, align 8
  %28 = and i64 %27, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %28)
  %cmp39.i = icmp eq i64 %28, 2048
  br i1 %cmp39.i, label %if.then41.i, label %if.else51.i

if.then41.i:                                      ; preds = %if.end.i
  %29 = and i64 %27, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 16646144, i64 %29)
  %cmp46.i = icmp eq i64 %29, 16646144
  %30 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pmu, align 8
  %pmu_counters.i.i = getelementptr i8, ptr %31, i32 -324
  %32 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx.i, align 4
  %arrayidx.i.i = getelementptr [9 x %struct.anon.97], ptr %pmu_counters.i.i, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 8
  %config_base.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %config_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %config_base.i.i, align 8
  br i1 %cmp46.i, label %if.then48.i, label %if.else49.i

if.then48.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 9
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %38, align 8
  %41 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 10
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %41, align 8
  %cmp_mask.i.i = getelementptr i8, ptr %31, i32 -252
  %shr.i.i = lshr i64 %27, 30
  %44 = trunc i64 %shr.i.i to i32
  %idxprom.i.i = and i32 %44, 15
  %arrayidx9.i.i = getelementptr [12 x %struct.anon.98], ptr %cmp_mask.i.i, i32 0, i32 %idxprom.i.i
  %45 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx9.i.i, align 8
  %h.i.i = getelementptr inbounds %struct.anon.98, ptr %arrayidx9.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %h.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %h.i.i, align 8
  %add.i.i = add i32 %37, 2
  %event_base.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %49 = ptrtoint ptr %event_base.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i.i, ptr %event_base.i.i, align 4
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %35, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %51, i32 776
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #8, !srcloc !390
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !426
  %mul.i.i = shl i32 %37, 3
  %shl.i.i = shl nuw i32 1, %mul.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and22.i.i = and i32 %53, %neg.i.i
  %54 = ptrtoint ptr %config.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %config.i, align 8
  %shr25.i.i = lshr i64 %55, 29
  %and26.i.i = and i64 %shr25.i.i, 1
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shl29.i.i = shl nuw i64 %and26.i.i, %sh_prom.i.i
  %56 = trunc i64 %shl29.i.i to i32
  %conv30.i.i = or i32 %and22.i.i, %56
  %add32.i.i = or i32 %mul.i.i, 1
  %shl33.i.i = shl nuw i32 1, %add32.i.i
  %neg34.i.i = xor i32 %shl33.i.i, -1
  %and35.i.i = and i32 %conv30.i.i, %neg34.i.i
  %shr38.i.i = lshr i64 %55, 24
  %and39.i.i = and i64 %shr38.i.i, 3
  %sh_prom42.i.i = zext i32 %add32.i.i to i64
  %shl43.i.i = shl i64 %and39.i.i, %sh_prom42.i.i
  %57 = trunc i64 %shl43.i.i to i32
  %conv46.i.i = or i32 %and35.i.i, %57
  %add48.i.i = or i32 %mul.i.i, 2
  %shl49.i.i = shl i32 3, %add48.i.i
  %neg50.i.i = xor i32 %shl49.i.i, -1
  %and51.i.i = and i32 %conv46.i.i, %neg50.i.i
  %shr54.i.i = lshr i64 %55, 26
  %and55.i.i = and i64 %shr54.i.i, 7
  %sh_prom58.i.i = zext i32 %add48.i.i to i64
  %shl59.i.i = shl i64 %and55.i.i, %sh_prom58.i.i
  %58 = trunc i64 %shl59.i.i to i32
  %conv62.i.i = or i32 %and51.i.i, %58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !427
  tail call void @arm_heavy_mb() #8
  %59 = tail call i32 @llvm.bswap.i32(i32 %conv62.i.i) #8
  %60 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %35, align 4
  %add.ptr64.i.i = getelementptr i8, ptr %61, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i.i, i32 %59) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !428
  tail call void @arm_heavy_mb() #8
  %conv69.i.i = trunc i64 %40 to i32
  %62 = tail call i32 @llvm.bswap.i32(i32 %conv69.i.i) #8
  %63 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %35, align 4
  %mul71.i.i = shl i32 %37, 6
  %add72.i.i = add i32 %mul71.i.i, 784
  %add.ptr73.i.i = getelementptr i8, ptr %64, i32 %add72.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i.i, i32 %62) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !429
  tail call void @arm_heavy_mb() #8
  %shr77.i.i = lshr i64 %40, 32
  %65 = trunc i64 %shr77.i.i to i32
  %conv79.i.i = and i32 %65, 2147483647
  %66 = tail call i32 @llvm.bswap.i32(i32 %conv79.i.i) #8
  %67 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %35, align 4
  %add.ptr83.i.i = getelementptr i8, ptr %68, i32 %add72.i.i
  %add.ptr84.i.i = getelementptr i8, ptr %add.ptr83.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i, i32 %66) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !430
  tail call void @arm_heavy_mb() #8
  %conv89.i.i = trunc i64 %43 to i32
  %69 = tail call i32 @llvm.bswap.i32(i32 %conv89.i.i) #8
  %70 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %35, align 4
  %add92.i.i = add i32 %mul71.i.i, 792
  %add.ptr93.i.i = getelementptr i8, ptr %71, i32 %add92.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i.i, i32 %69) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !431
  tail call void @arm_heavy_mb() #8
  %shr97.i.i = lshr i64 %43, 32
  %72 = trunc i64 %shr97.i.i to i32
  %conv99.i.i = and i32 %72, 268435455
  %73 = tail call i32 @llvm.bswap.i32(i32 %conv99.i.i) #8
  %74 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %35, align 4
  %add.ptr103.i.i = getelementptr i8, ptr %75, i32 %add92.i.i
  %add.ptr104.i.i = getelementptr i8, ptr %add.ptr103.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104.i.i, i32 %73) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !432
  tail call void @arm_heavy_mb() #8
  %conv109.i.i = trunc i64 %46 to i32
  %76 = tail call i32 @llvm.bswap.i32(i32 %conv109.i.i) #8
  %77 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %35, align 4
  %add112.i.i = add i32 %mul71.i.i, 800
  %add.ptr113.i.i = getelementptr i8, ptr %78, i32 %add112.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.i.i, i32 %76) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !433
  tail call void @arm_heavy_mb() #8
  %shr117.i.i = lshr i64 %46, 32
  %79 = trunc i64 %shr117.i.i to i32
  %conv119.i.i = and i32 %79, 2147483647
  %80 = tail call i32 @llvm.bswap.i32(i32 %conv119.i.i) #8
  %81 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %35, align 4
  %add.ptr123.i.i = getelementptr i8, ptr %82, i32 %add112.i.i
  %add.ptr124.i.i = getelementptr i8, ptr %add.ptr123.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i.i, i32 %80) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !434
  tail call void @arm_heavy_mb() #8
  %conv129.i.i = trunc i64 %48 to i32
  %83 = tail call i32 @llvm.bswap.i32(i32 %conv129.i.i) #8
  %84 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %35, align 4
  %add132.i.i = add i32 %mul71.i.i, 808
  %add.ptr133.i.i = getelementptr i8, ptr %85, i32 %add132.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133.i.i, i32 %83) #8, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !435
  tail call void @arm_heavy_mb() #8
  %shr137.i.i = lshr i64 %48, 32
  %86 = trunc i64 %shr137.i.i to i32
  %conv139.i.i = and i32 %86, 268435455
  %87 = tail call i32 @llvm.bswap.i32(i32 %conv139.i.i) #8
  %88 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %35, align 4
  %add.ptr143.i.i = getelementptr i8, ptr %89, i32 %add132.i.i
  %add.ptr144.i.i = getelementptr i8, ptr %add.ptr143.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144.i.i, i32 %87) #8, !srcloc !389
  br label %if.end52.i

if.else49.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i82.i = add i32 %37, 4
  %event_base.i83.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %90 = ptrtoint ptr %event_base.i83.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add.i82.i, ptr %event_base.i83.i, align 4
  %91 = lshr i64 %27, 22
  %shl.i85.i = and i64 %91, 112
  %92 = lshr i64 %27, 21
  %shl10.i.i = and i64 %92, 24
  %or.i.i = or i64 %shl.i85.i, %shl10.i.i
  %shr13.i.i = lshr i64 %27, 16
  %and14.i.i = and i64 %shr13.i.i, 255
  %or16.i.i = or i64 %or.i.i, %and14.i.i
  %conv.i.i = trunc i64 %or16.i.i to i32
  %93 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %35, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %94, i32 1536
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #8, !srcloc !390
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !436
  %97 = ptrtoint ptr %config_base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %config_base.i.i, align 8
  %mul.i86.i = mul i32 %98, 7
  %shl21.i.i = shl i32 63, %mul.i86.i
  %neg.i87.i = xor i32 %shl21.i.i, -1
  %and22.i88.i = and i32 %96, %neg.i87.i
  %shl25.i.i = shl i32 %conv.i.i, %mul.i86.i
  %or26.i.i = or i32 %and22.i88.i, %shl25.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !437
  tail call void @arm_heavy_mb() #8
  %99 = tail call i32 @llvm.bswap.i32(i32 %or26.i.i) #8
  %100 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %35, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %101, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 %99) #8, !srcloc !389
  br label %if.end52.i

if.else51.i:                                      ; preds = %if.end.i
  %102 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pmu, align 8
  %pmu_counters.i90.i = getelementptr i8, ptr %103, i32 -324
  %104 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %idx.i, align 4
  %arrayidx.i92.i = getelementptr [9 x %struct.anon.97], ptr %pmu_counters.i90.i, i32 0, i32 %105
  %106 = ptrtoint ptr %arrayidx.i92.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i92.i, align 8
  %rem.i100.lhs.trunc.i.i = trunc i64 %27 to i32
  %rem.i100101.i.i = shl i32 %rem.i100.lhs.trunc.i.i, 2
  %mul.i94.i = and i32 %rem.i100101.i.i, 4
  %config_base.i95.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %108 = ptrtoint ptr %config_base.i95.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %config_base.i95.i, align 8
  %add.i96.i = or i32 %mul.i94.i, 8
  %add11.i.i = add i32 %add.i96.i, %109
  %event_base.i97.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %110 = ptrtoint ptr %event_base.i97.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add11.i.i, ptr %event_base.i97.i, align 4
  %111 = lshr i64 %27, 8
  %trunc.i.i = trunc i64 %111 to i8
  %112 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.161)
  switch i8 %trunc.i.i, label %do.end42.i.i [
    i8 4, label %if.else51.i.if.end57.i.i_crit_edge
    i8 16, label %if.else51.i.if.end57.i.i_crit_edge24
    i8 22, label %if.else51.i.if.end57.i.i_crit_edge25
    i8 20, label %if.else51.i.if.end57.i.i_crit_edge26
    i8 21, label %if.else51.i.if.end57.i.i_crit_edge27
    i8 26, label %if.else51.i.if.end57.i.i_crit_edge28
    i8 24, label %if.else51.i.if.end57.i.i_crit_edge29
    i8 25, label %if.else51.i.if.end57.i.i_crit_edge30
  ]

if.else51.i.if.end57.i.i_crit_edge30:             ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

if.else51.i.if.end57.i.i_crit_edge29:             ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

if.else51.i.if.end57.i.i_crit_edge28:             ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

if.else51.i.if.end57.i.i_crit_edge27:             ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

if.else51.i.if.end57.i.i_crit_edge26:             ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

if.else51.i.if.end57.i.i_crit_edge25:             ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

if.else51.i.if.end57.i.i_crit_edge24:             ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

if.else51.i.if.end57.i.i_crit_edge:               ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

do.end42.i.i:                                     ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1037, i32 noundef 9, ptr noundef null) #8
  br label %if.end52.i

if.end57.i.i:                                     ; preds = %if.else51.i.if.end57.i.i_crit_edge, %if.else51.i.if.end57.i.i_crit_edge24, %if.else51.i.if.end57.i.i_crit_edge25, %if.else51.i.if.end57.i.i_crit_edge26, %if.else51.i.if.end57.i.i_crit_edge27, %if.else51.i.if.end57.i.i_crit_edge28, %if.else51.i.if.end57.i.i_crit_edge29, %if.else51.i.if.end57.i.i_crit_edge30
  %113 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %107, align 4
  %add.ptr58.i.i = getelementptr i8, ptr %114, i32 1536
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i.i) #8, !srcloc !390
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !438
  %117 = ptrtoint ptr %config_base.i95.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %config_base.i95.i, align 8
  %mul63.i.i = shl i32 %118, 2
  %shl.i98.i = shl i32 15, %mul63.i.i
  %neg.i99.i = xor i32 %shl.i98.i, -1
  %and64.i.i = and i32 %116, %neg.i99.i
  %119 = ptrtoint ptr %config.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %config.i, align 8
  %shr67.i.i = lshr i64 %120, 16
  %and68.i.i = and i64 %shr67.i.i, 255
  %sh_prom.i100.i = zext i32 %mul63.i.i to i64
  %shl71.i.i = shl i64 %and68.i.i, %sh_prom.i100.i
  %121 = trunc i64 %shl71.i.i to i32
  %conv73.i.i = or i32 %and64.i.i, %121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !439
  tail call void @arm_heavy_mb() #8
  %122 = tail call i32 @llvm.bswap.i32(i32 %conv73.i.i) #8
  %123 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %107, align 4
  %add.ptr78.i.i = getelementptr i8, ptr %124, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i.i, i32 %122) #8, !srcloc !389
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end57.i.i, %do.end42.i.i, %if.else49.i, %if.then48.i
  tail call void @_raw_spin_unlock(ptr noundef %config_lock.i) #8
  br label %arm_ccn_pmu_event_config.exit

arm_ccn_pmu_event_config.exit:                    ; preds = %if.end52.i, %if.end9.arm_ccn_pmu_event_config.exit_crit_edge
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %125 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %state, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %arm_ccn_pmu_event_config.exit.cleanup_crit_edge, label %if.then11

arm_ccn_pmu_event_config.exit.cleanup_crit_edge:  ; preds = %arm_ccn_pmu_event_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %arm_ccn_pmu_event_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @arm_ccn_pmu_event_start(ptr noundef %event, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %arm_ccn_pmu_event_config.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_ccn_pmu_event_del(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  tail call void @arm_ccn_pmu_event_stop(ptr noundef %event, i32 noundef 4)
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp.i = icmp eq i32 %5, 8
  br i1 %cmp.i, label %entry.arm_ccn_pmu_event_release.exit_crit_edge, label %if.else.i

entry.arm_ccn_pmu_event_release.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_ccn_pmu_event_release.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pmu_counters.i = getelementptr i8, ptr %3, i32 -324
  %arrayidx.i = getelementptr [9 x %struct.anon.97], ptr %pmu_counters.i, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %config.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %config.i, align 8
  %10 = and i64 %9, 16776960
  call void @__sanitizer_cov_trace_const_cmp8(i64 16648192, i64 %10)
  %11 = icmp eq i64 %10, 16648192
  %config_base.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %config_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config_base.i, align 8
  %pmu_events_mask.i = getelementptr inbounds %struct.arm_ccn_component, ptr %7, i32 0, i32 2
  %14 = getelementptr inbounds %struct.arm_ccn_component, ptr %7, i32 0, i32 3
  %pmu_events_mask.sink.i = select i1 %11, ptr %14, ptr %pmu_events_mask.i
  tail call void @_clear_bit(i32 noundef %13, ptr noundef %pmu_events_mask.sink.i) #8
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx.i, align 4
  br label %arm_ccn_pmu_event_release.exit

arm_ccn_pmu_event_release.exit:                   ; preds = %if.else.i, %entry.arm_ccn_pmu_event_release.exit_crit_edge
  %.sink.i = phi i32 [ %16, %if.else.i ], [ 8, %entry.arm_ccn_pmu_event_release.exit_crit_edge ]
  %pmu_counters_mask21.i = getelementptr i8, ptr %3, i32 -328
  tail call void @_clear_bit(i32 noundef %.sink.i, ptr noundef %pmu_counters_mask21.i) #8
  %pmu_counters25.i = getelementptr i8, ptr %3, i32 -324
  %17 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx.i, align 4
  %arrayidx27.i = getelementptr [9 x %struct.anon.97], ptr %pmu_counters25.i, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx27.i, align 8
  %20 = load i32, ptr %idx.i, align 4
  %arrayidx32.i = getelementptr [9 x %struct.anon.97], ptr %pmu_counters25.i, i32 0, i32 %20
  %event33.i = getelementptr inbounds %struct.anon.97, ptr %arrayidx32.i, i32 0, i32 1
  %21 = ptrtoint ptr %event33.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %event33.i, align 4
  %irq = getelementptr i8, ptr %1, i32 -404
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %cond.false.i.i.i, label %arm_ccn_pmu_event_release.exit.if.end_crit_edge

arm_ccn_pmu_event_release.exit.if.end_crit_edge:  ; preds = %arm_ccn_pmu_event_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false.i.i.i:                                 ; preds = %arm_ccn_pmu_event_release.exit
  %pmu_counters_mask.i = getelementptr i8, ptr %1, i32 -328
  %24 = ptrtoint ptr %pmu_counters_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pmu_counters_mask.i, align 4
  %and3.i.i = and i32 %25, 511
  %call.i.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and3.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp, label %if.then, label %cond.false.i.i.i.if.end_crit_edge

cond.false.i.i.i.if.end_crit_edge:                ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %hrtimer = getelementptr i8, ptr %1, i32 -60
  %call4 = tail call i32 @hrtimer_cancel(ptr noundef %hrtimer) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false.i.i.i.if.end_crit_edge, %arm_ccn_pmu_event_release.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_ccn_pmu_event_start(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %add.ptr3 = getelementptr i8, ptr %1, i32 -412
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %call = tail call fastcc i64 @arm_ccn_pmu_read_counter(ptr noundef %add.ptr3, i32 noundef %3)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %prev_count, i64 noundef %call) #8
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.i = icmp eq i32 %6, 8
  br i1 %cmp.i, label %entry.arm_ccn_pmu_xp_dt_config.exit_crit_edge, label %if.end.i

entry.arm_ccn_pmu_xp_dt_config.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_ccn_pmu_xp_dt_config.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pmu, align 8
  %config.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %config.i, align 8
  %11 = and i64 %10, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %11)
  %cmp5.i = icmp eq i64 %11, 2048
  %xp7.i = getelementptr i8, ptr %8, i32 -384
  %12 = ptrtoint ptr %xp7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xp7.i, align 4
  %14 = trunc i64 %10 to i32
  %div.i525354.i = lshr i32 %14, 1
  %div.i52.zext.i = and i32 %div.i525354.i, 127
  %idxprom.i = and i32 %14, 255
  %div.i52.zext.sink.i = select i1 %cmp5.i, i32 %idxprom.i, i32 %div.i52.zext.i
  %arrayidx17.i = getelementptr %struct.arm_ccn_component, ptr %13, i32 %div.i52.zext.sink.i
  %event_base.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %event_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %event_base.i, align 4
  %config_lock.i = getelementptr i8, ptr %8, i32 -372
  tail call void @_raw_spin_lock(ptr noundef %config_lock.i) #8
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx17.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %18, i32 768
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #8, !srcloc !390
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !440
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx, align 4
  %mul.i = shl i32 %22, 2
  %shl.i = shl i32 15, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and27.i = and i32 %20, %neg.i
  %shl30.i = shl i32 %16, %mul.i
  %or.i = or i32 %and27.i, %shl30.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !441
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx17.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %25, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %23) #8, !srcloc !389
  tail call void @_raw_spin_unlock(ptr noundef %config_lock.i) #8
  br label %arm_ccn_pmu_xp_dt_config.exit

arm_ccn_pmu_xp_dt_config.exit:                    ; preds = %if.end.i, %entry.arm_ccn_pmu_xp_dt_config.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_ccn_pmu_event_stop(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp eq i32 %1, 8
  br i1 %cmp.i, label %entry.arm_ccn_pmu_xp_dt_config.exit_crit_edge, label %if.end.i

entry.arm_ccn_pmu_xp_dt_config.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_ccn_pmu_xp_dt_config.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu.i, align 8
  %config.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %config.i, align 8
  %6 = and i64 %5, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %6)
  %cmp5.i = icmp eq i64 %6, 2048
  %xp7.i = getelementptr i8, ptr %3, i32 -384
  %7 = ptrtoint ptr %xp7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xp7.i, align 4
  %9 = trunc i64 %5 to i32
  %div.i525354.i = lshr i32 %9, 1
  %div.i52.zext.i = and i32 %div.i525354.i, 127
  %idxprom.i = and i32 %9, 255
  %div.i52.zext.sink.i = select i1 %cmp5.i, i32 %idxprom.i, i32 %div.i52.zext.i
  %arrayidx17.i = getelementptr %struct.arm_ccn_component, ptr %8, i32 %div.i52.zext.sink.i
  %config_lock.i = getelementptr i8, ptr %3, i32 -372
  tail call void @_raw_spin_lock(ptr noundef %config_lock.i) #8
  %10 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx17.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %11, i32 768
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #8, !srcloc !390
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !440
  %14 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %15, 2
  %shl.i = shl i32 15, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and27.i = and i32 %13, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !441
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and27.i) #8
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx17.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %18, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %16) #8, !srcloc !389
  tail call void @_raw_spin_unlock(ptr noundef %config_lock.i) #8
  br label %arm_ccn_pmu_xp_dt_config.exit

arm_ccn_pmu_xp_dt_config.exit:                    ; preds = %if.end.i, %entry.arm_ccn_pmu_xp_dt_config.exit_crit_edge
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %arm_ccn_pmu_xp_dt_config.exit.if.end_crit_edge, label %if.then

arm_ccn_pmu_xp_dt_config.exit.if.end_crit_edge:   ; preds = %arm_ccn_pmu_xp_dt_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %arm_ccn_pmu_xp_dt_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @arm_ccn_pmu_event_update(ptr noundef %event)
  br label %if.end

if.end:                                           ; preds = %if.then, %arm_ccn_pmu_xp_dt_config.exit.if.end_crit_edge
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %or = or i32 %20, 1
  store i32 %or, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_ccn_pmu_event_read(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @arm_ccn_pmu_event_update(ptr noundef %event)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_pmu_timer_handler(ptr noundef %hrtimer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -320
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !442
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then22, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call fastcc i32 @arm_ccn_pmu_overflow_handler(ptr noundef %add.ptr)
  br label %do.body24

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %call1250 = tail call fastcc i32 @arm_ccn_pmu_overflow_handler(ptr noundef %add.ptr)
  tail call void @trace_hardirqs_on() #8
  br label %do.body24

do.body24:                                        ; preds = %if.then22, %do.end11
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !443
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !395

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !444
  %2 = load i32, ptr @arm_ccn_pmu_poll_period_us, align 4
  %conv.i = zext i32 %2 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 3
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %6() #8
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %hrtimer, i64 noundef %call.i, i64 noundef %mul.i) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @arm_ccn_pmu_events_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.arm_ccn_pmu_event, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %3, label %entry.if.end19_crit_edge [
    i32 16, label %land.lhs.true
    i32 12, label %land.lhs.true13
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %sbas_present = getelementptr i8, ptr %1, i32 -400
  %5 = ptrtoint ptr %sbas_present to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %sbas_present, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true13:                                  ; preds = %entry
  %sbsx_present = getelementptr i8, ptr %1, i32 -400
  %6 = ptrtoint ptr %sbsx_present to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load14 = load i8, ptr %sbsx_present, align 4
  %7 = and i8 %bf.load14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool17.not = icmp eq i8 %7, 0
  br i1 %tobool17.not, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.if.end19_crit_edge

land.lhs.true13.if.end19_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true13.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %9, %if.end19 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true13.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_pmu_format_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_pmu_cmp_mask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -412
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %conv.i = zext i8 %5 to i32
  %arrayidx4.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i, align 1
  %8 = and i8 %7, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 0
  br i1 %cmp.not.i, label %lor.lhs.false2.i.do.end.i_crit_edge, label %lor.rhs.i

lor.lhs.false2.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false2.i
  %arrayidx7.i = getelementptr i8, ptr %3, i32 1
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not.i = icmp eq i8 %10, 0
  br i1 %tobool8.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end31.i, !prof !395

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %lor.lhs.false2.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 454, i32 noundef 9, ptr noundef null) #8
  br label %cond.end

if.end31.i:                                       ; preds = %lor.rhs.i
  %11 = add nsw i32 %conv.i, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %12 = icmp ugt i32 %11, 9
  br i1 %12, label %cond.false.i, label %if.end31.i.cond.end.i_crit_edge

if.end31.i.cond.end.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not.i.i = icmp eq i8 %13, 0
  %sub.i.i = add i8 %5, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %5, i8 %sub.i.i
  %conv39.i = zext i8 %spec.select.i.i to i32
  %sub40.i = add nsw i32 %conv39.i, -87
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end31.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub40.i, %cond.false.i ], [ %11, %if.end31.i.cond.end.i_crit_edge ]
  %14 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.163)
  switch i8 %10, label %cond.end.i.cond.end_crit_edge [
    i8 108, label %sw.bb.i
    i8 104, label %sw.bb44.i
  ]

cond.end.i.cond.end_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

sw.bb.i:                                          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx43.i = getelementptr %struct.arm_ccn, ptr %add.ptr3, i32 0, i32 8, i32 5, i32 %cond.i
  br label %arm_ccn_pmu_get_cmp_mask.exit

sw.bb44.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %h.i = getelementptr %struct.arm_ccn, ptr %add.ptr3, i32 0, i32 8, i32 5, i32 %cond.i, i32 1
  br label %arm_ccn_pmu_get_cmp_mask.exit

arm_ccn_pmu_get_cmp_mask.exit:                    ; preds = %sw.bb44.i, %sw.bb.i
  %retval.0.i = phi ptr [ %h.i, %sw.bb44.i ], [ %arrayidx43.i, %sw.bb.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %arm_ccn_pmu_get_cmp_mask.exit.cond.end_crit_edge, label %cond.true

arm_ccn_pmu_get_cmp_mask.exit.cond.end_crit_edge: ; preds = %arm_ccn_pmu_get_cmp_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %arm_ccn_pmu_get_cmp_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %retval.0.i, align 8
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.47, i64 noundef %16) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %arm_ccn_pmu_get_cmp_mask.exit.cond.end_crit_edge, %cond.end.i.cond.end_crit_edge, %do.end.i
  %cond = phi i32 [ %call6, %cond.true ], [ -22, %arm_ccn_pmu_get_cmp_mask.exit.cond.end_crit_edge ], [ -22, %do.end.i ], [ -22, %cond.end.i.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_pmu_cmp_mask_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -412
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %conv.i = zext i8 %5 to i32
  %arrayidx4.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i, align 1
  %8 = and i8 %7, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 0
  br i1 %cmp.not.i, label %lor.lhs.false2.i.do.end.i_crit_edge, label %lor.rhs.i

lor.lhs.false2.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false2.i
  %arrayidx7.i = getelementptr i8, ptr %3, i32 1
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not.i = icmp eq i8 %10, 0
  br i1 %tobool8.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end31.i, !prof !395

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %lor.lhs.false2.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 454, i32 noundef 9, ptr noundef null) #8
  br label %if.end.thread

if.end31.i:                                       ; preds = %lor.rhs.i
  %11 = add nsw i32 %conv.i, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %12 = icmp ugt i32 %11, 9
  br i1 %12, label %cond.false.i, label %if.end31.i.cond.end.i_crit_edge

if.end31.i.cond.end.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not.i.i = icmp eq i8 %13, 0
  %sub.i.i = add i8 %5, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %5, i8 %sub.i.i
  %conv39.i = zext i8 %spec.select.i.i to i32
  %sub40.i = add nsw i32 %conv39.i, -87
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end31.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub40.i, %cond.false.i ], [ %11, %if.end31.i.cond.end.i_crit_edge ]
  %14 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.164)
  switch i8 %10, label %cond.end.i.if.end.thread_crit_edge [
    i8 108, label %sw.bb.i
    i8 104, label %sw.bb44.i
  ]

cond.end.i.if.end.thread_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

sw.bb.i:                                          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx43.i = getelementptr %struct.arm_ccn, ptr %add.ptr3, i32 0, i32 8, i32 5, i32 %cond.i
  br label %arm_ccn_pmu_get_cmp_mask.exit

sw.bb44.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %h.i = getelementptr %struct.arm_ccn, ptr %add.ptr3, i32 0, i32 8, i32 5, i32 %cond.i, i32 1
  br label %arm_ccn_pmu_get_cmp_mask.exit

arm_ccn_pmu_get_cmp_mask.exit:                    ; preds = %sw.bb44.i, %sw.bb.i
  %retval.0.i = phi ptr [ %h.i, %sw.bb44.i ], [ %arrayidx43.i, %sw.bb.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %arm_ccn_pmu_get_cmp_mask.exit.if.end.thread_crit_edge, label %if.end

arm_ccn_pmu_get_cmp_mask.exit.if.end.thread_crit_edge: ; preds = %arm_ccn_pmu_get_cmp_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end:                                           ; preds = %arm_ccn_pmu_get_cmp_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool7.not, i32 %count, i32 %call6
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end, %arm_ccn_pmu_get_cmp_mask.exit.if.end.thread_crit_edge, %cond.end.i.if.end.thread_crit_edge, %do.end.i
  %15 = phi i32 [ -22, %arm_ccn_pmu_get_cmp_mask.exit.if.end.thread_crit_edge ], [ -22, %do.end.i ], [ -22, %cond.end.i.if.end.thread_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_pmu_cpumask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpu = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 8
  %rem.i = and i32 %3, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %3, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef %add.ptr.i, i32 noundef %4) #8
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_pmu_event_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.arm_ccn_pmu_event, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %call7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.142, i32 noundef %3) #8
  %event8 = getelementptr inbounds %struct.arm_ccn_pmu_event, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %event8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %call7, ptr noundef nonnull @.str.143, i32 noundef %5) #8
  %add = add i32 %call10, %call7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res.0 = phi i32 [ %add, %if.then ], [ %call7, %entry.if.end_crit_edge ]
  %def = getelementptr inbounds %struct.arm_ccn_pmu_event, ptr %attr, i32 0, i32 5
  %6 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %def, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end.if.end16_crit_edge, label %if.then12

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %res.0, ptr noundef nonnull @.str.144, ptr noundef nonnull %7) #8
  %add15 = add i32 %call14, %res.0
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %res.1 = phi i32 [ %add15, %if.then12 ], [ %res.0, %if.end.if.end16_crit_edge ]
  %mask = getelementptr inbounds %struct.arm_ccn_pmu_event, ptr %attr, i32 0, i32 6
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %if.end16.if.end22_crit_edge, label %if.then18

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %res.1, ptr noundef nonnull @.str.145, i32 noundef %9) #8
  %add21 = add i32 %call20, %res.1
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16.if.end22_crit_edge
  %res.2 = phi i32 [ %add21, %if.then18 ], [ %res.1, %if.end16.if.end22_crit_edge ]
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %11, label %sw.default [
    i32 255, label %if.end22.sw.epilog_crit_edge
    i32 8, label %sw.bb
    i32 1, label %sw.bb33
  ]

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end22
  %call24 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %res.2, ptr noundef nonnull @.str.146) #8
  %add25 = add i32 %call24, %res.2
  %13 = ptrtoint ptr %event8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %event8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %14)
  %cmp = icmp eq i32 %14, 254
  br i1 %cmp, label %if.then27, label %if.else

if.then27:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add25, ptr noundef nonnull @.str.147) #8
  %add29 = add i32 %call28, %add25
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add25, ptr noundef nonnull @.str.148) #8
  %add31 = add i32 %call30, %add25
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %mn_id = getelementptr i8, ptr %1, i32 164
  %15 = ptrtoint ptr %mn_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mn_id, align 8
  %call34 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %res.2, ptr noundef nonnull @.str.149, i32 noundef %16) #8
  %add35 = add i32 %call34, %res.2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %res.2, ptr noundef nonnull @.str.150) #8
  %add37 = add i32 %call36, %res.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %if.else, %if.then27, %if.end22.sw.epilog_crit_edge
  %res.3 = phi i32 [ %add37, %sw.default ], [ %add35, %sw.bb33 ], [ %add29, %if.then27 ], [ %add31, %if.else ], [ %res.2, %if.end22.sw.epilog_crit_edge ]
  %call38 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %res.3, ptr noundef nonnull @.str.151) #8
  %add39 = add i32 %call38, %res.3
  ret i32 %add39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_ccn_pmu_event_alloc(ptr noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %add.ptr3 = getelementptr i8, ptr %1, i32 -412
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %config, align 8
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 255
  %5 = lshr i32 %4, 8
  %conv9 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv9)
  %cmp = icmp eq i32 %conv9, 255
  %pmu_counters_mask = getelementptr i8, ptr %1, i32 -328
  br i1 %cmp, label %if.then, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

if.then:                                          ; preds = %entry
  %call = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %pmu_counters_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %idx, align 4
  %event18 = getelementptr i8, ptr %1, i32 -256
  %7 = ptrtoint ptr %event18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %event, ptr %event18, align 4
  br label %cleanup

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %pmu_counters_mask, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp.not.i = icmp ult i32 %call.i, 8
  br i1 %cmp.not.i, label %do.cond.i, label %do.body

do.cond.i:                                        ; preds = %do.body.i
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef %call.i, ptr noundef %pmu_counters_mask) #8
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end36, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %idx24144 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %8 = ptrtoint ptr %idx24144 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -11, ptr %idx24144, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_alloc.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_alloc, %if.then34)) #8
          to label %cleanup [label %if.then34], !srcloc !396

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_alloc.__UNIQUE_ID_ddebug251, ptr noundef %10, ptr noundef nonnull @.str.153) #8
  br label %cleanup

if.end36:                                         ; preds = %do.cond.i
  %idx24 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %11 = ptrtoint ptr %idx24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %idx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv9)
  %cmp37 = icmp eq i32 %conv9, 8
  %.pn.in.v = select i1 %cmp37, i32 -384, i32 -392
  %.pn.in = getelementptr i8, ptr %1, i32 %.pn.in.v
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in, align 4
  %source.0 = getelementptr %struct.arm_ccn_component, ptr %.pn, i32 %conv
  %pmu_counters44 = getelementptr i8, ptr %1, i32 -324
  %arrayidx46 = getelementptr [9 x %struct.anon.97], ptr %pmu_counters44, i32 0, i32 %call.i
  %13 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %source.0, ptr %arrayidx46, align 8
  %14 = and i64 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 16646144, i64 %14)
  %cmp50 = icmp eq i64 %14, 16646144
  %or.cond = select i1 %cmp37, i1 %cmp50, i1 false
  br i1 %or.cond, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.end36
  %15 = getelementptr %struct.arm_ccn_component, ptr %.pn, i32 %conv, i32 3
  br label %do.body.i129

do.body.i129:                                     ; preds = %do.cond.i132.do.body.i129_crit_edge, %if.then52
  %call.i127 = tail call i32 @_find_first_zero_bit_be(ptr noundef %15, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i127)
  %cmp.not.i128 = icmp ult i32 %call.i127, 2
  br i1 %cmp.not.i128, label %do.cond.i132, label %do.body.i129.do.body62_crit_edge

do.body.i129.do.body62_crit_edge:                 ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

do.cond.i132:                                     ; preds = %do.body.i129
  %call1.i130 = tail call i32 @_test_and_set_bit(i32 noundef %call.i127, ptr noundef %15) #8
  %tobool.not.i131 = icmp eq i32 %call1.i130, 0
  br i1 %tobool.not.i131, label %do.cond.i132.if.end83_crit_edge, label %do.cond.i132.do.body.i129_crit_edge

do.cond.i132.do.body.i129_crit_edge:              ; preds = %do.cond.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i129

do.cond.i132.if.end83_crit_edge:                  ; preds = %do.cond.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.else55:                                        ; preds = %if.end36
  %pmu_events_mask = getelementptr %struct.arm_ccn_component, ptr %.pn, i32 %conv, i32 2
  br label %do.body.i137

do.body.i137:                                     ; preds = %do.cond.i140.do.body.i137_crit_edge, %if.else55
  %call.i135 = tail call i32 @_find_first_zero_bit_be(ptr noundef %pmu_events_mask, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i135)
  %cmp.not.i136 = icmp ult i32 %call.i135, 4
  br i1 %cmp.not.i136, label %do.cond.i140, label %do.body.i137.do.body62_crit_edge

do.body.i137.do.body62_crit_edge:                 ; preds = %do.body.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

do.cond.i140:                                     ; preds = %do.body.i137
  %call1.i138 = tail call i32 @_test_and_set_bit(i32 noundef %call.i135, ptr noundef %pmu_events_mask) #8
  %tobool.not.i139 = icmp eq i32 %call1.i138, 0
  br i1 %tobool.not.i139, label %do.cond.i140.if.end83_crit_edge, label %do.cond.i140.do.body.i137_crit_edge

do.cond.i140.do.body.i137_crit_edge:              ; preds = %do.cond.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i137

do.cond.i140.if.end83_crit_edge:                  ; preds = %do.cond.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

do.body62:                                        ; preds = %do.body.i137.do.body62_crit_edge, %do.body.i129.do.body62_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_ccn_pmu_event_alloc.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_ccn_pmu_event_alloc, %if.then74)) #8
          to label %do.end78 [label %if.then74], !srcloc !396

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_ccn_pmu_event_alloc.__UNIQUE_ID_ddebug252, ptr noundef %17, ptr noundef nonnull @.str.154, i32 noundef %conv) #8
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %do.body62
  %18 = ptrtoint ptr %idx24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx24, align 4
  tail call void @_clear_bit(i32 noundef %19, ptr noundef %pmu_counters_mask) #8
  br label %cleanup

if.end83:                                         ; preds = %do.cond.i140.if.end83_crit_edge, %do.cond.i132.if.end83_crit_edge
  %bit.0 = phi i32 [ %call.i127, %do.cond.i132.if.end83_crit_edge ], [ %call.i135, %do.cond.i140.if.end83_crit_edge ]
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %config_base to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bit.0, ptr %config_base, align 8
  %21 = ptrtoint ptr %idx24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx24, align 4
  %arrayidx87 = getelementptr [9 x %struct.anon.97], ptr %pmu_counters44, i32 0, i32 %22
  %event88 = getelementptr inbounds %struct.anon.97, ptr %arrayidx87, i32 0, i32 1
  %23 = ptrtoint ptr %event88 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %event, ptr %event88, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %do.end78, %if.then34, %do.body, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %do.end78 ], [ 0, %if.end83 ], [ -11, %if.then.cleanup_crit_edge ], [ -11, %if.then34 ], [ -11, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ccn_pmu_offline_cpu(i32 noundef %cpu, ptr noundef %node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  %add.ptr = getelementptr i8, ptr %node, i32 -372
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %cpu5 = getelementptr inbounds %struct.arm_ccn_dt, ptr %spec.select, i32 0, i32 7
  %0 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpu)
  %cmp.not = icmp eq i32 %1, %cpu
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @cpumask_any_but(ptr noundef nonnull @__cpu_online_mask, i32 noundef %cpu) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %2)
  %cmp6.not = icmp ult i32 %call, %2
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %pmu = getelementptr inbounds %struct.arm_ccn_dt, ptr %spec.select, i32 0, i32 9
  tail call void @perf_pmu_migrate_context(ptr noundef %pmu, i32 noundef %cpu, i32 noundef %call) #8
  %3 = ptrtoint ptr %cpu5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %cpu5, align 8
  %irq = getelementptr i8, ptr %spec.select, i32 -24
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %rem.i = and i32 %call, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %call, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call15 = tail call i32 @irq_set_affinity(i32 noundef %5, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then11.cleanup_crit_edge, label %do.end, !prof !413

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1214, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_migrate_context(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 207)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 207)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !124, !125, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !200, !202, !204, !206, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !370, !371, !373, !374, !376}
!llvm.named.register.sp = !{!378}
!llvm.module.flags = !{!379, !380, !381, !382, !383, !384, !385, !386}
!llvm.ident = !{!387}

!0 = !{ptr @__param_pmu_poll_period_us, !1, !"__param_pmu_poll_period_us", i1 false, i1 false}
!1 = !{!"../drivers/perf/arm-ccn.c", i32 572, i32 1}
!2 = !{ptr @__UNIQUE_ID_pmu_poll_period_ustype250, !1, !"__UNIQUE_ID_pmu_poll_period_ustype250", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_arm_ccn__271_1572_arm_ccn_init6, !4, !"__initcall__kmod_arm_ccn__271_1572_arm_ccn_init6", i1 false, i1 false}
!4 = !{!"../drivers/perf/arm-ccn.c", i32 1572, i32 1}
!5 = !{ptr @__exitcall_arm_ccn_exit, !6, !"__exitcall_arm_ccn_exit", i1 false, i1 false}
!6 = !{!"../drivers/perf/arm-ccn.c", i32 1573, i32 1}
!7 = !{ptr @__UNIQUE_ID_author272, !8, !"__UNIQUE_ID_author272", i1 false, i1 false}
!8 = !{!"../drivers/perf/arm-ccn.c", i32 1575, i32 1}
!9 = !{ptr @__UNIQUE_ID_file273, !10, !"__UNIQUE_ID_file273", i1 false, i1 false}
!10 = !{!"../drivers/perf/arm-ccn.c", i32 1576, i32 1}
!11 = !{ptr @__UNIQUE_ID_license274, !10, !"__UNIQUE_ID_license274", i1 false, i1 false}
!12 = !{ptr @__param_str_pmu_poll_period_us, !1, !"__param_str_pmu_poll_period_us", i1 false, i1 false}
!13 = !{ptr @arm_ccn_pmu_poll_period_us, !14, !"arm_ccn_pmu_poll_period_us", i1 false, i1 false}
!14 = !{!"../drivers/perf/arm-ccn.c", i32 571, i32 21}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/perf/arm-ccn.c", i32 1539, i32 11}
!17 = !{ptr @arm_ccn_driver, !18, !"arm_ccn_driver", i1 false, i1 false}
!18 = !{!"../drivers/perf/arm-ccn.c", i32 1537, i32 31}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/perf/arm-ccn.c", i32 1173, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/perf/arm-ccn.c", i32 1417, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @arm_ccn_error_handler._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @arm_ccn_error_handler._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/perf/arm-ccn.c", i32 1420, i32 2}
!31 = !{ptr @arm_ccn_error_handler._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @arm_ccn_error_handler._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/perf/arm-ccn.c", i32 1383, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @arm_ccn_init_nodes.__UNIQUE_ID_ddebug270, !34, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!38 = !{ptr @arm_ccn_pmu_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/perf/arm-ccn.c", i32 1228, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/perf/arm-ccn.c", i32 1255, i32 10}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/perf/arm-ccn.c", i32 1257, i32 47}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/perf/arm-ccn.c", i32 1283, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @arm_ccn_pmu_init._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @arm_ccn_pmu_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/perf/arm-ccn.c", i32 1296, i32 4}
!53 = !{ptr @arm_ccn_pmu_init._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @arm_ccn_pmu_init._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/perf/arm-ccn.c", i32 1218, i32 8}
!57 = !{ptr @arm_ccn_pmu_ida, !56, !"arm_ccn_pmu_ida", i1 false, i1 false}
!58 = !{ptr @arm_ccn_pmu_attr_groups, !59, !"arm_ccn_pmu_attr_groups", i1 false, i1 false}
!59 = !{!"../drivers/perf/arm-ccn.c", i32 581, i32 38}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/perf/arm-ccn.c", i32 444, i32 10}
!62 = !{ptr @arm_ccn_pmu_events_attr_group, !63, !"arm_ccn_pmu_events_attr_group", i1 false, i1 false}
!63 = !{!"../drivers/perf/arm-ccn.c", i32 443, i32 37}
!64 = !{ptr @arm_ccn_pmu_events_attrs, !65, !"arm_ccn_pmu_events_attrs", i1 false, i1 false}
!65 = !{!"../drivers/perf/arm-ccn.c", i32 441, i32 4}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/perf/arm-ccn.c", i32 260, i32 10}
!68 = !{ptr @arm_ccn_pmu_format_attr_group, !69, !"arm_ccn_pmu_format_attr_group", i1 false, i1 false}
!69 = !{!"../drivers/perf/arm-ccn.c", i32 259, i32 37}
!70 = !{ptr @arm_ccn_pmu_format_attrs, !71, !"arm_ccn_pmu_format_attrs", i1 false, i1 false}
!71 = !{!"../drivers/perf/arm-ccn.c", i32 244, i32 26}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/perf/arm-ccn.c", i32 232, i32 8}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @arm_ccn_pmu_format_attr_node, !73, !"arm_ccn_pmu_format_attr_node", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/perf/arm-ccn.c", i32 224, i32 25}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/perf/arm-ccn.c", i32 233, i32 8}
!80 = !{ptr @arm_ccn_pmu_format_attr_xp, !79, !"arm_ccn_pmu_format_attr_xp", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/perf/arm-ccn.c", i32 234, i32 8}
!83 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @arm_ccn_pmu_format_attr_type, !82, !"arm_ccn_pmu_format_attr_type", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/perf/arm-ccn.c", i32 235, i32 8}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @arm_ccn_pmu_format_attr_event, !86, !"arm_ccn_pmu_format_attr_event", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/perf/arm-ccn.c", i32 236, i32 8}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @arm_ccn_pmu_format_attr_port, !90, !"arm_ccn_pmu_format_attr_port", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/perf/arm-ccn.c", i32 237, i32 8}
!95 = !{ptr @arm_ccn_pmu_format_attr_bus, !94, !"arm_ccn_pmu_format_attr_bus", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/perf/arm-ccn.c", i32 238, i32 8}
!98 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @arm_ccn_pmu_format_attr_vc, !97, !"arm_ccn_pmu_format_attr_vc", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/perf/arm-ccn.c", i32 239, i32 8}
!102 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @arm_ccn_pmu_format_attr_dir, !101, !"arm_ccn_pmu_format_attr_dir", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/perf/arm-ccn.c", i32 240, i32 8}
!106 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @arm_ccn_pmu_format_attr_mask, !105, !"arm_ccn_pmu_format_attr_mask", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/perf/arm-ccn.c", i32 241, i32 8}
!110 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @arm_ccn_pmu_format_attr_cmp_l, !109, !"arm_ccn_pmu_format_attr_cmp_l", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/perf/arm-ccn.c", i32 242, i32 8}
!114 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @arm_ccn_pmu_format_attr_cmp_h, !113, !"arm_ccn_pmu_format_attr_cmp_h", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/perf/arm-ccn.c", i32 541, i32 10}
!118 = !{ptr @arm_ccn_pmu_cmp_mask_attr_group, !119, !"arm_ccn_pmu_cmp_mask_attr_group", i1 false, i1 false}
!119 = !{!"../drivers/perf/arm-ccn.c", i32 540, i32 37}
!120 = !{ptr @arm_ccn_pmu_cmp_mask_attrs, !121, !"arm_ccn_pmu_cmp_mask_attrs", i1 false, i1 false}
!121 = !{!"../drivers/perf/arm-ccn.c", i32 524, i32 26}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/perf/arm-ccn.c", i32 499, i32 8}
!124 = !{ptr @arm_ccn_pmu_cmp_mask_attr_0l, !123, !"arm_ccn_pmu_cmp_mask_attr_0l", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/perf/arm-ccn.c", i32 474, i32 32}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/perf/arm-ccn.c", i32 500, i32 8}
!129 = !{ptr @arm_ccn_pmu_cmp_mask_attr_0h, !128, !"arm_ccn_pmu_cmp_mask_attr_0h", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/perf/arm-ccn.c", i32 501, i32 8}
!132 = !{ptr @arm_ccn_pmu_cmp_mask_attr_1l, !131, !"arm_ccn_pmu_cmp_mask_attr_1l", i1 false, i1 false}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/perf/arm-ccn.c", i32 502, i32 8}
!135 = !{ptr @arm_ccn_pmu_cmp_mask_attr_1h, !134, !"arm_ccn_pmu_cmp_mask_attr_1h", i1 false, i1 false}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/perf/arm-ccn.c", i32 503, i32 8}
!138 = !{ptr @arm_ccn_pmu_cmp_mask_attr_2l, !137, !"arm_ccn_pmu_cmp_mask_attr_2l", i1 false, i1 false}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/perf/arm-ccn.c", i32 504, i32 8}
!141 = !{ptr @arm_ccn_pmu_cmp_mask_attr_2h, !140, !"arm_ccn_pmu_cmp_mask_attr_2h", i1 false, i1 false}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/perf/arm-ccn.c", i32 505, i32 8}
!144 = !{ptr @arm_ccn_pmu_cmp_mask_attr_3l, !143, !"arm_ccn_pmu_cmp_mask_attr_3l", i1 false, i1 false}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/perf/arm-ccn.c", i32 506, i32 8}
!147 = !{ptr @arm_ccn_pmu_cmp_mask_attr_3h, !146, !"arm_ccn_pmu_cmp_mask_attr_3h", i1 false, i1 false}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/perf/arm-ccn.c", i32 507, i32 8}
!150 = !{ptr @arm_ccn_pmu_cmp_mask_attr_4l, !149, !"arm_ccn_pmu_cmp_mask_attr_4l", i1 false, i1 false}
!151 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/perf/arm-ccn.c", i32 508, i32 8}
!153 = !{ptr @arm_ccn_pmu_cmp_mask_attr_4h, !152, !"arm_ccn_pmu_cmp_mask_attr_4h", i1 false, i1 false}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/perf/arm-ccn.c", i32 509, i32 8}
!156 = !{ptr @arm_ccn_pmu_cmp_mask_attr_5l, !155, !"arm_ccn_pmu_cmp_mask_attr_5l", i1 false, i1 false}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/perf/arm-ccn.c", i32 510, i32 8}
!159 = !{ptr @arm_ccn_pmu_cmp_mask_attr_5h, !158, !"arm_ccn_pmu_cmp_mask_attr_5h", i1 false, i1 false}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/perf/arm-ccn.c", i32 511, i32 8}
!162 = !{ptr @arm_ccn_pmu_cmp_mask_attr_6l, !161, !"arm_ccn_pmu_cmp_mask_attr_6l", i1 false, i1 false}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/perf/arm-ccn.c", i32 512, i32 8}
!165 = !{ptr @arm_ccn_pmu_cmp_mask_attr_6h, !164, !"arm_ccn_pmu_cmp_mask_attr_6h", i1 false, i1 false}
!166 = !{ptr @.str.61, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/perf/arm-ccn.c", i32 513, i32 8}
!168 = !{ptr @arm_ccn_pmu_cmp_mask_attr_7l, !167, !"arm_ccn_pmu_cmp_mask_attr_7l", i1 false, i1 false}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/perf/arm-ccn.c", i32 514, i32 8}
!171 = !{ptr @arm_ccn_pmu_cmp_mask_attr_7h, !170, !"arm_ccn_pmu_cmp_mask_attr_7h", i1 false, i1 false}
!172 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/perf/arm-ccn.c", i32 515, i32 8}
!174 = !{ptr @arm_ccn_pmu_cmp_mask_attr_8l, !173, !"arm_ccn_pmu_cmp_mask_attr_8l", i1 false, i1 false}
!175 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/perf/arm-ccn.c", i32 516, i32 8}
!177 = !{ptr @arm_ccn_pmu_cmp_mask_attr_8h, !176, !"arm_ccn_pmu_cmp_mask_attr_8h", i1 false, i1 false}
!178 = !{ptr @.str.65, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/perf/arm-ccn.c", i32 517, i32 8}
!180 = !{ptr @arm_ccn_pmu_cmp_mask_attr_9l, !179, !"arm_ccn_pmu_cmp_mask_attr_9l", i1 false, i1 false}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/perf/arm-ccn.c", i32 518, i32 8}
!183 = !{ptr @arm_ccn_pmu_cmp_mask_attr_9h, !182, !"arm_ccn_pmu_cmp_mask_attr_9h", i1 false, i1 false}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/perf/arm-ccn.c", i32 519, i32 8}
!186 = !{ptr @arm_ccn_pmu_cmp_mask_attr_al, !185, !"arm_ccn_pmu_cmp_mask_attr_al", i1 false, i1 false}
!187 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/perf/arm-ccn.c", i32 520, i32 8}
!189 = !{ptr @arm_ccn_pmu_cmp_mask_attr_ah, !188, !"arm_ccn_pmu_cmp_mask_attr_ah", i1 false, i1 false}
!190 = !{ptr @.str.69, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/perf/arm-ccn.c", i32 521, i32 8}
!192 = !{ptr @arm_ccn_pmu_cmp_mask_attr_bl, !191, !"arm_ccn_pmu_cmp_mask_attr_bl", i1 false, i1 false}
!193 = !{ptr @.str.70, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/perf/arm-ccn.c", i32 522, i32 8}
!195 = !{ptr @arm_ccn_pmu_cmp_mask_attr_bh, !194, !"arm_ccn_pmu_cmp_mask_attr_bh", i1 false, i1 false}
!196 = !{ptr @arm_ccn_pmu_cpumask_attr_group, !197, !"arm_ccn_pmu_cpumask_attr_group", i1 false, i1 false}
!197 = !{!"../drivers/perf/arm-ccn.c", i32 561, i32 37}
!198 = !{ptr @arm_ccn_pmu_cpumask_attrs, !199, !"arm_ccn_pmu_cpumask_attrs", i1 false, i1 false}
!199 = !{!"../drivers/perf/arm-ccn.c", i32 556, i32 26}
!200 = !{ptr @.str.71, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/perf/arm-ccn.c", i32 554, i32 3}
!202 = !{ptr @arm_ccn_pmu_cpumask_attr, !203, !"arm_ccn_pmu_cpumask_attr", i1 false, i1 false}
!203 = !{!"../drivers/perf/arm-ccn.c", i32 553, i32 32}
!204 = !{ptr @.str.72, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/perf/arm-ccn.c", i32 728, i32 3}
!206 = !{ptr @.str.73, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug253, !205, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!208 = !{ptr @.str.74, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/perf/arm-ccn.c", i32 733, i32 3}
!210 = !{ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug254, !209, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!211 = !{ptr @.str.75, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/perf/arm-ccn.c", i32 738, i32 3}
!213 = !{ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug255, !212, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!214 = !{ptr @.str.76, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/perf/arm-ccn.c", i32 760, i32 4}
!216 = !{ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug256, !215, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!217 = !{ptr @.str.77, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/perf/arm-ccn.c", i32 766, i32 4}
!219 = !{ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug257, !218, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!220 = !{ptr @.str.78, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/perf/arm-ccn.c", i32 774, i32 4}
!222 = !{ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug258, !221, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!223 = !{ptr @.str.79, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/perf/arm-ccn.c", i32 778, i32 4}
!225 = !{ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug259, !224, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!226 = !{ptr @.str.80, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/perf/arm-ccn.c", i32 797, i32 4}
!228 = !{ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug260, !227, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!229 = !{ptr @.str.81, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/perf/arm-ccn.c", i32 802, i32 4}
!231 = !{ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug261, !230, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!232 = !{ptr @.str.82, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/perf/arm-ccn.c", i32 809, i32 3}
!234 = !{ptr @arm_ccn_pmu_event_init.__UNIQUE_ID_ddebug262, !233, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!235 = !{ptr @.str.83, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/perf/arm-ccn.c", i32 384, i32 2}
!237 = !{ptr @.str.84, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.85, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/perf/arm-ccn.c", i32 385, i32 2}
!240 = !{ptr @.str.86, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.87, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/perf/arm-ccn.c", i32 386, i32 2}
!243 = !{ptr @.str.88, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.89, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/perf/arm-ccn.c", i32 387, i32 2}
!246 = !{ptr @.str.90, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.91, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/perf/arm-ccn.c", i32 388, i32 2}
!249 = !{ptr @.str.92, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.93, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/perf/arm-ccn.c", i32 389, i32 2}
!252 = !{ptr @.str.94, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.95, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/perf/arm-ccn.c", i32 390, i32 2}
!255 = !{ptr @.str.96, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.97, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/perf/arm-ccn.c", i32 391, i32 2}
!258 = !{ptr @.str.98, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.99, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/perf/arm-ccn.c", i32 393, i32 2}
!261 = !{ptr @.str.100, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/perf/arm-ccn.c", i32 394, i32 2}
!263 = !{ptr @.str.101, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/perf/arm-ccn.c", i32 395, i32 2}
!265 = !{ptr @.str.102, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/perf/arm-ccn.c", i32 396, i32 2}
!267 = !{ptr @.str.103, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/perf/arm-ccn.c", i32 397, i32 2}
!269 = !{ptr @.str.104, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/perf/arm-ccn.c", i32 399, i32 2}
!271 = !{ptr @.str.105, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/perf/arm-ccn.c", i32 400, i32 2}
!273 = !{ptr @.str.106, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/perf/arm-ccn.c", i32 401, i32 2}
!275 = !{ptr @.str.107, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/perf/arm-ccn.c", i32 402, i32 2}
!277 = !{ptr @.str.108, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/perf/arm-ccn.c", i32 403, i32 2}
!279 = !{ptr @.str.109, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/perf/arm-ccn.c", i32 404, i32 2}
!281 = !{ptr @.str.110, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/perf/arm-ccn.c", i32 405, i32 2}
!283 = !{ptr @.str.111, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/perf/arm-ccn.c", i32 406, i32 2}
!285 = !{ptr @.str.112, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/perf/arm-ccn.c", i32 407, i32 2}
!287 = !{ptr @.str.113, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/perf/arm-ccn.c", i32 408, i32 2}
!289 = !{ptr @.str.114, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/perf/arm-ccn.c", i32 409, i32 2}
!291 = !{ptr @.str.115, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/perf/arm-ccn.c", i32 410, i32 2}
!293 = !{ptr @.str.116, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/perf/arm-ccn.c", i32 411, i32 2}
!295 = !{ptr @.str.117, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/perf/arm-ccn.c", i32 412, i32 2}
!297 = !{ptr @.str.118, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/perf/arm-ccn.c", i32 413, i32 2}
!299 = !{ptr @.str.119, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/perf/arm-ccn.c", i32 414, i32 2}
!301 = !{ptr @.str.120, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/perf/arm-ccn.c", i32 415, i32 2}
!303 = !{ptr @.str.121, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/perf/arm-ccn.c", i32 416, i32 2}
!305 = !{ptr @.str.122, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/perf/arm-ccn.c", i32 417, i32 2}
!307 = !{ptr @.str.123, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/perf/arm-ccn.c", i32 418, i32 2}
!309 = !{ptr @.str.124, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/perf/arm-ccn.c", i32 419, i32 2}
!311 = !{ptr @.str.125, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/perf/arm-ccn.c", i32 420, i32 2}
!313 = !{ptr @.str.126, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/perf/arm-ccn.c", i32 421, i32 2}
!315 = !{ptr @.str.127, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/perf/arm-ccn.c", i32 422, i32 2}
!317 = !{ptr @.str.128, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/perf/arm-ccn.c", i32 423, i32 2}
!319 = !{ptr @.str.129, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/perf/arm-ccn.c", i32 424, i32 2}
!321 = !{ptr @.str.130, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/perf/arm-ccn.c", i32 425, i32 2}
!323 = !{ptr @.str.131, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/perf/arm-ccn.c", i32 426, i32 2}
!325 = !{ptr @.str.132, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/perf/arm-ccn.c", i32 427, i32 2}
!327 = !{ptr @.str.133, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/perf/arm-ccn.c", i32 428, i32 2}
!329 = !{ptr @.str.134, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/perf/arm-ccn.c", i32 429, i32 2}
!331 = !{ptr @.str.135, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/perf/arm-ccn.c", i32 430, i32 2}
!333 = !{ptr @.str.136, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/perf/arm-ccn.c", i32 431, i32 2}
!335 = !{ptr @.str.137, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/perf/arm-ccn.c", i32 432, i32 2}
!337 = !{ptr @.str.138, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/perf/arm-ccn.c", i32 433, i32 2}
!339 = !{ptr @.str.139, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/perf/arm-ccn.c", i32 434, i32 2}
!341 = !{ptr @.str.140, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/perf/arm-ccn.c", i32 435, i32 2}
!343 = !{ptr @.str.141, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/perf/arm-ccn.c", i32 436, i32 2}
!345 = !{ptr @arm_ccn_pmu_events, !346, !"arm_ccn_pmu_events", i1 false, i1 false}
!346 = !{!"../drivers/perf/arm-ccn.c", i32 383, i32 33}
!347 = !{ptr @.str.142, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/perf/arm-ccn.c", i32 331, i32 24}
!349 = !{ptr @.str.143, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/perf/arm-ccn.c", i32 333, i32 34}
!351 = !{ptr @.str.144, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/perf/arm-ccn.c", i32 335, i32 34}
!353 = !{ptr @.str.145, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/perf/arm-ccn.c", i32 337, i32 34}
!355 = !{ptr @.str.146, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/perf/arm-ccn.c", i32 344, i32 34}
!357 = !{ptr @.str.147, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/perf/arm-ccn.c", i32 347, i32 6}
!359 = !{ptr @.str.148, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/perf/arm-ccn.c", i32 349, i32 35}
!361 = !{ptr @.str.149, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/perf/arm-ccn.c", i32 353, i32 34}
!363 = !{ptr @.str.150, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/perf/arm-ccn.c", i32 356, i32 34}
!365 = !{ptr @.str.151, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/perf/arm-ccn.c", i32 360, i32 33}
!367 = !{ptr @.str.152, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/perf/arm-ccn.c", i32 659, i32 3}
!369 = !{ptr @.str.153, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @arm_ccn_pmu_event_alloc.__UNIQUE_ID_ddebug251, !368, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!371 = !{ptr @.str.154, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/perf/arm-ccn.c", i32 677, i32 3}
!373 = !{ptr @arm_ccn_pmu_event_alloc.__UNIQUE_ID_ddebug252, !372, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!374 = !{ptr @arm_ccn_match, !375, !"arm_ccn_match", i1 false, i1 false}
!375 = !{!"../drivers/perf/arm-ccn.c", i32 1529, i32 34}
!376 = !{ptr @.str.155, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/perf/arm-ccn.c", i32 1552, i32 11}
!378 = !{!"sp"}
!379 = !{i32 1, !"wchar_size", i32 2}
!380 = !{i32 1, !"min_enum_size", i32 4}
!381 = !{i32 8, !"branch-target-enforcement", i32 0}
!382 = !{i32 8, !"sign-return-address", i32 0}
!383 = !{i32 8, !"sign-return-address-all", i32 0}
!384 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!385 = !{i32 7, !"uwtable", i32 1}
!386 = !{i32 7, !"frame-pointer", i32 2}
!387 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!388 = !{i64 2155179768}
!389 = !{i64 4433168}
!390 = !{i64 4433586}
!391 = !{i64 2155180444}
!392 = !{i64 2155180677}
!393 = !{i64 2155170393}
!394 = !{i64 2155170878}
!395 = !{!"branch_weights", i32 1, i32 2000}
!396 = !{i64 2148827363, i64 2148827368, i64 2148827381, i64 2148827425, i64 2148827459, i64 2148827480}
!397 = !{i64 2155169178}
!398 = !{i64 2155169577}
!399 = !{i64 2155178011}
!400 = !{i64 2155178935}
!401 = !{i64 2155177335}
!402 = !{i64 2155179163}
!403 = !{i64 2155161157}
!404 = !{i64 2155161578}
!405 = !{i64 2155162031}
!406 = !{i64 2155162483}
!407 = !{i64 2155162888}
!408 = !{i64 2155163412}
!409 = !{i64 2155168380}
!410 = !{i64 2155168779}
!411 = !{i64 2155150288}
!412 = !{i64 2155150512}
!413 = !{!"branch_weights", i32 2000, i32 1}
!414 = !{i64 2155043363}
!415 = !{i64 2155044051}
!416 = !{i64 2155044276}
!417 = !{i64 2155044980}
!418 = !{i64 2155045489}
!419 = !{i64 2155046088}
!420 = !{i64 2155138288}
!421 = !{i64 2155138522}
!422 = !{i64 2155149382}
!423 = !{i64 2155149616}
!424 = !{i64 2155118222}
!425 = !{i64 2155118505}
!426 = !{i64 2155077866}
!427 = !{i64 2155078340}
!428 = !{i64 2155078795}
!429 = !{i64 2155079325}
!430 = !{i64 2155079871}
!431 = !{i64 2155080401}
!432 = !{i64 2155080948}
!433 = !{i64 2155081482}
!434 = !{i64 2155082032}
!435 = !{i64 2155082566}
!436 = !{i64 2155089938}
!437 = !{i64 2155090220}
!438 = !{i64 2155106515}
!439 = !{i64 2155106842}
!440 = !{i64 2155059804}
!441 = !{i64 2155060065}
!442 = !{i64 663436, i64 663497}
!443 = !{i64 666168}
!444 = !{i64 666453}
