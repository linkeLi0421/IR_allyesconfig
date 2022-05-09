; ModuleID = '/llk/IR_all_yes/drivers/devfreq/tegra30-devfreq.c_pt.bc'
source_filename = "../drivers/devfreq/tegra30-devfreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_governor = type { %struct.list_head, [16 x i8], i64, i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tegra_actmon_emc_ratio = type { i32, i32 }
%struct.tegra_devfreq_soc_data = type { ptr, i32 }
%struct.tegra_devfreq_device_config = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_devfreq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.notifier_block, %struct.delayed_work, %struct.notifier_block, [2 x %struct.tegra_devfreq_device], i32, i8, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tegra_devfreq_device = type { ptr, ptr, i32, i32, i32 }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.43, ptr }
%union.anon.43 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.cpufreq_freqs = type { ptr, i32, i32, i8 }

@__initcall__kmod_tegra30_devfreq__212_961_tegra_devfreq_driver_init6 = internal global ptr @tegra_devfreq_driver_init, section ".initcall6.init", align 4
@tegra_devfreq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_devfreq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_devfreq_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_devfreq_driver_exit = internal global ptr @tegra_devfreq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file213 = internal constant [53 x i8] c"tegra30_devfreq.file=drivers/devfreq/tegra30-devfreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [31 x i8] c"tegra30_devfreq.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description215 = internal constant [49 x i8] c"tegra30_devfreq.description=Tegra devfreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author216 = internal constant [65 x i8] c"tegra30_devfreq.author=Tomeu Vizoso <tomeu.vizoso@collabora.com>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra-devfreq\00", [18 x i8] zeroinitializer }, align 32
@tegra_devfreq_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-actmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-actmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_soc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"actmon\00", [25 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 846, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_devfreq_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/devfreq/tegra30-devfreq.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe._entry_ptr = internal global ptr @tegra_devfreq_probe._entry, section ".printk_index", align 4
@tegra_devfreq_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 852, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get actmon clock\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe._entry_ptr.9 = internal global ptr @tegra_devfreq_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get emc clock\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 873, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Interrupt request failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe._entry_ptr.14 = internal global ptr @tegra_devfreq_probe._entry.12, section ".printk_index", align 4
@tegra_devfreq_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 879, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set supported HW: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe._entry_ptr.17 = internal global ptr @tegra_devfreq_probe._entry.15, section ".printk_index", align 4
@tegra_devfreq_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 885, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add OPP table: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe._entry_ptr.20 = internal global ptr @tegra_devfreq_probe._entry.18, section ".printk_index", align 4
@tegra_devfreq_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 895, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to round clock rate: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe._entry_ptr.23 = internal global ptr @tegra_devfreq_probe._entry.21, section ".printk_index", align 4
@tegra_devfreq_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&tegra->cpufreq_update_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&tegra->cpufreq_update_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@tegra_devfreq_governor = internal global { %struct.devfreq_governor, [48 x i8] } { %struct.devfreq_governor { %struct.list_head zeroinitializer, [16 x i8] c"tegra_actmon\00\00\00\00", i64 1, i64 3, ptr @tegra_governor_get_target, ptr @tegra_governor_event_handler }, [48 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 917, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add governor: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_devfreq_probe._entry_ptr.29 = internal global ptr @tegra_devfreq_probe._entry.27, section ".printk_index", align 4
@tegra_devfreq_profile = internal global { %struct.devfreq_dev_profile, [56 x i8] } { %struct.devfreq_dev_profile { i32 0, i32 12, i32 0, i8 1, ptr @tegra_devfreq_target, ptr @tegra_devfreq_get_dev_status, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_actmon\00", [19 x i8] zeroinitializer }, align 32
@devm_tegra_devfreq_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to prepare and enable ACTMON clock\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"devm_tegra_devfreq_init_hw\00", [37 x i8] zeroinitializer }, align 32
@devm_tegra_devfreq_init_hw._entry_ptr = internal global ptr @devm_tegra_devfreq_init_hw._entry, section ".printk_index", align 4
@devm_tegra_devfreq_init_hw._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 817, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to reset hardware: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@devm_tegra_devfreq_init_hw._entry_ptr.35 = internal global ptr @devm_tegra_devfreq_init_hw._entry.33, section ".printk_index", align 4
@actmon_emc_ratios = internal constant { [7 x %struct.tegra_actmon_emc_ratio], [40 x i8] } { [7 x %struct.tegra_actmon_emc_ratio] [%struct.tegra_actmon_emc_ratio { i32 1400000, i32 4294967 }, %struct.tegra_actmon_emc_ratio { i32 1200000, i32 750000 }, %struct.tegra_actmon_emc_ratio { i32 1100000, i32 600000 }, %struct.tegra_actmon_emc_ratio { i32 1000000, i32 500000 }, %struct.tegra_actmon_emc_ratio { i32 800000, i32 375000 }, %struct.tegra_actmon_emc_ratio { i32 500000, i32 200000 }, %struct.tegra_actmon_emc_ratio { i32 250000, i32 100000 }], [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tegra_actmon_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 563, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register rate change notifier\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_actmon_resume\00", [44 x i8] zeroinitializer }, align 32
@tegra_actmon_resume._entry_ptr = internal global ptr @tegra_actmon_resume._entry, section ".printk_index", align 4
@tegra_actmon_resume._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 583, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to register rate change notifier: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@tegra_actmon_resume._entry_ptr.40 = internal global ptr @tegra_actmon_resume._entry.38, section ".printk_index", align 4
@tegra_devfreq_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 645, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to find opp for %lu Hz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_devfreq_target\00", [43 x i8] zeroinitializer }, align 32
@tegra_devfreq_target._entry_ptr = internal global ptr @tegra_devfreq_target._entry, section ".printk_index", align 4
@tegra30_soc = internal constant { %struct.tegra_devfreq_soc_data, [24 x i8] } { %struct.tegra_devfreq_soc_data { ptr @tegra30_device_configs, i32 512 }, [24 x i8] zeroinitializer }, align 32
@tegra124_soc = internal constant { %struct.tegra_devfreq_soc_data, [24 x i8] } { %struct.tegra_devfreq_soc_data { ptr @tegra124_device_configs, i32 1024 }, [24 x i8] zeroinitializer }, align 32
@tegra30_device_configs = internal constant { [2 x %struct.tegra_devfreq_device_config], [40 x i8] } { [2 x %struct.tegra_devfreq_device_config] [%struct.tegra_devfreq_device_config { i32 448, i32 67108864, i32 200, i32 50, i32 20, i32 10, i32 0 }, %struct.tegra_devfreq_device_config { i32 512, i32 33554432, i32 800, i32 40, i32 27, i32 10, i32 16000 }], [40 x i8] zeroinitializer }, align 32
@tegra124_device_configs = internal constant { [2 x %struct.tegra_devfreq_device_config], [40 x i8] } { [2 x %struct.tegra_devfreq_device_config] [%struct.tegra_devfreq_device_config { i32 448, i32 67108864, i32 200, i32 50, i32 60, i32 40, i32 0 }, %struct.tegra_devfreq_device_config { i32 512, i32 33554432, i32 800, i32 40, i32 27, i32 10, i32 16000 }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"tegra_devfreq_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 954, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 957, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"tegra_devfreq_of_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 946, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 844, i32 52 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 846, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 852, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 856, i32 46 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 859, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 873, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 879, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 885, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 895, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 912, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"tegra_devfreq_governor\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 782, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 917, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"tegra_devfreq_profile\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 686, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 924, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 806, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 817, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"actmon_emc_ratios\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 208, i32 44 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 562, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 582, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 645, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"tegra30_soc\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 941, i32 44 }
@___asan_gen_.181 = private unnamed_addr constant [13 x i8] c"tegra124_soc\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 931, i32 44 }
@___asan_gen_.184 = private unnamed_addr constant [23 x i8] c"tegra30_device_configs\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 129, i32 49 }
@___asan_gen_.187 = private unnamed_addr constant [24 x i8] c"tegra124_device_configs\00", align 1
@___asan_gen_.188 = private constant [37 x i8] c"../drivers/devfreq/tegra30-devfreq.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 107, i32 49 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author216, ptr @__UNIQUE_ID_description215, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_tegra_devfreq_driver_exit, ptr @__initcall__kmod_tegra30_devfreq__212_961_tegra_devfreq_driver_init6, ptr @devm_tegra_devfreq_init_hw._entry, ptr @devm_tegra_devfreq_init_hw._entry.33, ptr @devm_tegra_devfreq_init_hw._entry_ptr, ptr @devm_tegra_devfreq_init_hw._entry_ptr.35, ptr @tegra_actmon_resume._entry, ptr @tegra_actmon_resume._entry.38, ptr @tegra_actmon_resume._entry_ptr, ptr @tegra_actmon_resume._entry_ptr.40, ptr @tegra_devfreq_driver_exit, ptr @tegra_devfreq_probe._entry, ptr @tegra_devfreq_probe._entry.12, ptr @tegra_devfreq_probe._entry.15, ptr @tegra_devfreq_probe._entry.18, ptr @tegra_devfreq_probe._entry.21, ptr @tegra_devfreq_probe._entry.27, ptr @tegra_devfreq_probe._entry.7, ptr @tegra_devfreq_probe._entry_ptr, ptr @tegra_devfreq_probe._entry_ptr.14, ptr @tegra_devfreq_probe._entry_ptr.17, ptr @tegra_devfreq_probe._entry_ptr.20, ptr @tegra_devfreq_probe._entry_ptr.23, ptr @tegra_devfreq_probe._entry_ptr.29, ptr @tegra_devfreq_probe._entry_ptr.9, ptr @tegra_devfreq_target._entry, ptr @tegra_devfreq_target._entry_ptr, ptr @tegra_devfreq_driver, ptr @.str, ptr @tegra_devfreq_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @tegra_devfreq_probe.__key, ptr @.str.24, ptr @tegra_devfreq_probe.__key.25, ptr @.str.26, ptr @tegra_devfreq_governor, ptr @.str.28, ptr @tegra_devfreq_profile, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @actmon_emc_ratios, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @tegra30_soc, ptr @tegra124_soc, ptr @tegra30_device_configs, ptr @tegra124_device_configs], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_governor to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_profile to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_tegra_devfreq_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_tegra_devfreq_init_hw._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @actmon_emc_ratios to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_actmon_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_actmon_resume._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_devfreq_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_soc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_soc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_device_configs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_device_configs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_devfreq_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_devfreq_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_devfreq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_devfreq_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_devfreq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %hw_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_version) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %shl = shl nuw i32 1, %0
  %1 = ptrtoint ptr %hw_version to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shl, ptr %hw_version, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 204, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %soc = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %soc, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %reset = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i218 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %clock = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %clock, align 4
  %cmp.i219 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %do.end27, label %if.end31

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %10 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end19
  %call33 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #6
  %emc_clock = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %emc_clock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call33, ptr %emc_clock, align 4
  %cmp.i220 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call33 to i32
  %call40 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %14, ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  %call42 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  br i1 %cmp, label %if.end41.cleanup_crit_edge, label %if.end44

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end41
  %irq = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 11
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call42, ptr %irq, align 4
  tail call void @irq_modify_status(i32 noundef %call42, i32 noundef 0, i32 noundef 4096) #6
  %call48 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call42, ptr noundef null, ptr noundef nonnull @actmon_thread_isr, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call48) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end44
  %call57 = call i32 @devm_pm_opp_set_supported_hw(ptr noundef %dev1, ptr noundef nonnull %hw_version, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call57) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end55
  %call66 = call i32 @devm_pm_opp_of_add_table_noclk(ptr noundef %dev1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end73, label %do.end71

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call66) #9
  br label %cleanup

if.end73:                                         ; preds = %if.end64
  %16 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clock, align 4
  %call.i.i221 = call i32 @clk_prepare(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i221)
  %tobool.not.i.i = icmp eq i32 %call.i.i221, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end73.do.end.i_crit_edge

if.end73.do.end.i_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end73
  %call1.i.i = call i32 @clk_enable(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %17) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end73.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i221, %if.end73.do.end.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  %call.i23.i = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @devm_tegra_devfreq_deinit_hw, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call.i23.i, 0
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset, align 4
  %call5.i = call i32 @reset_control_reset(ptr noundef %19) #6
  br i1 %tobool.not.i24.i, label %if.end4.i, label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clock, align 4
  call void @clk_disable(ptr noundef %21) #6
  call void @clk_unprepare(ptr noundef %21) #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end78, label %do.end10.i

do.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call5.i) #9
  br label %cleanup

if.end78:                                         ; preds = %if.end4.i
  %22 = ptrtoint ptr %emc_clock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %emc_clock, align 4
  %call80 = call i32 @clk_round_rate(ptr noundef %23, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 1
  br i1 %cmp81, label %do.end85, label %if.end88

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool87.not = icmp eq i32 %call80, 0
  %. = select i1 %tobool87.not, i32 -22, i32 %call80
  br label %cleanup

if.end88:                                         ; preds = %if.end78
  %div225 = udiv i32 %call80, 1000
  %max_freq = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div225, ptr %max_freq, align 4
  %devices = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %devices, align 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %28, align 4
  %add.ptr94 = getelementptr i8, ptr %31, i32 %33
  %regs95 = getelementptr %struct.tegra_devfreq, ptr %call.i, i32 0, i32 10, i32 0, i32 1
  %34 = ptrtoint ptr %regs95 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr94, ptr %regs95, align 4
  %add.ptr.1 = getelementptr %struct.tegra_devfreq, ptr %call.i, i32 0, i32 10, i32 1
  %35 = load ptr, ptr %26, align 4
  %add.ptr91.1 = getelementptr %struct.tegra_devfreq_device_config, ptr %35, i32 1
  %36 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr91.1, ptr %add.ptr.1, align 4
  %37 = ptrtoint ptr %add.ptr91.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr91.1, align 4
  %add.ptr94.1 = getelementptr i8, ptr %31, i32 %38
  %regs95.1 = getelementptr %struct.tegra_devfreq, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %39 = ptrtoint ptr %regs95.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr94.1, ptr %regs95.1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %clk_rate_change_nb = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %clk_rate_change_nb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @tegra_actmon_clk_notify_cb, ptr %clk_rate_change_nb, align 4
  %cpu_rate_change_nb = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 9
  %42 = ptrtoint ptr %cpu_rate_change_nb to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @tegra_actmon_cpu_notify_cb, ptr %cpu_rate_change_nb, align 4
  %cpufreq_update_work = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 8
  call void @__init_work(ptr noundef %cpufreq_update_work, i32 noundef 0) #6
  %43 = ptrtoint ptr %cpufreq_update_work to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %cpufreq_update_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @tegra_devfreq_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry105 = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %44 = ptrtoint ptr %entry105 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry105, ptr %entry105, align 4
  %prev.i = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry105, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %46 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @tegra_actmon_delayed_update, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tegra_devfreq, ptr %call.i, i32 0, i32 8, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.26, ptr noundef nonnull @tegra_devfreq_probe.__key.25) #6
  %call117 = call i32 @devm_devfreq_add_governor(ptr noundef %dev1, ptr noundef nonnull @tegra_devfreq_governor) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end124, label %do.end122

do.end122:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call117) #9
  br label %cleanup

if.end124:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %emc_clock to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %emc_clock, align 4
  %call126 = call i32 @clk_get_rate(ptr noundef %48) #6
  store i32 %call126, ptr @tegra_devfreq_profile, align 4
  %call128 = call ptr @devm_devfreq_add_device(ptr noundef %dev1, ptr noundef nonnull @tegra_devfreq_profile, ptr noundef nonnull @.str.30, ptr noundef null) #6
  %cmp.i222 = icmp ugt ptr %call128, inttoptr (i32 -4096 to ptr)
  %49 = ptrtoint ptr %call128 to i32
  %spec.select = select i1 %cmp.i222, i32 %49, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %do.end122, %do.end85, %do.end10.i, %devm_add_action_or_reset.exit.i, %do.end.i, %do.end71, %do.end62, %do.end53, %if.end41.cleanup_crit_edge, %if.then36, %do.end27, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %8, %do.end ], [ %12, %do.end27 ], [ %call40, %if.then36 ], [ %call48, %do.end53 ], [ %call57, %do.end62 ], [ %call66, %do.end71 ], [ %., %do.end85 ], [ %call117, %do.end122 ], [ -12, %entry.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call.i23.i, %devm_add_action_or_reset.exit.i ], [ %call5.i, %do.end10.i ], [ %retval.0.i.ph.i, %do.end.i ], [ %spec.select, %if.end124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_version) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @actmon_thread_isr(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %lock = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regs.i = getelementptr inbounds %struct.tegra_devfreq, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !107
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %devices = getelementptr inbounds %struct.tegra_devfreq, ptr %data, i32 0, i32 10
  %max_freq.i.i = getelementptr inbounds %struct.tegra_devfreq, ptr %data, i32 0, i32 5
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %entry
  %i.022.ph = phi i32 [ 1, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %entry ]
  %handled.0.off021.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %i.022 = phi i32 [ 1, %for.inc.for.body_crit_edge ], [ %i.022.ph, %for.body.outer ]
  %arrayidx = getelementptr %struct.tegra_devfreq, ptr %data, i32 0, i32 10, i32 %i.022
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %irq_mask = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_mask, align 4
  %and = and i32 %9, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr %struct.tegra_devfreq_device, ptr %devices, i32 %i.022
  %regs.i.i = getelementptr %struct.tegra_devfreq_device, ptr %devices, i32 %i.022, i32 1
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !107
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %avg_count.i = getelementptr %struct.tegra_devfreq_device, ptr %devices, i32 %i.022, i32 2
  %14 = ptrtoint ptr %avg_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %avg_count.i, align 4
  %15 = ptrtoint ptr %max_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_freq.i.i, align 4
  %mul.i.i = mul i32 %16, 6
  %div.i.i = udiv i32 %mul.i.i, 1000
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %profile.i.i = getelementptr inbounds %struct.devfreq, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %profile.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %profile.i.i, align 8
  %polling_ms.i.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %polling_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %polling_ms.i.i, align 4
  %mul1.i.i = mul i32 %22, %div.i.i
  %add.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %13, i32 %mul1.i.i) #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %23) #6, !srcloc !108
  %26 = ptrtoint ptr %avg_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %avg_count.i, align 4
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 %mul1.i.i) #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 %29) #6, !srcloc !108
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %33, i32 36
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i) #6, !srcloc !107
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !107
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool.not.i = icmp sgt i32 %35, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %boost_freq.i = getelementptr %struct.tegra_devfreq_device, ptr %devices, i32 %i.022, i32 3
  %40 = ptrtoint ptr %boost_freq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %boost_freq.i, align 4
  %conv.i = zext i32 %41 to i64
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 4
  %boost_up_coeff.i = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %boost_up_coeff.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %boost_up_coeff.i, align 4
  %conv.i.i = zext i32 %45 to i64
  %mul.i57.i = mul nuw i64 %conv.i.i, %conv.i
  %46 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i57.i, i32 0) #10, !srcloc !109
  %asmresult.i.i.i = extractvalue { i64, i32 } %46, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %46, 1
  %47 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i57.i, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !110
  %asmresult10.i.i.i = extractvalue { i64, i32 } %47, 0
  %div161272.i.i = lshr i64 %asmresult10.i.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i.i)
  %cmp184.i.i = icmp ult i64 %asmresult10.i.i.i, 274877906880
  %extract.t.i.i = trunc i64 %div161272.i.i to i32
  %extract.t.i.op.i = add i32 %extract.t.i.i, 16000
  %add.i = select i1 %cmp184.i.i, i32 %extract.t.i.op.i, i32 15999
  %48 = ptrtoint ptr %boost_freq.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i, ptr %boost_freq.i, align 4
  %or.i = or i32 %39, 536870912
  %49 = ptrtoint ptr %max_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_freq.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %50)
  %cmp.not.i = icmp ult i32 %add.i, %50
  br i1 %cmp.not.i, label %if.then.i.for.inc.thread_crit_edge, label %if.then8.i

