; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/qcom-cpufreq-nvmem.c_pt.bc'
source_filename = "../drivers/cpufreq/qcom-cpufreq-nvmem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qcom_cpufreq_match_data = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.qcom_cpufreq_drv = type { ptr, ptr, ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@__initcall__kmod_qcom_cpufreq_nvmem__188_499_qcom_cpufreq_init6 = internal global ptr @qcom_cpufreq_init, section ".initcall6.init", align 4
@cpufreq_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@qcom_cpufreq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_cpufreq_probe, ptr @qcom_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_cpufreq_exit = internal global ptr @qcom_cpufreq_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description189 = internal constant [74 x i8] c"qcom_cpufreq_nvmem.description=Qualcomm Technologies, Inc. CPUfreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [59 x i8] c"qcom_cpufreq_nvmem.file=drivers/cpufreq/qcom-cpufreq-nvmem\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [34 x i8] c"qcom_cpufreq_nvmem.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@qcom_cpufreq_match_list = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8096\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_data_kryo }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_data_kryo }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_data_qcs404 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_data_krait }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_data_krait }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_data_krait }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_data_krait }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom-cpufreq-nvmem\00", [45 x i8] zeroinitializer }, align 32
@match_data_kryo = internal constant { %struct.qcom_cpufreq_match_data, [24 x i8] } { %struct.qcom_cpufreq_match_data { ptr @qcom_cpufreq_kryo_name_version, ptr null }, [24 x i8] zeroinitializer }, align 32
@match_data_qcs404 = internal constant { %struct.qcom_cpufreq_match_data, [24 x i8] } { %struct.qcom_cpufreq_match_data { ptr null, ptr @qcs404_genpd_names }, [24 x i8] zeroinitializer }, align 32
@match_data_krait = internal constant { %struct.qcom_cpufreq_match_data, [24 x i8] } { %struct.qcom_cpufreq_match_data { ptr @qcom_cpufreq_krait_name_version, ptr null }, [24 x i8] zeroinitializer }, align 32
@qcom_cpufreq_kryo_name_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Not Snapdragon 820/821!\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qcom_cpufreq_kryo_name_version\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/cpufreq/qcom-cpufreq-nvmem.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_cpufreq_kryo_name_version._entry_ptr = internal global ptr @qcom_cpufreq_kryo_name_version._entry, section ".printk_index", align 4
@qcs404_genpd_names = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpr\00", [28 x i8] zeroinitializer }, align 32
@qcom_cpufreq_krait_name_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 234, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to read nvmem data. Defaulting to 0!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcom_cpufreq_krait_name_version\00", [32 x i8] zeroinitializer }, align 32
@qcom_cpufreq_krait_name_version._entry_ptr = internal global ptr @qcom_cpufreq_krait_name_version._entry, section ".printk_index", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"speed%d-pvs%d-v%d\00", [46 x i8] zeroinitializer }, align 32
@get_krait_bin_format_a._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 81, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Speed bin: Defaulting to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get_krait_bin_format_a\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@get_krait_bin_format_a._entry_ptr = internal global ptr @get_krait_bin_format_a._entry, section ".printk_index", align 4
@get_krait_bin_format_a.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.12, ptr @.str.4, ptr @.str.15, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_cpufreq_nvmem\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speed bin: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@get_krait_bin_format_a._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 92, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PVS bin: Defaulting to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@get_krait_bin_format_a._entry_ptr.18 = internal global ptr @get_krait_bin_format_a._entry.16, section ".printk_index", align 4
@get_krait_bin_format_a.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.12, ptr @.str.4, ptr @.str.19, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PVS bin: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@get_krait_bin_format_b.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.20, ptr @.str.4, ptr @.str.15, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get_krait_bin_format_b\00", [41 x i8] zeroinitializer }, align 32
@get_krait_bin_format_b._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.20, ptr @.str.4, i32 128, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Speed bin not set. Defaulting to 0!\0A\00", [59 x i8] zeroinitializer }, align 32
@get_krait_bin_format_b._entry_ptr = internal global ptr @get_krait_bin_format_b._entry, section ".printk_index", align 4
@get_krait_bin_format_b.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.20, ptr @.str.4, ptr @.str.19, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@get_krait_bin_format_b._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.4, i32 138, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PVS bin not set. Defaulting to 0!\0A\00", [61 x i8] zeroinitializer }, align 32
@get_krait_bin_format_b._entry_ptr.24 = internal global ptr @get_krait_bin_format_b._entry.22, section ".printk_index", align 4
@get_krait_bin_format_b.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.20, ptr @.str.4, ptr @.str.25, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PVS version: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"speedXX-pvsXX-vXX\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"operating-points-v2-kryo-cpu\00", [35 x i8] zeroinitializer }, align 32
@qcom_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 303, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not get nvmem cell: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_cpufreq_probe\00", [45 x i8] zeroinitializer }, align 32
@qcom_cpufreq_probe._entry_ptr = internal global ptr @qcom_cpufreq_probe._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@qcom_cpufreq_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to add OPP name %s\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_cpufreq_probe._entry_ptr.32 = internal global ptr @qcom_cpufreq_probe._entry.30, section ".printk_index", align 4
@qcom_cpufreq_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.4, i32 367, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set supported hardware\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_cpufreq_probe._entry_ptr.35 = internal global ptr @qcom_cpufreq_probe._entry.33, section ".printk_index", align 4
@qcom_cpufreq_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.4, i32 382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not attach to pm_domain: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_cpufreq_probe._entry_ptr.38 = internal global ptr @qcom_cpufreq_probe._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-dt\00", [21 x i8] zeroinitializer }, align 32
@cpufreq_dt_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@qcom_cpufreq_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.4, i32 396, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register platform device\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_cpufreq_probe._entry_ptr.42 = internal global ptr @qcom_cpufreq_probe._entry.40, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 246, i64 291, i64 305, i64 312]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"cpufreq_pdev\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 65, i32 50 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"qcom_cpufreq_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 446, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 474, i32 48 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 490, i32 53 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"match_data_kryo\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 247, i32 45 }
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"match_data_qcs404\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 257, i32 45 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"match_data_krait\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 251, i32 45 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 186, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"qcs404_genpd_names\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 255, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 255, i32 45 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 234, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 238, i32 51 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 81, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 83, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 92, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 94, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 126, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 128, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 138, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 142, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 267, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 280, i32 36 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 301, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 356, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 366, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 380, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 388, i32 52 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"cpufreq_dt_pdev\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 65, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [40 x i8] c"../drivers/cpufreq/qcom-cpufreq-nvmem.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 396, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_qcom_cpufreq_exit, ptr @__initcall__kmod_qcom_cpufreq_nvmem__188_499_qcom_cpufreq_init6, ptr @get_krait_bin_format_a._entry, ptr @get_krait_bin_format_a._entry.16, ptr @get_krait_bin_format_a._entry_ptr, ptr @get_krait_bin_format_a._entry_ptr.18, ptr @get_krait_bin_format_b._entry, ptr @get_krait_bin_format_b._entry.22, ptr @get_krait_bin_format_b._entry_ptr, ptr @get_krait_bin_format_b._entry_ptr.24, ptr @qcom_cpufreq_exit, ptr @qcom_cpufreq_krait_name_version._entry, ptr @qcom_cpufreq_krait_name_version._entry_ptr, ptr @qcom_cpufreq_kryo_name_version._entry, ptr @qcom_cpufreq_kryo_name_version._entry_ptr, ptr @qcom_cpufreq_probe._entry, ptr @qcom_cpufreq_probe._entry.30, ptr @qcom_cpufreq_probe._entry.33, ptr @qcom_cpufreq_probe._entry.36, ptr @qcom_cpufreq_probe._entry.40, ptr @qcom_cpufreq_probe._entry_ptr, ptr @qcom_cpufreq_probe._entry_ptr.32, ptr @qcom_cpufreq_probe._entry_ptr.35, ptr @qcom_cpufreq_probe._entry_ptr.38, ptr @qcom_cpufreq_probe._entry_ptr.42, ptr @cpufreq_pdev, ptr @qcom_cpufreq_driver, ptr @.str, ptr @.str.1, ptr @match_data_kryo, ptr @match_data_qcs404, ptr @match_data_krait, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qcs404_genpd_names, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @cpufreq_dt_pdev, ptr @.str.41], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_data_kryo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_data_qcs404 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_data_krait to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_kryo_name_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_genpd_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_krait_name_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_krait_bin_format_a._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_krait_bin_format_a._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_krait_bin_format_b._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_krait_bin_format_b._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_dt_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cpufreq_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_match_node(ptr noundef nonnull @qcom_cpufreq_match_list, ptr noundef nonnull %call.i) #11
  tail call void @of_node_put(ptr noundef nonnull %call.i) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_cpufreq_driver, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end9, !prof !115

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.1, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  store ptr %call.i.i, ptr @cpufreq_pdev, align 4
  %cmp.i.i.not = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call.i.i to i32
  call void @platform_driver_unregister(ptr noundef nonnull @qcom_cpufreq_driver) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end14 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_cpufreq_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @cpufreq_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_cpufreq_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_kryo_name_version(ptr noundef %cpu_dev, ptr noundef %speedbin_nvmem, ptr nocapture noundef writeonly %pvs_name, ptr nocapture noundef writeonly %drv) #3 align 64 {
