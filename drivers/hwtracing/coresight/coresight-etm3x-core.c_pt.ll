; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-etm3x-core.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-etm3x-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.96 }
%union.anon.96 = type { ptr }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.coresight_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.coresight_ops_source = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.etm_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [16 x i32], [16 x i32], [16 x i32], i8, [4 x i32], [4 x i32], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i8, [3 x i32], i32, i32, i32 }
%struct.etm_drvdata = type { ptr, ptr, ptr, %struct.spinlock, i32, i32, i8, i8, %struct.local_t, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.etm_config }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.local_t = type { %struct.atomic_t }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%union.coresight_dev_subtype = type { %struct.anon.104 }
%struct.anon.104 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, ptr }
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
%struct.coresight_desc = type { i32, %union.coresight_dev_subtype, ptr, ptr, ptr, ptr, ptr, %struct.csdev_access }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.55, i64, i64, i64, %union.anon.56, i32, %union.anon.57, %union.anon.58, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.55 = type { i64 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i64 }
%union.anon.58 = type { i64 }
%struct.hw_perf_event = type { %union.anon.59, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.66, i64, i64, i64, i64 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.etm_enable_arg = type { ptr, i32 }

@__param_str_boot_enable = internal constant [28 x i8] c"coresight_etm3x.boot_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@boot_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_boot_enable = internal constant %struct.kernel_param { ptr @__param_str_boot_enable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.96 { ptr @boot_enable } }, section "__param", align 4
@__UNIQUE_ID_boot_enabletype297 = internal constant [41 x i8] c"coresight_etm3x.parmtype=boot_enable:int\00", section ".modinfo", align 1
@etm_set_default.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/hwtracing/coresight/coresight-etm3x-core.c\00", [45 x i8] zeroinitializer }, align 32
@etm_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @etm_dev_pm_ops, ptr null, ptr null }, ptr @etm_probe, ptr @etm_remove, ptr null, ptr @etm_ids }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_coresight_etm3x__302_1021_etm_init6 = internal global ptr @etm_init, section ".initcall6.init", align 4
@__exitcall_etm_exit = internal global ptr @etm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [61 x i8] c"coresight_etm3x.author=Pratik Patel <pratikp@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [68 x i8] c"coresight_etm3x.author=Mathieu Poirier <mathieu.poirier@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [68 x i8] c"coresight_etm3x.description=Arm CoreSight Program Flow Trace driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [65 x i8] c"coresight_etm3x.file=drivers/hwtracing/coresight/coresight-etm3x\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [31 x i8] c"coresight_etm3x.license=GPL v2\00", section ".modinfo", align 1
@etm_readl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid CP14 access to ETM reg: %#x\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"etm_readl\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/hwtracing/coresight/coresight-etm.h\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@etm_readl._entry_ptr = internal global ptr @etm_readl._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"coresight-etm3x\00", [16 x i8] zeroinitializer }, align 32
@etm_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @etm_runtime_suspend, ptr @etm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@etm_ids = internal constant { [7 x %struct.amba_id], [44 x i8] } { [7 x %struct.amba_id] [%struct.amba_id { i32 768289, i32 1048575, ptr @.compoundliteral }, %struct.amba_id { i32 768341, i32 1048575, ptr @.compoundliteral.33 }, %struct.amba_id { i32 768342, i32 1048575, ptr @.compoundliteral.34 }, %struct.amba_id { i32 768336, i32 1048575, ptr @.compoundliteral.36 }, %struct.amba_id { i32 768351, i32 1048575, ptr @.compoundliteral.38 }, %struct.amba_id { i32 721007, i32 1048575, ptr @.compoundliteral.39 }, %struct.amba_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"arm,cp14\00", [23 x i8] zeroinitializer }, align 32
@etm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&drvdata->spinlock\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atclk\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"etm%d\00", [26 x i8] zeroinitializer }, align 32
@etm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 865, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ETM arch init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"etm_probe\00", [22 x i8] zeroinitializer }, align 32
@etm_probe._entry_ptr = internal global ptr @etm_probe._entry, section ".printk_index", align 4
@etm_cs_ops = internal constant { %struct.coresight_ops, [44 x i8] } { %struct.coresight_ops { ptr null, ptr null, ptr @etm_source_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_etm_groups = external dso_local global [0 x ptr], align 4
@etmdrvdata = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@etm_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str, i32 899, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s initialized\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@etm_probe._entry_ptr.16 = internal global ptr @etm_probe._entry.13, section ".printk_index", align 4
@etm_writel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.17, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"etm_writel\00", [21 x i8] zeroinitializer }, align 32
@etm_writel._entry_ptr = internal global ptr @etm_writel._entry, section ".printk_index", align 4
@etm_set_prog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: timeout observed when probing at offset %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"etm_set_prog\00", [19 x i8] zeroinitializer }, align 32
@etm_set_prog._entry_ptr = internal global ptr @etm_set_prog._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@etm_source_ops = internal constant { %struct.coresight_ops_source, [16 x i8] } { %struct.coresight_ops_source { ptr @etm_cpu_id, ptr @etm_trace_id, ptr @etm_enable, ptr @etm_disable }, [16 x i8] zeroinitializer }, align 32
@etm_enable_sysfs.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str, ptr @.str.22, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"coresight_etm3x\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"etm_enable_sysfs\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ETM tracing enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@etm_enable_hw.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.24, ptr @.str, ptr @.str.25, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"etm_enable_hw\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cpu: %d enable smp call done: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@etm_clr_prog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.26, ptr @.str, i32 187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"etm_clr_prog\00", [19 x i8] zeroinitializer }, align 32
@etm_clr_prog._entry_ptr = internal global ptr @etm_clr_prog._entry, section ".printk_index", align 4
@etm_enable_perf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@etm_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@etm_disable_sysfs.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.27, ptr @.str, ptr @.str.28, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"etm_disable_sysfs\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ETM tracing disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@etm_disable_hw.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.29, ptr @.str, ptr @.str.30, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"etm_disable_hw\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cpu: %d disable smp call done\0A\00", [33 x i8] zeroinitializer }, align 32
@etm_disable_perf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ETM 3.3\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.amba_cs_uci_id, [16 x i8] } { %struct.amba_cs_uci_id { i32 0, i32 0, i32 0, ptr @.str.31 }, [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ETM 3.5\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.amba_cs_uci_id, [16 x i8] } { %struct.amba_cs_uci_id { i32 0, i32 0, i32 0, ptr @.str.32 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.amba_cs_uci_id, [16 x i8] } { %struct.amba_cs_uci_id { i32 0, i32 0, i32 0, ptr @.str.32 }, [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PTM 1.0\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.amba_cs_uci_id, [16 x i8] } { %struct.amba_cs_uci_id { i32 0, i32 0, i32 0, ptr @.str.35 }, [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PTM 1.1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.amba_cs_uci_id, [16 x i8] } { %struct.amba_cs_uci_id { i32 0, i32 0, i32 0, ptr @.str.37 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.amba_cs_uci_id, [16 x i8] } { %struct.amba_cs_uci_id { i32 0, i32 0, i32 0, ptr @.str.37 }, [16 x i8] zeroinitializer }, align 32
@hp_online = internal global { i32, [28 x i8] } zeroinitializer, align 32
@etm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Error registering etm3x driver\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"etm_init\00", [23 x i8] zeroinitializer }, align 32
@etm_init._entry_ptr = internal global ptr @etm_init._entry, section ".printk_index", align 4
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm/coresight:starting\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arm/coresight:online\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 35, i64 37, i64 48, i64 49]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"boot_enable\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 40, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 195, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"etm_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 984, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 275, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 986, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"etm_dev_pm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 962, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"etm_ids\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 966, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 835, i32 61 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 846, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 848, i32 44 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 859, i32 47 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 865, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [11 x i8] c"etm_cs_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 675, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"etmdrvdata\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 43, i32 28 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 898, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [47 x i8] c"../drivers/hwtracing/coresight/coresight-etm.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 261, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 166, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"etm_source_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 668, i32 42 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 530, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 108, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 427, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 185, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 634, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 586, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 968, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 970, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 974, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 976, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [10 x i8] c"hp_online\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 45, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1008, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 790, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [54 x i8] c"../drivers/hwtracing/coresight/coresight-etm3x-core.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 797, i32 10 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_boot_enabletype297, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_etm_exit, ptr @__initcall__kmod_coresight_etm3x__302_1021_etm_init6, ptr @__param_boot_enable, ptr @etm_clr_prog._entry, ptr @etm_clr_prog._entry_ptr, ptr @etm_exit, ptr @etm_init._entry, ptr @etm_init._entry_ptr, ptr @etm_probe._entry, ptr @etm_probe._entry.13, ptr @etm_probe._entry_ptr, ptr @etm_probe._entry_ptr.16, ptr @etm_readl._entry, ptr @etm_readl._entry_ptr, ptr @etm_set_prog._entry, ptr @etm_set_prog._entry_ptr, ptr @etm_writel._entry, ptr @etm_writel._entry_ptr, ptr @boot_enable, ptr @.str, ptr @etm_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @etm_dev_pm_ops, ptr @etm_ids, ptr @.str.7, ptr @etm_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @etm_cs_ops, ptr @etmdrvdata, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @etm_source_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.compoundliteral, ptr @.str.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @hp_online, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_readl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_ids to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_cs_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etmdrvdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_writel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_set_prog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_source_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_clr_prog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_online to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etm_set_default(ptr noundef writeonly %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %config, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b82 = load i1, ptr @etm_set_default.__already_done, align 1
  br i1 %.b82, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !131

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @etm_set_default.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 195, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %enable_ctrl1 = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 5
  %0 = ptrtoint ptr %enable_ctrl1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16777216, ptr %enable_ctrl1, align 4
  %enable_ctrl2 = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 6
  %1 = ptrtoint ptr %enable_ctrl2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %enable_ctrl2, align 4
  %enable_event = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 4
  %trigger_event = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 2
  %2 = ptrtoint ptr %trigger_event to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16495, ptr %trigger_event, align 4
  %3 = ptrtoint ptr %enable_event to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 111, ptr %enable_event, align 4
  %seq_12_event = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 17
  %4 = ptrtoint ptr %seq_12_event to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16495, ptr %seq_12_event, align 4
  %seq_21_event = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 18
  %5 = ptrtoint ptr %seq_21_event to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16495, ptr %seq_21_event, align 4
  %seq_23_event = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 19
  %6 = ptrtoint ptr %seq_23_event to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16495, ptr %seq_23_event, align 4
  %seq_31_event = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 20
  %7 = ptrtoint ptr %seq_31_event to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16495, ptr %seq_31_event, align 4
  %seq_32_event = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 21
  %8 = ptrtoint ptr %seq_32_event to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16495, ptr %seq_32_event, align 4
  %seq_13_event = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 22
  %9 = ptrtoint ptr %seq_13_event to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16495, ptr %seq_13_event, align 4
  %timestamp_event = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 28
  %10 = ptrtoint ptr %timestamp_event to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16495, ptr %timestamp_event, align 4
  %arrayidx = getelementptr %struct.etm_config, ptr %config, i32 0, i32 13, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx41 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 14, i32 0
  %12 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16495, ptr %arrayidx41, align 4
  %arrayidx42 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 15, i32 0
  %13 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16495, ptr %arrayidx42, align 4
  %arrayidx43 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 16, i32 0
  %14 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx43, align 4
  %arrayidx.1 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx.1, align 4
  %arrayidx41.1 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16495, ptr %arrayidx41.1, align 4
  %arrayidx42.1 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16495, ptr %arrayidx42.1, align 4
  %arrayidx43.1 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 16, i32 1
  %18 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx43.1, align 4
  %arrayidx.2 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 13, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx.2, align 4
  %arrayidx41.2 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 14, i32 2
  %20 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16495, ptr %arrayidx41.2, align 4
  %arrayidx42.2 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 15, i32 2
  %21 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16495, ptr %arrayidx42.2, align 4
  %arrayidx43.2 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 16, i32 2
  %22 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx43.2, align 4
  %arrayidx.3 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 13, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx.3, align 4
  %arrayidx41.3 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 14, i32 3
  %24 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16495, ptr %arrayidx41.3, align 4
  %arrayidx42.3 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 15, i32 3
  %25 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16495, ptr %arrayidx42.3, align 4
  %arrayidx43.3 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 16, i32 3
  %26 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx43.3, align 4
  %seq_curr_state = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 23
  %27 = ptrtoint ptr %seq_curr_state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %seq_curr_state, align 4
  %ctxid_idx = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 24
  %28 = ptrtoint ptr %ctxid_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ctxid_idx, align 4
  %uglygep = getelementptr i8, ptr %config, i32 328
  %sync_freq = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 27
  %29 = call ptr @memset(ptr %uglygep, i32 0, i32 16)
  %30 = ptrtoint ptr %sync_freq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1024, ptr %sync_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @etm_config_trace_mode(ptr nocapture noundef %config) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %2 = add i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool4.not = icmp sgt i32 %1, -1
  %enable_ctrl2 = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 6
  %4 = ptrtoint ptr %enable_ctrl2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %enable_ctrl2, align 4
  %enable_ctrl1 = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 5
  %5 = ptrtoint ptr %enable_ctrl1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %enable_ctrl1, align 4
  %. = select i1 %tobool4.not, i32 11289, i32 9241
  %addr_val = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 9
  %6 = ptrtoint ptr %addr_val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %addr_val, align 4
  %arrayidx14 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %arrayidx14, align 4
  %addr_acctype = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 10
  %8 = ptrtoint ptr %addr_acctype to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %., ptr %addr_acctype, align 4
  %arrayidx17 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %., ptr %arrayidx17, align 4
  %addr_type = getelementptr inbounds %struct.etm_config, ptr %config, i32 0, i32 11
  %10 = ptrtoint ptr %addr_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %addr_type, align 4
  %arrayidx20 = getelementptr %struct.etm_config, ptr %config, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %arrayidx20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etm_get_trace_id(ptr noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drvdata, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %csdev = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 2
  %0 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev, align 4
  %parent = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %mode = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #11
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %traceid = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 19
  %6 = ptrtoint ptr %traceid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %traceid, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  %spinlock = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 3
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #11
  %8 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %use_cp14.i = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 7
  %11 = ptrtoint ptr %use_cp14.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_cp14.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  %call.i25 = call i32 @etm_readl_cp14(i32 noundef 512, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool1.not.i = icmp eq i32 %call.i25, 0
  br i1 %tobool1.not.i, label %if.then.i.etm_readl.exit_crit_edge, label %do.end.i

if.then.i.etm_readl.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csdev, align 4
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %14, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef 512) #14
  br label %etm_readl.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drvdata, align 4
  %add.ptr.i26 = getelementptr i8, ptr %16, i32 512
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #11, !srcloc !136
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val.i, align 4
  br label %etm_readl.exit

etm_readl.exit:                                   ; preds = %if.else.i, %do.end.i, %if.then.i.etm_readl.exit_crit_edge
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %and = and i32 %21, 63
  %22 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drvdata, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @arm_heavy_mb() #11
  %add.ptr.i27 = getelementptr i8, ptr %23, i32 4016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #11, !srcloc !132
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call7) #11
  %call.i28 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %etm_readl.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then2 ], [ %and, %etm_readl.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @etm_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amba_driver_unregister(ptr noundef nonnull @etm_driver) #11
  tail call fastcc void @etm_hp_clear()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @etm_hp_clear() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__cpuhp_remove_state(i32 noundef 143, i1 noundef zeroext false) #11
  %0 = load i32, ptr @hp_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext false) #11
  store i32 0, ptr @hp_online, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @etm_hp_setup() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @amba_driver_register(ptr noundef nonnull @etm_driver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #14
  tail call fastcc void @etm_hp_clear()
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etm_readl_cp14(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_probe(ptr noundef %adev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %desc = alloca %struct.coresight_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %desc) #11
  %0 = call ptr @memset(ptr %desc, i32 0, i32 44)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 444, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %res2 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %fwnode = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 28
  %1 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fwnode, align 4
  %call.i135 = tail call zeroext i1 @fwnode_property_present(ptr noundef %2, ptr noundef nonnull @.str.7) #11
  %use_cp14 = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 7
  %frombool = zext i1 %call.i135 to i8
  %3 = ptrtoint ptr %use_cp14 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %use_cp14, align 1
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef %res2) #11
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %call.i, align 4
  %access = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7
  %7 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %access, align 4
  %.compoundliteral.sroa.287.0.access.sroa_idx = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %.compoundliteral.sroa.287.0.access.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %.compoundliteral.sroa.287.0.access.sroa_idx, align 4
  %spinlock = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.8, ptr noundef nonnull @etm_probe.__key, i16 noundef signext 3) #11
  %call12 = tail call ptr @devm_clk_get(ptr noundef %adev, ptr noundef nonnull @.str.9) #11
  %atclk = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %atclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %atclk, align 4
  %cmp.i136 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.end8.if.end21_crit_edge, label %if.then15

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then15:                                        ; preds = %if.end8
  %call.i137 = tail call i32 @clk_prepare(ptr noundef %call12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then15
  %call1.i = tail call i32 @clk_enable(ptr noundef %call12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end21_crit_edge, label %if.then3.i

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %call12) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end.i.if.end21_crit_edge, %if.end8.if.end21_crit_edge
  %call22 = tail call i32 @coresight_get_cpu(ptr noundef %adev) #11
  %cpu = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call22, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %call28 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %adev, i32 noundef 3264, ptr noundef nonnull @.str.10, i32 noundef %call22) #11
  %name = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 6
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call28, ptr %name, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.end26.cleanup_crit_edge, label %if.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %call34 = tail call i32 @smp_call_function_single(i32 noundef %13, ptr noundef nonnull @etm_init_arch_data, ptr noundef nonnull %call.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end32.if.end40_crit_edge, label %do.end39

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.11) #14
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %if.end32.if.end40_crit_edge
  %arch = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %arch to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arch, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %if.end40.cleanup_crit_edge [
    i8 35, label %if.end40.if.end45_crit_edge
    i8 37, label %if.end40.if.end45_crit_edge149
    i8 48, label %if.end40.if.end45_crit_edge150
    i8 49, label %if.end40.if.end45_crit_edge151
  ]

if.end40.if.end45_crit_edge151:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end40.if.end45_crit_edge150:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end40.if.end45_crit_edge149:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45:                                         ; preds = %if.end40.if.end45_crit_edge, %if.end40.if.end45_crit_edge149, %if.end40.if.end45_crit_edge150, %if.end40.if.end45_crit_edge151
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %mul.i.i = shl i32 %18, 1
  %add.i.i = add i32 %mul.i.i, 16
  %traceid.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 19
  %19 = ptrtoint ptr %traceid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i.i, ptr %traceid.i, align 4
  %config = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20
  %tobool.not.i139 = icmp eq ptr %config, null
  br i1 %tobool.not.i139, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end45
  %.b82.i = load i1, ptr @etm_set_default.__already_done, align 1
  br i1 %.b82.i, label %land.rhs.i.etm_set_default.exit_crit_edge, label %if.then.i, !prof !131

land.rhs.i.etm_set_default.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_set_default.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @etm_set_default.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 195, i32 noundef 9, ptr noundef null) #11
  br label %etm_set_default.exit

if.end39.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %enable_ctrl1.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 5
  %20 = ptrtoint ptr %enable_ctrl1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16777216, ptr %enable_ctrl1.i, align 4
  %enable_ctrl2.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 6
  %21 = ptrtoint ptr %enable_ctrl2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %enable_ctrl2.i, align 4
  %enable_event.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 4
  %trigger_event.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 2
  %22 = ptrtoint ptr %trigger_event.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16495, ptr %trigger_event.i, align 4
  %23 = ptrtoint ptr %enable_event.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 111, ptr %enable_event.i, align 4
  %seq_12_event.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 17
  %24 = ptrtoint ptr %seq_12_event.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16495, ptr %seq_12_event.i, align 4
  %seq_21_event.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 18
  %25 = ptrtoint ptr %seq_21_event.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16495, ptr %seq_21_event.i, align 4
  %seq_23_event.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 19
  %26 = ptrtoint ptr %seq_23_event.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16495, ptr %seq_23_event.i, align 4
  %seq_31_event.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 20
  %27 = ptrtoint ptr %seq_31_event.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16495, ptr %seq_31_event.i, align 4
  %seq_32_event.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 21
  %28 = ptrtoint ptr %seq_32_event.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16495, ptr %seq_32_event.i, align 4
  %seq_13_event.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 22
  %29 = ptrtoint ptr %seq_13_event.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16495, ptr %seq_13_event.i, align 4
  %timestamp_event.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 28
  %30 = ptrtoint ptr %timestamp_event.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16495, ptr %timestamp_event.i, align 4
  %arrayidx.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 13
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx.i, align 4
  %arrayidx41.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 14
  %32 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16495, ptr %arrayidx41.i, align 4
  %arrayidx42.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 15
  %33 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16495, ptr %arrayidx42.i, align 4
  %arrayidx43.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 16
  %34 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx43.i, align 4
  %arrayidx.1.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 13, i32 1
  %35 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx.1.i, align 4
  %arrayidx41.1.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 14, i32 1
  %36 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16495, ptr %arrayidx41.1.i, align 4
  %arrayidx42.1.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 15, i32 1
  %37 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16495, ptr %arrayidx42.1.i, align 4
  %arrayidx43.1.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 16, i32 1
  %38 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx43.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 13, i32 2
  %39 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx.2.i, align 4
  %arrayidx41.2.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 14, i32 2
  %40 = ptrtoint ptr %arrayidx41.2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16495, ptr %arrayidx41.2.i, align 4
  %arrayidx42.2.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 15, i32 2
  %41 = ptrtoint ptr %arrayidx42.2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16495, ptr %arrayidx42.2.i, align 4
  %arrayidx43.2.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 16, i32 2
  %42 = ptrtoint ptr %arrayidx43.2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx43.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 13, i32 3
  %43 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx.3.i, align 4
  %arrayidx41.3.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 14, i32 3
  %44 = ptrtoint ptr %arrayidx41.3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16495, ptr %arrayidx41.3.i, align 4
  %arrayidx42.3.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 15, i32 3
  %45 = ptrtoint ptr %arrayidx42.3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16495, ptr %arrayidx42.3.i, align 4
  %arrayidx43.3.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 16, i32 3
  %46 = ptrtoint ptr %arrayidx43.3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx43.3.i, align 4
  %seq_curr_state.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 23
  %47 = ptrtoint ptr %seq_curr_state.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %seq_curr_state.i, align 4
  %ctxid_idx.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 24
  %48 = ptrtoint ptr %ctxid_idx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %ctxid_idx.i, align 4
  %uglygep.i = getelementptr %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 25
  %sync_freq.i = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 20, i32 27
  %49 = call ptr @memset(ptr %uglygep.i, i32 0, i32 16)
  %50 = ptrtoint ptr %sync_freq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1024, ptr %sync_freq.i, align 4
  br label %etm_set_default.exit

etm_set_default.exit:                             ; preds = %if.end39.i, %if.then.i, %land.rhs.i.etm_set_default.exit_crit_edge
  %call46 = tail call ptr @coresight_get_platform_data(ptr noundef %adev) #11
  %cmp.i140 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then48, label %if.end50

if.then48:                                        ; preds = %etm_set_default.exit
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %call46 to i32
  br label %cleanup

if.end50:                                         ; preds = %etm_set_default.exit
  %platform_data = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 7
  %52 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call46, ptr %platform_data, align 8
  %53 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %desc, align 4
  %subtype = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 1
  %54 = ptrtoint ptr %subtype to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %subtype, align 4
  %ops = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 2
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @etm_cs_ops, ptr %ops, align 4
  %pdata52 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 3
  %56 = ptrtoint ptr %pdata52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call46, ptr %pdata52, align 4
  %dev53 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 4
  %57 = ptrtoint ptr %dev53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %adev, ptr %dev53, align 4
  %groups = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 5
  %58 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @coresight_etm_groups, ptr %groups, align 4
  %call54 = call ptr @coresight_register(ptr noundef nonnull %desc) #11
  %csdev = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 2
  %59 = ptrtoint ptr %csdev to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call54, ptr %csdev, align 4
  %cmp.i141 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %call54 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  %call62 = call i32 @etm_perf_symlink(ptr noundef %call54, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %csdev, align 4
  call void @coresight_unregister(ptr noundef %62) #11
  br label %cleanup

if.end66:                                         ; preds = %if.end60
  %63 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @etmdrvdata, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %arrayidx, align 4
  %call.i142 = call i32 @__pm_runtime_idle(ptr noundef %adev, i32 noundef 5) #11
  %66 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %csdev, align 4
  %dev74 = getelementptr inbounds %struct.coresight_device, ptr %67, i32 0, i32 5
  %data.i = getelementptr inbounds %struct.amba_id, ptr %id, i32 0, i32 2
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i, align 4
  %tobool.not.i143 = icmp eq ptr %69, null
  br i1 %tobool.not.i143, label %if.end66.coresight_get_uci_data.exit_crit_edge, label %if.end.i144

if.end66.coresight_get_uci_data.exit_crit_edge:   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %coresight_get_uci_data.exit

if.end.i144:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %data1.i = getelementptr inbounds %struct.amba_cs_uci_id, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data1.i, align 4
  br label %coresight_get_uci_data.exit

coresight_get_uci_data.exit:                      ; preds = %if.end.i144, %if.end66.coresight_get_uci_data.exit_crit_edge
  %retval.0.i145 = phi ptr [ %71, %if.end.i144 ], [ null, %if.end66.coresight_get_uci_data.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev74, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i145) #14
  %72 = load i32, ptr @boot_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool76.not = icmp eq i32 %72, 0
  br i1 %tobool76.not, label %coresight_get_uci_data.exit.cleanup_crit_edge, label %if.then77

coresight_get_uci_data.exit.cleanup_crit_edge:    ; preds = %coresight_get_uci_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then77:                                        ; preds = %coresight_get_uci_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %csdev, align 4
  %call79 = call i32 @coresight_enable(ptr noundef %74) #11
  %boot_enable = getelementptr inbounds %struct.etm_drvdata, ptr %call.i, i32 0, i32 10
  %75 = ptrtoint ptr %boot_enable to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %boot_enable, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %coresight_get_uci_data.exit.cleanup_crit_edge, %if.then64, %if.then57, %if.then48, %if.end40.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then3.i, %if.then15.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %51, %if.then48 ], [ %60, %if.then57 ], [ %call62, %if.then64 ], [ -12, %entry.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ], [ 0, %if.then77 ], [ 0, %coresight_get_uci_data.exit.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i137, %if.then15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %desc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_remove(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %csdev = getelementptr inbounds %struct.etm_drvdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev, align 4
  %call1 = tail call i32 @etm_perf_symlink(ptr noundef %3, i1 noundef zeroext false) #11
  tail call void @cpus_read_lock() #11
  %cpu = getelementptr inbounds %struct.etm_drvdata, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %call3 = tail call i32 @smp_call_function_single(i32 noundef %5, ptr noundef nonnull @clear_etmdrvdata, ptr noundef %cpu, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @etmdrvdata, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @cpus_read_unlock() #11
  %9 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csdev, align 4
  tail call void @coresight_unregister(ptr noundef %10) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atclk = getelementptr inbounds %struct.etm_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atclk = getelementptr inbounds %struct.etm_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_get_cpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_init_arch_data(ptr noundef %info) #0 align 64 {
entry:
  %val.i86 = alloca i32, align 4
  %val.i74 = alloca i32, align 4
  %val.i63 = alloca i32, align 4
  %val.i51 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %use_cp14.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %call.i.i = tail call i32 @etm_writel_cp14(i32 noundef 768, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.etm_os_unlock.exit_crit_edge, label %do.end.i.i

if.then.i.i.etm_os_unlock.exit_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_os_unlock.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %csdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.coresight_device, ptr %3, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.1, i32 noundef 768) #14
  br label %etm_os_unlock.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !132
  br label %etm_os_unlock.exit

etm_os_unlock.exit:                               ; preds = %if.else.i.i, %do.end.i.i, %if.then.i.i.etm_os_unlock.exit_crit_edge
  %os_unlock.i = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 11
  %6 = ptrtoint ptr %os_unlock.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %os_unlock.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %10 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %etm_os_unlock.exit
  %call.i = call i32 @etm_readl_cp14(i32 noundef 788, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.etm_readl.exit_crit_edge, label %do.end.i

if.then.i.etm_readl.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csdev.i, align 4
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %13, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef 788) #14
  br label %etm_readl.exit

if.else.i:                                        ; preds = %etm_os_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %add.ptr.i49 = getelementptr i8, ptr %15, i32 788
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #11, !srcloc !136
  br label %etm_readl.exit

etm_readl.exit:                                   ; preds = %if.else.i, %do.end.i, %if.then.i.etm_readl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  %add.ptr.i50 = getelementptr i8, ptr %18, i32 784
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #11, !srcloc !136
  %20 = or i32 %19, 134217728
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %add.ptr2.i = getelementptr i8, ptr %22, i32 784
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %20) #11, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !139
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  call fastcc void @etm_clr_pwrdwn(ptr noundef %info)
  call fastcc void @etm_set_prog(ptr noundef %info)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i51) #11
  %23 = ptrtoint ptr %val.i51 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i51, align 4, !annotation !134
  %24 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i53 = icmp eq i8 %25, 0
  br i1 %tobool.not.i53, label %if.else.i61, label %if.then.i56

if.then.i56:                                      ; preds = %etm_readl.exit
  %call.i54 = call i32 @etm_readl_cp14(i32 noundef 484, ptr noundef nonnull %val.i51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool1.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool1.not.i55, label %if.then.i56.etm_readl.exit62_crit_edge, label %do.end.i59

if.then.i56.etm_readl.exit62_crit_edge:           ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit62

do.end.i59:                                       ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i57 = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %csdev.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csdev.i57, align 4
  %dev.i58 = getelementptr inbounds %struct.coresight_device, ptr %27, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i58, ptr noundef nonnull @.str.1, i32 noundef 484) #14
  br label %etm_readl.exit62

if.else.i61:                                      ; preds = %etm_readl.exit
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info, align 4
  %add.ptr.i60 = getelementptr i8, ptr %29, i32 484
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #11, !srcloc !136
  %31 = call i32 @llvm.bswap.i32(i32 %30) #11
  %32 = ptrtoint ptr %val.i51 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val.i51, align 4
  br label %etm_readl.exit62

etm_readl.exit62:                                 ; preds = %if.else.i61, %do.end.i59, %if.then.i56.etm_readl.exit62_crit_edge
  %33 = ptrtoint ptr %val.i51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i51) #11
  %and = lshr i32 %34, 4
  %conv = trunc i32 %and to i8
  %arch = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 6
  %35 = ptrtoint ptr %arch to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %arch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i63) #11
  %36 = ptrtoint ptr %val.i63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i63, align 4, !annotation !134
  %37 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i65 = icmp eq i8 %38, 0
  br i1 %tobool.not.i65, label %if.else.i72, label %if.then.i68

if.then.i68:                                      ; preds = %etm_readl.exit62
  %call.i66 = call i32 @etm_readl_cp14(i32 noundef 0, ptr noundef nonnull %val.i63) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool1.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool1.not.i67, label %if.then.i68.etm_readl.exit73_crit_edge, label %do.end.i71

if.then.i68.etm_readl.exit73_crit_edge:           ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit73

do.end.i71:                                       ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i69 = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 2
  %39 = ptrtoint ptr %csdev.i69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csdev.i69, align 4
  %dev.i70 = getelementptr inbounds %struct.coresight_device, ptr %40, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i70, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_readl.exit73

if.else.i72:                                      ; preds = %etm_readl.exit62
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %info, align 4
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !136
  %44 = call i32 @llvm.bswap.i32(i32 %43) #11
  %45 = ptrtoint ptr %val.i63 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %val.i63, align 4
  br label %etm_readl.exit73

etm_readl.exit73:                                 ; preds = %if.else.i72, %do.end.i71, %if.then.i68.etm_readl.exit73_crit_edge
  %46 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i63, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i63) #11
  %and3 = and i32 %47, 2097264
  %port_size = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 5
  %48 = ptrtoint ptr %port_size to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and3, ptr %port_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i74) #11
  %49 = ptrtoint ptr %val.i74 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %val.i74, align 4, !annotation !134
  %50 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i76 = icmp eq i8 %51, 0
  br i1 %tobool.not.i76, label %if.else.i84, label %if.then.i79