if.then.i.for.inc.thread_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.thread

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and9.i = and i32 %or.i, -1073741825
  %51 = ptrtoint ptr %boost_freq.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %boost_freq.i, align 4
  br label %for.inc.thread

if.else.i:                                        ; preds = %if.then
  %and12.i = and i32 %35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else.i.for.inc.thread_crit_edge, label %if.then14.i

if.else.i.for.inc.thread_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.thread

if.then14.i:                                      ; preds = %if.else.i
  %boost_freq15.i = getelementptr %struct.tegra_devfreq_device, ptr %devices, i32 %i.022, i32 3
  %52 = ptrtoint ptr %boost_freq15.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %boost_freq15.i, align 4
  %conv16.i = zext i32 %53 to i64
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 4
  %boost_down_coeff.i = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %boost_down_coeff.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %boost_down_coeff.i, align 4
  %conv.i58.i = zext i32 %57 to i64
  %mul.i59.i = mul nuw i64 %conv.i58.i, %conv16.i
  %58 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i59.i, i32 0) #10, !srcloc !109
  %asmresult.i.i60.i = extractvalue { i64, i32 } %58, 0
  %asmresult4.i.i61.i = extractvalue { i64, i32 } %58, 1
  %59 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i59.i, i64 %asmresult.i.i60.i, i32 %asmresult4.i.i61.i) #10, !srcloc !110
  %asmresult10.i.i62.i = extractvalue { i64, i32 } %59, 0
  %div161272.i63.i = lshr i64 %asmresult10.i.i62.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i62.i)
  %cmp184.i64.i = icmp ult i64 %asmresult10.i.i62.i, 274877906880
  %extract.t.i65.i = trunc i64 %div161272.i63.i to i32
  %cond189.off0.i66.i = select i1 %cmp184.i64.i, i32 %extract.t.i65.i, i32 -1
  %60 = ptrtoint ptr %boost_freq15.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cond189.off0.i66.i, ptr %boost_freq15.i, align 4
  %or20.i = or i32 %39, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %cond189.off0.i66.i)
  %cmp22.i = icmp ult i32 %cond189.off0.i66.i, 8000
  br i1 %cmp22.i, label %if.then24.i, label %if.then14.i.for.inc.thread_crit_edge