entry:
  %len.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !116
  %1 = ptrtoint ptr %pvs_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %pvs_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #11
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len.i, align 4, !annotation !116
  %call.i = call ptr @qcom_smem_get(i32 noundef -1, i32 noundef 137, ptr noundef nonnull %len.i) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %3 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %incdec.ptr.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.i.do.end_crit_edge [
    i32 246, label %if.end.i.if.end_crit_edge
    i32 291, label %if.end.i.if.end_crit_edge38
    i32 305, label %if.end.i.if.end.thread_crit_edge
    i32 312, label %if.end.i.if.end.thread_crit_edge39
  ]

if.end.i.if.end.thread_crit_edge39:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

if.end.i.if.end.thread_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

if.end.i.if.end_crit_edge38:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %cpu_dev, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.end.i.if.end_crit_edge38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  %call1 = call ptr @nvmem_cell_read(ptr noundef %speedbin_nvmem, ptr noundef nonnull %len) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.then3_crit_edge, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end.thread:                                    ; preds = %if.end.i.if.end.thread_crit_edge, %if.end.i.if.end.thread_crit_edge39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  %call128 = call ptr @nvmem_cell_read(ptr noundef %speedbin_nvmem, ptr noundef nonnull %len) #11
  %cmp.i29 = icmp ugt ptr %call128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %if.end.thread.if.then3_crit_edge, label %if.end.thread.sw.epilog_crit_edge