if.then.i79:                                      ; preds = %etm_readl.exit73
  %call.i77 = call i32 @etm_readl_cp14(i32 noundef 488, ptr noundef nonnull %val.i74) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool1.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool1.not.i78, label %if.then.i79.etm_readl.exit85_crit_edge, label %do.end.i82

if.then.i79.etm_readl.exit85_crit_edge:           ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit85

do.end.i82:                                       ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i80 = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 2
  %52 = ptrtoint ptr %csdev.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csdev.i80, align 4
  %dev.i81 = getelementptr inbounds %struct.coresight_device, ptr %53, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i81, ptr noundef nonnull @.str.1, i32 noundef 488) #14
  br label %etm_readl.exit85

if.else.i84:                                      ; preds = %etm_readl.exit73
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 4
  %add.ptr.i83 = getelementptr i8, ptr %55, i32 488
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #11, !srcloc !136
  %57 = call i32 @llvm.bswap.i32(i32 %56) #11
  %58 = ptrtoint ptr %val.i74 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %val.i74, align 4
  br label %etm_readl.exit85

etm_readl.exit85:                                 ; preds = %if.else.i84, %do.end.i82, %if.then.i79.etm_readl.exit85_crit_edge
  %59 = ptrtoint ptr %val.i74 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i74, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i74) #11
  %etmccer = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 18
  %61 = ptrtoint ptr %etmccer to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %etmccer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i86) #11
  %62 = ptrtoint ptr %val.i86 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %val.i86, align 4, !annotation !134
  %63 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i88 = icmp eq i8 %64, 0
  br i1 %tobool.not.i88, label %if.else.i96, label %if.then.i91

