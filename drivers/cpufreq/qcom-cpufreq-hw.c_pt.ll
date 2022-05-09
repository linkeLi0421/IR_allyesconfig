; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/qcom-cpufreq-hw.c_pt.bc'
source_filename = "../drivers/cpufreq/qcom-cpufreq-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.qcom_cpufreq_soc_data = type { i32, i32, i32, i32, i32, i8 }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.qcom_cpufreq_data = type { ptr, ptr, ptr, %struct.mutex, i32, [15 x i8], i8, %struct.delayed_work, ptr }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_qcom_cpufreq_hw__223_633_qcom_cpufreq_hw_init2 = internal global ptr @qcom_cpufreq_hw_init, section ".initcall2.init", align 4
@qcom_cpufreq_hw_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_cpufreq_hw_driver_probe, ptr @qcom_cpufreq_hw_driver_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_cpufreq_hw_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_cpufreq_hw_exit = internal global ptr @qcom_cpufreq_hw_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [51 x i8] c"qcom_cpufreq_hw.description=QCOM CPUFREQ HW Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [53 x i8] c"qcom_cpufreq_hw.file=drivers/cpufreq/qcom-cpufreq-hw\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [31 x i8] c"qcom_cpufreq_hw.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom-cpufreq-hw\00", [16 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,cpufreq-hw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qcom_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,cpufreq-epss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @epss_soc_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@xo_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alternate\00", [22 x i8] zeroinitializer }, align 32
@cpu_hw_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cpufreq_qcom_hw_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"qcom-cpufreq-hw\00", i16 44, ptr null, ptr @qcom_cpufreq_hw_cpu_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @qcom_cpufreq_hw_target_index, ptr @qcom_cpufreq_hw_fast_switch, ptr null, ptr null, ptr null, ptr @qcom_cpufreq_hw_get, ptr null, ptr null, ptr null, ptr null, ptr @qcom_cpufreq_hw_cpu_exit, ptr null, ptr null, ptr @qcom_cpufreq_ready, ptr @qcom_cpufreq_hw_attr, i8 0, ptr null, ptr @cpufreq_register_em_with_opp }, [48 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 608, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CPUFreq HW driver failed to register\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcom_cpufreq_hw_driver_probe\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/cpufreq/qcom-cpufreq-hw.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_driver_probe._entry_ptr = internal global ptr @qcom_cpufreq_hw_driver_probe._entry, section ".printk_index", align 4
@qcom_cpufreq_hw_driver_probe.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_cpufreq_hw\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"QCOM CPUFreq HW driver initialized\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @cpufreq_freq_attr_scaling_available_freqs, ptr @cpufreq_freq_attr_scaling_boost_freqs, ptr null], [20 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: failed to get cpu%d device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_cpufreq_hw_cpu_init\00", [39 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry_ptr = internal global ptr @qcom_cpufreq_hw_cpu_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,freq-domain\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"#freq-domain-cells\00", [45 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.5, i32 451, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get mem resource %d\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry_ptr.16 = internal global ptr @qcom_cpufreq_hw_cpu_init._entry.14, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@qcom_cpufreq_hw_cpu_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.5, i32 456, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request resource %pR\0A\00", [32 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry_ptr.19 = internal global ptr @qcom_cpufreq_hw_cpu_init._entry.17, section ".printk_index", align 4
@qcom_cpufreq_hw_cpu_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.5, i32 462, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to map resource %pR\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry_ptr.22 = internal global ptr @qcom_cpufreq_hw_cpu_init._entry.20, section ".printk_index", align 4
@qcom_cpufreq_hw_cpu_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.5, i32 479, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Domain-%d cpufreq hardware not enabled\0A\00", [56 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry_ptr.25 = internal global ptr @qcom_cpufreq_hw_cpu_init._entry.23, section ".printk_index", align 4
@qcom_cpufreq_hw_cpu_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.5, i32 486, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Domain-%d failed to get related CPUs\0A\00", [58 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry_ptr.28 = internal global ptr @qcom_cpufreq_hw_cpu_init._entry.26, section ".printk_index", align 4
@qcom_cpufreq_hw_cpu_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.11, ptr @.str.5, i32 496, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Domain-%d failed to read LUT\0A\00", [34 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry_ptr.31 = internal global ptr @qcom_cpufreq_hw_cpu_init._entry.29, section ".printk_index", align 4
@qcom_cpufreq_hw_cpu_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.11, ptr @.str.5, i32 502, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to add OPPs\0A\00", [44 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry_ptr.34 = internal global ptr @qcom_cpufreq_hw_cpu_init._entry.32, section ".printk_index", align 4
@qcom_cpufreq_hw_cpu_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.11, ptr @.str.5, i32 510, ptr @.str.37, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable boost: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_cpu_init._entry_ptr.38 = internal global ptr @qcom_cpufreq_hw_cpu_init._entry.35, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@icc_scaling_enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@qcom_cpufreq_hw_read_lut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid opp table in device tree\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_cpufreq_hw_read_lut\00", [39 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_read_lut._entry_ptr = internal global ptr @qcom_cpufreq_hw_read_lut._entry, section ".printk_index", align 4
@qcom_cpufreq_hw_read_lut.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.41, ptr @.str.5, ptr @.str.42, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"index=%d freq=%d, core_count %d\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_read_lut._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.5, i32 205, ptr @.str.37, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to update OPP for freq=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_read_lut._entry_ptr.45 = internal global ptr @qcom_cpufreq_hw_read_lut._entry.43, section ".printk_index", align 4
@qcom_cpufreq_hw_read_lut._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.5, i32 230, ptr @.str.37, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_read_lut._entry_ptr.47 = internal global ptr @qcom_cpufreq_hw_read_lut._entry.46, section ".printk_index", align 4
@qcom_cpufreq_update_opp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 92, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Voltage update failed freq=%ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_cpufreq_update_opp\00", [40 x i8] zeroinitializer }, align 32
@qcom_cpufreq_update_opp._entry_ptr = internal global ptr @qcom_cpufreq_update_opp._entry, section ".printk_index", align 4
@qcom_cpufreq_hw_lmh_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&data->throttle_lock\00", [43 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_lmh_init.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&data->throttle_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_lmh_init.__key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&data->throttle_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dcvsh-irq-%u\00", [19 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_lmh_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 393, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error registering %s: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_cpufreq_hw_lmh_init\00", [39 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_lmh_init._entry_ptr = internal global ptr @qcom_cpufreq_hw_lmh_init._entry, section ".printk_index", align 4
@qcom_cpufreq_hw_lmh_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.5, i32 400, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to set CPU affinity of %s[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@qcom_cpufreq_hw_lmh_init._entry_ptr.60 = internal global ptr @qcom_cpufreq_hw_lmh_init._entry.58, section ".printk_index", align 4
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cpufreq_freq_attr_scaling_available_freqs = external dso_local global %struct.freq_attr, align 4
@cpufreq_freq_attr_scaling_boost_freqs = external dso_local global %struct.freq_attr, align 4
@qcom_soc_data = internal constant { %struct.qcom_cpufreq_soc_data, [40 x i8] } { %struct.qcom_cpufreq_soc_data { i32 0, i32 272, i32 276, i32 1796, i32 2336, i8 32 }, [40 x i8] zeroinitializer }, align 32
@epss_soc_data = internal constant { %struct.qcom_cpufreq_soc_data, [40 x i8] } { %struct.qcom_cpufreq_soc_data { i32 0, i32 256, i32 512, i32 0, i32 800, i8 4 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.61 = private unnamed_addr constant [23 x i8] c"qcom_cpufreq_hw_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 620, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 624, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [22 x i8] c"qcom_cpufreq_hw_match\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 360, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 581, i32 28 }
@___asan_gen_.73 = private unnamed_addr constant [8 x i8] c"xo_rate\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 55, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 588, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"cpu_hw_rate\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 55, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant [23 x i8] c"cpufreq_qcom_hw_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 559, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 608, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 610, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"qcom_cpufreq_hw_attr\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 553, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 432, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 441, i32 43 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 442, i32 7 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 451, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 456, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 462, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 479, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 486, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 496, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 502, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 510, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 108, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"icc_scaling_enabled\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 176, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 202, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 205, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 229, i32 6 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 92, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 386, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 387, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 389, i32 51 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 393, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 399, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"qcom_soc_data\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 343, i32 43 }
@___asan_gen_.251 = private unnamed_addr constant [14 x i8] c"epss_soc_data\00", align 1
@___asan_gen_.252 = private constant [37 x i8] c"../drivers/cpufreq/qcom-cpufreq-hw.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 352, i32 43 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_qcom_cpufreq_hw_exit, ptr @__initcall__kmod_qcom_cpufreq_hw__223_633_qcom_cpufreq_hw_init2, ptr @qcom_cpufreq_hw_cpu_init._entry, ptr @qcom_cpufreq_hw_cpu_init._entry.14, ptr @qcom_cpufreq_hw_cpu_init._entry.17, ptr @qcom_cpufreq_hw_cpu_init._entry.20, ptr @qcom_cpufreq_hw_cpu_init._entry.23, ptr @qcom_cpufreq_hw_cpu_init._entry.26, ptr @qcom_cpufreq_hw_cpu_init._entry.29, ptr @qcom_cpufreq_hw_cpu_init._entry.32, ptr @qcom_cpufreq_hw_cpu_init._entry.35, ptr @qcom_cpufreq_hw_cpu_init._entry_ptr, ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.16, ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.19, ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.22, ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.25, ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.28, ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.31, ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.34, ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.38, ptr @qcom_cpufreq_hw_driver_probe._entry, ptr @qcom_cpufreq_hw_driver_probe._entry_ptr, ptr @qcom_cpufreq_hw_exit, ptr @qcom_cpufreq_hw_lmh_init._entry, ptr @qcom_cpufreq_hw_lmh_init._entry.58, ptr @qcom_cpufreq_hw_lmh_init._entry_ptr, ptr @qcom_cpufreq_hw_lmh_init._entry_ptr.60, ptr @qcom_cpufreq_hw_read_lut._entry, ptr @qcom_cpufreq_hw_read_lut._entry.43, ptr @qcom_cpufreq_hw_read_lut._entry.46, ptr @qcom_cpufreq_hw_read_lut._entry_ptr, ptr @qcom_cpufreq_hw_read_lut._entry_ptr.45, ptr @qcom_cpufreq_hw_read_lut._entry_ptr.47, ptr @qcom_cpufreq_update_opp._entry, ptr @qcom_cpufreq_update_opp._entry_ptr, ptr @qcom_cpufreq_hw_driver, ptr @.str, ptr @qcom_cpufreq_hw_match, ptr @.str.1, ptr @xo_rate, ptr @.str.2, ptr @cpu_hw_rate, ptr @cpufreq_qcom_hw_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @qcom_cpufreq_hw_attr, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @icc_scaling_enabled, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.48, ptr @.str.49, ptr @qcom_cpufreq_hw_lmh_init.__key, ptr @.str.50, ptr @qcom_cpufreq_hw_lmh_init.__key.51, ptr @.str.52, ptr @qcom_cpufreq_hw_lmh_init.__key.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @qcom_soc_data, ptr @epss_soc_data], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xo_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_hw_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_qcom_hw_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_cpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_cpu_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_cpu_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_cpu_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_cpu_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_cpu_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_cpu_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_cpu_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_cpu_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icc_scaling_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_read_lut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_read_lut._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_read_lut._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_update_opp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_lmh_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_lmh_init.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_lmh_init.__key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_lmh_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_hw_lmh_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_soc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epss_soc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_hw_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_cpufreq_hw_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_cpufreq_hw_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_cpufreq_hw_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_hw_driver_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @clk_get_rate(ptr noundef %call) #10
  store i32 %call3, ptr @xo_rate, align 4
  tail call void @clk_put(ptr noundef %call) #10
  %call5 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %cmp.i51 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @clk_get_rate(ptr noundef %call5) #10
  %div50 = lshr i32 %call10, 1
  store i32 %div50, ptr @cpu_hw_rate, align 4
  tail call void @clk_put(ptr noundef %call5) #10
  store ptr %pdev, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @cpufreq_qcom_hw_driver, i32 0, i32 2), align 4
  %call11 = tail call ptr @get_cpu_device(i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @dev_pm_opp_of_find_icc_paths(ptr noundef nonnull %call11, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @cpufreq_qcom_hw_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body22, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  br label %cleanup

do.body22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_cpufreq_hw_driver_probe.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_cpufreq_hw_driver_probe, %if.then27)) #10
          to label %cleanup [label %if.then27], !srcloc !138

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_cpufreq_hw_driver_probe.__UNIQUE_ID_ddebug222, ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body22, %do.end, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then7 ], [ -517, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ 0, %if.then27 ], [ %call18, %do.end ], [ 0, %do.body22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_hw_driver_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @cpufreq_qcom_hw_driver) #10
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_find_icc_paths(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_hw_cpu_init(ptr noundef %policy) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_get_driver_data() #10
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #10
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu, align 4
  %call2 = tail call ptr @get_cpu_device(i32 noundef %2) #10
  %tobool.not = icmp eq ptr %call2, null
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %4) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @get_cpu_device(i32 noundef %4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @of_get_cpu_node(i32 noundef %4, ptr noundef null) #10
  br label %of_cpu_device_node_get.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %of_node.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call ptr @of_node_get(ptr noundef %6) #10
  br label %of_cpu_device_node_get.exit

of_cpu_device_node_get.exit:                      ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call2.i, %if.end.i ], [ %call1.i, %if.then.i ]
  %tobool7.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool7.not, label %of_cpu_device_node_get.exit.cleanup_crit_edge, label %if.end9

of_cpu_device_node_get.exit.cleanup_crit_edge:    ; preds = %of_cpu_device_node_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %of_cpu_device_node_get.exit
  %call.i156 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %retval.0.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args) #10
  call void @of_node_put(ptr noundef nonnull %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool11.not = icmp eq i32 %call.i156, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %args14 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %7 = ptrtoint ptr %args14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args14, align 4
  %call15 = call ptr @platform_get_resource(ptr noundef %call, i32 noundef 512, i32 noundef %8) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %8) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %9 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call15, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call15, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %name = getelementptr inbounds %struct.resource, ptr %call15, i32 0, i32 2
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call23 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %add.i, ptr noundef %14, i32 noundef 0) #10
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull %call15) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %15 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call15, align 4
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  %sub.i158 = sub i32 1, %16
  %add.i159 = add i32 %sub.i158, %18
  %call32 = call ptr @ioremap(i32 noundef %16, i32 noundef %add.i159) #10
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end38

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull %call15) #13
  br label %release_region