if.end.thread.sw.epilog_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.thread.if.then3_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then3:                                         ; preds = %if.end.thread.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %call133 = phi ptr [ %call128, %if.end.thread.if.then3_crit_edge ], [ %call1, %if.end.if.then3_crit_edge ]
  %6 = ptrtoint ptr %call133 to i32
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.thread.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %call128.sink = phi ptr [ %call1, %if.end.sw.epilog_crit_edge ], [ %call128, %if.end.thread.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 1, %if.end.sw.epilog_crit_edge ], [ 16, %if.end.thread.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %call128.sink to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call128.sink, align 1
  %conv7 = zext i8 %8 to i32
  %shl8 = shl i32 %.sink, %conv7
  %9 = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %drv, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl8, ptr %9, align 4
  call void @kfree(ptr noundef %call128.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then3, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %6, %if.then3 ], [ 0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_krait_name_version(ptr noundef %cpu_dev, ptr noundef %speedbin_nvmem, ptr nocapture noundef readonly %pvs_name, ptr nocapture noundef writeonly %drv) #3 align 64 {
entry:
  %speed = alloca i32, align 4
  %pvs = alloca i32, align 4
  %pvs_ver = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #11
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %speed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pvs) #11
  %1 = ptrtoint ptr %pvs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pvs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pvs_ver) #11
  %2 = ptrtoint ptr %pvs_ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pvs_ver, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %len, align 4, !annotation !116
  %call = call ptr @nvmem_cell_read(ptr noundef %speedbin_nvmem, ptr noundef nonnull %len) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %6, label %do.end [
    i32 4, label %sw.bb
    i32 8, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @get_krait_bin_format_a(ptr noundef %cpu_dev, ptr noundef nonnull %speed, ptr noundef nonnull %pvs, ptr noundef %call)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @get_krait_bin_format_b(ptr noundef %cpu_dev, ptr noundef nonnull %speed, ptr noundef nonnull %pvs, ptr noundef nonnull %pvs_ver, ptr noundef %call)
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %cpu_dev, ptr noundef nonnull @.str.8) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %8 = ptrtoint ptr %pvs_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pvs_name, align 4
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 4
  %12 = ptrtoint ptr %pvs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pvs, align 4
  %14 = ptrtoint ptr %pvs_ver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pvs_ver, align 4
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %9, i32 noundef 18, ptr noundef nonnull @.str.10, i32 noundef %11, i32 noundef %13, i32 noundef %15)
  %shl = shl nuw i32 1, %11
  %versions = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %drv, i32 0, i32 3
  %16 = ptrtoint ptr %versions to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl, ptr %versions, align 4
  call void @kfree(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ -19, %do.end ], [ 0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pvs_ver) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pvs) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_krait_bin_format_a(ptr noundef %cpu_dev, ptr nocapture noundef %speed, ptr nocapture noundef %pvs, ptr nocapture noundef readonly %buf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp = icmp eq i32 %and, 15
  %shr = lshr i32 %1, 4
  %and1 = and i32 %shr, 15
  %storemerge1 = select i1 %cmp, i32 %and1, i32 %and
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge1, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %storemerge1)
  %cmp2 = icmp eq i32 %storemerge1, 15
  br i1 %cmp2, label %if.then3, label %do.body4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %speed, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %cpu_dev, ptr noundef nonnull @.str.11, i32 noundef 0) #14
  br label %if.end11

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_krait_bin_format_a.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_krait_bin_format_a, %if.then7)) #11
          to label %if.end11 [label %if.then7], !srcloc !117

if.then7:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_krait_bin_format_a.__UNIQUE_ID_ddebug183, ptr noundef %cpu_dev, ptr noundef nonnull @.str.15, i32 noundef %5) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.body4, %if.then3
  %shr12 = lshr i32 %1, 10
  %and13 = and i32 %shr12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 7
  %shr16 = lshr i32 %1, 13
  %and17 = and i32 %shr16, 7
  %storemerge = select i1 %cmp14, i32 %and17, i32 %and13
  %6 = ptrtoint ptr %pvs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %pvs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %storemerge)
  %cmp19 = icmp eq i32 %storemerge, 7
  br i1 %cmp19, label %if.then20, label %do.body25

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %pvs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pvs, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %cpu_dev, ptr noundef nonnull @.str.17, i32 noundef 0) #14
  br label %if.end41