if.then.i91:                                      ; preds = %etm_readl.exit85
  %call.i89 = call i32 @etm_readl_cp14(i32 noundef 4, ptr noundef nonnull %val.i86) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool1.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool1.not.i90, label %if.then.i91.etm_readl.exit97_crit_edge, label %do.end.i94

if.then.i91.etm_readl.exit97_crit_edge:           ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit97

do.end.i94:                                       ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i92 = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 2
  %65 = ptrtoint ptr %csdev.i92 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %csdev.i92, align 4
  %dev.i93 = getelementptr inbounds %struct.coresight_device, ptr %66, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i93, ptr noundef nonnull @.str.1, i32 noundef 4) #14
  br label %etm_readl.exit97

if.else.i96:                                      ; preds = %etm_readl.exit85
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %info, align 4
  %add.ptr.i95 = getelementptr i8, ptr %68, i32 4
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #11, !srcloc !136
  %70 = call i32 @llvm.bswap.i32(i32 %69) #11
  %71 = ptrtoint ptr %val.i86 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %val.i86, align 4
  br label %etm_readl.exit97

etm_readl.exit97:                                 ; preds = %if.else.i96, %do.end.i94, %if.then.i91.etm_readl.exit97_crit_edge
  %72 = ptrtoint ptr %val.i86 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val.i86, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i86) #11
  %etmccr6 = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 17
  %74 = ptrtoint ptr %etmccr6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %etmccr6, align 4
  %call5.tr = trunc i32 %73 to i8
  %75 = shl i8 %call5.tr, 1
  %conv9 = and i8 %75, 30
  %nr_addr_cmp = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 12
  %76 = ptrtoint ptr %nr_addr_cmp to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv9, ptr %nr_addr_cmp, align 1
  %and10 = lshr i32 %73, 13
  %77 = trunc i32 %and10 to i8
  %conv12 = and i8 %77, 7
  %nr_cntr = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 13
  %78 = ptrtoint ptr %nr_cntr to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv12, ptr %nr_cntr, align 4
  %and13 = lshr i32 %73, 17
  %79 = trunc i32 %and13 to i8
  %conv15 = and i8 %79, 7
  %nr_ext_inp = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 14
  %80 = ptrtoint ptr %nr_ext_inp to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv15, ptr %nr_ext_inp, align 1
  %and16 = lshr i32 %73, 20
  %81 = trunc i32 %and16 to i8
  %conv18 = and i8 %81, 7
  %nr_ext_out = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 15
  %82 = ptrtoint ptr %nr_ext_out to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv18, ptr %nr_ext_out, align 2
  %and19 = lshr i32 %73, 24
  %83 = trunc i32 %and19 to i8
  %conv21 = and i8 %83, 3
  %nr_ctxid_cmp = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 16
  %84 = ptrtoint ptr %nr_ctxid_cmp to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv21, ptr %nr_ctxid_cmp, align 1
  call fastcc void @etm_set_pwrdwn(ptr noundef %info)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  %85 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %info, align 4
  %add.ptr.i98 = getelementptr i8, ptr %86, i32 784
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #11, !srcloc !136
  %88 = and i32 %87, -134217729
  %89 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %info, align 4
  %add.ptr2.i99 = getelementptr i8, ptr %90, i32 784
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i99, i32 %88) #11, !srcloc !132
  %91 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %info, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @arm_heavy_mb() #11
  %add.ptr.i100 = getelementptr i8, ptr %92, i32 4016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 0) #11, !srcloc !132
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_get_platform_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etm_perf_symlink(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @etm_clr_pwrdwn(ptr nocapture noundef readonly %drvdata) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %use_cp14.i = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 7
  %1 = ptrtoint ptr %use_cp14.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %use_cp14.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @etm_readl_cp14(i32 noundef 0, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.etm_readl.exit_crit_edge, label %do.end.i

if.then.i.etm_readl.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 2
  %3 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csdev.i, align 4
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %4, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drvdata, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !136
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val.i, align 4
  br label %etm_readl.exit

etm_readl.exit:                                   ; preds = %if.else.i, %do.end.i, %if.then.i.etm_readl.exit_crit_edge
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %and = and i32 %11, -2
  %12 = ptrtoint ptr %use_cp14.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_cp14.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i4 = icmp eq i8 %13, 0
  br i1 %tobool.not.i4, label %if.else.i11, label %if.then.i7

if.then.i7:                                       ; preds = %etm_readl.exit
  %call.i5 = call i32 @etm_writel_cp14(i32 noundef 0, i32 noundef %and) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool1.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool1.not.i6, label %if.then.i7.etm_writel.exit_crit_edge, label %do.end.i10

if.then.i7.etm_writel.exit_crit_edge:             ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit

do.end.i10:                                       ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i8 = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 2
  %14 = ptrtoint ptr %csdev.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csdev.i8, align 4
  %dev.i9 = getelementptr inbounds %struct.coresight_device, ptr %15, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i9, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_writel.exit

if.else.i11:                                      ; preds = %etm_readl.exit
  call void @__sanitizer_cov_trace_pc() #13
  %16 = call i32 @llvm.bswap.i32(i32 %and) #11
  %17 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drvdata, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #11, !srcloc !132
  br label %etm_writel.exit

etm_writel.exit:                                  ; preds = %if.else.i11, %do.end.i10, %if.then.i7.etm_writel.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @etm_set_prog(ptr nocapture noundef readonly %drvdata) unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %use_cp14.i = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 7
  %1 = ptrtoint ptr %use_cp14.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %use_cp14.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @etm_readl_cp14(i32 noundef 0, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.etm_readl.exit_crit_edge, label %do.end.i

if.then.i.etm_readl.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 2
  %3 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csdev.i, align 4
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %4, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drvdata, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !136
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val.i, align 4
  br label %etm_readl.exit

etm_readl.exit:                                   ; preds = %if.else.i, %do.end.i, %if.then.i.etm_readl.exit_crit_edge
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %or = or i32 %11, 1024
  %12 = ptrtoint ptr %use_cp14.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_cp14.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i7 = icmp eq i8 %13, 0
  br i1 %tobool.not.i7, label %if.else.i14, label %if.then.i10

if.then.i10:                                      ; preds = %etm_readl.exit
  %call.i8 = call i32 @etm_writel_cp14(i32 noundef 0, i32 noundef %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool1.not.i9 = icmp eq i32 %call.i8, 0
  br i1 %tobool1.not.i9, label %if.then.i10.etm_writel.exit_crit_edge, label %do.end.i13

if.then.i10.etm_writel.exit_crit_edge:            ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit

do.end.i13:                                       ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i11 = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 2
  %14 = ptrtoint ptr %csdev.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csdev.i11, align 4
  %dev.i12 = getelementptr inbounds %struct.coresight_device, ptr %15, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i12, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_writel.exit

if.else.i14:                                      ; preds = %etm_readl.exit
  call void @__sanitizer_cov_trace_pc() #13
  %16 = call i32 @llvm.bswap.i32(i32 %or) #11
  %17 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drvdata, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #11, !srcloc !132
  br label %etm_writel.exit

etm_writel.exit:                                  ; preds = %if.else.i14, %do.end.i13, %if.then.i10.etm_writel.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %csdev.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %etm_writel.exit
  %i.01.i = phi i32 [ 100, %etm_writel.exit ], [ %dec.i, %for.inc.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i.i, align 4, !annotation !134
  %20 = ptrtoint ptr %use_cp14.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_cp14.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %call.i.i = call i32 @etm_readl_cp14(i32 noundef 16, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.etm_readl.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.etm_readl.exit.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %csdev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.coresight_device, ptr %23, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.1, i32 noundef 16) #14
  br label %etm_readl.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 16
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !136
  %27 = call i32 @llvm.bswap.i32(i32 %26) #11
  %28 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val.i.i, align 4
  br label %etm_readl.exit.i

etm_readl.exit.i:                                 ; preds = %if.else.i.i, %do.end.i.i, %if.then.i.i.etm_readl.exit.i_crit_edge
  %29 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %and4.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end8.i, label %etm_readl.exit.i.if.end_crit_edge

etm_readl.exit.i.if.end_crit_edge:                ; preds = %etm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end8.i:                                        ; preds = %etm_readl.exit.i
  %tobool9.not.i = icmp eq i32 %i.01.i, 1
  br i1 %tobool9.not.i, label %do.end, label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748) #11
  %dec.i = add nsw i32 %i.01.i, -1
  br label %for.body.i

do.end:                                           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %csdev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csdev.i.i, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %33, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 16) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %etm_readl.exit.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @etm_set_pwrdwn(ptr nocapture noundef readonly %drvdata) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %use_cp14.i = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 7
  %1 = ptrtoint ptr %use_cp14.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %use_cp14.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @etm_readl_cp14(i32 noundef 0, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.etm_readl.exit_crit_edge, label %do.end.i

if.then.i.etm_readl.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 2
  %3 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csdev.i, align 4
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %4, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drvdata, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !136
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val.i, align 4
  br label %etm_readl.exit

etm_readl.exit:                                   ; preds = %if.else.i, %do.end.i, %if.then.i.etm_readl.exit_crit_edge
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %or = or i32 %11, 1
  %12 = ptrtoint ptr %use_cp14.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_cp14.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i4 = icmp eq i8 %13, 0
  br i1 %tobool.not.i4, label %if.else.i11, label %if.then.i7

if.then.i7:                                       ; preds = %etm_readl.exit
  %call.i5 = call i32 @etm_writel_cp14(i32 noundef 0, i32 noundef %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool1.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool1.not.i6, label %if.then.i7.etm_writel.exit_crit_edge, label %do.end.i10

if.then.i7.etm_writel.exit_crit_edge:             ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit

do.end.i10:                                       ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i8 = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 2
  %14 = ptrtoint ptr %csdev.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csdev.i8, align 4
  %dev.i9 = getelementptr inbounds %struct.coresight_device, ptr %15, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i9, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_writel.exit

if.else.i11:                                      ; preds = %etm_readl.exit
  call void @__sanitizer_cov_trace_pc() #13
  %16 = call i32 @llvm.bswap.i32(i32 %or) #11
  %17 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drvdata, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #11, !srcloc !132
  br label %etm_writel.exit

etm_writel.exit:                                  ; preds = %if.else.i11, %do.end.i10, %if.then.i7.etm_writel.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etm_writel_cp14(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @etm_cpu_id(ptr nocapture noundef readonly %csdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cpu = getelementptr inbounds %struct.etm_drvdata, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_trace_id(ptr nocapture noundef readonly %csdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @etm_get_trace_id(ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_enable(ptr noundef %csdev, ptr nocapture noundef readonly %event, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mode1 = getelementptr inbounds %struct.etm_drvdata, ptr %3, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mode1, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %mode1, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %mode1, ptr %mode1, i32 0, i32 %mode, ptr elementtype(i32) %mode1) #11, !srcloc !149
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_long_cmpxchg.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

atomic_long_cmpxchg.exit:                         ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %tobool.not = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %atomic_long_cmpxchg.exit.cleanup_crit_edge

atomic_long_cmpxchg.exit.cleanup_crit_edge:       ; preds = %atomic_long_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %atomic_long_cmpxchg.exit
  %5 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %mode, label %if.end.if.then7_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call fastcc i32 @etm_enable_sysfs(ptr noundef %csdev)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %cpu.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !121) #11
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu2.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp.not.i = icmp eq i32 %11, %15
  br i1 %cmp.not.i, label %if.end39.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %sw.bb4
  %.b46.i = load i1, ptr @etm_enable_perf.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.if.then7_crit_edge, label %if.then.i, !prof !131

land.rhs.i.if.then7_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @etm_enable_perf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 494, i32 noundef 9, ptr noundef null) #11
  br label %if.then7

if.end39.i:                                       ; preds = %sw.bb4
  %config1.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20
  %16 = call ptr @memset(ptr %config1.i.i, i32 0, i32 352)
  %exclude_kernel.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 6
  %17 = ptrtoint ptr %exclude_kernel.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %bf.load.i.i = load i64, ptr %exclude_kernel.i.i, align 8
  %18 = and i64 %bf.load.i.i, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool3.not.i.i = icmp eq i64 %18, 0
  br i1 %tobool3.not.i.i, label %if.end39.i.if.end5.i.i_crit_edge, label %if.then4.i.i

if.end39.i.if.end5.i.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1073741824, ptr %config1.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.end39.i.if.end5.i.i_crit_edge
  %20 = ptrtoint ptr %exclude_kernel.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %bf.load6.i.i = load i64, ptr %exclude_kernel.i.i, align 8
  %21 = and i64 %bf.load6.i.i, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool9.not.i.i = icmp eq i64 %21, 0
  br i1 %tobool9.not.i.i, label %if.end5.i.i.if.end12.i.i_crit_edge, label %if.then10.i.i

if.end5.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -2147483648, ptr %config1.i.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then10.i.i, %if.end5.i.i.if.end12.i.i_crit_edge
  %enable_ctrl1.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 5
  %23 = ptrtoint ptr %enable_ctrl1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16777216, ptr %enable_ctrl1.i.i.i, align 4
  %enable_ctrl2.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 6
  %24 = ptrtoint ptr %enable_ctrl2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %enable_ctrl2.i.i.i, align 4
  %enable_event.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 4
  %trigger_event.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 2
  %25 = ptrtoint ptr %trigger_event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16495, ptr %trigger_event.i.i.i, align 4
  %26 = ptrtoint ptr %enable_event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 111, ptr %enable_event.i.i.i, align 4
  %seq_12_event.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 17
  %27 = ptrtoint ptr %seq_12_event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16495, ptr %seq_12_event.i.i.i, align 4
  %seq_21_event.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 18
  %28 = ptrtoint ptr %seq_21_event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16495, ptr %seq_21_event.i.i.i, align 4
  %seq_23_event.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 19
  %29 = ptrtoint ptr %seq_23_event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16495, ptr %seq_23_event.i.i.i, align 4
  %seq_31_event.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 20
  %30 = ptrtoint ptr %seq_31_event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16495, ptr %seq_31_event.i.i.i, align 4
  %seq_32_event.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 21
  %31 = ptrtoint ptr %seq_32_event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16495, ptr %seq_32_event.i.i.i, align 4
  %seq_13_event.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 22
  %32 = ptrtoint ptr %seq_13_event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16495, ptr %seq_13_event.i.i.i, align 4
  %timestamp_event.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 28
  %33 = ptrtoint ptr %timestamp_event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16495, ptr %timestamp_event.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 13
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx.i.i.i, align 4
  %arrayidx41.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 14
  %35 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16495, ptr %arrayidx41.i.i.i, align 4
  %arrayidx42.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 15
  %36 = ptrtoint ptr %arrayidx42.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16495, ptr %arrayidx42.i.i.i, align 4
  %arrayidx43.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 16
  %37 = ptrtoint ptr %arrayidx43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx43.i.i.i, align 4
  %arrayidx.1.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 13, i32 1
  %38 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx.1.i.i.i, align 4
  %arrayidx41.1.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 14, i32 1
  %39 = ptrtoint ptr %arrayidx41.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16495, ptr %arrayidx41.1.i.i.i, align 4
  %arrayidx42.1.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 15, i32 1
  %40 = ptrtoint ptr %arrayidx42.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16495, ptr %arrayidx42.1.i.i.i, align 4
  %arrayidx43.1.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 16, i32 1
  %41 = ptrtoint ptr %arrayidx43.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx43.1.i.i.i, align 4
  %arrayidx.2.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 13, i32 2
  %42 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx.2.i.i.i, align 4
  %arrayidx41.2.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 14, i32 2
  %43 = ptrtoint ptr %arrayidx41.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16495, ptr %arrayidx41.2.i.i.i, align 4
  %arrayidx42.2.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 15, i32 2
  %44 = ptrtoint ptr %arrayidx42.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16495, ptr %arrayidx42.2.i.i.i, align 4
  %arrayidx43.2.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 16, i32 2
  %45 = ptrtoint ptr %arrayidx43.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx43.2.i.i.i, align 4
  %arrayidx.3.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 13, i32 3
  %46 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx.3.i.i.i, align 4
  %arrayidx41.3.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 14, i32 3
  %47 = ptrtoint ptr %arrayidx41.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16495, ptr %arrayidx41.3.i.i.i, align 4
  %arrayidx42.3.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 15, i32 3
  %48 = ptrtoint ptr %arrayidx42.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16495, ptr %arrayidx42.3.i.i.i, align 4
  %arrayidx43.3.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 16, i32 3
  %49 = ptrtoint ptr %arrayidx43.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx43.3.i.i.i, align 4
  %seq_curr_state.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 23
  %50 = ptrtoint ptr %seq_curr_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %seq_curr_state.i.i.i, align 4
  %ctxid_idx.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 24
  %51 = ptrtoint ptr %ctxid_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %ctxid_idx.i.i.i, align 4
  %uglygep.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 25
  %sync_freq.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 27
  %52 = call ptr @memset(ptr %uglygep.i.i.i, i32 0, i32 16)
  %53 = ptrtoint ptr %sync_freq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1024, ptr %sync_freq.i.i.i, align 4
  %54 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %config1.i.i, align 4
  %56 = add i32 %55, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %if.end12.i.i.if.end16.i.i_crit_edge, label %if.end6.i.i.i

if.end12.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

if.end6.i.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %tobool4.not.i.i.i = icmp sgt i32 %55, -1
  %58 = ptrtoint ptr %enable_ctrl2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %enable_ctrl2.i.i.i, align 4
  %59 = ptrtoint ptr %enable_ctrl1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %enable_ctrl1.i.i.i, align 4
  %..i.i.i = select i1 %tobool4.not.i.i.i, i32 11289, i32 9241
  %addr_val.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 9
  %60 = ptrtoint ptr %addr_val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %addr_val.i.i.i, align 4
  %arrayidx14.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 9, i32 1
  %61 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %arrayidx14.i.i.i, align 4
  %addr_acctype.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 10
  %62 = ptrtoint ptr %addr_acctype.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %..i.i.i, ptr %addr_acctype.i.i.i, align 4
  %arrayidx17.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 10, i32 1
  %63 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %..i.i.i, ptr %arrayidx17.i.i.i, align 4
  %addr_type.i.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 11
  %64 = ptrtoint ptr %addr_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %addr_type.i.i.i, align 4
  %arrayidx20.i.i.i = getelementptr %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 11, i32 1
  %65 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %arrayidx20.i.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.end6.i.i.i, %if.end12.i.i.if.end16.i.i_crit_edge
  %config17.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %66 = ptrtoint ptr %config17.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %config17.i.i, align 8
  %and.i48.i = and i64 %67, 3489656831
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i48.i)
  %tobool18.not.i.i = icmp eq i64 %and.i48.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end16.i.i.etm_parse_event_config.exit.i_crit_edge

if.end16.i.i.etm_parse_event_config.exit.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_parse_event_config.exit.i

if.end20.i.i:                                     ; preds = %if.end16.i.i
  %conv.i.i = trunc i64 %67 to i32
  %ctrl.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 20, i32 1
  %68 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv.i.i, ptr %ctrl.i.i, align 4
  %and23.i.i = and i32 %conv.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end20.i.i.etm_parse_event_config.exit.i_crit_edge, label %land.lhs.true.i.i

if.end20.i.i.etm_parse_event_config.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_parse_event_config.exit.i

land.lhs.true.i.i:                                ; preds = %if.end20.i.i
  %etmccer.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 18
  %69 = ptrtoint ptr %etmccer.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %etmccer.i.i, align 4
  %and25.i.i = and i32 %70, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.then27.i.i, label %land.lhs.true.i.i.etm_parse_event_config.exit.i_crit_edge

land.lhs.true.i.i.etm_parse_event_config.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_parse_event_config.exit.i

if.then27.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and29.i.i = and i32 %conv.i.i, -536870913
  %71 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and29.i.i, ptr %ctrl.i.i, align 4
  br label %etm_parse_event_config.exit.i

etm_parse_event_config.exit.i:                    ; preds = %if.then27.i.i, %land.lhs.true.i.i.etm_parse_event_config.exit.i_crit_edge, %if.end20.i.i.etm_parse_event_config.exit.i_crit_edge, %if.end16.i.i.etm_parse_event_config.exit.i_crit_edge
  %call41.i = tail call fastcc i32 @etm_enable_hw(ptr noundef %9) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %etm_parse_event_config.exit.i, %sw.bb
  %ret.0 = phi i32 [ %call3, %sw.bb ], [ %call41.i, %etm_parse_event_config.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool6.not = icmp eq i32 %ret.0, 0
  br i1 %tobool6.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.then7_crit_edge

sw.epilog.if.then7_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %sw.epilog.if.then7_crit_edge, %if.then.i, %land.rhs.i.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %ret.021 = phi i32 [ %ret.0, %sw.epilog.if.then7_crit_edge ], [ -22, %if.end.if.then7_crit_edge ], [ -22, %if.then.i ], [ -22, %land.rhs.i.if.then7_crit_edge ]
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mode1, i32 noundef 4) #11
  %72 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 0, ptr %mode1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %sw.epilog.cleanup_crit_edge, %atomic_long_cmpxchg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %atomic_long_cmpxchg.exit.cleanup_crit_edge ], [ %ret.021, %if.then7 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_disable(ptr noundef %csdev, ptr nocapture noundef readnone %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mode1 = getelementptr inbounds %struct.etm_drvdata, ptr %3, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode1, i32 noundef 4) #11
  %4 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mode1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %5, label %land.rhs [
    i32 2, label %sw.bb3
    i32 1, label %sw.bb
    i32 0, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @cpus_read_lock() #11
  %spinlock.i = getelementptr inbounds %struct.etm_drvdata, ptr %10, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #11
  %cpu.i = getelementptr inbounds %struct.etm_drvdata, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %call1.i = tail call i32 @smp_call_function_single(i32 noundef %12, ptr noundef nonnull @etm_disable_hw, ptr noundef %10, i32 noundef 1) #11
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #11
  tail call void @cpus_read_unlock() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etm_disable_sysfs.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etm_disable, %if.then.i)) #11
          to label %if.then40 [label %if.then.i], !srcloc !151

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etm_disable_sysfs.__UNIQUE_ID_ddebug301, ptr noundef %dev.i, ptr noundef nonnull @.str.28) #11
  br label %if.then40

sw.bb3:                                           ; preds = %entry
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %driver_data.i.i55 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i55, align 4
  %cpu.i56 = getelementptr inbounds %struct.etm_drvdata, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %cpu.i56 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i56, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !121) #11
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu2.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp.not.i = icmp eq i32 %18, %22
  br i1 %cmp.not.i, label %if.end39.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %sw.bb3
  %.b48.i = load i1, ptr @etm_disable_perf.__already_done, align 1
  br i1 %.b48.i, label %land.rhs.i.if.then40_crit_edge, label %if.then.i57, !prof !131

land.rhs.i.if.then40_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.then.i57:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @etm_disable_perf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef null) #11
  br label %if.then40

if.end39.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %16, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  tail call fastcc void @etm_set_prog(ptr noundef %16) #11
  tail call fastcc void @etm_set_pwrdwn(ptr noundef %16) #11
  tail call void @coresight_disclaim_device_unlocked(ptr noundef %csdev) #11
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @arm_heavy_mb() #11
  %add.ptr.i50.i = getelementptr i8, ptr %26, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 0) #11, !srcloc !132
  br label %if.then40

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @etm_disable.__already_done, align 1
  br i1 %.b52, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !131

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @etm_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 660, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.then40:                                        ; preds = %if.end39.i, %if.then.i57, %land.rhs.i.if.then40_crit_edge, %if.then.i, %sw.bb
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mode1, i32 noundef 4) #11
  %27 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %mode1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.then, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @etm_enable_sysfs(ptr noundef %csdev) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.etm_enable_arg, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #11
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %arg, align 8
  %spinlock = getelementptr inbounds %struct.etm_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #11
  %cpu = getelementptr inbounds %struct.etm_drvdata, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %6)
  %cmp.not.i.i.i.i = icmp ugt i32 %7, %6
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !131

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %6, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %6, 31
  %10 = shl nuw i32 1, %and.i.i.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end9.thread_crit_edge, label %if.then