if.end38:                                         ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 228) #14
  %tobool40.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool40.not, label %if.end38.unmap_base_crit_edge, label %if.end42

if.end38.unmap_base_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_base

if.end42:                                         ; preds = %if.end38
  %call44 = call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %soc_data = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call44, ptr %soc_data, align 8
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call32, ptr %call7.i.i, align 8
  %res46 = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %res46 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call15, ptr %res46, align 4
  %23 = ptrtoint ptr %call44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call44, align 4
  %add.ptr = getelementptr i8, ptr %call32, i32 %24
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !139
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool50.not = icmp eq i32 %26, 0
  br i1 %tobool50.not, label %do.end54, label %if.end55

do.end54:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %8) #13
  br label %error

if.end55:                                         ; preds = %if.end42
  %27 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %policy, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %29 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call16.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %30)
  %cmp17.i = icmp ult i32 %call16.i, %30
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %if.end55.qcom_get_related_cpus.exit_crit_edge

if.end55.qcom_get_related_cpus.exit_crit_edge:    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_get_related_cpus.exit

for.body.lr.ph.i:                                 ; preds = %if.end55
  %args6.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call18.i = phi i32 [ %call16.i, %for.body.lr.ph.i ], [ %call.i162, %for.cond.backedge.i.for.body.i_crit_edge ]
  %call.i.i = call ptr @get_cpu_device(i32 noundef %call18.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = call ptr @of_get_cpu_node(i32 noundef %call18.i, ptr noundef null) #10
  br label %of_cpu_device_node_get.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 27
  %31 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node.i.i, align 8
  %call2.i.i = call ptr @of_node_get(ptr noundef %32) #10
  br label %of_cpu_device_node_get.exit.i

of_cpu_device_node_get.exit.i:                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call2.i.i, %if.end.i.i ], [ %call1.i.i, %if.then.i.i ]
  %tobool.not.i160 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i160, label %of_cpu_device_node_get.exit.i.for.cond.backedge.i_crit_edge, label %if.end.i161