do.body25:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_krait_bin_format_a.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_krait_bin_format_a, %if.then37)) #11
          to label %if.end41 [label %if.then37], !srcloc !117

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pvs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pvs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_krait_bin_format_a.__UNIQUE_ID_ddebug184, ptr noundef %cpu_dev, ptr noundef nonnull @.str.19, i32 noundef %9) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %do.body25, %if.then20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_krait_bin_format_b(ptr noundef %cpu_dev, ptr nocapture noundef %speed, ptr nocapture noundef %pvs, ptr nocapture noundef %pvs_ver, ptr nocapture noundef readonly %buf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf, align 4
  %shr = lshr i32 %1, 24
  %and = and i32 %shr, 7
  %shr1 = lshr i32 %1, 4
  %and2 = and i32 %shr1, 3
  %2 = ptrtoint ptr %pvs_ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and2, ptr %pvs_ver, align 4
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shr3 = lshr i32 %1, 28
  %and4 = and i32 %shr3, 8
  %shr5 = lshr i32 %1, 6
  %and6 = and i32 %shr5, 7
  %or = or i32 %and4, %and6
  %4 = ptrtoint ptr %pvs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %pvs, align 4
  %shr7 = lshr i32 %1, 27
  %and8 = and i32 %shr7, 15
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shr10 = lshr i32 %1, 27
  %and11 = and i32 %shr10, 15
  %5 = ptrtoint ptr %pvs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and11, ptr %pvs, align 4
  %and12 = and i32 %1, 7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shr13 = lshr i32 %1, 28
  %and14 = and i32 %shr13, 8
  %shr15 = lshr i32 %1, 6
  %and16 = and i32 %shr15, 7
  %or17 = or i32 %and14, %and16
  %6 = ptrtoint ptr %pvs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or17, ptr %pvs, align 4
  %and18 = and i32 %1, 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  %and18.sink = phi i32 [ %and18, %sw.default ], [ %and12, %sw.bb9 ], [ %and8, %sw.bb ]
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and18.sink, ptr %speed, align 4
  %and19 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %do.end26, label %do.body

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_krait_bin_format_b.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_krait_bin_format_b, %if.then23)) #11
          to label %if.end27 [label %if.then23], !srcloc !117

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_krait_bin_format_b.__UNIQUE_ID_ddebug185, ptr noundef %cpu_dev, ptr noundef nonnull @.str.15, i32 noundef %9) #11
  br label %if.end27

do.end26:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %cpu_dev, ptr noundef nonnull @.str.21) #14
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %speed, align 4
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %if.then23, %do.body
  %add.ptr = getelementptr i32, ptr %buf, i32 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %and28 = and i32 %12, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.end50, label %do.body31

do.body31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_krait_bin_format_b.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_krait_bin_format_b, %if.then43)) #11
          to label %do.body52 [label %if.then43], !srcloc !117

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %pvs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pvs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_krait_bin_format_b.__UNIQUE_ID_ddebug186, ptr noundef %cpu_dev, ptr noundef nonnull @.str.19, i32 noundef %14) #11
  br label %do.body52

do.end50:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %cpu_dev, ptr noundef nonnull @.str.23) #14
  %15 = ptrtoint ptr %pvs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pvs, align 4
  br label %do.body52

do.body52:                                        ; preds = %do.end50, %if.then43, %do.body31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_krait_bin_format_b.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_krait_bin_format_b, %if.then64)) #11
          to label %do.end67 [label %if.then64], !srcloc !117

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %pvs_ver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pvs_ver, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_krait_bin_format_b.__UNIQUE_ID_ddebug187, ptr noundef %cpu_dev, ptr noundef nonnull @.str.25, i32 noundef %17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body52
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_probe(ptr nocapture noundef %pdev) #3 align 64 {
entry:
  %pvs_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pvs_name) #11
  %0 = ptrtoint ptr %pvs_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.26, ptr %pvs_name, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @dev_pm_opp_of_get_opp_desc_node(ptr noundef nonnull %call) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call1, ptr noundef nonnull @.str.27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @of_node_put(ptr noundef nonnull %call1) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #15
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %data = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %data13 = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %data13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %data13, align 8
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %if.end12.free_drv_crit_edge, label %if.end17

if.end12.free_drv_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_drv

if.end17:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %tobool19.not = icmp eq ptr %8, null
  br i1 %tobool19.not, label %if.end17.if.end36_crit_edge, label %if.then20

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then20:                                        ; preds = %if.end17
  %call21 = tail call ptr @of_nvmem_cell_get(ptr noundef nonnull %call1, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.then20
  %cmp.not = icmp eq ptr %call21, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then23.free_drv_crit_edge, label %do.end

if.then23.free_drv_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_drv

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.28, i32 noundef %9) #14
  br label %free_drv

if.end29:                                         ; preds = %if.then20
  %10 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data13, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call32 = call i32 %13(ptr noundef nonnull %call, ptr noundef %call21, ptr noundef nonnull %pvs_name, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  call void @nvmem_cell_put(ptr noundef %call21) #11
  br i1 %tobool33.not, label %if.end29.if.end36_crit_edge, label %if.end29.free_drv_crit_edge

if.end29.free_drv_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_drv

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end36:                                         ; preds = %if.end29.if.end36_crit_edge, %if.end17.if.end36_crit_edge
  call void @of_node_put(ptr noundef nonnull %call1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %14) #11
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i, i32 4) #11
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !115

kcalloc.exit.thread:                              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %call7.i.i, align 8
  br label %free_drv

if.end7.i.i:                                      ; preds = %if.end36
  %18 = extractvalue { i32, i1 } %15, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #16
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool40.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool40.not, label %if.end7.i.i.free_drv_crit_edge, label %if.end.i.i360

if.end7.i.i.free_drv_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_drv

if.end.i.i360:                                    ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i359 = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %20) #11
  %21 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i359, i32 4) #11
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kcalloc.exit395.thread, label %if.end7.i.i393, !prof !115