cpu_online.exit.if.end9.thread_crit_edge:         ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.thread

if.then:                                          ; preds = %cpu_online.exit
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %arg, align 8
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %call4 = call i32 @smp_call_function_single(i32 noundef %14, ptr noundef nonnull @etm_enable_hw_smp_call, ptr noundef nonnull %arg, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.then.if.end9.thread_crit_edge

if.then.if.end9.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.thread

if.end:                                           ; preds = %if.then
  %rc = getelementptr inbounds %struct.etm_enable_arg, ptr %arg, i32 0, i32 1
  %15 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %do.body, label %if.end.if.end9.thread_crit_edge

if.end.if.end9.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end.if.end9.thread_crit_edge, %if.then.if.end9.thread_crit_edge, %cpu_online.exit.if.end9.thread_crit_edge
  %ret.1.ph = phi i32 [ -19, %cpu_online.exit.if.end9.thread_crit_edge ], [ %16, %if.end.if.end9.thread_crit_edge ], [ %call4, %if.then.if.end9.thread_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #11
  br label %if.end20

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sticky_enable = getelementptr inbounds %struct.etm_drvdata, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %sticky_enable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %sticky_enable, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etm_enable_sysfs.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etm_enable_sysfs, %if.then17)) #11
          to label %if.end20 [label %if.then17], !srcloc !151

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etm_enable_sysfs.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %do.body, %if.end9.thread
  %ret.134 = phi i32 [ %ret.1.ph, %if.end9.thread ], [ 0, %if.then17 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #11
  ret i32 %ret.134
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_enable_hw_smp_call(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !152

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 441, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc i32 @etm_enable_hw(ptr noundef %1)
  %rc = getelementptr inbounds %struct.etm_enable_arg, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %rc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @etm_enable_hw(ptr noundef %drvdata) unnamed_addr #0 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %csdev2 = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 2
  %0 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev2, align 4
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %call = tail call i32 @coresight_claim_device_unlocked(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end:                                           ; preds = %entry
  tail call fastcc void @etm_clr_pwrdwn(ptr noundef %drvdata)
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %add.ptr.i153 = getelementptr i8, ptr %5, i32 784
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #11, !srcloc !136
  %7 = or i32 %6, 134217728
  %8 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %7) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !139
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %use_cp14.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 7
  %10 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  %call.i.i = tail call i32 @etm_writel_cp14(i32 noundef 768, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.etm_os_unlock.exit_crit_edge, label %do.end.i.i

if.then.i.i.etm_os_unlock.exit_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_os_unlock.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csdev2, align 4
  %dev.i.i = getelementptr inbounds %struct.coresight_device, ptr %13, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.1, i32 noundef 768) #14
  br label %etm_os_unlock.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !132
  br label %etm_os_unlock.exit

etm_os_unlock.exit:                               ; preds = %if.else.i.i, %do.end.i.i, %if.then.i.i.etm_os_unlock.exit_crit_edge
  %os_unlock.i = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 11
  %16 = ptrtoint ptr %os_unlock.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %os_unlock.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  tail call fastcc void @etm_set_prog(ptr noundef %drvdata)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %18 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %etm_os_unlock.exit
  %call.i = call i32 @etm_readl_cp14(i32 noundef 0, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.etm_readl.exit_crit_edge, label %do.end.i

if.then.i.etm_readl.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csdev2, align 4
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %21, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_readl.exit

if.else.i:                                        ; preds = %etm_os_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drvdata, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !136
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val.i, align 4
  br label %etm_readl.exit

etm_readl.exit:                                   ; preds = %if.else.i, %do.end.i, %if.then.i.etm_readl.exit_crit_edge
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %and = and i32 %28, -805312513
  %port_size = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 5
  %29 = ptrtoint ptr %port_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_size, align 4
  %ctrl = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 1
  %31 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctrl, align 4
  %or = or i32 %and, %30
  %or4 = or i32 %or, %32
  %or5 = or i32 %or4, 2048
  %33 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i155 = icmp eq i8 %34, 0
  br i1 %tobool.not.i155, label %if.else.i162, label %if.then.i158

if.then.i158:                                     ; preds = %etm_readl.exit
  %call.i156 = call i32 @etm_writel_cp14(i32 noundef 0, i32 noundef %or5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool1.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool1.not.i157, label %if.then.i158.etm_writel.exit_crit_edge, label %do.end.i161

if.then.i158.etm_writel.exit_crit_edge:           ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit

do.end.i161:                                      ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csdev2, align 4
  %dev.i160 = getelementptr inbounds %struct.coresight_device, ptr %36, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i160, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_writel.exit

if.else.i162:                                     ; preds = %etm_readl.exit
  call void @__sanitizer_cov_trace_pc() #13
  %37 = call i32 @llvm.bswap.i32(i32 %or5) #11
  %38 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drvdata, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #11, !srcloc !132
  br label %etm_writel.exit

etm_writel.exit:                                  ; preds = %if.else.i162, %do.end.i161, %if.then.i158.etm_writel.exit_crit_edge
  %trigger_event = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 2
  %40 = ptrtoint ptr %trigger_event to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %trigger_event, align 4
  %42 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i164 = icmp eq i8 %43, 0
  br i1 %tobool.not.i164, label %if.else.i172, label %if.then.i167

if.then.i167:                                     ; preds = %etm_writel.exit
  %call.i165 = call i32 @etm_writel_cp14(i32 noundef 8, i32 noundef %41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool1.not.i166 = icmp eq i32 %call.i165, 0
  br i1 %tobool1.not.i166, label %if.then.i167.etm_writel.exit173_crit_edge, label %do.end.i170

if.then.i167.etm_writel.exit173_crit_edge:        ; preds = %if.then.i167
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit173

do.end.i170:                                      ; preds = %if.then.i167
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %csdev2, align 4
  %dev.i169 = getelementptr inbounds %struct.coresight_device, ptr %45, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i169, ptr noundef nonnull @.str.1, i32 noundef 8) #14
  br label %etm_writel.exit173

if.else.i172:                                     ; preds = %etm_writel.exit
  call void @__sanitizer_cov_trace_pc() #13
  %46 = call i32 @llvm.bswap.i32(i32 %41) #11
  %47 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %drvdata, align 4
  %add.ptr.i171 = getelementptr i8, ptr %48, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %46) #11, !srcloc !132
  br label %etm_writel.exit173

etm_writel.exit173:                               ; preds = %if.else.i172, %do.end.i170, %if.then.i167.etm_writel.exit173_crit_edge
  %startstop_ctrl = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 3
  %49 = ptrtoint ptr %startstop_ctrl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %startstop_ctrl, align 4
  %51 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i175 = icmp eq i8 %52, 0
  br i1 %tobool.not.i175, label %if.else.i183, label %if.then.i178

if.then.i178:                                     ; preds = %etm_writel.exit173
  %call.i176 = call i32 @etm_writel_cp14(i32 noundef 24, i32 noundef %50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool1.not.i177 = icmp eq i32 %call.i176, 0
  br i1 %tobool1.not.i177, label %if.then.i178.etm_writel.exit184_crit_edge, label %do.end.i181

if.then.i178.etm_writel.exit184_crit_edge:        ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit184

do.end.i181:                                      ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csdev2, align 4
  %dev.i180 = getelementptr inbounds %struct.coresight_device, ptr %54, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i180, ptr noundef nonnull @.str.1, i32 noundef 24) #14
  br label %etm_writel.exit184

if.else.i183:                                     ; preds = %etm_writel.exit173
  call void @__sanitizer_cov_trace_pc() #13
  %55 = call i32 @llvm.bswap.i32(i32 %50) #11
  %56 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %drvdata, align 4
  %add.ptr.i182 = getelementptr i8, ptr %57, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 %55) #11, !srcloc !132
  br label %etm_writel.exit184

etm_writel.exit184:                               ; preds = %if.else.i183, %do.end.i181, %if.then.i178.etm_writel.exit184_crit_edge
  %enable_event = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 4
  %58 = ptrtoint ptr %enable_event to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %enable_event, align 4
  %60 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i186 = icmp eq i8 %61, 0
  br i1 %tobool.not.i186, label %if.else.i194, label %if.then.i189

if.then.i189:                                     ; preds = %etm_writel.exit184
  %call.i187 = call i32 @etm_writel_cp14(i32 noundef 32, i32 noundef %59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool1.not.i188 = icmp eq i32 %call.i187, 0
  br i1 %tobool1.not.i188, label %if.then.i189.etm_writel.exit195_crit_edge, label %do.end.i192

if.then.i189.etm_writel.exit195_crit_edge:        ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit195

do.end.i192:                                      ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %csdev2, align 4
  %dev.i191 = getelementptr inbounds %struct.coresight_device, ptr %63, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i191, ptr noundef nonnull @.str.1, i32 noundef 32) #14
  br label %etm_writel.exit195

if.else.i194:                                     ; preds = %etm_writel.exit184
  call void @__sanitizer_cov_trace_pc() #13
  %64 = call i32 @llvm.bswap.i32(i32 %59) #11
  %65 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %drvdata, align 4
  %add.ptr.i193 = getelementptr i8, ptr %66, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 %64) #11, !srcloc !132
  br label %etm_writel.exit195

etm_writel.exit195:                               ; preds = %if.else.i194, %do.end.i192, %if.then.i189.etm_writel.exit195_crit_edge
  %enable_ctrl1 = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 5
  %67 = ptrtoint ptr %enable_ctrl1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %enable_ctrl1, align 4
  %69 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i197 = icmp eq i8 %70, 0
  br i1 %tobool.not.i197, label %if.else.i205, label %if.then.i200

if.then.i200:                                     ; preds = %etm_writel.exit195
  %call.i198 = call i32 @etm_writel_cp14(i32 noundef 36, i32 noundef %68) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool1.not.i199 = icmp eq i32 %call.i198, 0
  br i1 %tobool1.not.i199, label %if.then.i200.etm_writel.exit206_crit_edge, label %do.end.i203

if.then.i200.etm_writel.exit206_crit_edge:        ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit206

do.end.i203:                                      ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %csdev2, align 4
  %dev.i202 = getelementptr inbounds %struct.coresight_device, ptr %72, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i202, ptr noundef nonnull @.str.1, i32 noundef 36) #14
  br label %etm_writel.exit206