of_cpu_device_node_get.exit.i.for.cond.backedge.i_crit_edge: ; preds = %of_cpu_device_node_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

if.end.i161:                                      ; preds = %of_cpu_device_node_get.exit.i
  %call.i15.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @of_node_put(ptr noundef nonnull %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp3.i = icmp slt i32 %call.i15.i, 0
  br i1 %cmp3.i, label %if.end.i161.for.cond.backedge.i_crit_edge, label %if.end5.i

if.end.i161.for.cond.backedge.i_crit_edge:        ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

if.end5.i:                                        ; preds = %if.end.i161
  %33 = ptrtoint ptr %args6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %args6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %8)
  %cmp7.i = icmp eq i32 %34, %8
  br i1 %cmp7.i, label %if.then8.i, label %if.end5.i.for.cond.backedge.i_crit_edge

if.end5.i.for.cond.backedge.i_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %call18.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %35, %call18.i
  br i1 %cmp.not.i.i.i.i, label %if.then8.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.then8.i.cpumask_set_cpu.exit.i_crit_edge:      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.then8.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.then8.i.cpumask_set_cpu.exit.i_crit_edge
  call void @_set_bit(i32 noundef %call18.i, ptr noundef %28) #10
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %cpumask_set_cpu.exit.i, %if.end5.i.for.cond.backedge.i_crit_edge, %if.end.i161.for.cond.backedge.i_crit_edge, %of_cpu_device_node_get.exit.i.for.cond.backedge.i_crit_edge
  %call.i162 = call i32 @cpumask_next(i32 noundef %call18.i, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i162, %36
  br i1 %cmp.i, label %for.cond.backedge.i.for.body.i_crit_edge, label %for.cond.backedge.i.qcom_get_related_cpus.exit_crit_edge

for.cond.backedge.i.qcom_get_related_cpus.exit_crit_edge: ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_get_related_cpus.exit

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

qcom_get_related_cpus.exit:                       ; preds = %for.cond.backedge.i.qcom_get_related_cpus.exit_crit_edge, %if.end55.qcom_get_related_cpus.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %policy, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef %39, i32 noundef %37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool58.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool58.not, label %do.end62, label %if.end63

do.end62:                                         ; preds = %qcom_get_related_cpus.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %8) #13
  br label %error

if.end63:                                         ; preds = %qcom_get_related_cpus.exit
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %40 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %driver_data, align 4
  %dvfs_possible_from_any_cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 31
  %41 = ptrtoint ptr %dvfs_possible_from_any_cpu to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %dvfs_possible_from_any_cpu, align 4
  %call64 = call fastcc i32 @qcom_cpufreq_hw_read_lut(ptr noundef nonnull %call2, ptr noundef %policy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end70, label %do.end69

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %8) #13
  br label %error