kcalloc.exit395.thread:                           ; preds = %if.end.i.i360
  call void @__sanitizer_cov_trace_pc() #13
  %hw_opp_tables544 = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %hw_opp_tables544 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %hw_opp_tables544, align 4
  br label %free_opp_names

if.end7.i.i393:                                   ; preds = %if.end.i.i360
  %24 = extractvalue { i32, i1 } %21, 0
  %call8.i.i392 = call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #16
  %hw_opp_tables = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %hw_opp_tables to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i392, ptr %hw_opp_tables, align 4
  %tobool46.not = icmp eq ptr %call8.i.i392, null
  br i1 %tobool46.not, label %if.end7.i.i393.free_opp_names_crit_edge, label %if.end.i.i495

if.end7.i.i393.free_opp_names_crit_edge:          ; preds = %if.end7.i.i393
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_opp_names

if.end.i.i495:                                    ; preds = %if.end7.i.i393
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i494 = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %26) #11
  %27 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i494, i32 4) #11
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %kcalloc.exit530.thread, label %if.end7.i.i528, !prof !115

kcalloc.exit530.thread:                           ; preds = %if.end.i.i495
  call void @__sanitizer_cov_trace_pc() #13
  %genpd_opp_tables555 = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %genpd_opp_tables555 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %genpd_opp_tables555, align 8
  br label %free_opp

if.end7.i.i528:                                   ; preds = %if.end.i.i495
  %30 = extractvalue { i32, i1 } %27, 0
  %call8.i.i527 = call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #16
  %genpd_opp_tables = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %genpd_opp_tables to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i527, ptr %genpd_opp_tables, align 8
  %tobool52.not = icmp eq ptr %call8.i.i527, null
  br i1 %tobool52.not, label %if.end7.i.i528.free_opp_crit_edge, label %for.cond.preheader

if.end7.i.i528.free_opp_crit_edge:                ; preds = %if.end7.i.i528
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_opp

for.cond.preheader:                               ; preds = %if.end7.i.i528
  %call55568 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call55568, i32 %32)
  %cmp56569 = icmp ult i32 %call55568, %32
  br i1 %cmp56569, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %versions = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %call7.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end118.for.body_crit_edge, %for.body.lr.ph
  %call55570 = phi i32 [ %call55568, %for.body.lr.ph ], [ %call55, %if.end118.for.body_crit_edge ]
  %call57 = call ptr @get_cpu_device(i32 noundef %call55570) #11
  %cmp58 = icmp eq ptr %call57, null
  br i1 %cmp58, label %for.body.free_genpd_opp_crit_edge, label %if.end60

for.body.free_genpd_opp_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_genpd_opp

if.end60:                                         ; preds = %for.body
  %33 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data13, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool63.not = icmp eq ptr %36, null
  br i1 %tobool63.not, label %if.end60.if.end95_crit_edge, label %if.then64

if.end60.if.end95_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then64:                                        ; preds = %if.end60
  %37 = ptrtoint ptr %pvs_name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pvs_name, align 4
  %tobool65.not = icmp eq ptr %38, null
  br i1 %tobool65.not, label %if.then64.if.end80_crit_edge, label %if.then66

if.then64.if.end80_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then66:                                        ; preds = %if.then64
  %call67 = call ptr @dev_pm_opp_set_prop_name(ptr noundef nonnull %call57, ptr noundef nonnull %38) #11
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  %arrayidx = getelementptr ptr, ptr %40, i32 %call55570
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call67, ptr %arrayidx, align 4
  %42 = load ptr, ptr %call7.i.i, align 8
  %arrayidx70 = getelementptr ptr, ptr %42, i32 %call55570
  %43 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx70, align 4
  %cmp.i531 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i531, label %if.then72, label %if.then66.if.end80_crit_edge

if.then66.if.end80_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then72:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %44 to i32
  %46 = ptrtoint ptr %pvs_name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pvs_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call57, ptr noundef nonnull @.str.31, ptr noundef %47) #14
  br label %free_opp

if.end80:                                         ; preds = %if.then66.if.end80_crit_edge, %if.then64.if.end80_crit_edge
  %call81 = call ptr @dev_pm_opp_set_supported_hw(ptr noundef nonnull %call57, ptr noundef %versions, i32 noundef 1) #11
  %48 = ptrtoint ptr %hw_opp_tables to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_opp_tables, align 4
  %arrayidx83 = getelementptr ptr, ptr %49, i32 %call55570
  %50 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call81, ptr %arrayidx83, align 4
  %51 = load ptr, ptr %hw_opp_tables, align 4
  %arrayidx85 = getelementptr ptr, ptr %51, i32 %call55570
  %52 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx85, align 4
  %cmp.i532 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i532, label %if.then87, label %if.end80.if.end95_crit_edge

if.end80.if.end95_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call57, ptr noundef nonnull @.str.34) #14
  br label %free_genpd_opp

if.end95:                                         ; preds = %if.end80.if.end95_crit_edge, %if.end60.if.end95_crit_edge
  %55 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data13, align 8
  %genpd_names = getelementptr inbounds %struct.qcom_cpufreq_match_data, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %genpd_names to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %genpd_names, align 4
  %tobool97.not = icmp eq ptr %58, null
  br i1 %tobool97.not, label %if.end95.if.end118_crit_edge, label %if.then98

if.end95.if.end118_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