if.else.i205:                                     ; preds = %etm_writel.exit195
  call void @__sanitizer_cov_trace_pc() #13
  %73 = call i32 @llvm.bswap.i32(i32 %68) #11
  %74 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %drvdata, align 4
  %add.ptr.i204 = getelementptr i8, ptr %75, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 %73) #11, !srcloc !132
  br label %etm_writel.exit206

etm_writel.exit206:                               ; preds = %if.else.i205, %do.end.i203, %if.then.i200.etm_writel.exit206_crit_edge
  %fifofull_level = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 7
  %76 = ptrtoint ptr %fifofull_level to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fifofull_level, align 4
  %78 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i208 = icmp eq i8 %79, 0
  br i1 %tobool.not.i208, label %if.else.i216, label %if.then.i211

if.then.i211:                                     ; preds = %etm_writel.exit206
  %call.i209 = call i32 @etm_writel_cp14(i32 noundef 44, i32 noundef %77) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool1.not.i210 = icmp eq i32 %call.i209, 0
  br i1 %tobool1.not.i210, label %if.then.i211.etm_writel.exit217_crit_edge, label %do.end.i214

if.then.i211.etm_writel.exit217_crit_edge:        ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit217

do.end.i214:                                      ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %csdev2, align 4
  %dev.i213 = getelementptr inbounds %struct.coresight_device, ptr %81, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i213, ptr noundef nonnull @.str.1, i32 noundef 44) #14
  br label %etm_writel.exit217

if.else.i216:                                     ; preds = %etm_writel.exit206
  call void @__sanitizer_cov_trace_pc() #13
  %82 = call i32 @llvm.bswap.i32(i32 %77) #11
  %83 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %drvdata, align 4
  %add.ptr.i215 = getelementptr i8, ptr %84, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 %82) #11, !srcloc !132
  br label %etm_writel.exit217

etm_writel.exit217:                               ; preds = %if.else.i216, %do.end.i214, %if.then.i211.etm_writel.exit217_crit_edge
  %nr_addr_cmp = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 12
  %85 = ptrtoint ptr %nr_addr_cmp to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nr_addr_cmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp474.not = icmp eq i8 %86, 0
  br i1 %cmp474.not, label %etm_writel.exit217.for.cond10.preheader_crit_edge, label %etm_writel.exit217.for.body_crit_edge

etm_writel.exit217.for.body_crit_edge:            ; preds = %etm_writel.exit217
  br label %for.body

etm_writel.exit217.for.cond10.preheader_crit_edge: ; preds = %etm_writel.exit217
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %etm_writel.exit239.for.cond10.preheader_crit_edge, %etm_writel.exit217.for.cond10.preheader_crit_edge
  %nr_cntr = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 13
  %87 = ptrtoint ptr %nr_cntr to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %nr_cntr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp12477.not = icmp eq i8 %88, 0
  br i1 %cmp12477.not, label %for.cond10.preheader.for.end29_crit_edge, label %for.cond10.preheader.for.body14_crit_edge

for.cond10.preheader.for.body14_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body14

for.cond10.preheader.for.end29_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end29

for.body:                                         ; preds = %etm_writel.exit239.for.body_crit_edge, %etm_writel.exit217.for.body_crit_edge
  %i.0475 = phi i32 [ %inc, %etm_writel.exit239.for.body_crit_edge ], [ 0, %etm_writel.exit217.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 9, i32 %i.0475
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %i.0475, 2
  %add = add nuw nsw i32 %mul, 64
  %91 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i219 = icmp eq i8 %92, 0
  br i1 %tobool.not.i219, label %if.else.i227, label %if.then.i222

if.then.i222:                                     ; preds = %for.body
  %call.i220 = call i32 @etm_writel_cp14(i32 noundef %add, i32 noundef %90) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool1.not.i221 = icmp eq i32 %call.i220, 0
  br i1 %tobool1.not.i221, label %if.then.i222.etm_writel.exit228_crit_edge, label %do.end.i225

if.then.i222.etm_writel.exit228_crit_edge:        ; preds = %if.then.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit228

do.end.i225:                                      ; preds = %if.then.i222
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %csdev2, align 4
  %dev.i224 = getelementptr inbounds %struct.coresight_device, ptr %94, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i224, ptr noundef nonnull @.str.1, i32 noundef %add) #14
  br label %etm_writel.exit228

if.else.i227:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %95 = call i32 @llvm.bswap.i32(i32 %90) #11
  %96 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %drvdata, align 4
  %add.ptr.i226 = getelementptr i8, ptr %97, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 %95) #11, !srcloc !132
  br label %etm_writel.exit228

etm_writel.exit228:                               ; preds = %if.else.i227, %do.end.i225, %if.then.i222.etm_writel.exit228_crit_edge
  %arrayidx7 = getelementptr %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 10, i32 %i.0475
  %98 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx7, align 4
  %add9 = add nuw nsw i32 %mul, 128
  %100 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i230 = icmp eq i8 %101, 0
  br i1 %tobool.not.i230, label %if.else.i238, label %if.then.i233

if.then.i233:                                     ; preds = %etm_writel.exit228
  %call.i231 = call i32 @etm_writel_cp14(i32 noundef %add9, i32 noundef %99) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool1.not.i232 = icmp eq i32 %call.i231, 0
  br i1 %tobool1.not.i232, label %if.then.i233.etm_writel.exit239_crit_edge, label %do.end.i236

if.then.i233.etm_writel.exit239_crit_edge:        ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit239

do.end.i236:                                      ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %csdev2, align 4
  %dev.i235 = getelementptr inbounds %struct.coresight_device, ptr %103, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i235, ptr noundef nonnull @.str.1, i32 noundef %add9) #14
  br label %etm_writel.exit239

if.else.i238:                                     ; preds = %etm_writel.exit228
  call void @__sanitizer_cov_trace_pc() #13
  %104 = call i32 @llvm.bswap.i32(i32 %99) #11
  %105 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %drvdata, align 4
  %add.ptr.i237 = getelementptr i8, ptr %106, i32 %add9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 %104) #11, !srcloc !132
  br label %etm_writel.exit239

etm_writel.exit239:                               ; preds = %if.else.i238, %do.end.i236, %if.then.i233.etm_writel.exit239_crit_edge
  %inc = add nuw nsw i32 %i.0475, 1
  %107 = ptrtoint ptr %nr_addr_cmp to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %nr_addr_cmp, align 1
  %conv = zext i8 %108 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %etm_writel.exit239.for.body_crit_edge, label %etm_writel.exit239.for.cond10.preheader_crit_edge

etm_writel.exit239.for.cond10.preheader_crit_edge: ; preds = %etm_writel.exit239
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond10.preheader

etm_writel.exit239.for.body_crit_edge:            ; preds = %etm_writel.exit239
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body14:                                       ; preds = %etm_writel.exit283.for.body14_crit_edge, %for.cond10.preheader.for.body14_crit_edge
  %i.1478 = phi i32 [ %inc28, %etm_writel.exit283.for.body14_crit_edge ], [ 0, %for.cond10.preheader.for.body14_crit_edge ]
  %arrayidx15 = getelementptr %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 13, i32 %i.1478
  %109 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx15, align 4
  %mul16 = shl i32 %i.1478, 2
  %add17 = add nuw nsw i32 %mul16, 320
  %111 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i241 = icmp eq i8 %112, 0
  br i1 %tobool.not.i241, label %if.else.i249, label %if.then.i244

if.then.i244:                                     ; preds = %for.body14
  %call.i242 = call i32 @etm_writel_cp14(i32 noundef %add17, i32 noundef %110) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %tobool1.not.i243 = icmp eq i32 %call.i242, 0
  br i1 %tobool1.not.i243, label %if.then.i244.etm_writel.exit250_crit_edge, label %do.end.i247

if.then.i244.etm_writel.exit250_crit_edge:        ; preds = %if.then.i244
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit250

do.end.i247:                                      ; preds = %if.then.i244
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %csdev2, align 4
  %dev.i246 = getelementptr inbounds %struct.coresight_device, ptr %114, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i246, ptr noundef nonnull @.str.1, i32 noundef %add17) #14
  br label %etm_writel.exit250

if.else.i249:                                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  %115 = call i32 @llvm.bswap.i32(i32 %110) #11
  %116 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %drvdata, align 4
  %add.ptr.i248 = getelementptr i8, ptr %117, i32 %add17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i248, i32 %115) #11, !srcloc !132
  br label %etm_writel.exit250

etm_writel.exit250:                               ; preds = %if.else.i249, %do.end.i247, %if.then.i244.etm_writel.exit250_crit_edge
  %arrayidx18 = getelementptr %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 14, i32 %i.1478
  %118 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx18, align 4
  %add20 = add nuw nsw i32 %mul16, 336
  %120 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i252 = icmp eq i8 %121, 0
  br i1 %tobool.not.i252, label %if.else.i260, label %if.then.i255

if.then.i255:                                     ; preds = %etm_writel.exit250
  %call.i253 = call i32 @etm_writel_cp14(i32 noundef %add20, i32 noundef %119) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool1.not.i254 = icmp eq i32 %call.i253, 0
  br i1 %tobool1.not.i254, label %if.then.i255.etm_writel.exit261_crit_edge, label %do.end.i258

if.then.i255.etm_writel.exit261_crit_edge:        ; preds = %if.then.i255
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit261

do.end.i258:                                      ; preds = %if.then.i255
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %csdev2, align 4
  %dev.i257 = getelementptr inbounds %struct.coresight_device, ptr %123, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i257, ptr noundef nonnull @.str.1, i32 noundef %add20) #14
  br label %etm_writel.exit261

if.else.i260:                                     ; preds = %etm_writel.exit250
  call void @__sanitizer_cov_trace_pc() #13
  %124 = call i32 @llvm.bswap.i32(i32 %119) #11
  %125 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %drvdata, align 4
  %add.ptr.i259 = getelementptr i8, ptr %126, i32 %add20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259, i32 %124) #11, !srcloc !132
  br label %etm_writel.exit261

etm_writel.exit261:                               ; preds = %if.else.i260, %do.end.i258, %if.then.i255.etm_writel.exit261_crit_edge
  %arrayidx21 = getelementptr %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 15, i32 %i.1478
  %127 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx21, align 4
  %add23 = add nuw nsw i32 %mul16, 352
  %129 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i263 = icmp eq i8 %130, 0
  br i1 %tobool.not.i263, label %if.else.i271, label %if.then.i266

if.then.i266:                                     ; preds = %etm_writel.exit261
  %call.i264 = call i32 @etm_writel_cp14(i32 noundef %add23, i32 noundef %128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool1.not.i265 = icmp eq i32 %call.i264, 0
  br i1 %tobool1.not.i265, label %if.then.i266.etm_writel.exit272_crit_edge, label %do.end.i269

if.then.i266.etm_writel.exit272_crit_edge:        ; preds = %if.then.i266
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit272

do.end.i269:                                      ; preds = %if.then.i266
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %csdev2, align 4
  %dev.i268 = getelementptr inbounds %struct.coresight_device, ptr %132, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i268, ptr noundef nonnull @.str.1, i32 noundef %add23) #14
  br label %etm_writel.exit272

if.else.i271:                                     ; preds = %etm_writel.exit261
  call void @__sanitizer_cov_trace_pc() #13
  %133 = call i32 @llvm.bswap.i32(i32 %128) #11
  %134 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %drvdata, align 4
  %add.ptr.i270 = getelementptr i8, ptr %135, i32 %add23
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270, i32 %133) #11, !srcloc !132
  br label %etm_writel.exit272