if.end70:                                         ; preds = %if.end63
  %call71 = call i32 @dev_pm_opp_get_opp_count(ptr noundef nonnull %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call71)
  %cmp = icmp slt i32 %call71, 1
  br i1 %cmp, label %do.end75, label %if.end76

do.end75:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call2, ptr noundef nonnull @.str.33) #13
  br label %error

if.end76:                                         ; preds = %if.end70
  %call77 = call zeroext i1 @policy_has_boost_freq(ptr noundef %policy) #10
  br i1 %call77, label %if.then78, label %if.end76.if.end86_crit_edge

if.end76.if.end86_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then78:                                        ; preds = %if.end76
  %call79 = call i32 @cpufreq_enable_boost_support() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then78.if.end86_crit_edge, label %do.end84

if.then78.if.end86_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

do.end84:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %call2, ptr noundef nonnull @.str.36, i32 noundef %call79) #13
  br label %if.end86

if.end86:                                         ; preds = %do.end84, %if.then78.if.end86_crit_edge, %if.end76.if.end86_crit_edge
  %42 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data, align 4
  %call.i166 = call ptr @cpufreq_get_driver_data() #10
  %call1.i167 = call i32 @platform_get_irq_optional(ptr noundef %call.i166, i32 noundef %8) #10
  %throttle_irq.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %throttle_irq.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call1.i167, ptr %throttle_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call1.i167)
  %cmp.i168 = icmp eq i32 %call1.i167, -6
  br i1 %cmp.i168, label %if.end86.cleanup_crit_edge, label %if.end.i169

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i169:                                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167)
  %cmp4.i = icmp slt i32 %call1.i167, 0
  br i1 %cmp4.i, label %if.end.i169.error_crit_edge, label %if.end7.i

if.end.i169.error_crit_edge:                      ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end7.i:                                        ; preds = %if.end.i169
  %cancel_throttle.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 6
  %45 = ptrtoint ptr %cancel_throttle.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %cancel_throttle.i, align 1
  %policy8.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 8
  %46 = ptrtoint ptr %policy8.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %policy, ptr %policy8.i, align 4
  %throttle_lock.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 3
  call void @__mutex_init(ptr noundef %throttle_lock.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @qcom_cpufreq_hw_lmh_init.__key) #10
  %throttle_work.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 7
  call void @__init_work(ptr noundef %throttle_work.i, i32 noundef 0) #10
  %47 = ptrtoint ptr %throttle_work.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -64, ptr %throttle_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 7, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @qcom_cpufreq_hw_lmh_init.__key.51, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry18.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 7, i32 0, i32 1
  %48 = ptrtoint ptr %entry18.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %entry18.i, ptr %entry18.i, align 4
  %prev.i.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 7, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %entry18.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 7, i32 0, i32 2
  %50 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @qcom_lmh_dcvs_poll, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 7, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.54, ptr noundef nonnull @qcom_cpufreq_hw_lmh_init.__key.53) #10
  %irq_name.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %43, i32 0, i32 5
  %51 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu, align 4
  %call29.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name.i, i32 noundef 15, ptr noundef nonnull @.str.55, i32 noundef %52) #10
  %53 = ptrtoint ptr %throttle_irq.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %throttle_irq.i, align 4
  %call33.i = call i32 @request_threaded_irq(i32 noundef %54, ptr noundef null, ptr noundef nonnull @qcom_lmh_dcvs_handle_irq, i32 noundef 532480, ptr noundef %irq_name.i, ptr noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool.not.i170 = icmp eq i32 %call33.i, 0
  br i1 %tobool.not.i170, label %if.end40.i, label %do.end37.i

do.end37.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %call.i166, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.56, ptr noundef %irq_name.i, i32 noundef %call33.i) #13
  br label %cleanup

if.end40.i:                                       ; preds = %if.end7.i
  %55 = ptrtoint ptr %throttle_irq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %throttle_irq.i, align 4
  %57 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %policy, align 4
  %call.i.i.i = call i32 @__irq_apply_affinity_hint(i32 noundef %56, ptr noundef %58, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool43.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool43.not.i, label %if.end40.i.cleanup_crit_edge, label %do.end47.i

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end47.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev48.i = getelementptr inbounds %struct.platform_device, ptr %call.i166, i32 0, i32 3
  %59 = ptrtoint ptr %throttle_irq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %throttle_irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i, ptr noundef nonnull @.str.59, ptr noundef %irq_name.i, i32 noundef %60) #13
  br label %cleanup

error:                                            ; preds = %if.end.i169.error_crit_edge, %do.end75, %do.end69, %do.end62, %do.end54
  %ret.0 = phi i32 [ %call64, %do.end69 ], [ -19, %do.end75 ], [ -2, %do.end62 ], [ -19, %do.end54 ], [ %call1.i167, %if.end.i169.error_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %unmap_base

unmap_base:                                       ; preds = %error, %if.end38.unmap_base_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error ], [ -12, %if.end38.unmap_base_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call32) #10
  br label %release_region

release_region:                                   ; preds = %unmap_base, %do.end37
  %ret.2 = phi i32 [ %ret.1, %unmap_base ], [ -12, %do.end37 ]
  %61 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call15, align 4
  %63 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %end.i, align 4
  %sub.i173 = sub i32 1, %62
  %add.i174 = add i32 %sub.i173, %64
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %62, i32 noundef %add.i174) #10
  br label %cleanup