if.then98:                                        ; preds = %if.end95
  %call101 = call ptr @dev_pm_opp_attach_genpd(ptr noundef nonnull %call57, ptr noundef nonnull %58, ptr noundef null) #11
  %59 = ptrtoint ptr %genpd_opp_tables to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %genpd_opp_tables, align 8
  %arrayidx103 = getelementptr ptr, ptr %60, i32 %call55570
  %61 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call101, ptr %arrayidx103, align 4
  %62 = load ptr, ptr %genpd_opp_tables, align 8
  %arrayidx105 = getelementptr ptr, ptr %62, i32 %call55570
  %63 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx105, align 4
  %cmp.i533 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i533, label %if.then107, label %if.then98.if.end118_crit_edge

if.then98.if.end118_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

if.then107:                                       ; preds = %if.then98
  %cmp111.not = icmp eq ptr %64, inttoptr (i32 -517 to ptr)
  br i1 %cmp111.not, label %if.then107.free_genpd_opp_crit_edge, label %do.end115

if.then107.free_genpd_opp_crit_edge:              ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_genpd_opp

do.end115:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %64 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call57, ptr noundef nonnull @.str.37, i32 noundef %65) #14
  br label %free_genpd_opp

if.end118:                                        ; preds = %if.then98.if.end118_crit_edge, %if.end95.if.end118_crit_edge
  %call55 = call i32 @cpumask_next(i32 noundef %call55570, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %66 = load i32, ptr @nr_cpu_ids, align 4
  %cmp56 = icmp ult i32 %call55, %66
  br i1 %cmp56, label %if.end118.for.body_crit_edge, label %if.end118.for.end_crit_edge

if.end118.for.end_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end118.for.body_crit_edge:                     ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end118.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cpu_dev.0.lcssa = phi ptr [ %call, %for.cond.preheader.for.end_crit_edge ], [ %call57, %if.end118.for.end_crit_edge ]
  %call119 = call fastcc ptr @platform_device_register_simple()
  store ptr %call119, ptr @cpufreq_dt_pdev, align 4
  %cmp.i534 = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i534, label %if.end122, label %if.then121

if.then121:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

if.end122:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %call119 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %cpu_dev.0.lcssa, ptr noundef nonnull @.str.41) #14
  br label %free_genpd_opp

free_genpd_opp:                                   ; preds = %if.end122, %do.end115, %if.then107.free_genpd_opp_crit_edge, %if.then87, %for.body.free_genpd_opp_crit_edge
  %ret.0 = phi i32 [ %54, %if.then87 ], [ %65, %do.end115 ], [ -517, %if.then107.free_genpd_opp_crit_edge ], [ %68, %if.end122 ], [ -19, %for.body.free_genpd_opp_crit_edge ]
  %call128571 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %69 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call128571, i32 %69)
  %cmp129572 = icmp ult i32 %call128571, %69
  br i1 %cmp129572, label %free_genpd_opp.for.body130_crit_edge, label %free_genpd_opp.for.end138_crit_edge

free_genpd_opp.for.end138_crit_edge:              ; preds = %free_genpd_opp
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

free_genpd_opp.for.body130_crit_edge:             ; preds = %free_genpd_opp
  br label %for.body130

for.body130:                                      ; preds = %if.end135.for.body130_crit_edge, %free_genpd_opp.for.body130_crit_edge
  %call128573 = phi i32 [ %call128, %if.end135.for.body130_crit_edge ], [ %call128571, %free_genpd_opp.for.body130_crit_edge ]
  %70 = ptrtoint ptr %genpd_opp_tables to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %genpd_opp_tables, align 8
  %arrayidx132 = getelementptr ptr, ptr %71, i32 %call128573
  %72 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx132, align 4
  %cmp.i535 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i535, label %for.body130.for.end138_crit_edge, label %if.end135

for.body130.for.end138_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

if.end135:                                        ; preds = %for.body130
  call void @dev_pm_opp_detach_genpd(ptr noundef %73) #11
  %call128 = call i32 @cpumask_next(i32 noundef %call128573, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %74 = load i32, ptr @nr_cpu_ids, align 4
  %cmp129 = icmp ult i32 %call128, %74
  br i1 %cmp129, label %if.end135.for.body130_crit_edge, label %if.end135.for.end138_crit_edge

if.end135.for.end138_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

if.end135.for.body130_crit_edge:                  ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body130

for.end138:                                       ; preds = %if.end135.for.end138_crit_edge, %for.body130.for.end138_crit_edge, %free_genpd_opp.for.end138_crit_edge
  %75 = ptrtoint ptr %genpd_opp_tables to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %genpd_opp_tables, align 8
  call void @kfree(ptr noundef %76) #11
  br label %free_opp

free_opp:                                         ; preds = %for.end138, %if.then72, %if.end7.i.i528.free_opp_crit_edge, %kcalloc.exit530.thread
  %ret.1 = phi i32 [ %ret.0, %for.end138 ], [ %45, %if.then72 ], [ -12, %if.end7.i.i528.free_opp_crit_edge ], [ -12, %kcalloc.exit530.thread ]
  %call141574 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %77 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call141574, i32 %77)
  %cmp142575 = icmp ult i32 %call141574, %77
  br i1 %cmp142575, label %free_opp.for.body143_crit_edge, label %free_opp.for.end151_crit_edge

free_opp.for.end151_crit_edge:                    ; preds = %free_opp
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end151