etm_writel.exit272:                               ; preds = %if.else.i271, %do.end.i269, %if.then.i266.etm_writel.exit272_crit_edge
  %arrayidx24 = getelementptr %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 16, i32 %i.1478
  %136 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx24, align 4
  %add26 = add nuw nsw i32 %mul16, 368
  %138 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i274 = icmp eq i8 %139, 0
  br i1 %tobool.not.i274, label %if.else.i282, label %if.then.i277

if.then.i277:                                     ; preds = %etm_writel.exit272
  %call.i275 = call i32 @etm_writel_cp14(i32 noundef %add26, i32 noundef %137) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool1.not.i276 = icmp eq i32 %call.i275, 0
  br i1 %tobool1.not.i276, label %if.then.i277.etm_writel.exit283_crit_edge, label %do.end.i280

if.then.i277.etm_writel.exit283_crit_edge:        ; preds = %if.then.i277
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit283

do.end.i280:                                      ; preds = %if.then.i277
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %csdev2, align 4
  %dev.i279 = getelementptr inbounds %struct.coresight_device, ptr %141, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i279, ptr noundef nonnull @.str.1, i32 noundef %add26) #14
  br label %etm_writel.exit283

if.else.i282:                                     ; preds = %etm_writel.exit272
  call void @__sanitizer_cov_trace_pc() #13
  %142 = call i32 @llvm.bswap.i32(i32 %137) #11
  %143 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %drvdata, align 4
  %add.ptr.i281 = getelementptr i8, ptr %144, i32 %add26
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 %142) #11, !srcloc !132
  br label %etm_writel.exit283

etm_writel.exit283:                               ; preds = %if.else.i282, %do.end.i280, %if.then.i277.etm_writel.exit283_crit_edge
  %inc28 = add nuw nsw i32 %i.1478, 1
  %145 = ptrtoint ptr %nr_cntr to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nr_cntr, align 4
  %conv11 = zext i8 %146 to i32
  %cmp12 = icmp ult i32 %inc28, %conv11
  br i1 %cmp12, label %etm_writel.exit283.for.body14_crit_edge, label %etm_writel.exit283.for.end29_crit_edge

etm_writel.exit283.for.end29_crit_edge:           ; preds = %etm_writel.exit283
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end29

etm_writel.exit283.for.body14_crit_edge:          ; preds = %etm_writel.exit283
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14

for.end29:                                        ; preds = %etm_writel.exit283.for.end29_crit_edge, %for.cond10.preheader.for.end29_crit_edge
  %seq_12_event = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 17
  %147 = ptrtoint ptr %seq_12_event to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %seq_12_event, align 4
  %149 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i285 = icmp eq i8 %150, 0
  br i1 %tobool.not.i285, label %if.else.i293, label %if.then.i288

if.then.i288:                                     ; preds = %for.end29
  %call.i286 = call i32 @etm_writel_cp14(i32 noundef 384, i32 noundef %148) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %tobool1.not.i287 = icmp eq i32 %call.i286, 0
  br i1 %tobool1.not.i287, label %if.then.i288.etm_writel.exit294_crit_edge, label %do.end.i291

if.then.i288.etm_writel.exit294_crit_edge:        ; preds = %if.then.i288
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit294

do.end.i291:                                      ; preds = %if.then.i288
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %csdev2, align 4
  %dev.i290 = getelementptr inbounds %struct.coresight_device, ptr %152, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i290, ptr noundef nonnull @.str.1, i32 noundef 384) #14
  br label %etm_writel.exit294

if.else.i293:                                     ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #13
  %153 = call i32 @llvm.bswap.i32(i32 %148) #11
  %154 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %drvdata, align 4
  %add.ptr.i292 = getelementptr i8, ptr %155, i32 384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i292, i32 %153) #11, !srcloc !132
  br label %etm_writel.exit294

etm_writel.exit294:                               ; preds = %if.else.i293, %do.end.i291, %if.then.i288.etm_writel.exit294_crit_edge
  %seq_21_event = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 18
  %156 = ptrtoint ptr %seq_21_event to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %seq_21_event, align 4
  %158 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i296 = icmp eq i8 %159, 0
  br i1 %tobool.not.i296, label %if.else.i304, label %if.then.i299

if.then.i299:                                     ; preds = %etm_writel.exit294
  %call.i297 = call i32 @etm_writel_cp14(i32 noundef 388, i32 noundef %157) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %tobool1.not.i298 = icmp eq i32 %call.i297, 0
  br i1 %tobool1.not.i298, label %if.then.i299.etm_writel.exit305_crit_edge, label %do.end.i302

if.then.i299.etm_writel.exit305_crit_edge:        ; preds = %if.then.i299
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit305

do.end.i302:                                      ; preds = %if.then.i299
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %csdev2, align 4
  %dev.i301 = getelementptr inbounds %struct.coresight_device, ptr %161, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i301, ptr noundef nonnull @.str.1, i32 noundef 388) #14
  br label %etm_writel.exit305

if.else.i304:                                     ; preds = %etm_writel.exit294
  call void @__sanitizer_cov_trace_pc() #13
  %162 = call i32 @llvm.bswap.i32(i32 %157) #11
  %163 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %drvdata, align 4
  %add.ptr.i303 = getelementptr i8, ptr %164, i32 388
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i303, i32 %162) #11, !srcloc !132
  br label %etm_writel.exit305

etm_writel.exit305:                               ; preds = %if.else.i304, %do.end.i302, %if.then.i299.etm_writel.exit305_crit_edge
  %seq_23_event = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 19
  %165 = ptrtoint ptr %seq_23_event to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %seq_23_event, align 4
  %167 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i307 = icmp eq i8 %168, 0
  br i1 %tobool.not.i307, label %if.else.i315, label %if.then.i310

if.then.i310:                                     ; preds = %etm_writel.exit305
  %call.i308 = call i32 @etm_writel_cp14(i32 noundef 392, i32 noundef %166) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool1.not.i309 = icmp eq i32 %call.i308, 0
  br i1 %tobool1.not.i309, label %if.then.i310.etm_writel.exit316_crit_edge, label %do.end.i313

if.then.i310.etm_writel.exit316_crit_edge:        ; preds = %if.then.i310
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit316

do.end.i313:                                      ; preds = %if.then.i310
  call void @__sanitizer_cov_trace_pc() #13
  %169 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %csdev2, align 4
  %dev.i312 = getelementptr inbounds %struct.coresight_device, ptr %170, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i312, ptr noundef nonnull @.str.1, i32 noundef 392) #14
  br label %etm_writel.exit316

if.else.i315:                                     ; preds = %etm_writel.exit305
  call void @__sanitizer_cov_trace_pc() #13
  %171 = call i32 @llvm.bswap.i32(i32 %166) #11
  %172 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %drvdata, align 4
  %add.ptr.i314 = getelementptr i8, ptr %173, i32 392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 %171) #11, !srcloc !132
  br label %etm_writel.exit316

etm_writel.exit316:                               ; preds = %if.else.i315, %do.end.i313, %if.then.i310.etm_writel.exit316_crit_edge
  %seq_31_event = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 20
  %174 = ptrtoint ptr %seq_31_event to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %seq_31_event, align 4
  %176 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i318 = icmp eq i8 %177, 0
  br i1 %tobool.not.i318, label %if.else.i326, label %if.then.i321

if.then.i321:                                     ; preds = %etm_writel.exit316
  %call.i319 = call i32 @etm_writel_cp14(i32 noundef 396, i32 noundef %175) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %tobool1.not.i320 = icmp eq i32 %call.i319, 0
  br i1 %tobool1.not.i320, label %if.then.i321.etm_writel.exit327_crit_edge, label %do.end.i324

if.then.i321.etm_writel.exit327_crit_edge:        ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit327

do.end.i324:                                      ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #13
  %178 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %csdev2, align 4
  %dev.i323 = getelementptr inbounds %struct.coresight_device, ptr %179, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i323, ptr noundef nonnull @.str.1, i32 noundef 396) #14
  br label %etm_writel.exit327

if.else.i326:                                     ; preds = %etm_writel.exit316
  call void @__sanitizer_cov_trace_pc() #13
  %180 = call i32 @llvm.bswap.i32(i32 %175) #11
  %181 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %drvdata, align 4
  %add.ptr.i325 = getelementptr i8, ptr %182, i32 396
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i325, i32 %180) #11, !srcloc !132
  br label %etm_writel.exit327

etm_writel.exit327:                               ; preds = %if.else.i326, %do.end.i324, %if.then.i321.etm_writel.exit327_crit_edge
  %seq_32_event = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 21
  %183 = ptrtoint ptr %seq_32_event to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %seq_32_event, align 4
  %185 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i329 = icmp eq i8 %186, 0
  br i1 %tobool.not.i329, label %if.else.i337, label %if.then.i332

if.then.i332:                                     ; preds = %etm_writel.exit327
  %call.i330 = call i32 @etm_writel_cp14(i32 noundef 400, i32 noundef %184) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i330)
  %tobool1.not.i331 = icmp eq i32 %call.i330, 0
  br i1 %tobool1.not.i331, label %if.then.i332.etm_writel.exit338_crit_edge, label %do.end.i335

if.then.i332.etm_writel.exit338_crit_edge:        ; preds = %if.then.i332
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit338

do.end.i335:                                      ; preds = %if.then.i332
  call void @__sanitizer_cov_trace_pc() #13
  %187 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %csdev2, align 4
  %dev.i334 = getelementptr inbounds %struct.coresight_device, ptr %188, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i334, ptr noundef nonnull @.str.1, i32 noundef 400) #14
  br label %etm_writel.exit338

if.else.i337:                                     ; preds = %etm_writel.exit327
  call void @__sanitizer_cov_trace_pc() #13
  %189 = call i32 @llvm.bswap.i32(i32 %184) #11
  %190 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %drvdata, align 4
  %add.ptr.i336 = getelementptr i8, ptr %191, i32 400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i336, i32 %189) #11, !srcloc !132
  br label %etm_writel.exit338

etm_writel.exit338:                               ; preds = %if.else.i337, %do.end.i335, %if.then.i332.etm_writel.exit338_crit_edge
  %seq_13_event = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 22
  %192 = ptrtoint ptr %seq_13_event to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %seq_13_event, align 4
  %194 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not.i340 = icmp eq i8 %195, 0
  br i1 %tobool.not.i340, label %if.else.i348, label %if.then.i343

if.then.i343:                                     ; preds = %etm_writel.exit338
  %call.i341 = call i32 @etm_writel_cp14(i32 noundef 404, i32 noundef %193) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i341)
  %tobool1.not.i342 = icmp eq i32 %call.i341, 0
  br i1 %tobool1.not.i342, label %if.then.i343.etm_writel.exit349_crit_edge, label %do.end.i346

if.then.i343.etm_writel.exit349_crit_edge:        ; preds = %if.then.i343
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit349

do.end.i346:                                      ; preds = %if.then.i343
  call void @__sanitizer_cov_trace_pc() #13
  %196 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %csdev2, align 4
  %dev.i345 = getelementptr inbounds %struct.coresight_device, ptr %197, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i345, ptr noundef nonnull @.str.1, i32 noundef 404) #14
  br label %etm_writel.exit349

if.else.i348:                                     ; preds = %etm_writel.exit338
  call void @__sanitizer_cov_trace_pc() #13
  %198 = call i32 @llvm.bswap.i32(i32 %193) #11
  %199 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %drvdata, align 4
  %add.ptr.i347 = getelementptr i8, ptr %200, i32 404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i347, i32 %198) #11, !srcloc !132
  br label %etm_writel.exit349

etm_writel.exit349:                               ; preds = %if.else.i348, %do.end.i346, %if.then.i343.etm_writel.exit349_crit_edge
  %seq_curr_state = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 23
  %201 = ptrtoint ptr %seq_curr_state to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %seq_curr_state, align 4
  %203 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i351 = icmp eq i8 %204, 0
  br i1 %tobool.not.i351, label %if.else.i359, label %if.then.i354

if.then.i354:                                     ; preds = %etm_writel.exit349
  %call.i352 = call i32 @etm_writel_cp14(i32 noundef 412, i32 noundef %202) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %tobool1.not.i353 = icmp eq i32 %call.i352, 0
  br i1 %tobool1.not.i353, label %if.then.i354.etm_writel.exit360_crit_edge, label %do.end.i357

if.then.i354.etm_writel.exit360_crit_edge:        ; preds = %if.then.i354
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit360

do.end.i357:                                      ; preds = %if.then.i354
  call void @__sanitizer_cov_trace_pc() #13
  %205 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %csdev2, align 4
  %dev.i356 = getelementptr inbounds %struct.coresight_device, ptr %206, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i356, ptr noundef nonnull @.str.1, i32 noundef 412) #14
  br label %etm_writel.exit360

if.else.i359:                                     ; preds = %etm_writel.exit349
  call void @__sanitizer_cov_trace_pc() #13
  %207 = call i32 @llvm.bswap.i32(i32 %202) #11
  %208 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %drvdata, align 4
  %add.ptr.i358 = getelementptr i8, ptr %209, i32 412
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i358, i32 %207) #11, !srcloc !132
  br label %etm_writel.exit360

etm_writel.exit360:                               ; preds = %if.else.i359, %do.end.i357, %if.then.i354.etm_writel.exit360_crit_edge
  %nr_ext_out = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 15
  %210 = ptrtoint ptr %nr_ext_out to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %nr_ext_out, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %cmp32480.not = icmp eq i8 %211, 0
  br i1 %cmp32480.not, label %etm_writel.exit360.for.cond40.preheader_crit_edge, label %etm_writel.exit360.for.body34_crit_edge

etm_writel.exit360.for.body34_crit_edge:          ; preds = %etm_writel.exit360
  br label %for.body34

etm_writel.exit360.for.cond40.preheader_crit_edge: ; preds = %etm_writel.exit360
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %etm_writel.exit371.for.cond40.preheader_crit_edge, %etm_writel.exit360.for.cond40.preheader_crit_edge
  %nr_ctxid_cmp = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 16
  %212 = ptrtoint ptr %nr_ctxid_cmp to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %nr_ctxid_cmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %cmp42483.not = icmp eq i8 %213, 0
  br i1 %cmp42483.not, label %for.cond40.preheader.for.end50_crit_edge, label %for.cond40.preheader.for.body44_crit_edge

for.cond40.preheader.for.body44_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body44

for.cond40.preheader.for.end50_crit_edge:         ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end50

for.body34:                                       ; preds = %etm_writel.exit371.for.body34_crit_edge, %etm_writel.exit360.for.body34_crit_edge
  %i.2481 = phi i32 [ %inc38, %etm_writel.exit371.for.body34_crit_edge ], [ 0, %etm_writel.exit360.for.body34_crit_edge ]
  %mul35 = shl i32 %i.2481, 2
  %add36 = add nuw nsw i32 %mul35, 416
  %214 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool.not.i362 = icmp eq i8 %215, 0
  br i1 %tobool.not.i362, label %if.else.i370, label %if.then.i365

if.then.i365:                                     ; preds = %for.body34
  %call.i363 = call i32 @etm_writel_cp14(i32 noundef %add36, i32 noundef 16495) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i363)
  %tobool1.not.i364 = icmp eq i32 %call.i363, 0
  br i1 %tobool1.not.i364, label %if.then.i365.etm_writel.exit371_crit_edge, label %do.end.i368

if.then.i365.etm_writel.exit371_crit_edge:        ; preds = %if.then.i365
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit371

do.end.i368:                                      ; preds = %if.then.i365
  call void @__sanitizer_cov_trace_pc() #13
  %216 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %csdev2, align 4
  %dev.i367 = getelementptr inbounds %struct.coresight_device, ptr %217, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i367, ptr noundef nonnull @.str.1, i32 noundef %add36) #14
  br label %etm_writel.exit371