if.then14.i.for.inc.thread_crit_edge:             ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.thread

if.then24.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %and25.i = and i32 %or20.i, -536870913
  %61 = ptrtoint ptr %boost_freq15.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %boost_freq15.i, align 4
  br label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %cmp = icmp eq i32 %i.022, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.thread:                                   ; preds = %if.then24.i, %if.then14.i.for.inc.thread_crit_edge, %if.else.i.for.inc.thread_crit_edge, %if.then8.i, %if.then.i.for.inc.thread_crit_edge
  %dev_ctrl.0.i = phi i32 [ %and9.i, %if.then8.i ], [ %or.i, %if.then.i.for.inc.thread_crit_edge ], [ %and25.i, %if.then24.i ], [ %or20.i, %if.then14.i.for.inc.thread_crit_edge ], [ %39, %if.else.i.for.inc.thread_crit_edge ]
  %62 = tail call i32 @llvm.bswap.i32(i32 %dev_ctrl.0.i) #6
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #6, !srcloc !108
  %65 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %66, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 -1) #6, !srcloc !108
  %cmp27 = icmp eq i32 %i.022, 0
  br i1 %cmp27, label %for.inc.thread.for.body.outer_crit_edge, label %for.inc.thread.if.then3_crit_edge

for.inc.thread.if.then3_crit_edge:                ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.outer

for.end:                                          ; preds = %for.inc
  br i1 %handled.0.off021.ph, label %for.end.if.then3_crit_edge, label %for.end.if.end6_crit_edge

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

for.end.if.then3_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %for.end.if.then3_crit_edge, %for.inc.thread.if.then3_crit_edge
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %call5 = tail call i32 @update_devfreq(ptr noundef %68) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %for.end.if.end6_crit_edge
  %handled.1.off02830 = phi i32 [ 1, %if.then3 ], [ 0, %for.end.if.end6_crit_edge ]
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %lock8 = getelementptr inbounds %struct.devfreq, ptr %70, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock8) #6
  ret i32 %handled.1.off02830
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table_noclk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_actmon_clk_notify_cb(ptr nocapture noundef %nb, i32 noundef %action, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %cmp.not = icmp eq i32 %action, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %nb, i32 -28
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_rate, align 4
  %div = udiv i32 %1, 1000
  %cur_freq = getelementptr i8, ptr %nb, i32 -4
  %2 = ptrtoint ptr %cur_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %cur_freq, align 4
  %devices = getelementptr i8, ptr %nb, i32 124
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %profile.i = getelementptr inbounds %struct.devfreq, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %profile.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %profile.i, align 8
  %polling_ms.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %polling_ms.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %polling_ms.i, align 4
  %mul.i = mul i32 %8, %div
  %conv.i = zext i32 %mul.i to i64
  %9 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devices, align 4
  %boost_up_threshold.i = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %boost_up_threshold.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %boost_up_threshold.i, align 4
  %conv.i.i = zext i32 %12 to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv.i
  %13 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i, i32 0) #10, !srcloc !109
  %asmresult.i.i.i = extractvalue { i64, i32 } %13, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %13, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !110
  %asmresult10.i.i.i = extractvalue { i64, i32 } %14, 0
  %div161272.i.i = lshr i64 %asmresult10.i.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i.i)
  %cmp184.i.i = icmp ult i64 %asmresult10.i.i.i, 274877906880
  %extract.t.i.i = trunc i64 %div161272.i.i to i32
  %cond189.off0.i.i = select i1 %cmp184.i.i, i32 %extract.t.i.i, i32 -1
  %15 = tail call i32 @llvm.bswap.i32(i32 %cond189.off0.i.i) #6
  %regs.i.i = getelementptr i8, ptr %nb, i32 128
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #6, !srcloc !108
  %18 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devices, align 4
  %boost_down_threshold.i = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %boost_down_threshold.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %boost_down_threshold.i, align 4
  %conv.i9.i = zext i32 %21 to i64
  %mul.i10.i = mul nuw i64 %conv.i9.i, %conv.i
  %22 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i10.i, i32 0) #10, !srcloc !109
  %asmresult.i.i11.i = extractvalue { i64, i32 } %22, 0
  %asmresult4.i.i12.i = extractvalue { i64, i32 } %22, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i10.i, i64 %asmresult.i.i11.i, i32 %asmresult4.i.i12.i) #10, !srcloc !110
  %asmresult10.i.i13.i = extractvalue { i64, i32 } %23, 0
  %div161272.i14.i = lshr i64 %asmresult10.i.i13.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i13.i)
  %cmp184.i15.i = icmp ult i64 %asmresult10.i.i13.i, 274877906880
  %extract.t.i16.i = trunc i64 %div161272.i14.i to i32
  %cond189.off0.i17.i = select i1 %cmp184.i15.i, i32 %extract.t.i16.i, i32 -1
  %24 = tail call i32 @llvm.bswap.i32(i32 %cond189.off0.i17.i) #6
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %24) #6, !srcloc !108
  %arrayidx.1 = getelementptr i8, ptr %nb, i32 144
  %27 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_freq, align 4
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %profile.i.1 = getelementptr inbounds %struct.devfreq, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %profile.i.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %profile.i.1, align 8
  %polling_ms.i.1 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %polling_ms.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %polling_ms.i.1, align 4
  %mul.i.1 = mul i32 %34, %28
  %conv.i.1 = zext i32 %mul.i.1 to i64
  %35 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.1, align 4
  %boost_up_threshold.i.1 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %boost_up_threshold.i.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %boost_up_threshold.i.1, align 4
  %conv.i.i.1 = zext i32 %38 to i64
  %mul.i.i.1 = mul nuw i64 %conv.i.i.1, %conv.i.1
  %39 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i.1, i32 0) #10, !srcloc !109
  %asmresult.i.i.i.1 = extractvalue { i64, i32 } %39, 0
  %asmresult4.i.i.i.1 = extractvalue { i64, i32 } %39, 1
  %40 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i.1, i64 %asmresult.i.i.i.1, i32 %asmresult4.i.i.i.1) #10, !srcloc !110
  %asmresult10.i.i.i.1 = extractvalue { i64, i32 } %40, 0
  %div161272.i.i.1 = lshr i64 %asmresult10.i.i.i.1, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i.i.1)
  %cmp184.i.i.1 = icmp ult i64 %asmresult10.i.i.i.1, 274877906880
  %extract.t.i.i.1 = trunc i64 %div161272.i.i.1 to i32
  %cond189.off0.i.i.1 = select i1 %cmp184.i.i.1, i32 %extract.t.i.i.1, i32 -1
  %41 = tail call i32 @llvm.bswap.i32(i32 %cond189.off0.i.i.1) #6
  %regs.i.i.1 = getelementptr i8, ptr %nb, i32 148
  %42 = ptrtoint ptr %regs.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i.1, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 %41) #6, !srcloc !108
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.1, align 4
  %boost_down_threshold.i.1 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %boost_down_threshold.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %boost_down_threshold.i.1, align 4
  %conv.i9.i.1 = zext i32 %47 to i64
  %mul.i10.i.1 = mul nuw i64 %conv.i9.i.1, %conv.i.1
  %48 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i10.i.1, i32 0) #10, !srcloc !109
  %asmresult.i.i11.i.1 = extractvalue { i64, i32 } %48, 0
  %asmresult4.i.i12.i.1 = extractvalue { i64, i32 } %48, 1
  %49 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i10.i.1, i64 %asmresult.i.i11.i.1, i32 %asmresult4.i.i12.i.1) #10, !srcloc !110
  %asmresult10.i.i13.i.1 = extractvalue { i64, i32 } %49, 0
  %div161272.i14.i.1 = lshr i64 %asmresult10.i.i13.i.1, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i13.i.1)
  %cmp184.i15.i.1 = icmp ult i64 %asmresult10.i.i13.i.1, 274877906880
  %extract.t.i16.i.1 = trunc i64 %div161272.i14.i.1 to i32
  %cond189.off0.i17.i.1 = select i1 %cmp184.i15.i.1, i32 %extract.t.i16.i.1, i32 -1
  %50 = tail call i32 @llvm.bswap.i32(i32 %cond189.off0.i17.i.1) #6
  %51 = ptrtoint ptr %regs.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i.1, align 4
  %add.ptr.i19.i.1 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.1, i32 %50) #6, !srcloc !108
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_actmon_cpu_notify_cb(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp.not = icmp eq i32 %action, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %nb, i32 -140
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 1
  %call = tail call i32 @mutex_trylock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then1

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then1:                                         ; preds = %if.end
  %old2 = getelementptr inbounds %struct.cpufreq_freqs, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %old2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %old2, align 4
  %arrayidx.i = getelementptr i8, ptr %nb, i32 32
  %avg_count.i.i = getelementptr i8, ptr %nb, i32 40
  %4 = ptrtoint ptr %avg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avg_count.i.i, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %profile.i.i = getelementptr inbounds %struct.devfreq, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %profile.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %profile.i.i, align 8
  %polling_ms.i.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %polling_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %polling_ms.i.i, align 4
  %div.i.i = udiv i32 %5, %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %boost_up_threshold.i.i = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %boost_up_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %boost_up_threshold.i.i, align 4
  %div1.i.i = udiv i32 10000, %15
  %conv.i.i = zext i32 %div.i.i to i64
  %conv.i.i.i = zext i32 %div1.i.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i.i, %conv.i.i
  %16 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i.i, i32 0) #10, !srcloc !109
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %16, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %16, 1
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #10, !srcloc !110
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %17, 0
  %div161272.i.i.i = lshr i64 %asmresult10.i.i.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i.i.i)
  %cmp184.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 274877906880
  %extract.t.i.i.i = trunc i64 %div161272.i.i.i to i32
  %cond189.off0.i.i.i = select i1 %cmp184.i.i.i, i32 %extract.t.i.i.i, i32 -1
  %avg_dependency_threshold.i = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %avg_dependency_threshold.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %avg_dependency_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond189.off0.i.i.i, i32 %19)
  %cmp.i = icmp ult i32 %cond189.off0.i.i.i, %19
  br i1 %cmp.i, label %tegra_actmon_cpufreq_contribution.exit67.thread, label %if.end.i