free_opp.for.body143_crit_edge:                   ; preds = %free_opp
  br label %for.body143

for.body143:                                      ; preds = %if.end148.for.body143_crit_edge, %free_opp.for.body143_crit_edge
  %call141576 = phi i32 [ %call141, %if.end148.for.body143_crit_edge ], [ %call141574, %free_opp.for.body143_crit_edge ]
  %78 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call7.i.i, align 8
  %arrayidx145 = getelementptr ptr, ptr %79, i32 %call141576
  %80 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx145, align 4
  %cmp.i536 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i536, label %for.body143.for.end151_crit_edge, label %if.end148

for.body143.for.end151_crit_edge:                 ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end151

if.end148:                                        ; preds = %for.body143
  call void @dev_pm_opp_put_prop_name(ptr noundef %81) #11
  %call141 = call i32 @cpumask_next(i32 noundef %call141576, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %82 = load i32, ptr @nr_cpu_ids, align 4
  %cmp142 = icmp ult i32 %call141, %82
  br i1 %cmp142, label %if.end148.for.body143_crit_edge, label %if.end148.for.end151_crit_edge

if.end148.for.end151_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end151

if.end148.for.body143_crit_edge:                  ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body143

for.end151:                                       ; preds = %if.end148.for.end151_crit_edge, %for.body143.for.end151_crit_edge, %free_opp.for.end151_crit_edge
  %call153577 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %83 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call153577, i32 %83)
  %cmp154578 = icmp ult i32 %call153577, %83
  br i1 %cmp154578, label %for.end151.for.body155_crit_edge, label %for.end151.for.end163_crit_edge

for.end151.for.end163_crit_edge:                  ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end163

for.end151.for.body155_crit_edge:                 ; preds = %for.end151
  br label %for.body155

for.body155:                                      ; preds = %if.end160.for.body155_crit_edge, %for.end151.for.body155_crit_edge
  %call153579 = phi i32 [ %call153, %if.end160.for.body155_crit_edge ], [ %call153577, %for.end151.for.body155_crit_edge ]
  %84 = ptrtoint ptr %hw_opp_tables to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw_opp_tables, align 4
  %arrayidx157 = getelementptr ptr, ptr %85, i32 %call153579
  %86 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx157, align 4
  %cmp.i537 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i537, label %for.body155.for.end163_crit_edge, label %if.end160

for.body155.for.end163_crit_edge:                 ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end163

if.end160:                                        ; preds = %for.body155
  call void @dev_pm_opp_put_supported_hw(ptr noundef %87) #11
  %call153 = call i32 @cpumask_next(i32 noundef %call153579, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %cmp154 = icmp ult i32 %call153, %88
  br i1 %cmp154, label %if.end160.for.body155_crit_edge, label %if.end160.for.end163_crit_edge

if.end160.for.end163_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end163

if.end160.for.body155_crit_edge:                  ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body155

for.end163:                                       ; preds = %if.end160.for.end163_crit_edge, %for.body155.for.end163_crit_edge, %for.end151.for.end163_crit_edge
  %89 = ptrtoint ptr %hw_opp_tables to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw_opp_tables, align 4
  call void @kfree(ptr noundef %90) #11
  br label %free_opp_names

free_opp_names:                                   ; preds = %for.end163, %if.end7.i.i393.free_opp_names_crit_edge, %kcalloc.exit395.thread
  %ret.2 = phi i32 [ %ret.1, %for.end163 ], [ -12, %if.end7.i.i393.free_opp_names_crit_edge ], [ -12, %kcalloc.exit395.thread ]
  %91 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %92) #11
  br label %free_drv