cleanup:                                          ; preds = %release_region, %do.end47.i, %if.end40.i.cleanup_crit_edge, %do.end37.i, %if.end86.cleanup_crit_edge, %do.end28, %do.end20, %if.end9.cleanup_crit_edge, %of_cpu_device_node_get.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %release_region ], [ -16, %do.end28 ], [ -19, %do.end20 ], [ -19, %do.end ], [ -22, %of_cpu_device_node_get.exit.cleanup_crit_edge ], [ %call.i156, %if.end9.cleanup_crit_edge ], [ 0, %do.end37.i ], [ 0, %if.end86.cleanup_crit_edge ], [ 0, %do.end47.i ], [ 0, %if.end40.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_hw_target_index(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %soc_data1 = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data1, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %4 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freq_table, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %5, i32 %index, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %index)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %reg_perf_state = getelementptr inbounds %struct.qcom_cpufreq_soc_data, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %reg_perf_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_perf_state, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #10, !srcloc !141
  %.b6 = load i1, ptr @icc_scaling_enabled, align 1
  br i1 %.b6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %cpu.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %call.i = tail call ptr @get_cpu_device(i32 noundef %14) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %mul.i = mul i32 %7, 1000
  %call1.i = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef nonnull %call.i, i32 noundef %mul.i, i1 noundef zeroext true) #10
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.end_crit_edge, label %if.end5.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @dev_pm_opp_set_opp(ptr noundef nonnull %call.i, ptr noundef %call1.i) #10
  tail call void @dev_pm_opp_put(ptr noundef %call1.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end5.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_hw_fast_switch(ptr nocapture noundef readonly %policy, i32 noundef %target_freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %soc_data1 = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data1, align 4
  %cached_resolved_idx = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 33
  %4 = ptrtoint ptr %cached_resolved_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cached_resolved_idx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %reg_perf_state = getelementptr inbounds %struct.qcom_cpufreq_soc_data, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %reg_perf_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_perf_state, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #10, !srcloc !141
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %11 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %freq_table, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %12, i32 %5, i32 2
  %13 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frequency, align 4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_hw_get(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_cpu_get_raw(i32 noundef %cpu) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %call, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %soc_data1 = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %reg_perf_state = getelementptr inbounds %struct.qcom_cpufreq_soc_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %reg_perf_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_perf_state, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !139
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 39)
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %call, i32 0, i32 20
  %11 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %freq_table, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %12, i32 %10, i32 2
  %13 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_hw_cpu_exit(ptr nocapture noundef readonly %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %1) #10
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %res1 = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @dev_pm_opp_remove_all_dynamic(ptr noundef %call) #10
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 1
  %8 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %related_cpus, align 4
  tail call void @dev_pm_opp_of_cpumask_remove_table(ptr noundef %9) #10
  %throttle_irq.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %throttle_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %throttle_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %entry.qcom_cpufreq_hw_lmh_exit.exit_crit_edge, label %if.end.i

entry.qcom_cpufreq_hw_lmh_exit.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_cpufreq_hw_lmh_exit.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %throttle_lock.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %throttle_lock.i, i32 noundef 0) #10
  %cancel_throttle.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %cancel_throttle.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %cancel_throttle.i, align 1
  tail call void @mutex_unlock(ptr noundef %throttle_lock.i) #10
  %throttle_work.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %3, i32 0, i32 7
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %throttle_work.i) #10
  %13 = ptrtoint ptr %throttle_irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %throttle_irq.i, align 4
  %call3.i = tail call ptr @free_irq(i32 noundef %14, ptr noundef %3) #10
  br label %qcom_cpufreq_hw_lmh_exit.exit

qcom_cpufreq_hw_lmh_exit.exit:                    ; preds = %if.end.i, %entry.qcom_cpufreq_hw_lmh_exit.exit_crit_edge
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %15 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %freq_table, align 4
  tail call void @kfree(ptr noundef %16) #10
  tail call void @kfree(ptr noundef %3) #10
  tail call void @iounmap(ptr noundef %7) #10
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %18
  %add.i = add i32 %sub.i, %20
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %18, i32 noundef %add.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_cpufreq_ready(ptr nocapture noundef readonly %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %throttle_irq = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %throttle_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %throttle_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpufreq_register_em_with_opp(ptr nocapture noundef readonly %policy) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %1) #10
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 1
  %2 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %related_cpus, align 4
  %call1 = tail call i32 @dev_pm_opp_of_register_em(ptr noundef %call, ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_get_driver_data() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_cpufreq_hw_read_lut(ptr noundef %cpu_dev, ptr nocapture noundef %policy) unnamed_addr #2 align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #10
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate, align 4, !annotation !142
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data, align 4
  %soc_data1 = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %soc_data1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc_data1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 492) #14
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @dev_pm_opp_of_add_table(ptr noundef %cpu_dev) #10
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %do.end [
    i32 0, label %if.then4
    i32 -19, label %if.else11
  ]

if.then4:                                         ; preds = %if.end
  store i1 true, ptr @icc_scaling_enabled, align 1
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rate, align 4
  %call5255 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %cpu_dev, ptr noundef nonnull %rate) #10
  %cmp.i256 = icmp ugt ptr %call5255, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i256, label %if.then4.if.end13_crit_edge, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  br label %if.end8

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end8:                                          ; preds = %if.end8.if.end8_crit_edge, %if.then4.if.end8_crit_edge
  %call5257 = phi ptr [ %call5, %if.end8.if.end8_crit_edge ], [ %call5255, %if.then4.if.end8_crit_edge ]
  call void @dev_pm_opp_put(ptr noundef %call5257) #10
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %call9 = call i32 @dev_pm_opp_disable(ptr noundef %cpu_dev, i32 noundef %9) #10
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %rate, align 4
  %call5 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %cpu_dev, ptr noundef nonnull %rate) #10
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end8.if.end13_crit_edge, label %if.end8.if.end8_crit_edge

if.end8.if.end8_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cpu_dev, ptr noundef nonnull @.str.40) #13
  br label %cleanup

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fast_switch_possible = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 26
  %12 = ptrtoint ptr %fast_switch_possible to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %fast_switch_possible, align 4
  store i1 false, ptr @icc_scaling_enabled, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.end8.if.end13_crit_edge, %if.then4.if.end13_crit_edge
  %reg_freq_lut = getelementptr inbounds %struct.qcom_cpufreq_soc_data, ptr %4, i32 0, i32 1
  %lut_row_size = getelementptr inbounds %struct.qcom_cpufreq_soc_data, ptr %4, i32 0, i32 5
  %reg_volt_lut = getelementptr inbounds %struct.qcom_cpufreq_soc_data, ptr %4, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end158.for.body_crit_edge, %if.end13
  %i.0259 = phi i32 [ 0, %if.end13 ], [ %inc160, %if.end158.for.body_crit_edge ]
  %prev_freq.0258 = phi i32 [ 0, %if.end13 ], [ %freq.0, %if.end158.for.body_crit_edge ]
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %15 = ptrtoint ptr %reg_freq_lut to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_freq_lut, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  %17 = ptrtoint ptr %lut_row_size to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lut_row_size, align 4
  %conv = zext i8 %18 to i32
  %mul = mul nuw nsw i32 %i.0259, %conv
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 %mul
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #10, !srcloc !139
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %and68 = lshr i32 %20, 16
  %shr69 = and i32 %and68, 7
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %23 = ptrtoint ptr %reg_volt_lut to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_volt_lut, align 4
  %add.ptr72 = getelementptr i8, ptr %22, i32 %24
  %25 = ptrtoint ptr %lut_row_size to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lut_row_size, align 4
  %conv74 = zext i8 %26 to i32
  %mul75 = mul nuw nsw i32 %i.0259, %conv74
  %add.ptr76 = getelementptr i8, ptr %add.ptr72, i32 %mul75
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #10, !srcloc !139
  %28 = and i32 %27, -15794176
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %mul97 = mul nuw nsw i32 %29, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %20)
  %tobool98.not = icmp ult i32 %20, 1073741824
  br i1 %tobool98.not, label %if.else101, label %if.then99