tegra_actmon_cpufreq_contribution.exit67.thread:  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %lock773 = getelementptr inbounds %struct.devfreq, ptr %7, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock773) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400000, i32 %3)
  %cmp2.not.i.i = icmp ult i32 %3, 1400000
  br i1 %cmp2.not.i.i, label %for.inc.i.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.5.i.i.if.then.i.i_crit_edge, %for.inc.4.i.i.if.then.i.i_crit_edge, %for.inc.3.i.i.if.then.i.i_crit_edge, %for.inc.2.i.i.if.then.i.i_crit_edge, %for.inc.1.i.i.if.then.i.i_crit_edge, %for.inc.i.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %ratio.016.lcssa.i.i = phi ptr [ @actmon_emc_ratios, %if.end.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 1), %for.inc.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 2), %for.inc.1.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 3), %for.inc.2.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 4), %for.inc.3.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 5), %for.inc.4.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 6), %for.inc.5.i.i.if.then.i.i_crit_edge ]
  %emc_freq.i.i = getelementptr inbounds %struct.tegra_actmon_emc_ratio, ptr %ratio.016.lcssa.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %emc_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %emc_freq.i.i, align 4
  %max_freq.i.i = getelementptr i8, ptr %nb, i32 -120
  %22 = ptrtoint ptr %max_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_freq.i.i, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %21, i32 %23) #6
  br label %if.end.i43

for.inc.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %3)
  %cmp2.not.1.i.i = icmp ult i32 %3, 1200000
  br i1 %cmp2.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %3)
  %cmp2.not.2.i.i = icmp ult i32 %3, 1100000
  br i1 %cmp2.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.if.then.i.i_crit_edge

for.inc.1.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %3)
  %cmp2.not.3.i.i = icmp ult i32 %3, 1000000
  br i1 %cmp2.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.if.then.i.i_crit_edge

for.inc.2.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %3)
  %cmp2.not.4.i.i = icmp ult i32 %3, 800000
  br i1 %cmp2.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.if.then.i.i_crit_edge

for.inc.3.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %3)
  %cmp2.not.5.i.i = icmp ult i32 %3, 500000
  br i1 %cmp2.not.5.i.i, label %for.inc.5.i.i, label %for.inc.4.i.i.if.then.i.i_crit_edge

for.inc.4.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %3)
  %cmp2.not.6.i.i = icmp ult i32 %3, 250000
  br i1 %cmp2.not.6.i.i, label %for.inc.5.i.i.if.end.i43_crit_edge, label %for.inc.5.i.i.if.then.i.i_crit_edge

for.inc.5.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.5.i.i.if.end.i43_crit_edge:               ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i43

if.end.i43:                                       ; preds = %for.inc.5.i.i.if.end.i43_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %24, %if.then.i.i ], [ 0, %for.inc.5.i.i.if.end.i43_crit_edge ]
  %boost_freq.i = getelementptr i8, ptr %nb, i32 44
  %25 = ptrtoint ptr %boost_freq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %boost_freq.i, align 4
  %add.i = add i32 %26, %cond189.off0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %retval.0.i.i)
  %cmp2.not.i = icmp ult i32 %add.i, %retval.0.i.i
  %call1..i = select i1 %cmp2.not.i, i32 %retval.0.i.i, i32 0
  %new4 = getelementptr inbounds %struct.cpufreq_freqs, ptr %ptr, i32 0, i32 2
  %27 = ptrtoint ptr %new4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %new4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400000, i32 %28)
  %cmp2.not.i.i42 = icmp ult i32 %28, 1400000
  br i1 %cmp2.not.i.i42, label %for.inc.i.i49, label %if.end.i43.if.then.i.i47_crit_edge

if.end.i43.if.then.i.i47_crit_edge:               ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i47

if.then.i.i47:                                    ; preds = %for.inc.5.i.i59.if.then.i.i47_crit_edge, %for.inc.4.i.i57.if.then.i.i47_crit_edge, %for.inc.3.i.i55.if.then.i.i47_crit_edge, %for.inc.2.i.i53.if.then.i.i47_crit_edge, %for.inc.1.i.i51.if.then.i.i47_crit_edge, %for.inc.i.i49.if.then.i.i47_crit_edge, %if.end.i43.if.then.i.i47_crit_edge
  %ratio.016.lcssa.i.i44 = phi ptr [ @actmon_emc_ratios, %if.end.i43.if.then.i.i47_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 1), %for.inc.i.i49.if.then.i.i47_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 2), %for.inc.1.i.i51.if.then.i.i47_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 3), %for.inc.2.i.i53.if.then.i.i47_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 4), %for.inc.3.i.i55.if.then.i.i47_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 5), %for.inc.4.i.i57.if.then.i.i47_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 6), %for.inc.5.i.i59.if.then.i.i47_crit_edge ]
  %emc_freq.i.i45 = getelementptr inbounds %struct.tegra_actmon_emc_ratio, ptr %ratio.016.lcssa.i.i44, i32 0, i32 1
  %29 = ptrtoint ptr %emc_freq.i.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %emc_freq.i.i45, align 4
  %max_freq.i.i46 = getelementptr i8, ptr %nb, i32 -120
  %31 = ptrtoint ptr %max_freq.i.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_freq.i.i46, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %30, i32 %32) #6
  br label %tegra_actmon_cpufreq_contribution.exit67

for.inc.i.i49:                                    ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %28)
  %cmp2.not.1.i.i48 = icmp ult i32 %28, 1200000
  br i1 %cmp2.not.1.i.i48, label %for.inc.1.i.i51, label %for.inc.i.i49.if.then.i.i47_crit_edge