free_drv:                                         ; preds = %free_opp_names, %if.end7.i.i.free_drv_crit_edge, %kcalloc.exit.thread, %if.end29.free_drv_crit_edge, %do.end, %if.then23.free_drv_crit_edge, %if.end12.free_drv_crit_edge
  %ret.3 = phi i32 [ %ret.2, %free_opp_names ], [ -19, %if.end12.free_drv_crit_edge ], [ -12, %if.end7.i.i.free_drv_crit_edge ], [ %9, %do.end ], [ -517, %if.then23.free_drv_crit_edge ], [ -12, %kcalloc.exit.thread ], [ %call32, %if.end29.free_drv_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free_drv, %if.then121, %if.end8.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %free_drv ], [ 0, %if.then121 ], [ -2, %if.then7 ], [ -19, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pvs_name) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cpufreq_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load ptr, ptr @cpufreq_dt_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %2) #11
  %call117 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call117, i32 %3)
  %cmp18 = icmp ult i32 %call117, %3
  br i1 %cmp18, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hw_opp_tables = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %1, i32 0, i32 1
  %genpd_opp_tables = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call119 = phi i32 [ %call117, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %call119
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @dev_pm_opp_put_supported_hw(ptr noundef %7) #11
  %8 = ptrtoint ptr %hw_opp_tables to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_opp_tables, align 4
  %arrayidx2 = getelementptr ptr, ptr %9, i32 %call119
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  tail call void @dev_pm_opp_put_supported_hw(ptr noundef %11) #11
  %12 = ptrtoint ptr %genpd_opp_tables to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %genpd_opp_tables, align 4
  %arrayidx3 = getelementptr ptr, ptr %13, i32 %call119
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3, align 4
  tail call void @dev_pm_opp_detach_genpd(ptr noundef %15) #11
  %call1 = tail call i32 @cpumask_next(i32 noundef %call119, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %18) #11
  %hw_opp_tables5 = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %hw_opp_tables5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_opp_tables5, align 4
  tail call void @kfree(ptr noundef %20) #11
  %genpd_opp_tables6 = getelementptr inbounds %struct.qcom_cpufreq_drv, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %genpd_opp_tables6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %genpd_opp_tables6, align 4
  tail call void @kfree(ptr noundef %22) #11
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_of_get_opp_desc_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_prop_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_attach_genpd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @platform_device_register_simple() unnamed_addr #7 align 64 {
entry:
  %pdevinfo.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i) #11
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i, align 8
  %fwnode.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.39, ptr %name2.i, align 4
  %res4.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 5
  %dma_mask.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i, align 8
  %properties.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i, align 8
  %8 = call ptr @memset(ptr %res4.i, i32 0, i32 16)
  %call.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i) #11
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_detach_genpd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_prop_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_supported_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_qcom_cpufreq_nvmem__188_499_qcom_cpufreq_init6, !1, !"__initcall__kmod_qcom_cpufreq_nvmem__188_499_qcom_cpufreq_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 499, i32 1}
!2 = !{ptr @__exitcall_qcom_cpufreq_exit, !3, !"__exitcall_qcom_cpufreq_exit", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 506, i32 1}
!4 = !{ptr @__UNIQUE_ID_description189, !5, !"__UNIQUE_ID_description189", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 508, i32 1}
!6 = !{ptr @__UNIQUE_ID_file190, !7, !"__UNIQUE_ID_file190", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 509, i32 1}
!8 = !{ptr @__UNIQUE_ID_license191, !7, !"__UNIQUE_ID_license191", i1 false, i1 false}
!9 = !{ptr @cpufreq_pdev, !10, !"cpufreq_pdev", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 65, i32 50}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 474, i32 48}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 490, i32 53}
!15 = !{ptr @qcom_cpufreq_match_list, !16, !"qcom_cpufreq_match_list", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 454, i32 34}
!17 = !{ptr @match_data_kryo, !18, !"match_data_kryo", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 247, i32 45}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 186, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @qcom_cpufreq_kryo_name_version._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @qcom_cpufreq_kryo_name_version._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @match_data_qcs404, !28, !"match_data_qcs404", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 257, i32 45}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 255, i32 45}
!31 = !{ptr @qcs404_genpd_names, !32, !"qcs404_genpd_names", i1 false, i1 false}
!32 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 255, i32 20}
!33 = !{ptr @match_data_krait, !34, !"match_data_krait", i1 false, i1 false}
!34 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 251, i32 45}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 234, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @qcom_cpufreq_krait_name_version._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @qcom_cpufreq_krait_name_version._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 238, i32 51}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 81, i32 3}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @get_krait_bin_format_a._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @get_krait_bin_format_a._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 83, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @get_krait_bin_format_a.__UNIQUE_ID_ddebug183, !49, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 92, i32 3}
!54 = !{ptr @get_krait_bin_format_a._entry.16, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @get_krait_bin_format_a._entry_ptr.18, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 94, i32 3}
!58 = !{ptr @get_krait_bin_format_a.__UNIQUE_ID_ddebug184, !57, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 126, i32 3}
!61 = !{ptr @get_krait_bin_format_b.__UNIQUE_ID_ddebug185, !60, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 128, i32 3}
!64 = !{ptr @get_krait_bin_format_b._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @get_krait_bin_format_b._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @get_krait_bin_format_b.__UNIQUE_ID_ddebug186, !67, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!67 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 136, i32 3}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 138, i32 3}
!70 = !{ptr @get_krait_bin_format_b._entry.22, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @get_krait_bin_format_b._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 142, i32 2}
!74 = !{ptr @get_krait_bin_format_b.__UNIQUE_ID_ddebug187, !73, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!75 = !{ptr @qcom_cpufreq_driver, !76, !"qcom_cpufreq_driver", i1 false, i1 false}
!76 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 446, i32 31}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 267, i32 19}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 280, i32 36}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 301, i32 5}
!83 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @qcom_cpufreq_probe._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @qcom_cpufreq_probe._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 356, i32 6}
!88 = !{ptr @qcom_cpufreq_probe._entry.30, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @qcom_cpufreq_probe._entry_ptr.32, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 366, i32 5}
!92 = !{ptr @qcom_cpufreq_probe._entry.33, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @qcom_cpufreq_probe._entry_ptr.35, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 380, i32 6}
!96 = !{ptr @qcom_cpufreq_probe._entry.36, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qcom_cpufreq_probe._entry_ptr.38, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 388, i32 52}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 396, i32 2}
!102 = !{ptr @qcom_cpufreq_probe._entry.40, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @qcom_cpufreq_probe._entry_ptr.42, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @cpufreq_dt_pdev, !105, !"cpufreq_dt_pdev", i1 false, i1 false}
!105 = !{!"../drivers/cpufreq/qcom-cpufreq-nvmem.c", i32 65, i32 32}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{!"auto-init"}
!117 = !{i64 2148300235, i64 2148300240, i64 2148300253, i64 2148300297, i64 2148300331, i64 2148300352}