if.then99:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %and50 = and i32 %20, 255
  %30 = load i32, ptr @xo_rate, align 4
  %mul100 = mul i32 %30, %and50
  br label %if.end103

if.else101:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %31 = load i32, ptr @cpu_hw_rate, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.else101, %if.then99
  %freq.0.in = phi i32 [ %mul100, %if.then99 ], [ %31, %if.else101 ]
  %freq.0 = udiv i32 %freq.0.in, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %freq.0, i32 %prev_freq.0258)
  %cmp104.not = icmp eq i32 %freq.0, %prev_freq.0258
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr69)
  %cmp106.not = icmp eq i32 %shr69, 1
  %or.cond = select i1 %cmp104.not, i1 true, i1 %cmp106.not
  br i1 %or.cond, label %if.else129, label %if.then108

if.then108:                                       ; preds = %if.end103
  %mul.i = mul nuw i32 %freq.0, 1000
  %.b17.i = load i1, ptr @icc_scaling_enabled, align 1
  br i1 %.b17.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @dev_pm_opp_add(ptr noundef %cpu_dev, i32 noundef %mul.i, i32 noundef %mul97) #10
  br label %qcom_cpufreq_update_opp.exit

if.end.i:                                         ; preds = %if.then108
  %call1.i = call i32 @dev_pm_opp_adjust_voltage(ptr noundef %cpu_dev, i32 noundef %mul.i, i32 noundef %mul97, i32 noundef %mul97, i32 noundef %mul97) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %qcom_cpufreq_update_opp.exit.thread

qcom_cpufreq_update_opp.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %cpu_dev, ptr noundef nonnull @.str.48, i32 noundef %freq.0) #13
  br label %do.end125

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 @dev_pm_opp_enable(ptr noundef %cpu_dev, i32 noundef %mul.i) #10
  br label %qcom_cpufreq_update_opp.exit

qcom_cpufreq_update_opp.exit:                     ; preds = %if.end4.i, %if.then.i
  %retval.0.i233 = phi i32 [ %call5.i, %if.end4.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i233)
  %tobool110.not = icmp eq i32 %retval.0.i233, 0
  br i1 %tobool110.not, label %if.then111, label %qcom_cpufreq_update_opp.exit.do.end125_crit_edge

qcom_cpufreq_update_opp.exit.do.end125_crit_edge: ; preds = %qcom_cpufreq_update_opp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end125

if.then111:                                       ; preds = %qcom_cpufreq_update_opp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %call7.i.i.i, i32 %i.0259, i32 2
  %32 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %freq.0, ptr %frequency, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_cpufreq_hw_read_lut.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_cpufreq_hw_read_lut, %if.then118)) #10
          to label %if.end136 [label %if.then118], !srcloc !138

if.then118:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_cpufreq_hw_read_lut.__UNIQUE_ID_ddebug221, ptr noundef %cpu_dev, ptr noundef nonnull @.str.42, i32 noundef %i.0259, i32 noundef %freq.0, i32 noundef %shr69) #10
  br label %if.end136

do.end125:                                        ; preds = %qcom_cpufreq_update_opp.exit.do.end125_crit_edge, %qcom_cpufreq_update_opp.exit.thread
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %cpu_dev, ptr noundef nonnull @.str.44, i32 noundef %freq.0) #13
  %frequency127 = getelementptr %struct.cpufreq_frequency_table, ptr %call7.i.i.i, i32 %i.0259, i32 2
  %33 = ptrtoint ptr %frequency127 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %frequency127, align 4
  br label %if.end136

if.else129:                                       ; preds = %if.end103
  br i1 %cmp106.not, label %if.then132, label %if.else129.if.end136_crit_edge

if.else129.if.end136_crit_edge:                   ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then132:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #12
  %frequency134 = getelementptr %struct.cpufreq_frequency_table, ptr %call7.i.i.i, i32 %i.0259, i32 2
  %34 = ptrtoint ptr %frequency134 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %frequency134, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then132, %if.else129.if.end136_crit_edge, %do.end125, %if.then118, %if.then111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0259)
  %cmp137.not = icmp ne i32 %i.0259, 0
  %or.cond232 = select i1 %cmp137.not, i1 %cmp104.not, i1 false
  br i1 %or.cond232, label %if.then142, label %if.end158

if.then142:                                       ; preds = %if.end136
  %sub = add nsw i32 %i.0259, -1
  %arrayidx143 = getelementptr %struct.cpufreq_frequency_table, ptr %call7.i.i.i, i32 %sub
  %frequency144 = getelementptr %struct.cpufreq_frequency_table, ptr %call7.i.i.i, i32 %sub, i32 2
  %35 = ptrtoint ptr %frequency144 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frequency144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp145 = icmp eq i32 %36, -1
  br i1 %cmp145, label %if.then147, label %if.then142.for.end161_crit_edge

if.then142.for.end161_crit_edge:                  ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end161

if.then147:                                       ; preds = %if.then142
  %mul.i234 = mul nuw i32 %prev_freq.0258, 1000
  %.b17.i235 = load i1, ptr @icc_scaling_enabled, align 1
  br i1 %.b17.i235, label %if.end.i240, label %if.then.i237

if.then.i237:                                     ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #12
  %call.i236 = call i32 @dev_pm_opp_add(ptr noundef %cpu_dev, i32 noundef %mul.i234, i32 noundef %mul97) #10
  br label %qcom_cpufreq_update_opp.exit245

if.end.i240:                                      ; preds = %if.then147
  %call1.i238 = call i32 @dev_pm_opp_adjust_voltage(ptr noundef %cpu_dev, i32 noundef %mul.i234, i32 noundef %mul97, i32 noundef %mul97, i32 noundef %mul97) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i238)
  %tobool2.not.i239 = icmp eq i32 %call1.i238, 0
  br i1 %tobool2.not.i239, label %if.end4.i243, label %qcom_cpufreq_update_opp.exit245.thread