for.inc.i.i49.if.then.i.i47_crit_edge:            ; preds = %for.inc.i.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i47

for.inc.1.i.i51:                                  ; preds = %for.inc.i.i49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %28)
  %cmp2.not.2.i.i50 = icmp ult i32 %28, 1100000
  br i1 %cmp2.not.2.i.i50, label %for.inc.2.i.i53, label %for.inc.1.i.i51.if.then.i.i47_crit_edge

for.inc.1.i.i51.if.then.i.i47_crit_edge:          ; preds = %for.inc.1.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i47

for.inc.2.i.i53:                                  ; preds = %for.inc.1.i.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %28)
  %cmp2.not.3.i.i52 = icmp ult i32 %28, 1000000
  br i1 %cmp2.not.3.i.i52, label %for.inc.3.i.i55, label %for.inc.2.i.i53.if.then.i.i47_crit_edge

for.inc.2.i.i53.if.then.i.i47_crit_edge:          ; preds = %for.inc.2.i.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i47

for.inc.3.i.i55:                                  ; preds = %for.inc.2.i.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %28)
  %cmp2.not.4.i.i54 = icmp ult i32 %28, 800000
  br i1 %cmp2.not.4.i.i54, label %for.inc.4.i.i57, label %for.inc.3.i.i55.if.then.i.i47_crit_edge

for.inc.3.i.i55.if.then.i.i47_crit_edge:          ; preds = %for.inc.3.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i47

for.inc.4.i.i57:                                  ; preds = %for.inc.3.i.i55
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %28)
  %cmp2.not.5.i.i56 = icmp ult i32 %28, 500000
  br i1 %cmp2.not.5.i.i56, label %for.inc.5.i.i59, label %for.inc.4.i.i57.if.then.i.i47_crit_edge

for.inc.4.i.i57.if.then.i.i47_crit_edge:          ; preds = %for.inc.4.i.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i47

for.inc.5.i.i59:                                  ; preds = %for.inc.4.i.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %28)
  %cmp2.not.6.i.i58 = icmp ult i32 %28, 250000
  br i1 %cmp2.not.6.i.i58, label %for.inc.5.i.i59.tegra_actmon_cpufreq_contribution.exit67_crit_edge, label %for.inc.5.i.i59.if.then.i.i47_crit_edge

for.inc.5.i.i59.if.then.i.i47_crit_edge:          ; preds = %for.inc.5.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i47

for.inc.5.i.i59.tegra_actmon_cpufreq_contribution.exit67_crit_edge: ; preds = %for.inc.5.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_actmon_cpufreq_contribution.exit67

tegra_actmon_cpufreq_contribution.exit67:         ; preds = %for.inc.5.i.i59.tegra_actmon_cpufreq_contribution.exit67_crit_edge, %if.then.i.i47
  %retval.0.i.i60 = phi i32 [ %33, %if.then.i.i47 ], [ 0, %for.inc.5.i.i59.tegra_actmon_cpufreq_contribution.exit67_crit_edge ]
  %34 = ptrtoint ptr %boost_freq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %boost_freq.i, align 4
  %add.i62 = add i32 %35, %cond189.off0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i62, i32 %retval.0.i.i60)
  %cmp2.not.i63 = icmp ult i32 %add.i62, %retval.0.i.i60
  %call1..i64 = select i1 %cmp2.not.i63, i32 %retval.0.i.i60, i32 0
  %lock7 = getelementptr inbounds %struct.devfreq, ptr %7, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock7) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call1..i, i32 %call1..i64)
  %cmp8 = icmp eq i32 %call1..i, %call1..i64
  br i1 %cmp8, label %tegra_actmon_cpufreq_contribution.exit67.cleanup_crit_edge, label %tegra_actmon_cpufreq_contribution.exit67.if.end11_crit_edge

tegra_actmon_cpufreq_contribution.exit67.if.end11_crit_edge: ; preds = %tegra_actmon_cpufreq_contribution.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

tegra_actmon_cpufreq_contribution.exit67.cleanup_crit_edge: ; preds = %tegra_actmon_cpufreq_contribution.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %tegra_actmon_cpufreq_contribution.exit67.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %cpufreq_update_work = getelementptr i8, ptr %nb, i32 -100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %cpufreq_update_work, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %tegra_actmon_cpufreq_contribution.exit67.cleanup_crit_edge, %tegra_actmon_cpufreq_contribution.exit67.thread, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_actmon_delayed_update(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @update_devfreq(ptr noundef %3) #6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %lock3 = getelementptr inbounds %struct.devfreq, ptr %5, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_devfreq_add_governor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_devfreq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_tegra_devfreq_deinit_hw(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.tegra_devfreq, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  %call = tail call i32 @reset_control_reset(ptr noundef %1) #6
  %clock = getelementptr inbounds %struct.tegra_devfreq, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_governor_get_target(ptr noundef %devfreq, ptr nocapture noundef writeonly %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %profile.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %0 = ptrtoint ptr %profile.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile.i, align 8
  %get_dev_status.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %get_dev_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_dev_status.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %devfreq_update_stats.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devfreq_update_stats.exit:                        ; preds = %entry
  %parent.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %last_status.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 9
  %call.i = tail call i32 %3(ptr noundef %5, ptr noundef %last_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %devfreq_update_stats.exit.cleanup_crit_edge

devfreq_update_stats.exit.cleanup_crit_edge:      ; preds = %devfreq_update_stats.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %devfreq_update_stats.exit
  %private_data = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %max_freq.i.i = getelementptr inbounds %struct.tegra_devfreq, ptr %7, i32 0, i32 5
  %arrayidx = getelementptr %struct.tegra_devfreq, ptr %7, i32 0, i32 10, i32 0
  %avg_count.i.i = getelementptr %struct.tegra_devfreq, ptr %7, i32 0, i32 10, i32 0, i32 2
  %8 = ptrtoint ptr %avg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avg_count.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %profile.i.i = getelementptr inbounds %struct.devfreq, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %profile.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %profile.i.i, align 8
  %polling_ms.i.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %polling_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %polling_ms.i.i, align 4
  %div.i.i = udiv i32 %9, %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %boost_up_threshold.i.i = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %boost_up_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %boost_up_threshold.i.i, align 4
  %div1.i.i = udiv i32 10000, %19
  %conv.i.i = zext i32 %div.i.i to i64
  %conv.i.i.i = zext i32 %div1.i.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i.i, %conv.i.i
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i.i, i32 0) #10, !srcloc !109
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %20, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %20, 1
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #10, !srcloc !110
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %21, 0
  %div161272.i.i.i = lshr i64 %asmresult10.i.i.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i.i.i)
  %cmp184.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 274877906880
  %extract.t.i.i.i = trunc i64 %div161272.i.i.i to i32
  %cond189.off0.i.i.i = select i1 %cmp184.i.i.i, i32 %extract.t.i.i.i, i32 -1
  %target_freq.i = getelementptr %struct.tegra_devfreq, ptr %7, i32 0, i32 10, i32 0, i32 4
  %22 = ptrtoint ptr %target_freq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond189.off0.i.i.i, ptr %target_freq.i, align 4
  %avg_dependency_threshold.i = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %17, i32 0, i32 6
  %23 = ptrtoint ptr %avg_dependency_threshold.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %avg_dependency_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i17 = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %cond189.off0.i.i.i)
  %cmp.not.i = icmp ugt i32 %24, %cond189.off0.i.i.i
  %or.cond.i = select i1 %tobool.not.i17, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call4.i = tail call i32 @cpufreq_quick_get(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400000, i32 %call4.i)
  %cmp2.not.i.i = icmp ult i32 %call4.i, 1400000
  br i1 %cmp2.not.i.i, label %for.inc.i.i, label %if.then.i.if.then.i.i_crit_edge

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.5.i.i.if.then.i.i_crit_edge, %for.inc.4.i.i.if.then.i.i_crit_edge, %for.inc.3.i.i.if.then.i.i_crit_edge, %for.inc.2.i.i.if.then.i.i_crit_edge, %for.inc.1.i.i.if.then.i.i_crit_edge, %for.inc.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %ratio.016.lcssa.i.i = phi ptr [ @actmon_emc_ratios, %if.then.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 1), %for.inc.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 2), %for.inc.1.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 3), %for.inc.2.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 4), %for.inc.3.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 5), %for.inc.4.i.i.if.then.i.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 6), %for.inc.5.i.i.if.then.i.i_crit_edge ]
  %emc_freq.i.i = getelementptr inbounds %struct.tegra_actmon_emc_ratio, ptr %ratio.016.lcssa.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %emc_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %emc_freq.i.i, align 4
  %27 = ptrtoint ptr %max_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_freq.i.i, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %26, i32 %28) #6
  br label %actmon_cpu_to_emc_rate.exit.i

for.inc.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %call4.i)
  %cmp2.not.1.i.i = icmp ult i32 %call4.i, 1200000
  br i1 %cmp2.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %call4.i)
  %cmp2.not.2.i.i = icmp ult i32 %call4.i, 1100000
  br i1 %cmp2.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.if.then.i.i_crit_edge

for.inc.1.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call4.i)
  %cmp2.not.3.i.i = icmp ult i32 %call4.i, 1000000
  br i1 %cmp2.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.if.then.i.i_crit_edge

for.inc.2.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %call4.i)
  %cmp2.not.4.i.i = icmp ult i32 %call4.i, 800000
  br i1 %cmp2.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.if.then.i.i_crit_edge

for.inc.3.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %call4.i)
  %cmp2.not.5.i.i = icmp ult i32 %call4.i, 500000
  br i1 %cmp2.not.5.i.i, label %for.inc.5.i.i, label %for.inc.4.i.i.if.then.i.i_crit_edge