if.else.i370:                                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #13
  %218 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %drvdata, align 4
  %add.ptr.i369 = getelementptr i8, ptr %219, i32 %add36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i369, i32 1866465280) #11, !srcloc !132
  br label %etm_writel.exit371

etm_writel.exit371:                               ; preds = %if.else.i370, %do.end.i368, %if.then.i365.etm_writel.exit371_crit_edge
  %inc38 = add nuw nsw i32 %i.2481, 1
  %220 = ptrtoint ptr %nr_ext_out to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %nr_ext_out, align 2
  %conv31 = zext i8 %221 to i32
  %cmp32 = icmp ult i32 %inc38, %conv31
  br i1 %cmp32, label %etm_writel.exit371.for.body34_crit_edge, label %etm_writel.exit371.for.cond40.preheader_crit_edge

etm_writel.exit371.for.cond40.preheader_crit_edge: ; preds = %etm_writel.exit371
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond40.preheader

etm_writel.exit371.for.body34_crit_edge:          ; preds = %etm_writel.exit371
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body34

for.body44:                                       ; preds = %etm_writel.exit382.for.body44_crit_edge, %for.cond40.preheader.for.body44_crit_edge
  %i.3484 = phi i32 [ %inc49, %etm_writel.exit382.for.body44_crit_edge ], [ 0, %for.cond40.preheader.for.body44_crit_edge ]
  %arrayidx45 = getelementptr %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 25, i32 %i.3484
  %222 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx45, align 4
  %mul46 = shl i32 %i.3484, 2
  %add47 = add nuw nsw i32 %mul46, 432
  %224 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i373 = icmp eq i8 %225, 0
  br i1 %tobool.not.i373, label %if.else.i381, label %if.then.i376

if.then.i376:                                     ; preds = %for.body44
  %call.i374 = call i32 @etm_writel_cp14(i32 noundef %add47, i32 noundef %223) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i374)
  %tobool1.not.i375 = icmp eq i32 %call.i374, 0
  br i1 %tobool1.not.i375, label %if.then.i376.etm_writel.exit382_crit_edge, label %do.end.i379

if.then.i376.etm_writel.exit382_crit_edge:        ; preds = %if.then.i376
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit382

do.end.i379:                                      ; preds = %if.then.i376
  call void @__sanitizer_cov_trace_pc() #13
  %226 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %csdev2, align 4
  %dev.i378 = getelementptr inbounds %struct.coresight_device, ptr %227, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i378, ptr noundef nonnull @.str.1, i32 noundef %add47) #14
  br label %etm_writel.exit382

if.else.i381:                                     ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #13
  %228 = call i32 @llvm.bswap.i32(i32 %223) #11
  %229 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %drvdata, align 4
  %add.ptr.i380 = getelementptr i8, ptr %230, i32 %add47
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 %228) #11, !srcloc !132
  br label %etm_writel.exit382

etm_writel.exit382:                               ; preds = %if.else.i381, %do.end.i379, %if.then.i376.etm_writel.exit382_crit_edge
  %inc49 = add nuw nsw i32 %i.3484, 1
  %231 = ptrtoint ptr %nr_ctxid_cmp to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %nr_ctxid_cmp, align 1
  %conv41 = zext i8 %232 to i32
  %cmp42 = icmp ult i32 %inc49, %conv41
  br i1 %cmp42, label %etm_writel.exit382.for.body44_crit_edge, label %etm_writel.exit382.for.end50_crit_edge

etm_writel.exit382.for.end50_crit_edge:           ; preds = %etm_writel.exit382
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end50

etm_writel.exit382.for.body44_crit_edge:          ; preds = %etm_writel.exit382
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body44

for.end50:                                        ; preds = %etm_writel.exit382.for.end50_crit_edge, %for.cond40.preheader.for.end50_crit_edge
  %ctxid_mask = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 26
  %233 = ptrtoint ptr %ctxid_mask to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %ctxid_mask, align 4
  %235 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool.not.i384 = icmp eq i8 %236, 0
  br i1 %tobool.not.i384, label %if.else.i392, label %if.then.i387

if.then.i387:                                     ; preds = %for.end50
  %call.i385 = call i32 @etm_writel_cp14(i32 noundef 444, i32 noundef %234) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i385)
  %tobool1.not.i386 = icmp eq i32 %call.i385, 0
  br i1 %tobool1.not.i386, label %if.then.i387.etm_writel.exit393_crit_edge, label %do.end.i390

if.then.i387.etm_writel.exit393_crit_edge:        ; preds = %if.then.i387
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit393

do.end.i390:                                      ; preds = %if.then.i387
  call void @__sanitizer_cov_trace_pc() #13
  %237 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %csdev2, align 4
  %dev.i389 = getelementptr inbounds %struct.coresight_device, ptr %238, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i389, ptr noundef nonnull @.str.1, i32 noundef 444) #14
  br label %etm_writel.exit393

if.else.i392:                                     ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #13
  %239 = call i32 @llvm.bswap.i32(i32 %234) #11
  %240 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %drvdata, align 4
  %add.ptr.i391 = getelementptr i8, ptr %241, i32 444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i391, i32 %239) #11, !srcloc !132
  br label %etm_writel.exit393

etm_writel.exit393:                               ; preds = %if.else.i392, %do.end.i390, %if.then.i387.etm_writel.exit393_crit_edge
  %sync_freq = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 27
  %242 = ptrtoint ptr %sync_freq to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %sync_freq, align 4
  %244 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool.not.i395 = icmp eq i8 %245, 0
  br i1 %tobool.not.i395, label %if.else.i403, label %if.then.i398

if.then.i398:                                     ; preds = %etm_writel.exit393
  %call.i396 = call i32 @etm_writel_cp14(i32 noundef 480, i32 noundef %243) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i396)
  %tobool1.not.i397 = icmp eq i32 %call.i396, 0
  br i1 %tobool1.not.i397, label %if.then.i398.etm_writel.exit404_crit_edge, label %do.end.i401

if.then.i398.etm_writel.exit404_crit_edge:        ; preds = %if.then.i398
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit404

do.end.i401:                                      ; preds = %if.then.i398
  call void @__sanitizer_cov_trace_pc() #13
  %246 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %csdev2, align 4
  %dev.i400 = getelementptr inbounds %struct.coresight_device, ptr %247, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i400, ptr noundef nonnull @.str.1, i32 noundef 480) #14
  br label %etm_writel.exit404

if.else.i403:                                     ; preds = %etm_writel.exit393
  call void @__sanitizer_cov_trace_pc() #13
  %248 = call i32 @llvm.bswap.i32(i32 %243) #11
  %249 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %drvdata, align 4
  %add.ptr.i402 = getelementptr i8, ptr %250, i32 480
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i402, i32 %248) #11, !srcloc !132
  br label %etm_writel.exit404

etm_writel.exit404:                               ; preds = %if.else.i403, %do.end.i401, %if.then.i398.etm_writel.exit404_crit_edge
  %251 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool.not.i406 = icmp eq i8 %252, 0
  br i1 %tobool.not.i406, label %if.else.i414, label %if.then.i409

if.then.i409:                                     ; preds = %etm_writel.exit404
  %call.i407 = call i32 @etm_writel_cp14(i32 noundef 492, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i407)
  %tobool1.not.i408 = icmp eq i32 %call.i407, 0
  br i1 %tobool1.not.i408, label %if.then.i409.etm_writel.exit415_crit_edge, label %do.end.i412

if.then.i409.etm_writel.exit415_crit_edge:        ; preds = %if.then.i409
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit415

do.end.i412:                                      ; preds = %if.then.i409
  call void @__sanitizer_cov_trace_pc() #13
  %253 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %csdev2, align 4
  %dev.i411 = getelementptr inbounds %struct.coresight_device, ptr %254, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i411, ptr noundef nonnull @.str.1, i32 noundef 492) #14
  br label %etm_writel.exit415

if.else.i414:                                     ; preds = %etm_writel.exit404
  call void @__sanitizer_cov_trace_pc() #13
  %255 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %drvdata, align 4
  %add.ptr.i413 = getelementptr i8, ptr %256, i32 492
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i413, i32 0) #11, !srcloc !132
  br label %etm_writel.exit415

etm_writel.exit415:                               ; preds = %if.else.i414, %do.end.i412, %if.then.i409.etm_writel.exit415_crit_edge
  %timestamp_event = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 20, i32 28
  %257 = ptrtoint ptr %timestamp_event to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %timestamp_event, align 4
  %259 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool.not.i417 = icmp eq i8 %260, 0
  br i1 %tobool.not.i417, label %if.else.i425, label %if.then.i420

if.then.i420:                                     ; preds = %etm_writel.exit415
  %call.i418 = call i32 @etm_writel_cp14(i32 noundef 504, i32 noundef %258) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i418)
  %tobool1.not.i419 = icmp eq i32 %call.i418, 0
  br i1 %tobool1.not.i419, label %if.then.i420.etm_writel.exit426_crit_edge, label %do.end.i423

if.then.i420.etm_writel.exit426_crit_edge:        ; preds = %if.then.i420
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit426

do.end.i423:                                      ; preds = %if.then.i420
  call void @__sanitizer_cov_trace_pc() #13
  %261 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %csdev2, align 4
  %dev.i422 = getelementptr inbounds %struct.coresight_device, ptr %262, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i422, ptr noundef nonnull @.str.1, i32 noundef 504) #14
  br label %etm_writel.exit426

if.else.i425:                                     ; preds = %etm_writel.exit415
  call void @__sanitizer_cov_trace_pc() #13
  %263 = call i32 @llvm.bswap.i32(i32 %258) #11
  %264 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %drvdata, align 4
  %add.ptr.i424 = getelementptr i8, ptr %265, i32 504
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i424, i32 %263) #11, !srcloc !132
  br label %etm_writel.exit426

etm_writel.exit426:                               ; preds = %if.else.i425, %do.end.i423, %if.then.i420.etm_writel.exit426_crit_edge
  %266 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool.not.i428 = icmp eq i8 %267, 0
  br i1 %tobool.not.i428, label %if.else.i436, label %if.then.i431

if.then.i431:                                     ; preds = %etm_writel.exit426
  %call.i429 = call i32 @etm_writel_cp14(i32 noundef 508, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i429)
  %tobool1.not.i430 = icmp eq i32 %call.i429, 0
  br i1 %tobool1.not.i430, label %if.then.i431.etm_writel.exit437_crit_edge, label %do.end.i434

if.then.i431.etm_writel.exit437_crit_edge:        ; preds = %if.then.i431
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit437

do.end.i434:                                      ; preds = %if.then.i431
  call void @__sanitizer_cov_trace_pc() #13
  %268 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %csdev2, align 4
  %dev.i433 = getelementptr inbounds %struct.coresight_device, ptr %269, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i433, ptr noundef nonnull @.str.1, i32 noundef 508) #14
  br label %etm_writel.exit437

if.else.i436:                                     ; preds = %etm_writel.exit426
  call void @__sanitizer_cov_trace_pc() #13
  %270 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %drvdata, align 4
  %add.ptr.i435 = getelementptr i8, ptr %271, i32 508
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i435, i32 0) #11, !srcloc !132
  br label %etm_writel.exit437

etm_writel.exit437:                               ; preds = %if.else.i436, %do.end.i434, %if.then.i431.etm_writel.exit437_crit_edge
  %traceid = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 19
  %272 = ptrtoint ptr %traceid to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %traceid, align 4
  %274 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.not.i439 = icmp eq i8 %275, 0
  br i1 %tobool.not.i439, label %if.else.i447, label %if.then.i442

if.then.i442:                                     ; preds = %etm_writel.exit437
  %call.i440 = call i32 @etm_writel_cp14(i32 noundef 512, i32 noundef %273) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i440)
  %tobool1.not.i441 = icmp eq i32 %call.i440, 0
  br i1 %tobool1.not.i441, label %if.then.i442.etm_writel.exit448_crit_edge, label %do.end.i445

if.then.i442.etm_writel.exit448_crit_edge:        ; preds = %if.then.i442
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit448

do.end.i445:                                      ; preds = %if.then.i442
  call void @__sanitizer_cov_trace_pc() #13
  %276 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %csdev2, align 4
  %dev.i444 = getelementptr inbounds %struct.coresight_device, ptr %277, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i444, ptr noundef nonnull @.str.1, i32 noundef 512) #14
  br label %etm_writel.exit448

if.else.i447:                                     ; preds = %etm_writel.exit437
  call void @__sanitizer_cov_trace_pc() #13
  %278 = call i32 @llvm.bswap.i32(i32 %273) #11
  %279 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %drvdata, align 4
  %add.ptr.i446 = getelementptr i8, ptr %280, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i446, i32 %278) #11, !srcloc !132
  br label %etm_writel.exit448

etm_writel.exit448:                               ; preds = %if.else.i447, %do.end.i445, %if.then.i442.etm_writel.exit448_crit_edge
  %281 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool.not.i450 = icmp eq i8 %282, 0
  br i1 %tobool.not.i450, label %if.else.i458, label %if.then.i453

if.then.i453:                                     ; preds = %etm_writel.exit448
  %call.i451 = call i32 @etm_writel_cp14(i32 noundef 576, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i451)
  %tobool1.not.i452 = icmp eq i32 %call.i451, 0
  br i1 %tobool1.not.i452, label %if.then.i453.etm_writel.exit459_crit_edge, label %do.end.i456

if.then.i453.etm_writel.exit459_crit_edge:        ; preds = %if.then.i453
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit459

do.end.i456:                                      ; preds = %if.then.i453
  call void @__sanitizer_cov_trace_pc() #13
  %283 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %csdev2, align 4
  %dev.i455 = getelementptr inbounds %struct.coresight_device, ptr %284, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i455, ptr noundef nonnull @.str.1, i32 noundef 576) #14
  br label %etm_writel.exit459

if.else.i458:                                     ; preds = %etm_writel.exit448
  call void @__sanitizer_cov_trace_pc() #13
  %285 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %drvdata, align 4
  %add.ptr.i457 = getelementptr i8, ptr %286, i32 576
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i457, i32 0) #11, !srcloc !132
  br label %etm_writel.exit459

etm_writel.exit459:                               ; preds = %if.else.i458, %do.end.i456, %if.then.i453.etm_writel.exit459_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %287 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 -1, ptr %val.i.i, align 4, !annotation !134
  %288 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool.not.i.i461 = icmp eq i8 %289, 0
  br i1 %tobool.not.i.i461, label %if.else.i.i468, label %if.then.i.i464

if.then.i.i464:                                   ; preds = %etm_writel.exit459
  %call.i.i462 = call i32 @etm_readl_cp14(i32 noundef 0, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i462)
  %tobool1.not.i.i463 = icmp eq i32 %call.i.i462, 0
  br i1 %tobool1.not.i.i463, label %if.then.i.i464.etm_readl.exit.i_crit_edge, label %do.end.i.i467

if.then.i.i464.etm_readl.exit.i_crit_edge:        ; preds = %if.then.i.i464
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit.i

do.end.i.i467:                                    ; preds = %if.then.i.i464
  call void @__sanitizer_cov_trace_pc() #13
  %290 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %csdev2, align 4
  %dev.i.i466 = getelementptr inbounds %struct.coresight_device, ptr %291, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i466, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_readl.exit.i

if.else.i.i468:                                   ; preds = %etm_writel.exit459
  call void @__sanitizer_cov_trace_pc() #13
  %292 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %drvdata, align 4
  %294 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %293) #11, !srcloc !136
  %295 = call i32 @llvm.bswap.i32(i32 %294) #11
  %296 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %val.i.i, align 4
  br label %etm_readl.exit.i

etm_readl.exit.i:                                 ; preds = %if.else.i.i468, %do.end.i.i467, %if.then.i.i464.etm_readl.exit.i_crit_edge
  %297 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %and.i = and i32 %298, -1025
  %299 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool.not.i7.i = icmp eq i8 %300, 0
  br i1 %tobool.not.i7.i, label %if.else.i14.i, label %if.then.i10.i