qcom_cpufreq_update_opp.exit245.thread:           ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %cpu_dev, ptr noundef nonnull @.str.48, i32 noundef %prev_freq.0258) #13
  br label %do.end155

if.end4.i243:                                     ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i242 = call i32 @dev_pm_opp_enable(ptr noundef %cpu_dev, i32 noundef %mul.i234) #10
  br label %qcom_cpufreq_update_opp.exit245

qcom_cpufreq_update_opp.exit245:                  ; preds = %if.end4.i243, %if.then.i237
  %retval.0.i244 = phi i32 [ %call5.i242, %if.end4.i243 ], [ %call.i236, %if.then.i237 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i244)
  %tobool149.not = icmp eq i32 %retval.0.i244, 0
  br i1 %tobool149.not, label %if.then150, label %qcom_cpufreq_update_opp.exit245.do.end155_crit_edge

qcom_cpufreq_update_opp.exit245.do.end155_crit_edge: ; preds = %qcom_cpufreq_update_opp.exit245
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end155

if.then150:                                       ; preds = %qcom_cpufreq_update_opp.exit245
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %frequency144 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %prev_freq.0258, ptr %frequency144, align 4
  %38 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %arrayidx143, align 4
  br label %for.end161

do.end155:                                        ; preds = %qcom_cpufreq_update_opp.exit245.do.end155_crit_edge, %qcom_cpufreq_update_opp.exit245.thread
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %cpu_dev, ptr noundef nonnull @.str.44, i32 noundef %prev_freq.0258) #13
  br label %for.end161

if.end158:                                        ; preds = %if.end136
  %inc160 = add nuw nsw i32 %i.0259, 1
  %exitcond.not = icmp eq i32 %inc160, 40
  br i1 %exitcond.not, label %if.end158.for.end161_crit_edge, label %if.end158.for.body_crit_edge

if.end158.for.body_crit_edge:                     ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end158.for.end161_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end161

for.end161:                                       ; preds = %if.end158.for.end161_crit_edge, %do.end155, %if.then150, %if.then142.for.end161_crit_edge
  %i.0252 = phi i32 [ %i.0259, %if.then142.for.end161_crit_edge ], [ %i.0259, %do.end155 ], [ %i.0259, %if.then150 ], [ 40, %if.end158.for.end161_crit_edge ]
  %frequency163 = getelementptr %struct.cpufreq_frequency_table, ptr %call7.i.i.i, i32 %i.0252, i32 2
  %39 = ptrtoint ptr %frequency163 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -2, ptr %frequency163, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %40 = ptrtoint ptr %freq_table to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i.i, ptr %freq_table, align 4
  %41 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %policy, align 4
  %call164 = call i32 @dev_pm_opp_set_sharing_cpus(ptr noundef %cpu_dev, ptr noundef %42) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end161, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %for.end161 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @policy_has_boost_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_enable_boost_support() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_adjust_voltage(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_lmh_dcvs_poll(ptr noundef %work) #2 align 64 {
entry:
  %freq_hz.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -124
  %policy1.i = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %policy1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policy1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %3, i32 noundef %4) #10
  %call2.i = tail call ptr @get_cpu_device(i32 noundef %call.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq_hz.i) #10
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %soc_data.i.i = getelementptr i8, ptr %work, i32 -116
  %7 = ptrtoint ptr %soc_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %soc_data.i.i, align 4
  %reg_current_vote.i.i = getelementptr inbounds %struct.qcom_cpufreq_soc_data, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reg_current_vote.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_current_vote.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !139
  %12 = and i32 %11, -16580608
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %mul.i = mul i32 %13, 19200000
  %14 = ptrtoint ptr %freq_hz.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.i, ptr %freq_hz.i, align 4
  %call4.i = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %call2.i, ptr noundef nonnull %freq_hz.i) #10
  %cmp.i = icmp eq ptr %call4.i, inttoptr (i32 -34 to ptr)
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %call2.i, ptr noundef nonnull %freq_hz.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %15 = ptrtoint ptr %freq_hz.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %freq_hz.i, align 4
  %div.i = udiv i32 %16, 1000
  %related_cpus.i = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %related_cpus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %related_cpus.i, align 4
  call void @topology_update_thermal_pressure(ptr noundef %18, i32 noundef %div.i) #10
  %throttle_lock.i = getelementptr i8, ptr %work, i32 -112
  call void @mutex_lock_nested(ptr noundef %throttle_lock.i, i32 noundef 0) #10
  %cancel_throttle.i = getelementptr i8, ptr %work, i32 -1
  %19 = ptrtoint ptr %cancel_throttle.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cancel_throttle.i, align 1, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.end.i.qcom_lmh_dcvs_notify.exit_crit_edge

if.end.i.qcom_lmh_dcvs_notify.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qcom_lmh_dcvs_notify.exit

if.end9.i:                                        ; preds = %if.end.i
  %call.i28.i = call ptr @cpufreq_cpu_get_raw(i32 noundef %call.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i28.i, null
  br i1 %tobool.not.i.i, label %if.end9.i.if.then12.i_crit_edge, label %qcom_cpufreq_hw_get.exit.i

if.end9.i.if.then12.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

qcom_cpufreq_hw_get.exit.i:                       ; preds = %if.end9.i
  %driver_data.i.i = getelementptr inbounds %struct.cpufreq_policy, ptr %call.i28.i, i32 0, i32 39
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  %soc_data1.i.i = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %soc_data1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc_data1.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %reg_perf_state.i.i = getelementptr inbounds %struct.qcom_cpufreq_soc_data, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %reg_perf_state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_perf_state.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %26, i32 %28
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #10, !srcloc !139
  %30 = call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = call i32 @llvm.umin.i32(i32 %30, i32 39) #10
  %freq_table.i.i = getelementptr inbounds %struct.cpufreq_policy, ptr %call.i28.i, i32 0, i32 20
  %32 = ptrtoint ptr %freq_table.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %freq_table.i.i, align 4
  %frequency.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %31, i32 2
  %34 = ptrtoint ptr %frequency.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frequency.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %35)
  %cmp11.not.i = icmp ult i32 %div.i, %35
  br i1 %cmp11.not.i, label %if.else.i, label %qcom_cpufreq_hw_get.exit.i.if.then12.i_crit_edge