for.inc.4.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %call4.i)
  %cmp2.not.6.i.i = icmp ult i32 %call4.i, 250000
  br i1 %cmp2.not.6.i.i, label %for.inc.5.i.i.actmon_cpu_to_emc_rate.exit.i_crit_edge, label %for.inc.5.i.i.if.then.i.i_crit_edge

for.inc.5.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.5.i.i.actmon_cpu_to_emc_rate.exit.i_crit_edge: ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %actmon_cpu_to_emc_rate.exit.i

actmon_cpu_to_emc_rate.exit.i:                    ; preds = %for.inc.5.i.i.actmon_cpu_to_emc_rate.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %29, %if.then.i.i ], [ 0, %for.inc.5.i.i.actmon_cpu_to_emc_rate.exit.i_crit_edge ]
  %boost_freq.i = getelementptr %struct.tegra_devfreq, ptr %7, i32 0, i32 10, i32 0, i32 3
  %30 = ptrtoint ptr %boost_freq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %boost_freq.i, align 4
  %32 = ptrtoint ptr %target_freq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %target_freq.i, align 4
  %add.i = add i32 %33, %31
  %34 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 %retval.0.i.i) #6
  br label %actmon_update_target.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %boost_freq10.i = getelementptr %struct.tegra_devfreq, ptr %7, i32 0, i32 10, i32 0, i32 3
  %35 = ptrtoint ptr %boost_freq10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %boost_freq10.i, align 4
  %add12.i = add i32 %36, %cond189.off0.i.i.i
  br label %actmon_update_target.exit

actmon_update_target.exit:                        ; preds = %if.else.i, %actmon_cpu_to_emc_rate.exit.i
  %storemerge.i = phi i32 [ %add12.i, %if.else.i ], [ %34, %actmon_cpu_to_emc_rate.exit.i ]
  %37 = ptrtoint ptr %target_freq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge.i, ptr %target_freq.i, align 4
  %arrayidx.1 = getelementptr %struct.tegra_devfreq, ptr %7, i32 0, i32 10, i32 1
  %avg_count.i.i.1 = getelementptr %struct.tegra_devfreq, ptr %7, i32 0, i32 10, i32 1, i32 2
  %38 = ptrtoint ptr %avg_count.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %avg_count.i.i.1, align 4
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  %profile.i.i.1 = getelementptr inbounds %struct.devfreq, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %profile.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %profile.i.i.1, align 8
  %polling_ms.i.i.1 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %polling_ms.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %polling_ms.i.i.1, align 4
  %div.i.i.1 = udiv i32 %39, %45
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.1, align 4
  %boost_up_threshold.i.i.1 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %boost_up_threshold.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %boost_up_threshold.i.i.1, align 4
  %div1.i.i.1 = udiv i32 10000, %49
  %conv.i.i.1 = zext i32 %div.i.i.1 to i64
  %conv.i.i.i.1 = zext i32 %div1.i.i.1 to i64
  %mul.i.i.i.1 = mul nuw nsw i64 %conv.i.i.i.1, %conv.i.i.1
  %50 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i.i.1, i32 0) #10, !srcloc !109
  %asmresult.i.i.i.i.1 = extractvalue { i64, i32 } %50, 0
  %asmresult4.i.i.i.i.1 = extractvalue { i64, i32 } %50, 1
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i.i.1, i64 %asmresult.i.i.i.i.1, i32 %asmresult4.i.i.i.i.1) #10, !srcloc !110
  %asmresult10.i.i.i.i.1 = extractvalue { i64, i32 } %51, 0
  %div161272.i.i.i.1 = lshr i64 %asmresult10.i.i.i.i.1, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i.i.i.1)
  %cmp184.i.i.i.1 = icmp ult i64 %asmresult10.i.i.i.i.1, 274877906880
  %extract.t.i.i.i.1 = trunc i64 %div161272.i.i.i.1 to i32
  %cond189.off0.i.i.i.1 = select i1 %cmp184.i.i.i.1, i32 %extract.t.i.i.i.1, i32 -1
  %target_freq.i.1 = getelementptr %struct.tegra_devfreq, ptr %7, i32 0, i32 10, i32 1, i32 4
  %52 = ptrtoint ptr %target_freq.i.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond189.off0.i.i.i.1, ptr %target_freq.i.1, align 4
  %avg_dependency_threshold.i.1 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %47, i32 0, i32 6
  %53 = ptrtoint ptr %avg_dependency_threshold.i.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %avg_dependency_threshold.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i17.1 = icmp eq i32 %54, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %cond189.off0.i.i.i.1)
  %cmp.not.i.1 = icmp ugt i32 %54, %cond189.off0.i.i.i.1
  %or.cond.i.1 = select i1 %tobool.not.i17.1, i1 true, i1 %cmp.not.i.1
  br i1 %or.cond.i.1, label %if.else.i.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %actmon_update_target.exit
  %call4.i.1 = tail call i32 @cpufreq_quick_get(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400000, i32 %call4.i.1)
  %cmp2.not.i.i.1 = icmp ult i32 %call4.i.1, 1400000
  br i1 %cmp2.not.i.i.1, label %for.inc.i.i.1, label %if.then.i.1.if.then.i.i.1_crit_edge

if.then.i.1.if.then.i.i.1_crit_edge:              ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.1

for.inc.i.i.1:                                    ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %call4.i.1)
  %cmp2.not.1.i.i.1 = icmp ult i32 %call4.i.1, 1200000
  br i1 %cmp2.not.1.i.i.1, label %for.inc.1.i.i.1, label %for.inc.i.i.1.if.then.i.i.1_crit_edge

for.inc.i.i.1.if.then.i.i.1_crit_edge:            ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.1

for.inc.1.i.i.1:                                  ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %call4.i.1)
  %cmp2.not.2.i.i.1 = icmp ult i32 %call4.i.1, 1100000
  br i1 %cmp2.not.2.i.i.1, label %for.inc.2.i.i.1, label %for.inc.1.i.i.1.if.then.i.i.1_crit_edge

for.inc.1.i.i.1.if.then.i.i.1_crit_edge:          ; preds = %for.inc.1.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.1

for.inc.2.i.i.1:                                  ; preds = %for.inc.1.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call4.i.1)
  %cmp2.not.3.i.i.1 = icmp ult i32 %call4.i.1, 1000000
  br i1 %cmp2.not.3.i.i.1, label %for.inc.3.i.i.1, label %for.inc.2.i.i.1.if.then.i.i.1_crit_edge

for.inc.2.i.i.1.if.then.i.i.1_crit_edge:          ; preds = %for.inc.2.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.1

for.inc.3.i.i.1:                                  ; preds = %for.inc.2.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %call4.i.1)
  %cmp2.not.4.i.i.1 = icmp ult i32 %call4.i.1, 800000
  br i1 %cmp2.not.4.i.i.1, label %for.inc.4.i.i.1, label %for.inc.3.i.i.1.if.then.i.i.1_crit_edge

for.inc.3.i.i.1.if.then.i.i.1_crit_edge:          ; preds = %for.inc.3.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.1

for.inc.4.i.i.1:                                  ; preds = %for.inc.3.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %call4.i.1)
  %cmp2.not.5.i.i.1 = icmp ult i32 %call4.i.1, 500000
  br i1 %cmp2.not.5.i.i.1, label %for.inc.5.i.i.1, label %for.inc.4.i.i.1.if.then.i.i.1_crit_edge

for.inc.4.i.i.1.if.then.i.i.1_crit_edge:          ; preds = %for.inc.4.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.1

for.inc.5.i.i.1:                                  ; preds = %for.inc.4.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %call4.i.1)
  %cmp2.not.6.i.i.1 = icmp ult i32 %call4.i.1, 250000
  br i1 %cmp2.not.6.i.i.1, label %for.inc.5.i.i.1.actmon_cpu_to_emc_rate.exit.i.1_crit_edge, label %for.inc.5.i.i.1.if.then.i.i.1_crit_edge

for.inc.5.i.i.1.if.then.i.i.1_crit_edge:          ; preds = %for.inc.5.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.1

for.inc.5.i.i.1.actmon_cpu_to_emc_rate.exit.i.1_crit_edge: ; preds = %for.inc.5.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %actmon_cpu_to_emc_rate.exit.i.1

if.then.i.i.1:                                    ; preds = %for.inc.5.i.i.1.if.then.i.i.1_crit_edge, %for.inc.4.i.i.1.if.then.i.i.1_crit_edge, %for.inc.3.i.i.1.if.then.i.i.1_crit_edge, %for.inc.2.i.i.1.if.then.i.i.1_crit_edge, %for.inc.1.i.i.1.if.then.i.i.1_crit_edge, %for.inc.i.i.1.if.then.i.i.1_crit_edge, %if.then.i.1.if.then.i.i.1_crit_edge
  %ratio.016.lcssa.i.i.1 = phi ptr [ @actmon_emc_ratios, %if.then.i.1.if.then.i.i.1_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 1), %for.inc.i.i.1.if.then.i.i.1_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 2), %for.inc.1.i.i.1.if.then.i.i.1_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 3), %for.inc.2.i.i.1.if.then.i.i.1_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 4), %for.inc.3.i.i.1.if.then.i.i.1_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 5), %for.inc.4.i.i.1.if.then.i.i.1_crit_edge ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 6), %for.inc.5.i.i.1.if.then.i.i.1_crit_edge ]
  %emc_freq.i.i.1 = getelementptr inbounds %struct.tegra_actmon_emc_ratio, ptr %ratio.016.lcssa.i.i.1, i32 0, i32 1
  %55 = ptrtoint ptr %emc_freq.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %emc_freq.i.i.1, align 4
  %57 = ptrtoint ptr %max_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_freq.i.i, align 4
  %59 = tail call i32 @llvm.umin.i32(i32 %56, i32 %58) #6
  br label %actmon_cpu_to_emc_rate.exit.i.1