if.then.i10.i:                                    ; preds = %etm_readl.exit.i
  %call.i8.i = call i32 @etm_writel_cp14(i32 noundef 0, i32 noundef %and.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool1.not.i9.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool1.not.i9.i, label %if.then.i10.i.etm_writel.exit.i_crit_edge, label %do.end.i13.i

if.then.i10.i.etm_writel.exit.i_crit_edge:        ; preds = %if.then.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_writel.exit.i

do.end.i13.i:                                     ; preds = %if.then.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  %301 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %csdev2, align 4
  %dev.i12.i = getelementptr inbounds %struct.coresight_device, ptr %302, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i12.i, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  br label %etm_writel.exit.i

if.else.i14.i:                                    ; preds = %etm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %303 = call i32 @llvm.bswap.i32(i32 %and.i) #11
  %304 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %drvdata, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %305, i32 %303) #11, !srcloc !132
  br label %etm_writel.exit.i

etm_writel.exit.i:                                ; preds = %if.else.i14.i, %do.end.i13.i, %if.then.i10.i.etm_writel.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %etm_writel.exit.i
  %i.01.i.i = phi i32 [ 100, %etm_writel.exit.i ], [ %dec.i.i, %for.inc.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #11
  %306 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !134
  %307 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool.not.i.i.i = icmp eq i8 %308, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  %call.i.i.i = call i32 @etm_readl_cp14(i32 noundef 16, ptr noundef nonnull %val.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.i.i.i.etm_readl.exit.i.i_crit_edge, label %do.end.i.i.i

if.then.i.i.i.etm_readl.exit.i.i_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %309 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %csdev2, align 4
  %dev.i.i.i = getelementptr inbounds %struct.coresight_device, ptr %310, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.1, i32 noundef 16) #14
  br label %etm_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %311 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %312, i32 16
  %313 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !136
  %314 = call i32 @llvm.bswap.i32(i32 %313) #11
  %315 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %314, ptr %val.i.i.i, align 4
  br label %etm_readl.exit.i.i

etm_readl.exit.i.i:                               ; preds = %if.else.i.i.i, %do.end.i.i.i, %if.then.i.i.i.etm_readl.exit.i.i_crit_edge
  %316 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #11
  %and4.i.i = and i32 %317, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %etm_readl.exit.i.i.done_crit_edge, label %if.end8.i.i

etm_readl.exit.i.i.done_crit_edge:                ; preds = %etm_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end8.i.i:                                      ; preds = %etm_readl.exit.i.i
  %tobool9.not.i.i = icmp eq i32 %i.01.i.i, 1
  br i1 %tobool9.not.i.i, label %do.end.i470, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %318(i32 noundef 214748) #11
  %dec.i.i = add nsw i32 %i.01.i.i, -1
  br label %for.body.i.i

do.end.i470:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %319 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %csdev2, align 4
  %dev.i469 = getelementptr inbounds %struct.coresight_device, ptr %320, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i469, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26, i32 noundef 16) #14
  br label %done

done:                                             ; preds = %do.end.i470, %etm_readl.exit.i.i.done_crit_edge, %entry.done_crit_edge
  %321 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %drvdata, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @arm_heavy_mb() #11
  %add.ptr.i471 = getelementptr i8, ptr %322, i32 4016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i471, i32 0) #11, !srcloc !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etm_enable_hw.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etm_enable_hw, %if.then56)) #11
          to label %do.end [label %if.then56], !srcloc !151

if.then56:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  %323 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %csdev2, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %324, i32 0, i32 5
  %cpu = getelementptr inbounds %struct.etm_drvdata, ptr %drvdata, i32 0, i32 4
  %325 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %cpu, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etm_enable_hw.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %326, i32 noundef %call) #11
  br label %do.end

do.end:                                           ; preds = %if.then56, %done
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_claim_device_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_disable_hw(ptr nocapture noundef %info) #0 align 64 {
entry:
  %val.i25 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %csdev2 = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev2, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #11, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  tail call fastcc void @etm_set_prog(ptr noundef %info)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %use_cp14.i = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 7
  %5 = ptrtoint ptr %use_cp14.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %use_cp14.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @etm_readl_cp14(i32 noundef 412, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.etm_readl.exit_crit_edge, label %do.end.i

if.then.i.etm_readl.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csdev2, align 4
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %8, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef 412) #14
  br label %etm_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %add.ptr.i24 = getelementptr i8, ptr %10, i32 412
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #11, !srcloc !136
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val.i, align 4
  br label %etm_readl.exit

etm_readl.exit:                                   ; preds = %if.else.i, %do.end.i, %if.then.i.etm_readl.exit_crit_edge
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %and = and i32 %15, 3
  %seq_curr_state = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 20, i32 23
  %16 = ptrtoint ptr %seq_curr_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %seq_curr_state, align 4
  %nr_cntr = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 13
  %17 = ptrtoint ptr %nr_cntr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nr_cntr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp40.not = icmp eq i8 %18, 0
  br i1 %cmp40.not, label %etm_readl.exit.for.end_crit_edge, label %etm_readl.exit.for.body_crit_edge

etm_readl.exit.for.body_crit_edge:                ; preds = %etm_readl.exit
  br label %for.body

etm_readl.exit.for.end_crit_edge:                 ; preds = %etm_readl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %etm_readl.exit36.for.body_crit_edge, %etm_readl.exit.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %etm_readl.exit36.for.body_crit_edge ], [ 0, %etm_readl.exit.for.body_crit_edge ]
  %mul = shl i32 %i.041, 2
  %add = add nuw nsw i32 %mul, 368
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i25) #11
  %19 = ptrtoint ptr %val.i25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i25, align 4, !annotation !134
  %20 = ptrtoint ptr %use_cp14.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_cp14.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i27 = icmp eq i8 %21, 0
  br i1 %tobool.not.i27, label %if.else.i35, label %if.then.i30

if.then.i30:                                      ; preds = %for.body
  %call.i28 = call i32 @etm_readl_cp14(i32 noundef %add, ptr noundef nonnull %val.i25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool1.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool1.not.i29, label %if.then.i30.etm_readl.exit36_crit_edge, label %do.end.i33

if.then.i30.etm_readl.exit36_crit_edge:           ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_readl.exit36

do.end.i33:                                       ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csdev2, align 4
  %dev.i32 = getelementptr inbounds %struct.coresight_device, ptr %23, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i32, ptr noundef nonnull @.str.1, i32 noundef %add) #14
  br label %etm_readl.exit36

if.else.i35:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %add.ptr.i34 = getelementptr i8, ptr %25, i32 %add
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #11, !srcloc !136
  %27 = call i32 @llvm.bswap.i32(i32 %26) #11
  %28 = ptrtoint ptr %val.i25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val.i25, align 4
  br label %etm_readl.exit36

etm_readl.exit36:                                 ; preds = %if.else.i35, %do.end.i33, %if.then.i30.etm_readl.exit36_crit_edge
  %29 = ptrtoint ptr %val.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i25) #11
  %arrayidx = getelementptr %struct.etm_drvdata, ptr %info, i32 0, i32 20, i32 16, i32 %i.041
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.041, 1
  %32 = ptrtoint ptr %nr_cntr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_cntr, align 4
  %conv = zext i8 %33 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %etm_readl.exit36.for.body_crit_edge, label %etm_readl.exit36.for.end_crit_edge

etm_readl.exit36.for.end_crit_edge:               ; preds = %etm_readl.exit36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

etm_readl.exit36.for.body_crit_edge:              ; preds = %etm_readl.exit36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %etm_readl.exit36.for.end_crit_edge, %etm_readl.exit.for.end_crit_edge
  call fastcc void @etm_set_pwrdwn(ptr noundef %info)
  call void @coresight_disclaim_device_unlocked(ptr noundef %1) #11
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @arm_heavy_mb() #11
  %add.ptr.i37 = getelementptr i8, ptr %35, i32 4016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 0) #11, !srcloc !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etm_disable_hw.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etm_disable_hw, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !151

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %csdev2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %csdev2, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %37, i32 0, i32 5
  %cpu = getelementptr inbounds %struct.etm_drvdata, ptr %info, i32 0, i32 4
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etm_disable_hw.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %39) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disclaim_device_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @clear_etmdrvdata(ptr nocapture noundef readonly %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @etmdrvdata, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @etm_hp_setup() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state_cpuslocked(i32 noundef 143, ptr noundef nonnull @.str.42, i1 noundef zeroext false, ptr noundef nonnull @etm_starting_cpu, ptr noundef nonnull @etm_dying_cpu, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i8 = tail call i32 @__cpuhp_setup_state_cpuslocked(i32 noundef 194, ptr noundef nonnull @.str.43, i1 noundef zeroext false, ptr noundef nonnull @etm_online_cpu, ptr noundef null, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp = icmp sgt i32 %call.i8, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %call.i8, ptr @hp_online, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__cpuhp_remove_state(i32 noundef 143, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call.i8, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_starting_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @etmdrvdata, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.etm_drvdata, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %os_unlock = getelementptr inbounds %struct.etm_drvdata, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %os_unlock to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %os_unlock, align 2, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %use_cp14.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %use_cp14.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_cp14.i.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4
  %call.i.i24 = tail call i32 @etm_writel_cp14(i32 noundef 768, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool1.not.i.i = icmp eq i32 %call.i.i24, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.etm_os_unlock.exit_crit_edge, label %do.end.i.i

if.then.i.i.etm_os_unlock.exit_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %etm_os_unlock.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %csdev.i.i = getelementptr inbounds %struct.etm_drvdata, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %csdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.coresight_device, ptr %9, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.1, i32 noundef 768) #14
  br label %etm_os_unlock.exit

if.else.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !132
  br label %etm_os_unlock.exit

etm_os_unlock.exit:                               ; preds = %if.else.i.i, %do.end.i.i, %if.then.i.i.etm_os_unlock.exit_crit_edge
  %12 = ptrtoint ptr %os_unlock to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %os_unlock, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %os_unlock7 = getelementptr inbounds %struct.etm_drvdata, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %os_unlock7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %os_unlock7, align 2
  br label %if.end8

if.end8:                                          ; preds = %etm_os_unlock.exit, %if.end.if.end8_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %mode = getelementptr inbounds %struct.etm_drvdata, ptr %17, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #11
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  br i1 %tobool10.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call13 = tail call fastcc i32 @etm_enable_hw(ptr noundef %21)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %spinlock16 = getelementptr inbounds %struct.etm_drvdata, ptr %23, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %spinlock16) #11
  br label %return

return:                                           ; preds = %if.end14, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_dying_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @etmdrvdata, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.etm_drvdata, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %mode = getelementptr inbounds %struct.etm_drvdata, ptr %3, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #11
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @etm_disable_hw(ptr noundef %7)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %spinlock8 = getelementptr inbounds %struct.etm_drvdata, ptr %9, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %spinlock8) #11
  br label %return

return:                                           ; preds = %if.end6, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_online_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @etmdrvdata, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %boot_enable = getelementptr inbounds %struct.etm_drvdata, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %boot_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %boot_enable, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %land.lhs.true

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true:                                    ; preds = %if.end
  %sticky_enable = getelementptr inbounds %struct.etm_drvdata, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %sticky_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sticky_enable, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %csdev = getelementptr inbounds %struct.etm_drvdata, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csdev, align 4
  %call = tail call i32 @coresight_enable(ptr noundef %7) #11
  br label %return

return:                                           ; preds = %if.then5, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state_cpuslocked(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__param_boot_enable, !1, !"__param_boot_enable", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_boot_enabletype297, !1, !"__UNIQUE_ID_boot_enabletype297", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 195, i32 6}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_coresight_etm3x__302_1021_etm_init6, !7, !"__initcall__kmod_coresight_etm3x__302_1021_etm_init6", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 1021, i32 1}
!8 = !{ptr @__exitcall_etm_exit, !9, !"__exitcall_etm_exit", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 1022, i32 1}
!10 = !{ptr @__UNIQUE_ID_author303, !11, !"__UNIQUE_ID_author303", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 1024, i32 1}
!12 = !{ptr @__UNIQUE_ID_author304, !13, !"__UNIQUE_ID_author304", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 1025, i32 1}
!14 = !{ptr @__UNIQUE_ID_description305, !15, !"__UNIQUE_ID_description305", i1 false, i1 false}
!15 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 1026, i32 1}
!16 = !{ptr @__UNIQUE_ID_file306, !17, !"__UNIQUE_ID_file306", i1 false, i1 false}
!17 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 1027, i32 1}
!18 = !{ptr @__UNIQUE_ID_license307, !17, !"__UNIQUE_ID_license307", i1 false, i1 false}
!19 = !{ptr @boot_enable, !20, !"boot_enable", i1 false, i1 false}
!20 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 40, i32 12}
!21 = !{ptr @__param_str_boot_enable, !1, !"__param_str_boot_enable", i1 false, i1 false}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/coresight/coresight-etm.h", i32 275, i32 4}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @etm_readl._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @etm_readl._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 986, i32 11}
!32 = !{ptr @etm_driver, !33, !"etm_driver", i1 false, i1 false}
!33 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 984, i32 27}
!34 = !{ptr @etm_dev_pm_ops, !35, !"etm_dev_pm_ops", i1 false, i1 false}
!35 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 962, i32 32}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 835, i32 61}
!38 = !{ptr @etm_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 846, i32 2}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 848, i32 44}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 859, i32 47}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 865, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @etm_probe._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @etm_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 898, i32 2}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @etm_probe._entry.13, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @etm_probe._entry_ptr.16, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwtracing/coresight/coresight-etm.h", i32 261, i32 4}
!57 = !{ptr @etm_writel._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @etm_writel._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 166, i32 3}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @etm_set_prog._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @etm_set_prog._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @etm_cs_ops, !65, !"etm_cs_ops", i1 false, i1 false}
!65 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 675, i32 35}
!66 = !{ptr @etm_source_ops, !67, !"etm_source_ops", i1 false, i1 false}
!67 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 668, i32 42}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 530, i32 3}
!70 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @etm_enable_sysfs.__UNIQUE_ID_ddebug299, !69, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!75 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 427, i32 2}
!78 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @etm_enable_hw.__UNIQUE_ID_ddebug298, !77, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 185, i32 3}
!82 = !{ptr @etm_clr_prog._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @etm_clr_prog._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 494, i32 6}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 660, i32 3}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 634, i32 2}
!90 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @etm_disable_sysfs.__UNIQUE_ID_ddebug301, !89, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 586, i32 2}
!94 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @etm_disable_hw.__UNIQUE_ID_ddebug300, !93, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 594, i32 6}
!98 = !{ptr @etmdrvdata, !99, !"etmdrvdata", i1 false, i1 false}
!99 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 43, i32 28}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 968, i32 2}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 970, i32 2}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 974, i32 2}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 976, i32 2}
!108 = !{ptr @etm_ids, !109, !"etm_ids", i1 false, i1 false}
!109 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 966, i32 29}
!110 = !{ptr @hp_online, !111, !"hp_online", i1 false, i1 false}
!111 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 45, i32 25}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 1008, i32 3}
!114 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @etm_init._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @etm_init._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 790, i32 10}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwtracing/coresight/coresight-etm3x-core.c", i32 797, i32 10}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{i64 4794595}
!133 = !{i64 2155502351}
!134 = !{!"auto-init"}
!135 = !{i8 0, i8 2}
!136 = !{i64 4795013}
!137 = !{i64 2155501655}
!138 = !{i64 2155516412}
!139 = !{i64 2155517814}
!140 = !{i64 2155517899}
!141 = !{i64 2155518041}
!142 = !{i64 2155518126}
!143 = !{i64 2155516969}
!144 = !{i64 2155517054}
!145 = !{i64 2155519631}
!146 = !{i64 2155516554}
!147 = !{i64 2155516639}
!148 = !{i64 2148335385}
!149 = !{i64 717298, i64 717322, i64 717343, i64 717360, i64 717377}
!150 = !{i64 2148335611}
!151 = !{i64 2148715377, i64 2148715382, i64 2148715395, i64 2148715439, i64 2148715473, i64 2148715494}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{i64 2155521720}