qcom_cpufreq_hw_get.exit.i.if.then12.i_crit_edge: ; preds = %qcom_cpufreq_hw_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then12.i:                                      ; preds = %qcom_cpufreq_hw_get.exit.i.if.then12.i_crit_edge, %if.end9.i.if.then12.i_crit_edge
  %throttle_irq.i = getelementptr i8, ptr %work, i32 -20
  %36 = ptrtoint ptr %throttle_irq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %throttle_irq.i, align 4
  call void @enable_irq(i32 noundef %37) #10
  br label %qcom_lmh_dcvs_notify.exit

if.else.i:                                        ; preds = %qcom_cpufreq_hw_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %38 = load ptr, ptr @system_highpri_wq, align 4
  %call.i30.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %work, i32 noundef 1) #10
  br label %qcom_lmh_dcvs_notify.exit

qcom_lmh_dcvs_notify.exit:                        ; preds = %if.else.i, %if.then12.i, %if.end.i.qcom_lmh_dcvs_notify.exit_crit_edge
  call void @mutex_unlock(ptr noundef %throttle_lock.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq_hz.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_lmh_dcvs_handle_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %throttle_irq = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %throttle_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %throttle_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %1) #10
  %throttle_work = getelementptr inbounds %struct.qcom_cpufreq_data, ptr %data, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %throttle_work, i32 noundef 0) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @topology_update_thermal_pressure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_opp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get_raw(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove_all_dynamic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_cpumask_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !99, !100, !101, !102, !104, !105, !107, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_qcom_cpufreq_hw__223_633_qcom_cpufreq_hw_init2, !1, !"__initcall__kmod_qcom_cpufreq_hw__223_633_qcom_cpufreq_hw_init2", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 633, i32 1}
!2 = !{ptr @__exitcall_qcom_cpufreq_hw_exit, !3, !"__exitcall_qcom_cpufreq_hw_exit", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 639, i32 1}
!4 = !{ptr @__UNIQUE_ID_description224, !5, !"__UNIQUE_ID_description224", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 641, i32 1}
!6 = !{ptr @__UNIQUE_ID_file225, !7, !"__UNIQUE_ID_file225", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 642, i32 1}
!8 = !{ptr @__UNIQUE_ID_license226, !7, !"__UNIQUE_ID_license226", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 624, i32 11}
!11 = !{ptr @qcom_cpufreq_hw_driver, !12, !"qcom_cpufreq_hw_driver", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 620, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 581, i32 28}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 588, i32 28}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 608, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qcom_cpufreq_hw_driver_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @qcom_cpufreq_hw_driver_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 610, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @qcom_cpufreq_hw_driver_probe.__UNIQUE_ID_ddebug222, !26, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!29 = !{ptr @xo_rate, !30, !"xo_rate", i1 false, i1 false}
!30 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 55, i32 35}
!31 = !{ptr @cpu_hw_rate, !32, !"cpu_hw_rate", i1 false, i1 false}
!32 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 55, i32 22}
!33 = !{ptr @cpufreq_qcom_hw_driver, !34, !"cpufreq_qcom_hw_driver", i1 false, i1 false}
!34 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 559, i32 30}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 432, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @qcom_cpufreq_hw_cpu_init._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @qcom_cpufreq_hw_cpu_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 441, i32 43}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 442, i32 7}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 451, i32 3}
!46 = !{ptr @qcom_cpufreq_hw_cpu_init._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 456, i32 3}
!50 = !{ptr @qcom_cpufreq_hw_cpu_init._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 462, i32 3}
!54 = !{ptr @qcom_cpufreq_hw_cpu_init._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 479, i32 3}
!58 = !{ptr @qcom_cpufreq_hw_cpu_init._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 486, i32 3}
!62 = !{ptr @qcom_cpufreq_hw_cpu_init._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 496, i32 3}
!66 = !{ptr @qcom_cpufreq_hw_cpu_init._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 502, i32 3}
!70 = !{ptr @qcom_cpufreq_hw_cpu_init._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 510, i32 4}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @qcom_cpufreq_hw_cpu_init._entry.35, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @qcom_cpufreq_hw_cpu_init._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 176, i32 3}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @qcom_cpufreq_hw_read_lut._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @qcom_cpufreq_hw_read_lut._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 202, i32 5}
!87 = !{ptr @qcom_cpufreq_hw_read_lut.__UNIQUE_ID_ddebug221, !86, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 205, i32 5}
!90 = !{ptr @qcom_cpufreq_hw_read_lut._entry.43, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @qcom_cpufreq_hw_read_lut._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @qcom_cpufreq_hw_read_lut._entry.46, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 229, i32 6}
!94 = !{ptr @qcom_cpufreq_hw_read_lut._entry_ptr.47, !93, !"_entry_ptr", i1 false, i1 false}
!95 = distinct !{null, !96, !"icc_scaling_enabled", i1 false, i1 false}
!96 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 56, i32 13}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 92, i32 3}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @qcom_cpufreq_update_opp._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @qcom_cpufreq_update_opp._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @qcom_cpufreq_hw_lmh_init.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 386, i32 2}
!104 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @qcom_cpufreq_hw_lmh_init.__key.51, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 387, i32 2}
!107 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @qcom_cpufreq_hw_lmh_init.__key.53, !106, !"__key", i1 false, i1 false}
!109 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 389, i32 51}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 393, i32 3}
!114 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @qcom_cpufreq_hw_lmh_init._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @qcom_cpufreq_hw_lmh_init._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 399, i32 3}
!119 = !{ptr @qcom_cpufreq_hw_lmh_init._entry.58, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @qcom_cpufreq_hw_lmh_init._entry_ptr.60, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @qcom_cpufreq_hw_attr, !122, !"qcom_cpufreq_hw_attr", i1 false, i1 false}
!122 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 553, i32 26}
!123 = !{ptr @qcom_cpufreq_hw_match, !124, !"qcom_cpufreq_hw_match", i1 false, i1 false}
!124 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 360, i32 34}
!125 = !{ptr @qcom_soc_data, !126, !"qcom_soc_data", i1 false, i1 false}
!126 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 343, i32 43}
!127 = !{ptr @epss_soc_data, !128, !"epss_soc_data", i1 false, i1 false}
!128 = !{!"../drivers/cpufreq/qcom-cpufreq-hw.c", i32 352, i32 43}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i64 2148804178, i64 2148804183, i64 2148804196, i64 2148804240, i64 2148804274, i64 2148804295}
!139 = !{i64 5238377}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 5237959}
!142 = !{!"auto-init"}
!143 = !{i8 0, i8 2}