actmon_cpu_to_emc_rate.exit.i.1:                  ; preds = %if.then.i.i.1, %for.inc.5.i.i.1.actmon_cpu_to_emc_rate.exit.i.1_crit_edge
  %retval.0.i.i.1 = phi i32 [ %59, %if.then.i.i.1 ], [ 0, %for.inc.5.i.i.1.actmon_cpu_to_emc_rate.exit.i.1_crit_edge ]
  %boost_freq.i.1 = getelementptr %struct.tegra_devfreq, ptr %7, i32 0, i32 10, i32 1, i32 3
  %60 = ptrtoint ptr %boost_freq.i.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %boost_freq.i.1, align 4
  %62 = ptrtoint ptr %target_freq.i.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %target_freq.i.1, align 4
  %add.i.1 = add i32 %63, %61
  %64 = tail call i32 @llvm.umax.i32(i32 %add.i.1, i32 %retval.0.i.i.1) #6
  br label %actmon_update_target.exit.1

if.else.i.1:                                      ; preds = %actmon_update_target.exit
  call void @__sanitizer_cov_trace_pc() #8
  %boost_freq10.i.1 = getelementptr %struct.tegra_devfreq, ptr %7, i32 0, i32 10, i32 1, i32 3
  %65 = ptrtoint ptr %boost_freq10.i.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %boost_freq10.i.1, align 4
  %add12.i.1 = add i32 %66, %cond189.off0.i.i.i.1
  br label %actmon_update_target.exit.1

actmon_update_target.exit.1:                      ; preds = %if.else.i.1, %actmon_cpu_to_emc_rate.exit.i.1
  %storemerge.i.1 = phi i32 [ %add12.i.1, %if.else.i.1 ], [ %64, %actmon_cpu_to_emc_rate.exit.i.1 ]
  %67 = ptrtoint ptr %target_freq.i.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %storemerge.i.1, ptr %target_freq.i.1, align 4
  %68 = tail call i32 @llvm.umax.i32(i32 %storemerge.i, i32 %storemerge.i.1)
  %mul = mul i32 %68, 1000
  %69 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %actmon_update_target.exit.1, %devfreq_update_stats.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %actmon_update_target.exit.1 ], [ %call.i, %devfreq_update_stats.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_governor_event_handler(ptr noundef %devfreq, i32 noundef %event, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %devfreq, ptr %3, align 4
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
    i32 5, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void @devfreq_monitor_start(ptr noundef %devfreq) #6
  %started.i = getelementptr inbounds %struct.tegra_devfreq, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %started.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %started.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  %8 = ptrtoint ptr %started.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %started.i, align 4
  %call.i = tail call fastcc i32 @tegra_actmon_resume(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.sw.epilog_crit_edge, label %if.then3.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %started.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %started.i, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tegra_actmon_pause(ptr noundef %3) #6
  %started.i22 = getelementptr inbounds %struct.tegra_devfreq, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %started.i22 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %started.i22, align 4
  tail call void @devfreq_monitor_stop(ptr noundef %devfreq) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %12)
  %cmp = icmp ugt i32 %12, 256
  br i1 %cmp, label %sw.bb4.sw.epilog_crit_edge, label %if.end

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tegra_actmon_pause(ptr noundef %3)
  tail call void @devfreq_update_interval(ptr noundef %devfreq, ptr noundef %data) #6
  %call5 = tail call fastcc i32 @tegra_actmon_resume(ptr noundef %3)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tegra_actmon_pause(ptr noundef %3) #6
  %started.i23 = getelementptr inbounds %struct.tegra_devfreq, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %started.i23 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %started.i23, align 4
  tail call void @devfreq_monitor_suspend(ptr noundef %devfreq) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  tail call void @devfreq_monitor_resume(ptr noundef %devfreq) #6
  %started.i24 = getelementptr inbounds %struct.tegra_devfreq, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %started.i24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %started.i24, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i25 = icmp eq i8 %15, 0
  br i1 %tobool.not.i25, label %if.then.i28, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i28:                                      ; preds = %sw.bb7
  %16 = ptrtoint ptr %started.i24 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %started.i24, align 4
  %call.i26 = tail call fastcc i32 @tegra_actmon_resume(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool2.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool2.not.i27, label %if.then.i28.sw.epilog_crit_edge, label %if.then3.i29

if.then.i28.sw.epilog_crit_edge:                  ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then3.i29:                                     ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %started.i24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %started.i24, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3.i29, %if.then.i28.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb6, %if.end, %sw.bb4.sw.epilog_crit_edge, %sw.bb3, %if.then3.i, %if.then.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb6 ], [ %call5, %if.end ], [ 0, %sw.bb3 ], [ -22, %sw.bb4.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %call.i, %if.then3.i ], [ 0, %if.then.i.sw.epilog_crit_edge ], [ 0, %sw.bb7.sw.epilog_crit_edge ], [ %call.i26, %if.then3.i29 ], [ 0, %if.then.i28.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_quick_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_actmon_pause(ptr noundef %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tegra, align 4
  %profile = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %profile, align 8
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %polling_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %started = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 12
  %6 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %started, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 11
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %9) #6
  %cpu_rate_change_nb = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 9
  %call = tail call i32 @cpufreq_unregister_notifier(ptr noundef %cpu_rate_change_nb, i32 noundef 0) #6
  %cpufreq_update_work = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 8
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cpufreq_update_work) #6
  %regs.i.i = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !108
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #6, !srcloc !108
  %regs.i.1.i = getelementptr %struct.tegra_devfreq, ptr %tegra, i32 0, i32 10, i32 1, i32 1
  %14 = ptrtoint ptr %regs.i.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #6, !srcloc !108
  %16 = ptrtoint ptr %regs.i.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.1.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 -1) #6, !srcloc !108
  %emc_clock = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 4
  %18 = ptrtoint ptr %emc_clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %emc_clock, align 4
  %clk_rate_change_nb = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 7
  %call3 = tail call i32 @clk_notifier_unregister(ptr noundef %19, ptr noundef %clk_rate_change_nb) #6
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_update_interval(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_actmon_resume(ptr noundef %tegra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tegra, align 4
  %profile = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %profile, align 8
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %polling_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %started = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 12
  %6 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %started, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub = add i32 %5, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %sub) #6
  %regs.i = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 3
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !108
  %emc_clock = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 4
  %11 = ptrtoint ptr %emc_clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %emc_clock, align 4
  %clk_rate_change_nb = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 7
  %call = tail call i32 @clk_notifier_register(ptr noundef %12, ptr noundef %clk_rate_change_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tegra, align 4
  %parent = getelementptr inbounds %struct.devfreq, ptr %14, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %17 = ptrtoint ptr %emc_clock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %emc_clock, align 4
  %call10 = tail call i32 @clk_get_rate(ptr noundef %18) #6
  %div = udiv i32 %call10, 1000
  %cur_freq = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 6
  %19 = ptrtoint ptr %cur_freq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %cur_freq, align 4
  %max_freq.i.i = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 5
  %soc.i = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8
  %cmp = phi i1 [ true, %if.end8 ], [ false, %for.body.for.body_crit_edge ]
  %i.049 = phi i32 [ 0, %if.end8 ], [ 1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tegra_devfreq, ptr %tegra, i32 0, i32 10, i32 %i.049
  %boost_freq.i = getelementptr %struct.tegra_devfreq, ptr %tegra, i32 0, i32 10, i32 %i.049, i32 3
  %20 = ptrtoint ptr %boost_freq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %boost_freq.i, align 4
  %21 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_freq, align 4
  %target_freq.i = getelementptr %struct.tegra_devfreq, ptr %tegra, i32 0, i32 10, i32 %i.049, i32 4
  %23 = ptrtoint ptr %target_freq.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %target_freq.i, align 4
  %24 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tegra, align 4
  %profile.i = getelementptr inbounds %struct.devfreq, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %profile.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %profile.i, align 8
  %polling_ms.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %polling_ms.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %polling_ms.i, align 4
  %mul.i = mul i32 %29, %22
  %avg_count.i = getelementptr %struct.tegra_devfreq, ptr %tegra, i32 0, i32 10, i32 %i.049, i32 2
  %30 = ptrtoint ptr %avg_count.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.i, ptr %avg_count.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #6
  %regs.i.i = getelementptr %struct.tegra_devfreq, ptr %tegra, i32 0, i32 10, i32 %i.049, i32 1
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #6, !srcloc !108
  %34 = ptrtoint ptr %max_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_freq.i.i, align 4
  %mul.i.i = mul i32 %35, 6
  %div.i.i = udiv i32 %mul.i.i, 1000
  %36 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tegra, align 4
  %profile.i.i = getelementptr inbounds %struct.devfreq, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %profile.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %profile.i.i, align 8
  %polling_ms.i.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %polling_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %polling_ms.i.i, align 4
  %mul1.i.i = mul i32 %41, %div.i.i
  %42 = ptrtoint ptr %avg_count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %avg_count.i, align 4
  %add.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %43, i32 %mul1.i.i) #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %46, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %44) #6, !srcloc !108
  %47 = ptrtoint ptr %avg_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %avg_count.i, align 4
  %49 = tail call i32 @llvm.usub.sat.i32(i32 %48, i32 %mul1.i.i) #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %52, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 %50) #6, !srcloc !108
  %53 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cur_freq, align 4
  %55 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tegra, align 4
  %profile.i32.i = getelementptr inbounds %struct.devfreq, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %profile.i32.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %profile.i32.i, align 8
  %polling_ms.i33.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %polling_ms.i33.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %polling_ms.i33.i, align 4
  %mul.i34.i = mul i32 %60, %54
  %conv.i.i = zext i32 %mul.i34.i to i64
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %boost_up_threshold.i.i = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %boost_up_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %boost_up_threshold.i.i, align 4
  %conv.i.i.i = zext i32 %64 to i64
  %mul.i.i.i = mul nuw i64 %conv.i.i.i, %conv.i.i
  %65 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i.i, i32 0) #10, !srcloc !109
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %65, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %65, 1
  %66 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #10, !srcloc !110
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %66, 0
  %div161272.i.i.i = lshr i64 %asmresult10.i.i.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i.i.i)
  %cmp184.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 274877906880
  %extract.t.i.i.i = trunc i64 %div161272.i.i.i to i32
  %cond189.off0.i.i.i = select i1 %cmp184.i.i.i, i32 %extract.t.i.i.i, i32 -1
  %67 = tail call i32 @llvm.bswap.i32(i32 %cond189.off0.i.i.i) #6
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i36.i = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i36.i, i32 %67) #6, !srcloc !108
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx, align 4
  %boost_down_threshold.i.i = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %boost_down_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %boost_down_threshold.i.i, align 4
  %conv.i9.i.i = zext i32 %73 to i64
  %mul.i10.i.i = mul nuw i64 %conv.i9.i.i, %conv.i.i
  %74 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i10.i.i, i32 0) #10, !srcloc !109
  %asmresult.i.i11.i.i = extractvalue { i64, i32 } %74, 0
  %asmresult4.i.i12.i.i = extractvalue { i64, i32 } %74, 1
  %75 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i10.i.i, i64 %asmresult.i.i11.i.i, i32 %asmresult4.i.i12.i.i) #10, !srcloc !110
  %asmresult10.i.i13.i.i = extractvalue { i64, i32 } %75, 0
  %div161272.i14.i.i = lshr i64 %asmresult10.i.i13.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i13.i.i)
  %cmp184.i15.i.i = icmp ult i64 %asmresult10.i.i13.i.i, 274877906880
  %extract.t.i16.i.i = trunc i64 %div161272.i14.i.i to i32
  %cond189.off0.i17.i.i = select i1 %cmp184.i15.i.i, i32 %extract.t.i16.i.i, i32 -1
  %76 = tail call i32 @llvm.bswap.i32(i32 %cond189.off0.i17.i.i) #6
  %77 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %78, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %76) #6, !srcloc !108
  %79 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %soc.i, align 4
  %count_weight.i = getelementptr inbounds %struct.tegra_devfreq_soc_data, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %count_weight.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count_weight.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #6
  %84 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %85, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 %83) #6, !srcloc !108
  %86 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %87, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 -1) #6, !srcloc !108
  %88 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 1324225) #6, !srcloc !108
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %cpu_rate_change_nb = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 9
  %call11 = tail call i32 @cpufreq_register_notifier(ptr noundef %cpu_rate_change_nb, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end20, label %do.end16

do.end16:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tegra, align 4
  %parent19 = getelementptr inbounds %struct.devfreq, ptr %91, i32 0, i32 2, i32 1
  %92 = ptrtoint ptr %parent19 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %parent19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.39, i32 noundef %call11) #9
  %regs.i.i47 = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 10, i32 0, i32 1
  %94 = ptrtoint ptr %regs.i.i47 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i.i47, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 0) #6, !srcloc !108
  %96 = ptrtoint ptr %regs.i.i47 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i.i47, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %97, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 -1) #6, !srcloc !108
  %regs.i.1.i = getelementptr %struct.tegra_devfreq, ptr %tegra, i32 0, i32 10, i32 1, i32 1
  %98 = ptrtoint ptr %regs.i.1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i.1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 0) #6, !srcloc !108
  %100 = ptrtoint ptr %regs.i.1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i.1.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %101, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 -1) #6, !srcloc !108
  %102 = ptrtoint ptr %emc_clock to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %emc_clock, align 4
  %call23 = tail call i32 @clk_notifier_unregister(ptr noundef %103, ptr noundef %clk_rate_change_nb) #6
  br label %cleanup

if.end20:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.tegra_devfreq, ptr %tegra, i32 0, i32 11
  %104 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %105) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end16, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call11, %do.end16 ], [ 0, %if.end20 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_devfreq_target(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devfreq_recommended_opp(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %1) #9
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @dev_pm_opp_set_opp(ptr noundef %dev, ptr noundef %call) #6
  tail call void @dev_pm_opp_put(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_devfreq_get_dev_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef %stat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cur_freq1 = getelementptr inbounds %struct.tegra_devfreq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cur_freq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cur_freq1, align 4
  %private_data = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 3
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private_data, align 4
  %mul = mul i32 %3, 1000
  %current_frequency = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 2
  %5 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %current_frequency, align 4
  %regs.i = getelementptr inbounds %struct.tegra_devfreq, ptr %1, i32 0, i32 10, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !107
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %busy_time = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 1
  %mul4 = shl i32 %9, 2
  %10 = ptrtoint ptr %busy_time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul4, ptr %busy_time, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %profile = getelementptr inbounds %struct.devfreq, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %profile, align 8
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %polling_ms, align 4
  %mul5 = mul i32 %16, %3
  %17 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul5, ptr %stat, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %mul4, i32 %mul5)
  %19 = ptrtoint ptr %busy_time to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %busy_time, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_opp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_tegra30_devfreq__212_961_tegra_devfreq_driver_init6, !1, !"__initcall__kmod_tegra30_devfreq__212_961_tegra_devfreq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 961, i32 1}
!2 = !{ptr @__exitcall_tegra_devfreq_driver_exit, !1, !"__exitcall_tegra_devfreq_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file213, !4, !"__UNIQUE_ID_file213", i1 false, i1 false}
!4 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 963, i32 1}
!5 = !{ptr @__UNIQUE_ID_license214, !4, !"__UNIQUE_ID_license214", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description215, !7, !"__UNIQUE_ID_description215", i1 false, i1 false}
!7 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 964, i32 1}
!8 = !{ptr @__UNIQUE_ID_author216, !9, !"__UNIQUE_ID_author216", i1 false, i1 false}
!9 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 965, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 957, i32 11}
!12 = !{ptr @tegra_devfreq_driver, !13, !"tegra_devfreq_driver", i1 false, i1 false}
!13 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 954, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 844, i32 52}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 846, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_devfreq_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_devfreq_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 852, i32 3}
!26 = !{ptr @tegra_devfreq_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_devfreq_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 856, i32 46}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 859, i32 10}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 873, i32 3}
!34 = !{ptr @tegra_devfreq_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tegra_devfreq_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 879, i32 3}
!38 = !{ptr @tegra_devfreq_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_devfreq_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 885, i32 3}
!42 = !{ptr @tegra_devfreq_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tegra_devfreq_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 895, i32 3}
!46 = !{ptr @tegra_devfreq_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tegra_devfreq_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @tegra_devfreq_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 912, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tegra_devfreq_probe.__key.25, !49, !"__key", i1 false, i1 false}
!52 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 917, i32 3}
!55 = !{ptr @tegra_devfreq_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tegra_devfreq_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 924, i32 8}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 806, i32 3}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @devm_tegra_devfreq_init_hw._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @devm_tegra_devfreq_init_hw._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 817, i32 3}
!66 = !{ptr @devm_tegra_devfreq_init_hw._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @devm_tegra_devfreq_init_hw._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @actmon_emc_ratios, !69, !"actmon_emc_ratios", i1 false, i1 false}
!69 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 208, i32 44}
!70 = !{ptr @tegra_devfreq_governor, !71, !"tegra_devfreq_governor", i1 false, i1 false}
!71 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 782, i32 32}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 562, i32 3}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tegra_actmon_resume._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @tegra_actmon_resume._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 582, i32 3}
!79 = !{ptr @tegra_actmon_resume._entry.38, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tegra_actmon_resume._entry_ptr.40, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @tegra_devfreq_profile, !82, !"tegra_devfreq_profile", i1 false, i1 false}
!82 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 686, i32 35}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 645, i32 3}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tegra_devfreq_target._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @tegra_devfreq_target._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @tegra_devfreq_of_match, !89, !"tegra_devfreq_of_match", i1 false, i1 false}
!89 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 946, i32 34}
!90 = !{ptr @tegra30_soc, !91, !"tegra30_soc", i1 false, i1 false}
!91 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 941, i32 44}
!92 = !{ptr @tegra30_device_configs, !93, !"tegra30_device_configs", i1 false, i1 false}
!93 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 129, i32 49}
!94 = !{ptr @tegra124_soc, !95, !"tegra124_soc", i1 false, i1 false}
!95 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 931, i32 44}
!96 = !{ptr @tegra124_device_configs, !97, !"tegra124_device_configs", i1 false, i1 false}
!97 = !{!"../drivers/devfreq/tegra30-devfreq.c", i32 107, i32 49}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 5231807}
!108 = !{i64 5231389}
!109 = !{i64 1168342, i64 1168369, i64 1168391, i64 1168419}
!110 = !{i64 1168750, i64 1168777, i64 1168810, i64 1168831, i64 1168858, i64 1168884}
!111 = !{i8 0, i8 2}
