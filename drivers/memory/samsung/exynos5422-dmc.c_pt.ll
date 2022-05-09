; ModuleID = '/llk/IR_all_yes/drivers/memory/samsung/exynos5422-dmc.c_pt.bc'
source_filename = "../drivers/memory/samsung/exynos5422-dmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.exynos5_dmc = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [2 x i64], i32, i32, i8 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.dmc_opp_table = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.lpddr3_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr3_min_tck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.82, ptr }
%union.anon.82 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devfreq_event_data = type { i32, i32 }

@__param_str_irqmode = internal constant [23 x i8] c"exynos5422_dmc.irqmode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irqmode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irqmode = internal constant %struct.kernel_param { ptr @__param_str_irqmode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @irqmode } }, section "__param", align 4
@__UNIQUE_ID_irqmodetype288 = internal constant [36 x i8] c"exynos5422_dmc.parmtype=irqmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irqmode289 = internal constant [68 x i8] c"exynos5422_dmc.parm=irqmode:Enable IRQ mode (0=off [default], 1=on)\00", section ".modinfo", align 1
@__initcall__kmod_exynos5422_dmc__331_1584_exynos5_dmc_platdrv_init6 = internal global ptr @exynos5_dmc_platdrv_init, section ".initcall6.init", align 4
@exynos5_dmc_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos5_dmc_probe, ptr @exynos5_dmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos5_dmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos5_dmc_platdrv_exit = internal global ptr @exynos5_dmc_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description332 = internal constant [112 x i8] c"exynos5422_dmc.description=Driver for Exynos5422 Dynamic Memory Controller dynamic frequency and voltage change\00", section ".modinfo", align 1
@__UNIQUE_ID_file333 = internal constant [58 x i8] c"exynos5422_dmc.file=drivers/memory/samsung/exynos5422-dmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license334 = internal constant [30 x i8] c"exynos5422_dmc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author335 = internal constant [34 x i8] c"exynos5422_dmc.author=Lukasz Luba\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos5-dmc\00", [20 x i8] zeroinitializer }, align 32
@exynos5_dmc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5422-dmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dmc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"samsung,syscon-clk\00", [45 x i8] zeroinitializer }, align 32
@exynos5_dmc_df_profile = internal global { %struct.devfreq_dev_profile, [56 x i8] } { %struct.devfreq_dev_profile { i32 0, i32 0, i32 1, i8 0, ptr @exynos5_dmc_target, ptr @exynos5_dmc_get_status, ptr @exynos5_dmc_get_cur_freq, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1446, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't initialize frequency settings\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos5_dmc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/memory/samsung/exynos5422-dmc.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry_ptr = internal global ptr @exynos5_dmc_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1462, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"couldn't initialize timings settings\0A\00", [58 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry_ptr.11 = internal global ptr @exynos5_dmc_probe._entry.9, section ".printk_index", align 4
@exynos5_dmc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1468, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"couldn't get access to PAUSE register\0A\00", [57 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry_ptr.14 = internal global ptr @exynos5_dmc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drex_0\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drex_1\00", [25 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1480, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"couldn't grab IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry_ptr.20 = internal global ptr @exynos5_dmc_probe._entry.17, section ".printk_index", align 4
@exynos5_dmc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1488, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry_ptr.22 = internal global ptr @exynos5_dmc_probe._entry.21, section ".printk_index", align 4
@exynos5_dmc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 1505, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"couldn't probe performance counters\0A\00", [59 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry_ptr.25 = internal global ptr @exynos5_dmc_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"simple_ondemand\00", [16 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1531, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMC initialized, in irq mode: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@exynos5_dmc_probe._entry_ptr.30 = internal global ptr @exynos5_dmc_probe._entry.27, section ".printk_index", align 4
@exynos5_init_freq_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 348, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get OPP table\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exynos5_init_freq_table\00", [40 x i8] zeroinitializer }, align 32
@exynos5_init_freq_table._entry_ptr = internal global ptr @exynos5_init_freq_table._entry, section ".printk_index", align 4
@exynos5_dmc_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 955, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not set event counter\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos5_dmc_get_status\00", [41 x i8] zeroinitializer }, align 32
@exynos5_dmc_get_status._entry_ptr = internal global ptr @exynos5_dmc_get_status._entry, section ".printk_index", align 4
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fout_spll\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fout_bpll\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mout_mclk_cdrex\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mout_bpll\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mout_mx_mspll_ccore\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ff_dout_spll2\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mout_sclk_spll\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device-handle\00", [18 x i8] zeroinitializer }, align 32
@of_get_dram_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 1184, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not find 'device-handle' in DT\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"of_get_dram_timings\00", [44 x i8] zeroinitializer }, align 32
@of_get_dram_timings._entry_ptr = internal global ptr @of_get_dram_timings._entry, section ".printk_index", align 4
@of_get_dram_timings._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.5, i32 1208, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not get timings from DT\0A\00", [33 x i8] zeroinitializer }, align 32
@of_get_dram_timings._entry_ptr.47 = internal global ptr @of_get_dram_timings._entry.45, section ".printk_index", align 4
@of_get_dram_timings._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.5, i32 1215, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not get tck from DT\0A\00", [37 x i8] zeroinitializer }, align 32
@of_get_dram_timings._entry_ptr.50 = internal global ptr @of_get_dram_timings._entry.48, section ".printk_index", align 4
@dmc_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 1399, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devfreq failed with %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmc_irq_thread\00", [17 x i8] zeroinitializer }, align 32
@dmc_irq_thread._entry_ptr = internal global ptr @dmc_irq_thread._entry, section ".printk_index", align 4
@exynos5_dmc_perf_events_check.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.72, ptr @.str.73, ptr @.str.5, ptr @.str.74, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos5422_dmc\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"exynos5_dmc_perf_events_check\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drex0 0xE050 val= 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@exynos5_dmc_perf_events_check.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.72, ptr @.str.73, ptr @.str.5, ptr @.str.75, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drex1 0xE050 val= 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@exynos5_dmc_perf_events_calc.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.72, ptr @.str.76, ptr @.str.5, ptr @.str.77, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"exynos5_dmc_perf_events_calc\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"diff_ts=%llu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"devfreq-events\00", [17 x i8] zeroinitializer }, align 32
@exynos5_performance_counters_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 1331, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not get devfreq-event counters\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"exynos5_performance_counters_init\00", [62 x i8] zeroinitializer }, align 32
@exynos5_performance_counters_init._entry_ptr = internal global ptr @exynos5_performance_counters_init._entry, section ".printk_index", align 4
@exynos5_performance_counters_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.5, i32 1350, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not enable event counter\0A\00", [32 x i8] zeroinitializer }, align 32
@exynos5_performance_counters_init._entry_ptr.83 = internal global ptr @exynos5_performance_counters_init._entry.81, section ".printk_index", align 4
@exynos5_performance_counters_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.80, ptr @.str.5, i32 1357, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@exynos5_performance_counters_init._entry_ptr.85 = internal global ptr @exynos5_performance_counters_init._entry.84, section ".printk_index", align 4
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"irqmode\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 25, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c"exynos5_dmc_platdrv\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1576, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1580, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"exynos5_dmc_of_match\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1570, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1426, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1440, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"exynos5_dmc_df_profile\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 988, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1446, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1450, i32 41 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1462, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1468, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1473, i32 41 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1474, i32 41 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1480, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1488, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1505, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1520, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1531, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 348, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 955, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1254, i32 42 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1258, i32 42 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1262, i32 48 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1266, i32 42 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1271, i32 7 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1275, i32 42 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1277, i32 43 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1182, i32 47 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1184, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1208, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1215, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1399, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 856, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 861, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 830, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1329, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1331, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1350, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private constant [43 x i8] c"../drivers/memory/samsung/exynos5422-dmc.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1357, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description332, ptr @__UNIQUE_ID_file333, ptr @__UNIQUE_ID_irqmode289, ptr @__UNIQUE_ID_irqmodetype288, ptr @__UNIQUE_ID_license334, ptr @__exitcall_exynos5_dmc_platdrv_exit, ptr @__initcall__kmod_exynos5422_dmc__331_1584_exynos5_dmc_platdrv_init6, ptr @__param_irqmode, ptr @dmc_irq_thread._entry, ptr @dmc_irq_thread._entry_ptr, ptr @exynos5_dmc_get_status._entry, ptr @exynos5_dmc_get_status._entry_ptr, ptr @exynos5_dmc_platdrv_exit, ptr @exynos5_dmc_probe._entry, ptr @exynos5_dmc_probe._entry.12, ptr @exynos5_dmc_probe._entry.17, ptr @exynos5_dmc_probe._entry.21, ptr @exynos5_dmc_probe._entry.23, ptr @exynos5_dmc_probe._entry.27, ptr @exynos5_dmc_probe._entry.9, ptr @exynos5_dmc_probe._entry_ptr, ptr @exynos5_dmc_probe._entry_ptr.11, ptr @exynos5_dmc_probe._entry_ptr.14, ptr @exynos5_dmc_probe._entry_ptr.20, ptr @exynos5_dmc_probe._entry_ptr.22, ptr @exynos5_dmc_probe._entry_ptr.25, ptr @exynos5_dmc_probe._entry_ptr.30, ptr @exynos5_init_freq_table._entry, ptr @exynos5_init_freq_table._entry_ptr, ptr @exynos5_performance_counters_init._entry, ptr @exynos5_performance_counters_init._entry.81, ptr @exynos5_performance_counters_init._entry.84, ptr @exynos5_performance_counters_init._entry_ptr, ptr @exynos5_performance_counters_init._entry_ptr.83, ptr @exynos5_performance_counters_init._entry_ptr.85, ptr @of_get_dram_timings._entry, ptr @of_get_dram_timings._entry.45, ptr @of_get_dram_timings._entry.48, ptr @of_get_dram_timings._entry_ptr, ptr @of_get_dram_timings._entry_ptr.47, ptr @of_get_dram_timings._entry_ptr.50, ptr @irqmode, ptr @exynos5_dmc_platdrv, ptr @.str, ptr @exynos5_dmc_of_match, ptr @exynos5_dmc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @exynos5_dmc_df_profile, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_df_profile to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_init_freq_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_dmc_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_dram_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_dram_timings._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_dram_timings._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_performance_counters_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_performance_counters_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_performance_counters_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos5_dmc_platdrv, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos5_dmc_platdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos5_dmc_platdrv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 240, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos5_dmc_probe.__key) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base_drexi0 = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %base_drexi0, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %do.body
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #7
  %base_drexi1 = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %base_drexi1, align 4
  %cmp.i195 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  %clk_regmap = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %clk_regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %clk_regmap, align 8
  %cmp.i196 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 8
  %call.i197 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %cmp.i198 = icmp slt i32 %call.i197, 0
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 8
  br i1 %cmp.i198, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.31) #10
  br label %exynos5_init_freq_table.exit.thread

if.end.i:                                         ; preds = %if.end23
  %call3.i = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %13) #7
  %opp_count.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 10
  %14 = ptrtoint ptr %opp_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call3.i, ptr %opp_count.i, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call3.i, i32 8) #7
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %devm_kmalloc_array.exit.thread.i, label %devm_kmalloc_array.exit.i, !prof !195

devm_kmalloc_array.exit.thread.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %opp2.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %opp2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %opp2.i, align 8
  br label %exynos5_init_freq_table.exit.thread

devm_kmalloc_array.exit.i:                        ; preds = %if.end.i
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  %20 = extractvalue { i32, i1 } %15, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef %20, i32 noundef 3264) #7
  %opp.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %opp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i, ptr %opp.i, align 8
  %tobool.not.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i, label %devm_kmalloc_array.exit.i.exynos5_init_freq_table.exit.thread_crit_edge, label %if.end9.i

devm_kmalloc_array.exit.i.exynos5_init_freq_table.exit.thread_crit_edge: ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_init_freq_table.exit.thread

if.end9.i:                                        ; preds = %devm_kmalloc_array.exit.i
  %22 = ptrtoint ptr %opp_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opp_count.i, align 4
  %24 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp125.i = icmp sgt i32 %23, 0
  br i1 %cmp125.i, label %if.end9.i.for.body.i_crit_edge, label %if.end9.i.exynos5_init_freq_table.exit.thread217_crit_edge

if.end9.i.exynos5_init_freq_table.exit.thread217_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_init_freq_table.exit.thread217

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 8
  %call15.i = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %26, ptr noundef nonnull %freq.i) #7
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %exynos5_init_freq_table.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %27 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %freq.i, align 4
  %29 = ptrtoint ptr %opp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %opp.i, align 8
  %31 = xor i32 %i.06.i, -1
  %sub21.i = add i32 %23, %31
  %arrayidx.i = getelementptr %struct.dmc_opp_table, ptr %30, i32 %sub21.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %28, ptr %arrayidx.i, align 4
  %call22.i = call i32 @dev_pm_opp_get_voltage(ptr noundef %call15.i) #7
  %33 = ptrtoint ptr %opp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %opp.i, align 8
  %volt_uv.i = getelementptr %struct.dmc_opp_table, ptr %34, i32 %sub21.i, i32 1
  %35 = ptrtoint ptr %volt_uv.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call22.i, ptr %volt_uv.i, align 4
  call void @dev_pm_opp_put(ptr noundef %call15.i) #7
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %36 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %freq.i, align 4
  %dec.i = add i32 %37, -1
  store i32 %dec.i, ptr %freq.i, align 4
  %38 = ptrtoint ptr %opp_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %opp_count.i, align 4
  %cmp12.i = icmp slt i32 %inc.i, %39
  br i1 %cmp12.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.exynos5_init_freq_table.exit.thread217_crit_edge

for.inc.i.exynos5_init_freq_table.exit.thread217_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_init_freq_table.exit.thread217

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

exynos5_init_freq_table.exit.thread:              ; preds = %devm_kmalloc_array.exit.i.exynos5_init_freq_table.exit.thread_crit_edge, %devm_kmalloc_array.exit.thread.i, %do.end.i
  %retval.2.i.ph = phi i32 [ -12, %devm_kmalloc_array.exit.thread.i ], [ -12, %devm_kmalloc_array.exit.i.exynos5_init_freq_table.exit.thread_crit_edge ], [ %call.i197, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #7
  br label %do.end29

exynos5_init_freq_table.exit.thread217:           ; preds = %for.inc.i.exynos5_init_freq_table.exit.thread217_crit_edge, %if.end9.i.exynos5_init_freq_table.exit.thread217_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #7
  %call31 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %vdd_mif = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 20
  %40 = ptrtoint ptr %vdd_mif to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call31, ptr %vdd_mif, align 4
  %cmp.i199 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %if.then34, label %if.end37

exynos5_init_freq_table.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call15.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #7
  br label %do.end29

do.end29:                                         ; preds = %exynos5_init_freq_table.exit, %exynos5_init_freq_table.exit.thread
  %retval.2.i215 = phi i32 [ %retval.2.i.ph, %exynos5_init_freq_table.exit.thread ], [ %41, %exynos5_init_freq_table.exit ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.then34:                                        ; preds = %exynos5_init_freq_table.exit.thread217
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %exynos5_init_freq_table.exit.thread217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %43 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %tmp.i, align 4, !annotation !196
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 8
  %call.i200 = call ptr @devm_clk_get(ptr noundef %45, ptr noundef nonnull @.str.35) #7
  %fout_spll.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 21
  %46 = ptrtoint ptr %fout_spll.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i200, ptr %fout_spll.i, align 8
  %cmp.i.i201 = icmp ugt ptr %call.i200, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i201, label %if.end37.exynos5_dmc_init_clks.exit_crit_edge, label %if.end.i202

if.end37.exynos5_dmc_init_clks.exit_crit_edge:    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_init_clks.exit

if.end.i202:                                      ; preds = %if.end37
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 8
  %call6.i = call ptr @devm_clk_get(ptr noundef %48, ptr noundef nonnull @.str.36) #7
  %fout_bpll.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 22
  %49 = ptrtoint ptr %fout_bpll.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call6.i, ptr %fout_bpll.i, align 4
  %cmp.i122.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122.i, label %if.end.i202.exynos5_dmc_init_clks.exit_crit_edge, label %if.end12.i

if.end.i202.exynos5_dmc_init_clks.exit_crit_edge: ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_init_clks.exit

if.end12.i:                                       ; preds = %if.end.i202
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 8
  %call14.i = call ptr @devm_clk_get(ptr noundef %51, ptr noundef nonnull @.str.37) #7
  %mout_mclk_cdrex.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 25
  %52 = ptrtoint ptr %mout_mclk_cdrex.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call14.i, ptr %mout_mclk_cdrex.i, align 8
  %cmp.i123.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123.i, label %if.end12.i.exynos5_dmc_init_clks.exit_crit_edge, label %if.end20.i

if.end12.i.exynos5_dmc_init_clks.exit_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_init_clks.exit

if.end20.i:                                       ; preds = %if.end12.i
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 8
  %call22.i203 = call ptr @devm_clk_get(ptr noundef %54, ptr noundef nonnull @.str.38) #7
  %mout_bpll.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 24
  %55 = ptrtoint ptr %mout_bpll.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call22.i203, ptr %mout_bpll.i, align 4
  %cmp.i124.i = icmp ugt ptr %call22.i203, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124.i, label %if.end20.i.exynos5_dmc_init_clks.exit_crit_edge, label %if.end28.i

if.end20.i.exynos5_dmc_init_clks.exit_crit_edge:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_init_clks.exit

if.end28.i:                                       ; preds = %if.end20.i
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 8
  %call30.i = call ptr @devm_clk_get(ptr noundef %57, ptr noundef nonnull @.str.39) #7
  %mout_mx_mspll_ccore.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 26
  %58 = ptrtoint ptr %mout_mx_mspll_ccore.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call30.i, ptr %mout_mx_mspll_ccore.i, align 4
  %cmp.i125.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125.i, label %if.end28.i.exynos5_dmc_init_clks.exit_crit_edge, label %if.end36.i

if.end28.i.exynos5_dmc_init_clks.exit_crit_edge:  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_init_clks.exit

if.end36.i:                                       ; preds = %if.end28.i
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 8
  %call38.i = call ptr @devm_clk_get(ptr noundef %60, ptr noundef nonnull @.str.40) #7
  %mout_spll.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 23
  %61 = ptrtoint ptr %mout_spll.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call38.i, ptr %mout_spll.i, align 8
  %cmp.i126.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126.i, label %if.then41.i, label %if.end36.i.if.end51.i_crit_edge

if.end36.i.if.end51.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.then41.i:                                      ; preds = %if.end36.i
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 8
  %call43.i = call ptr @devm_clk_get(ptr noundef %63, ptr noundef nonnull @.str.41) #7
  %64 = ptrtoint ptr %mout_spll.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call43.i, ptr %mout_spll.i, align 8
  %cmp.i127.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.i, label %if.then41.i.exynos5_dmc_init_clks.exit_crit_edge, label %if.then41.i.if.end51.i_crit_edge

if.then41.i.if.end51.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.then41.i.exynos5_dmc_init_clks.exit_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_init_clks.exit

if.end51.i:                                       ; preds = %if.then41.i.if.end51.i_crit_edge, %if.end36.i.if.end51.i_crit_edge
  %65 = ptrtoint ptr %mout_mclk_cdrex.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mout_mclk_cdrex.i, align 8
  %call53.i = call i32 @clk_get_rate(ptr noundef %66) #7
  %curr_rate.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 7
  %67 = ptrtoint ptr %curr_rate.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call53.i, ptr %curr_rate.i, align 8
  %68 = ptrtoint ptr %opp_count.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %opp_count.i, align 4
  %70 = ptrtoint ptr %opp.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %opp.i, align 8
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end51.i
  %i.0.in.i.i.i = phi i32 [ %69, %if.end51.i ], [ %i.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %i.0.i.i.i = add i32 %i.0.in.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %i.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %if.else.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.dmc_opp_table, ptr %71, i32 %i.0.i.i.i
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i.i, align 4
  %cmp1.not.i.i.i = icmp ugt i32 %73, %call53.i
  br i1 %cmp1.not.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge, label %for.body.i.i.i.exynos5_dmc_align_init_freq.exit.i_crit_edge

for.body.i.i.i.exynos5_dmc_align_init_freq.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_align_init_freq.exit.i

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i

if.else.i.i:                                      ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %69, -1
  %arrayidx2.i.i = getelementptr %struct.dmc_opp_table, ptr %71, i32 %sub.i.i
  br label %exynos5_dmc_align_init_freq.exit.i

exynos5_dmc_align_init_freq.exit.i:               ; preds = %if.else.i.i, %for.body.i.i.i.exynos5_dmc_align_init_freq.exit.i_crit_edge
  %aligned_freq.0.in.i.i = phi ptr [ %arrayidx2.i.i, %if.else.i.i ], [ %arrayidx.i.i.i, %for.body.i.i.i.exynos5_dmc_align_init_freq.exit.i_crit_edge ]
  %74 = ptrtoint ptr %aligned_freq.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %aligned_freq.0.i.i = load i32, ptr %aligned_freq.0.in.i.i, align 4
  %75 = ptrtoint ptr %curr_rate.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %aligned_freq.0.i.i, ptr %curr_rate.i, align 8
  store i32 %aligned_freq.0.i.i, ptr @exynos5_dmc_df_profile, align 4
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 8
  %call.i.i = call ptr @devfreq_recommended_opp(ptr noundef %77, ptr noundef %curr_rate.i, i32 noundef 0) #7
  %cmp.i.i128.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i128.i, label %exynos5_dmc_align_init_freq.exit.i.exynos5_dmc_init_clks.exit_crit_edge, label %exynos5_dmc_get_volt_freq.exit.thread.i

exynos5_dmc_align_init_freq.exit.i.exynos5_dmc_init_clks.exit_crit_edge: ; preds = %exynos5_dmc_align_init_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_init_clks.exit

exynos5_dmc_get_volt_freq.exit.thread.i:          ; preds = %exynos5_dmc_align_init_freq.exit.i
  %call3.i.i = call i32 @dev_pm_opp_get_freq(ptr noundef %call.i.i) #7
  %call4.i.i = call i32 @dev_pm_opp_get_voltage(ptr noundef %call.i.i) #7
  call void @dev_pm_opp_put(ptr noundef %call.i.i) #7
  %curr_volt.i = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 8
  %78 = ptrtoint ptr %curr_volt.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call4.i.i, ptr %curr_volt.i, align 4
  %79 = ptrtoint ptr %mout_mx_mspll_ccore.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mout_mx_mspll_ccore.i, align 4
  %81 = ptrtoint ptr %mout_spll.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mout_spll.i, align 8
  %call64.i = call i32 @clk_set_parent(ptr noundef %80, ptr noundef %82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %exynos5_dmc_init_clks.exit.thread, label %exynos5_dmc_init_clks.exit.thread222

exynos5_dmc_init_clks.exit.thread222:             ; preds = %exynos5_dmc_get_volt_freq.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

exynos5_dmc_init_clks.exit.thread:                ; preds = %exynos5_dmc_get_volt_freq.exit.thread.i
  %83 = ptrtoint ptr %fout_bpll.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fout_bpll.i, align 4
  call fastcc void @clk_prepare_enable(ptr noundef %84) #7
  %85 = ptrtoint ptr %mout_bpll.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mout_bpll.i, align 4
  call fastcc void @clk_prepare_enable(ptr noundef %86) #7
  %87 = ptrtoint ptr %clk_regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk_regmap, align 8
  %call72.i = call i32 @regmap_read(ptr noundef %88, i32 noundef 132864, ptr noundef nonnull %tmp.i) #7
  %89 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tmp.i, align 4
  %and.i = and i32 %90, -4
  store i32 %and.i, ptr %tmp.i, align 4
  %91 = ptrtoint ptr %clk_regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clk_regmap, align 8
  %call74.i = call i32 @regmap_write(ptr noundef %92, i32 noundef 132864, i32 noundef %and.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  %call42 = call fastcc i32 @of_get_dram_timings(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

exynos5_dmc_init_clks.exit:                       ; preds = %exynos5_dmc_align_init_freq.exit.i.exynos5_dmc_init_clks.exit_crit_edge, %if.then41.i.exynos5_dmc_init_clks.exit_crit_edge, %if.end28.i.exynos5_dmc_init_clks.exit_crit_edge, %if.end20.i.exynos5_dmc_init_clks.exit_crit_edge, %if.end12.i.exynos5_dmc_init_clks.exit_crit_edge, %if.end.i202.exynos5_dmc_init_clks.exit_crit_edge, %if.end37.exynos5_dmc_init_clks.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i200, %if.end37.exynos5_dmc_init_clks.exit_crit_edge ], [ %call6.i, %if.end.i202.exynos5_dmc_init_clks.exit_crit_edge ], [ %call14.i, %if.end12.i.exynos5_dmc_init_clks.exit_crit_edge ], [ %call22.i203, %if.end20.i.exynos5_dmc_init_clks.exit_crit_edge ], [ %call30.i, %if.end28.i.exynos5_dmc_init_clks.exit_crit_edge ], [ %call43.i, %if.then41.i.exynos5_dmc_init_clks.exit_crit_edge ], [ %call.i.i, %exynos5_dmc_align_init_freq.exit.i.exynos5_dmc_init_clks.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

do.end47:                                         ; preds = %exynos5_dmc_init_clks.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %remove_clocks

if.end48:                                         ; preds = %exynos5_dmc_init_clks.exit.thread
  %call49 = call fastcc i32 @exynos5_dmc_set_pause_on_switching(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end55, label %do.end54

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %remove_clocks

if.end55:                                         ; preds = %if.end48
  %call56 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.15) #7
  %call57 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp = icmp sgt i32 %call56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp61 = icmp sgt i32 %call57, 0
  %or.cond = select i1 %cmp, i1 %cmp61, i1 false
  br i1 %or.cond, label %land.lhs.true62, label %if.end55.if.else_crit_edge

if.end55.if.else_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true62:                                  ; preds = %if.end55
  %93 = load i32, ptr @irqmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool63.not = icmp eq i32 %93, 0
  br i1 %tobool63.not, label %land.lhs.true62.if.else_crit_edge, label %if.then64

land.lhs.true62.if.else_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then64:                                        ; preds = %land.lhs.true62
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %94 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i204 = icmp eq ptr %95, null
  br i1 %tobool.not.i204, label %if.end.i205, label %if.then64.dev_name.exit_crit_edge

if.then64.dev_name.exit_crit_edge:                ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i205:                                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i205, %if.then64.dev_name.exit_crit_edge
  %retval.0.i206 = phi ptr [ %97, %if.end.i205 ], [ %95, %if.then64.dev_name.exit_crit_edge ]
  %call67 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call56, ptr noundef null, ptr noundef nonnull @dmc_irq_thread, i32 noundef 8192, ptr noundef %retval.0.i206, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end73, label %do.end72

do.end72:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %remove_clocks

if.end73:                                         ; preds = %dev_name.exit
  %98 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i208 = icmp eq ptr %99, null
  br i1 %tobool.not.i208, label %if.end.i209, label %if.end73.dev_name.exit211_crit_edge

if.end73.dev_name.exit211_crit_edge:              ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit211

if.end.i209:                                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit211

dev_name.exit211:                                 ; preds = %if.end.i209, %if.end73.dev_name.exit211_crit_edge
  %retval.0.i210 = phi ptr [ %101, %if.end.i209 ], [ %99, %if.end73.dev_name.exit211_crit_edge ]
  %call76 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call57, ptr noundef null, ptr noundef nonnull @dmc_irq_thread, i32 noundef 8192, ptr noundef %retval.0.i210, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end82, label %do.end81

do.end81:                                         ; preds = %dev_name.exit211
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %remove_clocks

if.end82:                                         ; preds = %dev_name.exit211
  call void @__sanitizer_cov_trace_pc() #9
  %gov_data = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 2
  %102 = ptrtoint ptr %gov_data to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 55, ptr %gov_data, align 8
  %downdifferential = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %downdifferential to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 5, ptr %downdifferential, align 4
  call fastcc void @exynos5_dmc_enable_perf_events(ptr noundef nonnull %call.i)
  %in_irq_mode = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 32
  %104 = ptrtoint ptr %in_irq_mode to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %in_irq_mode, align 8
  br label %if.end95

if.else:                                          ; preds = %land.lhs.true62.if.else_crit_edge, %if.end55.if.else_crit_edge
  %call84 = call fastcc i32 @exynos5_performance_counters_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end90, label %do.end89

do.end89:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.24) #10
  br label %remove_clocks

if.end90:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %gov_data91 = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 2
  %105 = ptrtoint ptr %gov_data91 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 10, ptr %gov_data91, align 8
  %downdifferential94 = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %downdifferential94 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 5, ptr %downdifferential94, align 4
  store i32 100, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @exynos5_dmc_df_profile, i32 0, i32 1), align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end90, %if.end82
  %gov_data96 = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 2
  %call97 = call ptr @devm_devfreq_add_device(ptr noundef %dev1, ptr noundef nonnull @exynos5_dmc_df_profile, ptr noundef nonnull @.str.26, ptr noundef %gov_data96) #7
  %df = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 1
  %107 = ptrtoint ptr %df to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call97, ptr %df, align 4
  %cmp.i212 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then100, label %if.end103

if.then100:                                       ; preds = %if.end95
  %108 = ptrtoint ptr %call97 to i32
  %in_irq_mode113 = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 32
  %109 = ptrtoint ptr %in_irq_mode113 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %in_irq_mode113, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool114.not = icmp eq i8 %110, 0
  br i1 %tobool114.not, label %if.else116, label %if.then115

if.end103:                                        ; preds = %if.end95
  %in_irq_mode104 = getelementptr inbounds %struct.exynos5_dmc, ptr %call.i, i32 0, i32 32
  %111 = ptrtoint ptr %in_irq_mode104 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %in_irq_mode104, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool105.not = icmp eq i8 %112, 0
  br i1 %tobool105.not, label %if.end103.do.end110_crit_edge, label %if.then106

if.end103.do.end110_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @exynos5_dmc_start_perf_events(ptr noundef nonnull %call.i)
  br label %do.end110

do.end110:                                        ; preds = %if.then106, %if.end103.do.end110_crit_edge
  %113 = ptrtoint ptr %in_irq_mode104 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %in_irq_mode104, align 8, !range !197
  %115 = zext i8 %114 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %115) #10
  br label %cleanup

if.then115:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @exynos5_dmc_disable_perf_events(ptr noundef nonnull %call.i)
  br label %remove_clocks

if.else116:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @exynos5_counters_disable_edev(ptr noundef nonnull %call.i)
  br label %remove_clocks

remove_clocks:                                    ; preds = %if.else116, %if.then115, %do.end89, %do.end81, %do.end72, %do.end54, %do.end47
  %ret.0 = phi i32 [ %call42, %do.end47 ], [ %call49, %do.end54 ], [ %call67, %do.end72 ], [ %call76, %do.end81 ], [ %108, %if.then115 ], [ %108, %if.else116 ], [ %call84, %do.end89 ]
  %116 = ptrtoint ptr %mout_bpll.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mout_bpll.i, align 4
  call void @clk_disable(ptr noundef %117) #7
  call void @clk_unprepare(ptr noundef %117) #7
  %118 = ptrtoint ptr %fout_bpll.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fout_bpll.i, align 4
  call void @clk_disable(ptr noundef %119) #7
  call void @clk_unprepare(ptr noundef %119) #7
  br label %cleanup

cleanup:                                          ; preds = %remove_clocks, %do.end110, %exynos5_dmc_init_clks.exit, %exynos5_dmc_init_clks.exit.thread222, %if.then34, %do.end29, %if.then20, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %7, %if.then13 ], [ %9, %if.then20 ], [ %retval.2.i215, %do.end29 ], [ %42, %if.then34 ], [ %ret.0, %remove_clocks ], [ 0, %do.end110 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %exynos5_dmc_init_clks.exit ], [ %call64.i, %exynos5_dmc_init_clks.exit.thread222 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_irq_mode = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %in_irq_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_irq_mode, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @exynos5_dmc_disable_perf_events(ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %num_counters.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i = icmp sgt i32 %5, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.else
  %counter.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 27
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %counter.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %i.02.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @devfreq_event_disable_edev(ptr noundef nonnull %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %10 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_counters.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %mout_bpll = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %mout_bpll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mout_bpll, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %fout_bpll = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 22
  %14 = ptrtoint ptr %fout_bpll to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fout_bpll, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_get_dram_timings(ptr noundef %dmc) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmc, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  %7 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmc, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %9 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmc, align 8
  %call5.i = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 76, i32 noundef 3264) #7
  %timing_row = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 12
  %11 = ptrtoint ptr %timing_row to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i, ptr %timing_row, align 4
  %tobool5.not = icmp eq ptr %call5.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmc, align 8
  %call5.i106 = call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 76, i32 noundef 3264) #7
  %timing_data = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 13
  %14 = ptrtoint ptr %timing_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i106, ptr %timing_data, align 8
  %tobool11.not = icmp eq ptr %call5.i106, null
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmc, align 8
  %call5.i109 = call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 76, i32 noundef 3264) #7
  %timing_power = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 14
  %17 = ptrtoint ptr %timing_power to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i109, ptr %timing_power, align 4
  %tobool17.not = icmp eq ptr %call5.i109, null
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %18 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmc, align 8
  %timings_arr_size = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 11
  %call21 = call ptr @of_lpddr3_get_ddr_timings(ptr noundef nonnull %6, ptr noundef %19, i32 noundef 6, ptr noundef %timings_arr_size) #7
  %timings = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 15
  %20 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21, ptr %timings, align 8
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %6) #7
  %21 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dmc, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.46) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %23 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dmc, align 8
  %call31 = call ptr @of_lpddr3_get_min_tck(ptr noundef nonnull %6, ptr noundef %24) #7
  %min_tck = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 16
  %25 = ptrtoint ptr %min_tck to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call31, ptr %min_tck, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.then34, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end29
  %opp_count = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 10
  %26 = ptrtoint ptr %opp_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %opp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp115 = icmp sgt i32 %27, 0
  br i1 %cmp115, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %opp = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 9
  br label %for.body

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %6) #7
  %28 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dmc, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.49) #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %idx.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %30 = ptrtoint ptr %opp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %opp, align 8
  %arrayidx = getelementptr %struct.dmc_opp_table, ptr %31, i32 %idx.0116
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %div = udiv i32 %33, 1000000
  %div40 = udiv i32 1000000, %div
  %34 = ptrtoint ptr %timing_row to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %timing_row, align 4
  %arrayidx42 = getelementptr i32, ptr %35, i32 %idx.0116
  %36 = ptrtoint ptr %timing_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %timing_data, align 8
  %arrayidx44 = getelementptr i32, ptr %37, i32 %idx.0116
  %38 = ptrtoint ptr %timing_power to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %timing_power, align 4
  %arrayidx46 = getelementptr i32, ptr %39, i32 %idx.0116
  %40 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx42, align 4
  %41 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx44, align 4
  %42 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx46, align 4
  %43 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %timings, align 8
  %tRFC.i = getelementptr inbounds %struct.lpddr3_timings, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %tRFC.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tRFC.i, align 4
  %.frozen = freeze i32 %46
  %div40.frozen = freeze i32 %div40
  %div.i = udiv i32 %.frozen, %div40.frozen
  %47 = mul i32 %div.i, %div40.frozen
  %rem.i.decomposed = sub i32 %.frozen, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i112 = icmp ne i32 %rem.i.decomposed, 0
  %cond.i = zext i1 %tobool.not.i112 to i32
  %add.i = add nuw nsw i32 %div.i, %cond.i
  %48 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %min_tck, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %52 = call i32 @llvm.umax.i32(i32 %add.i, i32 %51) #7
  %shl.i = shl i32 %52, 24
  %53 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx42, align 4
  %or.i = or i32 %shl.i, %54
  store i32 %or.i, ptr %arrayidx42, align 4
  %55 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %timings, align 8
  %tRRD.i = getelementptr inbounds %struct.lpddr3_timings, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %tRRD.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tRRD.i, align 4
  %.frozen117 = freeze i32 %58
  %div40.frozen118 = freeze i32 %div40
  %div8.i = udiv i32 %.frozen117, %div40.frozen118
  %59 = mul i32 %div8.i, %div40.frozen118
  %rem11.i.decomposed = sub i32 %.frozen117, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem11.i.decomposed)
  %tobool12.not.i = icmp ne i32 %rem11.i.decomposed, 0
  %cond13.i = zext i1 %tobool12.not.i to i32
  %add14.i = add nuw nsw i32 %div8.i, %cond13.i
  %60 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %min_tck, align 4
  %tRRD16.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %tRRD16.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tRRD16.i, align 4
  %64 = call i32 @llvm.umax.i32(i32 %add14.i, i32 %63) #7
  %shl25.i = shl i32 %64, 20
  %or27.i = or i32 %shl25.i, %or.i
  %65 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or27.i, ptr %arrayidx42, align 4
  %66 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %timings, align 8
  %tRPab.i = getelementptr inbounds %struct.lpddr3_timings, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %tRPab.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tRPab.i, align 4
  %.frozen119 = freeze i32 %69
  %div40.frozen120 = freeze i32 %div40
  %div29.i = udiv i32 %.frozen119, %div40.frozen120
  %70 = mul i32 %div29.i, %div40.frozen120
  %rem32.i.decomposed = sub i32 %.frozen119, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem32.i.decomposed)
  %tobool33.not.i = icmp ne i32 %rem32.i.decomposed, 0
  %cond34.i = zext i1 %tobool33.not.i to i32
  %add35.i = add nuw nsw i32 %div29.i, %cond34.i
  %71 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %min_tck, align 4
  %tRPab37.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %tRPab37.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tRPab37.i, align 4
  %75 = call i32 @llvm.umax.i32(i32 %add35.i, i32 %74) #7
  %shl46.i = shl i32 %75, 16
  %or48.i = or i32 %shl46.i, %or27.i
  %76 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or48.i, ptr %arrayidx42, align 4
  %77 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %timings, align 8
  %tRCD.i = getelementptr inbounds %struct.lpddr3_timings, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %tRCD.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tRCD.i, align 4
  %.frozen121 = freeze i32 %80
  %div40.frozen122 = freeze i32 %div40
  %div50.i = udiv i32 %.frozen121, %div40.frozen122
  %81 = mul i32 %div50.i, %div40.frozen122
  %rem53.i.decomposed = sub i32 %.frozen121, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem53.i.decomposed)
  %tobool54.not.i = icmp ne i32 %rem53.i.decomposed, 0
  %cond55.i = zext i1 %tobool54.not.i to i32
  %add56.i = add nuw nsw i32 %div50.i, %cond55.i
  %82 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %min_tck, align 4
  %tRCD58.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %tRCD58.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tRCD58.i, align 4
  %86 = call i32 @llvm.umax.i32(i32 %add56.i, i32 %85) #7
  %shl67.i = shl i32 %86, 12
  %or69.i = or i32 %shl67.i, %or48.i
  %87 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or69.i, ptr %arrayidx42, align 4
  %88 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %timings, align 8
  %tRC.i = getelementptr inbounds %struct.lpddr3_timings, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %tRC.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tRC.i, align 4
  %.frozen123 = freeze i32 %91
  %div40.frozen124 = freeze i32 %div40
  %div71.i = udiv i32 %.frozen123, %div40.frozen124
  %92 = mul i32 %div71.i, %div40.frozen124
  %rem74.i.decomposed = sub i32 %.frozen123, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem74.i.decomposed)
  %tobool75.not.i = icmp ne i32 %rem74.i.decomposed, 0
  %cond76.i = zext i1 %tobool75.not.i to i32
  %add77.i = add nuw nsw i32 %div71.i, %cond76.i
  %93 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %min_tck, align 4
  %tRC79.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %tRC79.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tRC79.i, align 4
  %97 = call i32 @llvm.umax.i32(i32 %add77.i, i32 %96) #7
  %shl88.i = shl i32 %97, 6
  %or90.i = or i32 %shl88.i, %or69.i
  %98 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or90.i, ptr %arrayidx42, align 4
  %99 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %timings, align 8
  %tRAS.i = getelementptr inbounds %struct.lpddr3_timings, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %tRAS.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tRAS.i, align 4
  %.frozen125 = freeze i32 %102
  %div40.frozen126 = freeze i32 %div40
  %div92.i = udiv i32 %.frozen125, %div40.frozen126
  %103 = mul i32 %div92.i, %div40.frozen126
  %rem95.i.decomposed = sub i32 %.frozen125, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem95.i.decomposed)
  %tobool96.not.i = icmp ne i32 %rem95.i.decomposed, 0
  %cond97.i = zext i1 %tobool96.not.i to i32
  %add98.i = add nuw nsw i32 %div92.i, %cond97.i
  %104 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %min_tck, align 4
  %tRAS100.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %tRAS100.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tRAS100.i, align 4
  %108 = call i32 @llvm.umax.i32(i32 %add98.i, i32 %107) #7
  %or111.i = or i32 %108, %or90.i
  %109 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or111.i, ptr %arrayidx42, align 4
  %110 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %timings, align 8
  %tWTR.i = getelementptr inbounds %struct.lpddr3_timings, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %tWTR.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tWTR.i, align 4
  %.frozen127 = freeze i32 %113
  %div40.frozen128 = freeze i32 %div40
  %div113.i = udiv i32 %.frozen127, %div40.frozen128
  %114 = mul i32 %div113.i, %div40.frozen128
  %rem116.i.decomposed = sub i32 %.frozen127, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem116.i.decomposed)
  %tobool117.not.i = icmp ne i32 %rem116.i.decomposed, 0
  %cond118.i = zext i1 %tobool117.not.i to i32
  %add119.i = add nuw nsw i32 %div113.i, %cond118.i
  %115 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %min_tck, align 4
  %tWTR121.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %tWTR121.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tWTR121.i, align 4
  %119 = call i32 @llvm.umax.i32(i32 %add119.i, i32 %118) #7
  %shl130.i = shl i32 %119, 28
  %120 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx44, align 4
  %or132.i = or i32 %shl130.i, %121
  store i32 %or132.i, ptr %arrayidx44, align 4
  %122 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %timings, align 8
  %tWR.i = getelementptr inbounds %struct.lpddr3_timings, ptr %123, i32 0, i32 10
  %124 = ptrtoint ptr %tWR.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tWR.i, align 4
  %.frozen129 = freeze i32 %125
  %div40.frozen130 = freeze i32 %div40
  %div134.i = udiv i32 %.frozen129, %div40.frozen130
  %126 = mul i32 %div134.i, %div40.frozen130
  %rem137.i.decomposed = sub i32 %.frozen129, %126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem137.i.decomposed)
  %tobool138.not.i = icmp ne i32 %rem137.i.decomposed, 0
  %cond139.i = zext i1 %tobool138.not.i to i32
  %add140.i = add nuw nsw i32 %div134.i, %cond139.i
  %127 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %min_tck, align 4
  %tWR142.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %tWR142.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tWR142.i, align 4
  %131 = call i32 @llvm.umax.i32(i32 %add140.i, i32 %130) #7
  %shl151.i = shl i32 %131, 24
  %or153.i = or i32 %shl151.i, %or132.i
  %132 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or153.i, ptr %arrayidx44, align 4
  %133 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %timings, align 8
  %tRTP.i = getelementptr inbounds %struct.lpddr3_timings, ptr %134, i32 0, i32 11
  %135 = ptrtoint ptr %tRTP.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tRTP.i, align 4
  %.frozen131 = freeze i32 %136
  %div40.frozen132 = freeze i32 %div40
  %div155.i = udiv i32 %.frozen131, %div40.frozen132
  %137 = mul i32 %div155.i, %div40.frozen132
  %rem158.i.decomposed = sub i32 %.frozen131, %137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem158.i.decomposed)
  %tobool159.not.i = icmp ne i32 %rem158.i.decomposed, 0
  %cond160.i = zext i1 %tobool159.not.i to i32
  %add161.i = add nuw nsw i32 %div155.i, %cond160.i
  %138 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %min_tck, align 4
  %tRTP163.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %139, i32 0, i32 9
  %140 = ptrtoint ptr %tRTP163.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tRTP163.i, align 4
  %142 = call i32 @llvm.umax.i32(i32 %add161.i, i32 %141) #7
  %shl172.i = shl i32 %142, 20
  %or174.i = or i32 %shl172.i, %or153.i
  %143 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or174.i, ptr %arrayidx44, align 4
  %144 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %timings, align 8
  %tW2W_C2C.i = getelementptr inbounds %struct.lpddr3_timings, ptr %145, i32 0, i32 12
  %146 = ptrtoint ptr %tW2W_C2C.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tW2W_C2C.i, align 4
  %.frozen133 = freeze i32 %147
  %div40.frozen134 = freeze i32 %div40
  %div176.i = udiv i32 %.frozen133, %div40.frozen134
  %148 = mul i32 %div176.i, %div40.frozen134
  %rem179.i.decomposed = sub i32 %.frozen133, %148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem179.i.decomposed)
  %tobool180.not.i = icmp ne i32 %rem179.i.decomposed, 0
  %cond181.i = zext i1 %tobool180.not.i to i32
  %add182.i = add nuw nsw i32 %div176.i, %cond181.i
  %149 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %min_tck, align 4
  %tW2W_C2C184.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %150, i32 0, i32 10
  %151 = ptrtoint ptr %tW2W_C2C184.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tW2W_C2C184.i, align 4
  %153 = call i32 @llvm.umax.i32(i32 %add182.i, i32 %152) #7
  %shl193.i = shl i32 %153, 14
  %or195.i = or i32 %shl193.i, %or174.i
  %154 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or195.i, ptr %arrayidx44, align 4
  %155 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %timings, align 8
  %tR2R_C2C.i = getelementptr inbounds %struct.lpddr3_timings, ptr %156, i32 0, i32 13
  %157 = ptrtoint ptr %tR2R_C2C.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %tR2R_C2C.i, align 4
  %.frozen135 = freeze i32 %158
  %div40.frozen136 = freeze i32 %div40
  %div197.i = udiv i32 %.frozen135, %div40.frozen136
  %159 = mul i32 %div197.i, %div40.frozen136
  %rem200.i.decomposed = sub i32 %.frozen135, %159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem200.i.decomposed)
  %tobool201.not.i = icmp ne i32 %rem200.i.decomposed, 0
  %cond202.i = zext i1 %tobool201.not.i to i32
  %add203.i = add nuw nsw i32 %div197.i, %cond202.i
  %160 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %min_tck, align 4
  %tR2R_C2C205.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %161, i32 0, i32 11
  %162 = ptrtoint ptr %tR2R_C2C205.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tR2R_C2C205.i, align 4
  %164 = call i32 @llvm.umax.i32(i32 %add203.i, i32 %163) #7
  %shl214.i = shl i32 %164, 12
  %or216.i = or i32 %shl214.i, %or195.i
  %165 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or216.i, ptr %arrayidx44, align 4
  %166 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %timings, align 8
  %tWL.i = getelementptr inbounds %struct.lpddr3_timings, ptr %167, i32 0, i32 14
  %168 = ptrtoint ptr %tWL.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tWL.i, align 4
  %.frozen137 = freeze i32 %169
  %div40.frozen138 = freeze i32 %div40
  %div218.i = udiv i32 %.frozen137, %div40.frozen138
  %170 = mul i32 %div218.i, %div40.frozen138
  %rem221.i.decomposed = sub i32 %.frozen137, %170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem221.i.decomposed)
  %tobool222.not.i = icmp ne i32 %rem221.i.decomposed, 0
  %cond223.i = zext i1 %tobool222.not.i to i32
  %add224.i = add nuw nsw i32 %div218.i, %cond223.i
  %171 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %min_tck, align 4
  %tWL226.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %172, i32 0, i32 12
  %173 = ptrtoint ptr %tWL226.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %tWL226.i, align 4
  %175 = call i32 @llvm.umax.i32(i32 %add224.i, i32 %174) #7
  %shl235.i = shl i32 %175, 8
  %or237.i = or i32 %shl235.i, %or216.i
  %176 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or237.i, ptr %arrayidx44, align 4
  %177 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %timings, align 8
  %tDQSCK.i = getelementptr inbounds %struct.lpddr3_timings, ptr %178, i32 0, i32 15
  %179 = ptrtoint ptr %tDQSCK.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tDQSCK.i, align 4
  %.frozen139 = freeze i32 %180
  %div40.frozen140 = freeze i32 %div40
  %div239.i = udiv i32 %.frozen139, %div40.frozen140
  %181 = mul i32 %div239.i, %div40.frozen140
  %rem242.i.decomposed = sub i32 %.frozen139, %181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem242.i.decomposed)
  %tobool243.not.i = icmp ne i32 %rem242.i.decomposed, 0
  %cond244.i = zext i1 %tobool243.not.i to i32
  %add245.i = add nuw nsw i32 %div239.i, %cond244.i
  %182 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %min_tck, align 4
  %tDQSCK247.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %183, i32 0, i32 13
  %184 = ptrtoint ptr %tDQSCK247.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %tDQSCK247.i, align 4
  %186 = call i32 @llvm.umax.i32(i32 %add245.i, i32 %185) #7
  %shl256.i = shl i32 %186, 4
  %or258.i = or i32 %shl256.i, %or237.i
  %187 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %or258.i, ptr %arrayidx44, align 4
  %188 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %timings, align 8
  %tRL.i = getelementptr inbounds %struct.lpddr3_timings, ptr %189, i32 0, i32 16
  %190 = ptrtoint ptr %tRL.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %tRL.i, align 4
  %.frozen141 = freeze i32 %191
  %div40.frozen142 = freeze i32 %div40
  %div260.i = udiv i32 %.frozen141, %div40.frozen142
  %192 = mul i32 %div260.i, %div40.frozen142
  %rem263.i.decomposed = sub i32 %.frozen141, %192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem263.i.decomposed)
  %tobool264.not.i = icmp ne i32 %rem263.i.decomposed, 0
  %cond265.i = zext i1 %tobool264.not.i to i32
  %add266.i = add nuw nsw i32 %div260.i, %cond265.i
  %193 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %min_tck, align 4
  %tRL268.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %194, i32 0, i32 14
  %195 = ptrtoint ptr %tRL268.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %tRL268.i, align 4
  %197 = call i32 @llvm.umax.i32(i32 %add266.i, i32 %196) #7
  %or279.i = or i32 %197, %or258.i
  %198 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %or279.i, ptr %arrayidx44, align 4
  %199 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %timings, align 8
  %tFAW.i = getelementptr inbounds %struct.lpddr3_timings, ptr %200, i32 0, i32 17
  %201 = ptrtoint ptr %tFAW.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tFAW.i, align 4
  %.frozen143 = freeze i32 %202
  %div40.frozen144 = freeze i32 %div40
  %div281.i = udiv i32 %.frozen143, %div40.frozen144
  %203 = mul i32 %div281.i, %div40.frozen144
  %rem284.i.decomposed = sub i32 %.frozen143, %203
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem284.i.decomposed)
  %tobool285.not.i = icmp ne i32 %rem284.i.decomposed, 0
  %cond286.i = zext i1 %tobool285.not.i to i32
  %add287.i = add nuw nsw i32 %div281.i, %cond286.i
  %204 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %min_tck, align 4
  %tFAW289.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %205, i32 0, i32 15
  %206 = ptrtoint ptr %tFAW289.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %tFAW289.i, align 4
  %208 = call i32 @llvm.umax.i32(i32 %add287.i, i32 %207) #7
  %shl298.i = shl i32 %208, 26
  %209 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx46, align 4
  %or300.i = or i32 %shl298.i, %210
  store i32 %or300.i, ptr %arrayidx46, align 4
  %211 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %timings, align 8
  %tXSR.i = getelementptr inbounds %struct.lpddr3_timings, ptr %212, i32 0, i32 18
  %213 = ptrtoint ptr %tXSR.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %tXSR.i, align 4
  %.frozen145 = freeze i32 %214
  %div40.frozen146 = freeze i32 %div40
  %div302.i = udiv i32 %.frozen145, %div40.frozen146
  %215 = mul i32 %div302.i, %div40.frozen146
  %rem305.i.decomposed = sub i32 %.frozen145, %215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem305.i.decomposed)
  %tobool306.not.i = icmp ne i32 %rem305.i.decomposed, 0
  %cond307.i = zext i1 %tobool306.not.i to i32
  %add308.i = add nuw nsw i32 %div302.i, %cond307.i
  %216 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %min_tck, align 4
  %tXSR310.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %217, i32 0, i32 16
  %218 = ptrtoint ptr %tXSR310.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %tXSR310.i, align 4
  %220 = call i32 @llvm.umax.i32(i32 %add308.i, i32 %219) #7
  %shl319.i = shl i32 %220, 16
  %or321.i = or i32 %shl319.i, %or300.i
  %221 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %or321.i, ptr %arrayidx46, align 4
  %222 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %timings, align 8
  %tXP.i = getelementptr inbounds %struct.lpddr3_timings, ptr %223, i32 0, i32 19
  %224 = ptrtoint ptr %tXP.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %tXP.i, align 4
  %.frozen147 = freeze i32 %225
  %div40.frozen148 = freeze i32 %div40
  %div323.i = udiv i32 %.frozen147, %div40.frozen148
  %226 = mul i32 %div323.i, %div40.frozen148
  %rem326.i.decomposed = sub i32 %.frozen147, %226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem326.i.decomposed)
  %tobool327.not.i = icmp ne i32 %rem326.i.decomposed, 0
  %cond328.i = zext i1 %tobool327.not.i to i32
  %add329.i = add nuw nsw i32 %div323.i, %cond328.i
  %227 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %min_tck, align 4
  %tXP331.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %228, i32 0, i32 17
  %229 = ptrtoint ptr %tXP331.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %tXP331.i, align 4
  %231 = call i32 @llvm.umax.i32(i32 %add329.i, i32 %230) #7
  %shl340.i = shl i32 %231, 8
  %or342.i = or i32 %shl340.i, %or321.i
  %232 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %or342.i, ptr %arrayidx46, align 4
  %233 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %timings, align 8
  %tCKE.i = getelementptr inbounds %struct.lpddr3_timings, ptr %234, i32 0, i32 20
  %235 = ptrtoint ptr %tCKE.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %tCKE.i, align 4
  %.frozen149 = freeze i32 %236
  %div40.frozen150 = freeze i32 %div40
  %div344.i = udiv i32 %.frozen149, %div40.frozen150
  %237 = mul i32 %div344.i, %div40.frozen150
  %rem347.i.decomposed = sub i32 %.frozen149, %237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem347.i.decomposed)
  %tobool348.not.i = icmp ne i32 %rem347.i.decomposed, 0
  %cond349.i = zext i1 %tobool348.not.i to i32
  %add350.i = add nuw nsw i32 %div344.i, %cond349.i
  %238 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %min_tck, align 4
  %tCKE352.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %239, i32 0, i32 18
  %240 = ptrtoint ptr %tCKE352.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %tCKE352.i, align 4
  %242 = call i32 @llvm.umax.i32(i32 %add350.i, i32 %241) #7
  %shl361.i = shl i32 %242, 4
  %or363.i = or i32 %shl361.i, %or342.i
  %243 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %or363.i, ptr %arrayidx46, align 4
  %244 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %timings, align 8
  %tMRD.i = getelementptr inbounds %struct.lpddr3_timings, ptr %245, i32 0, i32 22
  %246 = ptrtoint ptr %tMRD.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %tMRD.i, align 4
  %.frozen151 = freeze i32 %247
  %div40.frozen152 = freeze i32 %div40
  %div365.i = udiv i32 %.frozen151, %div40.frozen152
  %248 = mul i32 %div365.i, %div40.frozen152
  %rem368.i.decomposed = sub i32 %.frozen151, %248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem368.i.decomposed)
  %tobool369.not.i = icmp ne i32 %rem368.i.decomposed, 0
  %cond370.i = zext i1 %tobool369.not.i to i32
  %add371.i = add nuw nsw i32 %div365.i, %cond370.i
  %249 = ptrtoint ptr %min_tck to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %min_tck, align 4
  %tMRD373.i = getelementptr inbounds %struct.lpddr3_min_tck, ptr %250, i32 0, i32 20
  %251 = ptrtoint ptr %tMRD373.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %tMRD373.i, align 4
  %253 = call i32 @llvm.umax.i32(i32 %add371.i, i32 %252) #7
  %or384.i = or i32 %253, %or363.i
  %254 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %or384.i, ptr %arrayidx46, align 4
  %inc = add nuw nsw i32 %idx.0116, 1
  %255 = ptrtoint ptr %opp_count to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %opp_count, align 4
  %cmp = icmp slt i32 %inc, %256
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ -1, %for.cond.preheader.for.end_crit_edge ], [ %idx.0116, %for.body.for.end_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %6) #7
  %257 = ptrtoint ptr %timing_row to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %timing_row, align 4
  %arrayidx49 = getelementptr i32, ptr %258, i32 %idx.0.lcssa
  %259 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx49, align 4
  %bypass_timing_row = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 17
  %261 = ptrtoint ptr %bypass_timing_row to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %bypass_timing_row, align 8
  %262 = ptrtoint ptr %timing_data to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %timing_data, align 8
  %arrayidx52 = getelementptr i32, ptr %263, i32 %idx.0.lcssa
  %264 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx52, align 4
  %bypass_timing_data = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 18
  %266 = ptrtoint ptr %bypass_timing_data to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %bypass_timing_data, align 4
  %267 = ptrtoint ptr %timing_power to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %timing_power, align 4
  %arrayidx55 = getelementptr i32, ptr %268, i32 %idx.0.lcssa
  %269 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx55, align 4
  %bypass_timing_power = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 19
  %271 = ptrtoint ptr %bypass_timing_power to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %bypass_timing_power, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then34, %if.then24, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %if.then34 ], [ -22, %if.then24 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos5_dmc_set_pause_on_switching(ptr nocapture noundef readonly %dmc) unnamed_addr #5 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !196
  %clk_regmap = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 5
  %1 = ptrtoint ptr %clk_regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk_regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 133404, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %or = or i32 %4, 1
  store i32 %or, ptr %val, align 4
  %5 = ptrtoint ptr %clk_regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_regmap, align 8
  %call2 = call i32 @regmap_write(ptr noundef %6, i32 noundef 133404, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmc_irq_thread(i32 noundef %irq, ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %df = getelementptr inbounds %struct.exynos5_dmc, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %df to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %df, align 4
  %lock = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  tail call fastcc void @exynos5_dmc_perf_events_check(ptr noundef %priv)
  %2 = ptrtoint ptr %df to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %df, align 4
  %call = tail call i32 @update_devfreq(ptr noundef %3) #7
  %4 = ptrtoint ptr %df to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %df, align 4
  %lock3 = getelementptr inbounds %struct.devfreq, ptr %5, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.70, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos5_dmc_enable_perf_events(ptr nocapture noundef %dmc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %base_drexi0 = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 3
  %0 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_drexi0, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %base_drexi1 = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 4
  %2 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_drexi1, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_drexi0, align 8
  %add.ptr9 = getelementptr i8, ptr %5, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 1828716544) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_drexi1, align 4
  %add.ptr14 = getelementptr i8, ptr %7, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 1862270976) #7, !srcloc !199
  %call.i = tail call i64 @ktime_get() #7
  %last_overflow_ts = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 29
  %8 = ptrtoint ptr %last_overflow_ts to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i, ptr %last_overflow_ts, align 8
  %arrayidx16 = getelementptr %struct.exynos5_dmc, ptr %dmc, i32 0, i32 29, i32 1
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call.i, ptr %arrayidx16, align 8
  %load = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 30
  %10 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 99, ptr %load, align 8
  %total = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 31
  %11 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 100, ptr %total, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos5_performance_counters_init(ptr nocapture noundef %dmc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmc, align 8
  %call = tail call i32 @devfreq_event_get_edev_count(ptr noundef %1, ptr noundef nonnull @.str.78) #7
  %num_counters = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 28
  %2 = ptrtoint ptr %num_counters to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %num_counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.79) #10
  %5 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_counters, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %call, 1040
  %7 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmc, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %mul, i32 noundef 3520) #7
  %counter = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 27
  %9 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %counter, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %10 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1189 = icmp sgt i32 %11, 0
  br i1 %cmp1189, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.090, 1
  %12 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_counters, align 4
  %cmp11 = icmp slt i32 %inc, %13
  br i1 %cmp11, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmc, align 8
  %call13 = tail call ptr @devfreq_event_get_edev_by_phandle(ptr noundef %15, ptr noundef nonnull @.str.78, i32 noundef %i.090) #7
  %16 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %counter, align 8
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.090
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13, ptr %arrayidx, align 4
  %19 = load ptr, ptr %counter, align 8
  %arrayidx16 = getelementptr ptr, ptr %19, i32 %i.090
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx16, align 4
  %tobool.not.i = icmp eq ptr %21, null
  %cmp.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13.i = icmp sgt i32 %13, 0
  br i1 %cmp13.i, label %for.end.for.body.i_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %counter, align 8
  %arrayidx.i = getelementptr ptr, ptr %23, i32 %i.014.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i63 = icmp eq ptr %25, null
  br i1 %tobool.not.i63, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i64 = tail call i32 @devfreq_event_enable_edev(ptr noundef nonnull %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp3.i = icmp slt i32 %call.i64, 0
  br i1 %cmp3.i, label %do.end25, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %26 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_counters, align 4
  %cmp.i65 = icmp slt i32 %inc.i, %27
  br i1 %cmp.i65, label %for.inc.i.for.body.i_crit_edge, label %if.end27

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end25:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dmc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.82) #10
  br label %cleanup

if.end27:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp13.i67 = icmp sgt i32 %27, 0
  br i1 %cmp13.i67, label %if.end27.for.body.i73_crit_edge, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27.for.body.i73_crit_edge:                  ; preds = %if.end27
  br label %for.body.i73

for.body.i73:                                     ; preds = %for.inc.i79.for.body.i73_crit_edge, %if.end27.for.body.i73_crit_edge
  %i.014.i70 = phi i32 [ %inc.i77, %for.inc.i79.for.body.i73_crit_edge ], [ 0, %if.end27.for.body.i73_crit_edge ]
  %30 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %counter, align 8
  %arrayidx.i71 = getelementptr ptr, ptr %31, i32 %i.014.i70
  %32 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i71, align 4
  %tobool.not.i72 = icmp eq ptr %33, null
  br i1 %tobool.not.i72, label %for.body.i73.for.inc.i79_crit_edge, label %if.end.i76

for.body.i73.for.inc.i79_crit_edge:               ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i79

if.end.i76:                                       ; preds = %for.body.i73
  %call.i74 = tail call i32 @devfreq_event_set_event(ptr noundef nonnull %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp3.i75 = icmp slt i32 %call.i74, 0
  br i1 %cmp3.i75, label %if.then30, label %if.end.i76.for.inc.i79_crit_edge

if.end.i76.for.inc.i79_crit_edge:                 ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i79

for.inc.i79:                                      ; preds = %if.end.i76.for.inc.i79_crit_edge, %for.body.i73.for.inc.i79_crit_edge
  %inc.i77 = add nuw nsw i32 %i.014.i70, 1
  %34 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_counters, align 4
  %cmp.i78 = icmp slt i32 %inc.i77, %35
  br i1 %cmp.i78, label %for.inc.i79.for.body.i73_crit_edge, label %for.inc.i79.cleanup_crit_edge

for.inc.i79.cleanup_crit_edge:                    ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i79.for.body.i73_crit_edge:               ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i73

if.then30:                                        ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @exynos5_counters_disable_edev(ptr noundef %dmc)
  %36 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dmc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.33) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %for.inc.i79.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end25, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %6, %do.end ], [ %call.i64, %do.end25 ], [ %call.i74, %if.then30 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.i79.cleanup_crit_edge ], [ -517, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos5_dmc_start_perf_events(ptr nocapture noundef readonly %dmc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %base_drexi0 = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 3
  %0 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_drexi0, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 57392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %base_drexi1 = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 4
  %2 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_drexi1, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 57392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 67108864) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_drexi0, align 8
  %add.ptr7 = getelementptr i8, ptr %5, i32 57360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 67108992) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_drexi1, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 57360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 67108992) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_drexi0, align 8
  %add.ptr15 = getelementptr i8, ptr %9, i32 57424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 67108992) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_drexi1, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 57424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 67108992) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_drexi0, align 8
  %add.ptr23 = getelementptr i8, ptr %13, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 100663296) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_drexi1, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 100663296) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_drexi0, align 8
  %add.ptr31 = getelementptr i8, ptr %17, i32 57648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 255) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_drexi1, align 4
  %add.ptr35 = getelementptr i8, ptr %19, i32 57648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 255) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_drexi0, align 8
  %add.ptr39 = getelementptr i8, ptr %21, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 16777216) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_drexi1, align 4
  %add.ptr43 = getelementptr i8, ptr %23, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 16777216) #7, !srcloc !199
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos5_dmc_disable_perf_events(ptr nocapture noundef readonly %dmc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  tail call void @arm_heavy_mb() #7
  %base_drexi0 = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 3
  %0 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_drexi0, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  %base_drexi1 = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 4
  %2 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_drexi1, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_drexi0, align 8
  %add.ptr7 = getelementptr i8, ptr %5, i32 57408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 67108864) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_drexi1, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 57408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 67108864) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_drexi0, align 8
  %add.ptr15 = getelementptr i8, ptr %9, i32 57376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 67108992) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_drexi1, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 57376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 67108992) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_drexi0, align 8
  %add.ptr23 = getelementptr i8, ptr %13, i32 57424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 67108992) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_drexi1, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 57424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 67108992) #7, !srcloc !199
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos5_counters_disable_edev(ptr nocapture noundef readonly %dmc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_counters = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 28
  %0 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %counter = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %counter, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.02
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call i32 @devfreq_event_disable_edev(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.02, 1
  %6 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_counters, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_target(ptr nocapture noundef readonly %dev, ptr noundef %freq, i32 noundef %flags) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  %reg.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @devfreq_recommended_opp(ptr noundef %3, ptr noundef %freq, i32 noundef %flags) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %exynos5_dmc_get_volt_freq.exit, label %exynos5_dmc_get_volt_freq.exit.thread

exynos5_dmc_get_volt_freq.exit.thread:            ; preds = %entry
  %call3.i = tail call i32 @dev_pm_opp_get_freq(ptr noundef %call.i) #7
  %call4.i = tail call i32 @dev_pm_opp_get_voltage(ptr noundef %call.i) #7
  tail call void @dev_pm_opp_put(ptr noundef %call.i) #7
  %curr_rate = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr_rate, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %5)
  %cmp = icmp eq i32 %call3.i, %5
  br i1 %cmp, label %exynos5_dmc_get_volt_freq.exit.thread.cleanup_crit_edge, label %if.end3

exynos5_dmc_get_volt_freq.exit.thread.cleanup_crit_edge: ; preds = %exynos5_dmc_get_volt_freq.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

exynos5_dmc_get_volt_freq.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end3:                                          ; preds = %exynos5_dmc_get_volt_freq.exit.thread
  %lock = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %curr_volt.i.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %curr_volt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %curr_volt.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call4.i)
  %cmp.not.i.i.i = icmp ult i32 %8, %call4.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end3.if.end.i.i_crit_edge

if.end3.if.end.i.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.end3
  %vdd_mif.i.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %vdd_mif.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdd_mif.i.i.i, align 4
  %call.i.i.i = tail call i32 @regulator_set_voltage(ptr noundef %10, i32 noundef %call4.i, i32 noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then1.i.i.i, label %if.end.i.i.i.if.then6_crit_edge

if.end.i.i.i.if.then6_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %curr_volt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call4.i, ptr %curr_volt.i.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then1.i.i.i, %if.end3.if.end.i.i_crit_edge
  %opp_count.i.i.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %opp_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opp_count.i.i.i.i, align 4
  %opp.i.i.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 9
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %if.end.i.i
  %i.0.in.i.i.i.i = phi i32 [ %13, %if.end.i.i ], [ %i.0.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %i.0.i.i.i.i = add i32 %i.0.in.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %i.0.i.i.i.i, -1
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i, label %for.cond.i.i.i.i.if.then6_crit_edge

for.cond.i.i.i.i.if.then6_crit_edge:              ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %14 = ptrtoint ptr %opp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %opp.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.dmc_opp_table, ptr %15, i32 %i.0.i.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %cmp1.not.i.i.i.i = icmp ugt i32 %17, %call3.i
  br i1 %cmp1.not.i.i.i.i, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, label %if.end4.i.i

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i.i

if.end4.i.i:                                      ; preds = %for.body.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  tail call void @arm_heavy_mb() #7
  %base_drexi0.i.i.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %base_drexi0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_drexi0.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 771751936) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  tail call void @arm_heavy_mb() #7
  %bypass_timing_row.i.i.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %bypass_timing_row.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bypass_timing_row.i.i.i.i, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %23 = ptrtoint ptr %base_drexi0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_drexi0.i.i.i.i, align 8
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %24, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i, i32 %22) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %bypass_timing_row.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bypass_timing_row.i.i.i.i, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %base_drexi1.i.i.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %base_drexi1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_drexi1.i.i.i.i, align 4
  %add.ptr8.i.i.i.i = getelementptr i8, ptr %29, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i.i.i, i32 %27) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  tail call void @arm_heavy_mb() #7
  %bypass_timing_data.i.i.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 18
  %30 = ptrtoint ptr %bypass_timing_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bypass_timing_data.i.i.i.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %33 = ptrtoint ptr %base_drexi0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_drexi0.i.i.i.i, align 8
  %add.ptr12.i.i.i.i = getelementptr i8, ptr %34, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i.i.i, i32 %32) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %bypass_timing_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bypass_timing_data.i.i.i.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %38 = ptrtoint ptr %base_drexi1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_drexi1.i.i.i.i, align 4
  %add.ptr17.i.i.i.i = getelementptr i8, ptr %39, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i.i.i, i32 %37) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %bypass_timing_power.i.i.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 19
  %40 = ptrtoint ptr %bypass_timing_power.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bypass_timing_power.i.i.i.i, align 8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  %43 = ptrtoint ptr %base_drexi0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_drexi0.i.i.i.i, align 8
  %add.ptr21.i.i.i.i = getelementptr i8, ptr %44, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i.i.i, i32 %42) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %bypass_timing_power.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bypass_timing_power.i.i.i.i, align 8
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  %48 = ptrtoint ptr %base_drexi1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base_drexi1.i.i.i.i, align 4
  %add.ptr26.i.i.i.i = getelementptr i8, ptr %49, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i.i.i, i32 %47) #7, !srcloc !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #7
  %50 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %reg.i.i.i, align 4, !annotation !196
  %clk_regmap.i.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %clk_regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_regmap.i.i.i, align 8
  %call.i14.i.i = call i32 @regmap_read(ptr noundef %52, i32 noundef 133664, ptr noundef nonnull %reg.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i.i)
  %tobool.not.i15.i.i = icmp eq i32 %call.i14.i.i, 0
  br i1 %tobool.not.i15.i.i, label %if.end.i23, label %exynos5_dmc_switch_to_bypass_configuration.exit.i

exynos5_dmc_switch_to_bypass_configuration.exit.i: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #7
  br label %if.then6

if.end.i23:                                       ; preds = %if.end4.i.i
  %53 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg.i.i.i, align 4
  %storemerge.i.i.i = or i32 %54, 268435456
  store i32 %storemerge.i.i.i, ptr %reg.i.i.i, align 4
  %55 = ptrtoint ptr %clk_regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_regmap.i.i.i, align 8
  %call5.i.i.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 133664, i32 noundef %storemerge.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #7
  %fout_spll.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 21
  %57 = ptrtoint ptr %fout_spll.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fout_spll.i, align 8
  %call.i.i = call i32 @clk_prepare(ptr noundef %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i46.i, label %if.end.i23.clk_prepare_enable.exit.i_crit_edge

if.end.i23.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.end.i46.i:                                     ; preds = %if.end.i23
  %call1.i.i = call i32 @clk_enable(ptr noundef %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i46.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i46.i.clk_prepare_enable.exit.i_crit_edge: ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %58) #7
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i46.i.clk_prepare_enable.exit.i_crit_edge, %if.end.i23.clk_prepare_enable.exit.i_crit_edge
  %mout_spll.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 23
  %59 = ptrtoint ptr %mout_spll.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mout_spll.i, align 8
  %call.i47.i = call i32 @clk_prepare(ptr noundef %60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i48.i, label %if.end.i51.i, label %clk_prepare_enable.exit.i.clk_prepare_enable.exit53.i_crit_edge

clk_prepare_enable.exit.i.clk_prepare_enable.exit53.i_crit_edge: ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit53.i

if.end.i51.i:                                     ; preds = %clk_prepare_enable.exit.i
  %call1.i49.i = call i32 @clk_enable(ptr noundef %60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49.i)
  %tobool2.not.i50.i = icmp eq i32 %call1.i49.i, 0
  br i1 %tobool2.not.i50.i, label %if.end.i51.i.clk_prepare_enable.exit53.i_crit_edge, label %if.then3.i52.i

if.end.i51.i.clk_prepare_enable.exit53.i_crit_edge: ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit53.i

if.then3.i52.i:                                   ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %60) #7
  br label %clk_prepare_enable.exit53.i

clk_prepare_enable.exit53.i:                      ; preds = %if.then3.i52.i, %if.end.i51.i.clk_prepare_enable.exit53.i_crit_edge, %clk_prepare_enable.exit.i.clk_prepare_enable.exit53.i_crit_edge
  %mout_mx_mspll_ccore.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 26
  %61 = ptrtoint ptr %mout_mx_mspll_ccore.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mout_mx_mspll_ccore.i, align 4
  %call.i54.i = call i32 @clk_prepare(ptr noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool.not.i55.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool.not.i55.i, label %if.end.i58.i, label %clk_prepare_enable.exit53.i.clk_prepare_enable.exit60.i_crit_edge

clk_prepare_enable.exit53.i.clk_prepare_enable.exit60.i_crit_edge: ; preds = %clk_prepare_enable.exit53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit60.i

if.end.i58.i:                                     ; preds = %clk_prepare_enable.exit53.i
  %call1.i56.i = call i32 @clk_enable(ptr noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i)
  %tobool2.not.i57.i = icmp eq i32 %call1.i56.i, 0
  br i1 %tobool2.not.i57.i, label %if.end.i58.i.clk_prepare_enable.exit60.i_crit_edge, label %if.then3.i59.i

if.end.i58.i.clk_prepare_enable.exit60.i_crit_edge: ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit60.i

if.then3.i59.i:                                   ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %62) #7
  br label %clk_prepare_enable.exit60.i

clk_prepare_enable.exit60.i:                      ; preds = %if.then3.i59.i, %if.end.i58.i.clk_prepare_enable.exit60.i_crit_edge, %clk_prepare_enable.exit53.i.clk_prepare_enable.exit60.i_crit_edge
  %mout_mclk_cdrex.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 25
  %63 = ptrtoint ptr %mout_mclk_cdrex.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mout_mclk_cdrex.i, align 8
  %65 = ptrtoint ptr %mout_mx_mspll_ccore.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mout_mx_mspll_ccore.i, align 4
  %call5.i = call i32 @clk_set_parent(ptr noundef %64, ptr noundef %66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %clk_prepare_enable.exit60.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge

clk_prepare_enable.exit60.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge: ; preds = %clk_prepare_enable.exit60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_change_freq_and_volt.exit

if.end8.i:                                        ; preds = %clk_prepare_enable.exit60.i
  %67 = ptrtoint ptr %opp_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %opp_count.i.i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end8.i
  %idx.0.in.i.i = phi i32 [ %68, %if.end8.i ], [ %idx.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %idx.0.i.i = add i32 %idx.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.0.i.i)
  %cmp.i.i24 = icmp sgt i32 %idx.0.i.i, -1
  br i1 %cmp.i.i24, label %for.body.i.i, label %for.cond.i.i.exynos5_dram_change_timings.exit.i_crit_edge

for.cond.i.i.exynos5_dram_change_timings.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dram_change_timings.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %69 = ptrtoint ptr %opp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %opp.i.i.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.dmc_opp_table, ptr %70, i32 %idx.0.i.i
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i, align 4
  %cmp1.not.i.i = icmp ugt i32 %72, %call3.i
  br i1 %cmp1.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %do.body.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %base_drexi0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base_drexi0.i.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 771751936) #7, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  call void @arm_heavy_mb() #7
  %timing_row.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 12
  %75 = ptrtoint ptr %timing_row.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %timing_row.i.i, align 4
  %arrayidx8.i.i = getelementptr i32, ptr %76, i32 %idx.0.i.i
  %77 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx8.i.i, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #7
  %80 = ptrtoint ptr %base_drexi0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base_drexi0.i.i.i.i, align 8
  %add.ptr10.i.i = getelementptr i8, ptr %81, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %79) #7, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  call void @arm_heavy_mb() #7
  %82 = ptrtoint ptr %timing_row.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %timing_row.i.i, align 4
  %arrayidx15.i.i = getelementptr i32, ptr %83, i32 %idx.0.i.i
  %84 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx15.i.i, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #7
  %87 = ptrtoint ptr %base_drexi1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base_drexi1.i.i.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %88, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %86) #7, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  call void @arm_heavy_mb() #7
  %timing_data.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 13
  %89 = ptrtoint ptr %timing_data.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %timing_data.i.i, align 8
  %arrayidx20.i.i = getelementptr i32, ptr %90, i32 %idx.0.i.i
  %91 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx20.i.i, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92) #7
  %94 = ptrtoint ptr %base_drexi0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base_drexi0.i.i.i.i, align 8
  %add.ptr22.i.i = getelementptr i8, ptr %95, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 %93) #7, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %timing_data.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %timing_data.i.i, align 8
  %arrayidx27.i.i = getelementptr i32, ptr %97, i32 %idx.0.i.i
  %98 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx27.i.i, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %99) #7
  %101 = ptrtoint ptr %base_drexi1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base_drexi1.i.i.i.i, align 4
  %add.ptr29.i.i = getelementptr i8, ptr %102, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i.i, i32 %100) #7, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  call void @arm_heavy_mb() #7
  %timing_power.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 14
  %103 = ptrtoint ptr %timing_power.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %timing_power.i.i, align 4
  %arrayidx33.i.i = getelementptr i32, ptr %104, i32 %idx.0.i.i
  %105 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx33.i.i, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #7
  %108 = ptrtoint ptr %base_drexi0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base_drexi0.i.i.i.i, align 8
  %add.ptr35.i.i = getelementptr i8, ptr %109, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i.i, i32 %107) #7, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  call void @arm_heavy_mb() #7
  %110 = ptrtoint ptr %timing_power.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %timing_power.i.i, align 4
  %arrayidx40.i.i = getelementptr i32, ptr %111, i32 %idx.0.i.i
  %112 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx40.i.i, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113) #7
  %115 = ptrtoint ptr %base_drexi1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base_drexi1.i.i.i.i, align 4
  %add.ptr42.i.i = getelementptr i8, ptr %116, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i.i, i32 %114) #7, !srcloc !199
  br label %exynos5_dram_change_timings.exit.i

exynos5_dram_change_timings.exit.i:               ; preds = %do.body.i.i, %for.cond.i.i.exynos5_dram_change_timings.exit.i_crit_edge
  %fout_bpll.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 22
  %117 = ptrtoint ptr %fout_bpll.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fout_bpll.i, align 4
  %call10.i = call i32 @clk_set_rate(ptr noundef %118, i32 noundef %call3.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #7
  %119 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !196
  %120 = ptrtoint ptr %clk_regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %clk_regmap.i.i.i, align 8
  %call.i61.i = call i32 @regmap_read(ptr noundef %121, i32 noundef 133664, ptr noundef nonnull %reg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool.not.i62.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool.not.i62.i, label %if.end14.i, label %exynos5_switch_timing_regs.exit.i

exynos5_switch_timing_regs.exit.i:                ; preds = %exynos5_dram_change_timings.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  br label %exynos5_dmc_change_freq_and_volt.exit

if.end14.i:                                       ; preds = %exynos5_dram_change_timings.exit.i
  %122 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %reg.i.i, align 4
  %and.i.i = and i32 %123, -268435457
  store i32 %and.i.i, ptr %reg.i.i, align 4
  %124 = ptrtoint ptr %clk_regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %clk_regmap.i.i.i, align 8
  %call5.i.i = call i32 @regmap_write(ptr noundef %125, i32 noundef 133664, i32 noundef %and.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  %126 = ptrtoint ptr %mout_mclk_cdrex.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mout_mclk_cdrex.i, align 8
  %mout_bpll.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 24
  %128 = ptrtoint ptr %mout_bpll.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mout_bpll.i, align 4
  %call16.i = call i32 @clk_set_parent(ptr noundef %127, ptr noundef %129) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end14.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge

if.end14.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_change_freq_and_volt.exit

if.end19.i:                                       ; preds = %if.end14.i
  %130 = ptrtoint ptr %curr_volt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %curr_volt.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %call4.i)
  %cmp.not.i.i = icmp ugt i32 %131, %call4.i
  br i1 %cmp.not.i.i, label %if.end.i66.i, label %if.end19.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge

if.end19.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_change_freq_and_volt.exit

if.end.i66.i:                                     ; preds = %if.end19.i
  %vdd_mif.i.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 20
  %132 = ptrtoint ptr %vdd_mif.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %vdd_mif.i.i, align 4
  %call.i64.i = call i32 @regulator_set_voltage(ptr noundef %133, i32 noundef %call4.i, i32 noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %tobool.not.i65.i = icmp eq i32 %call.i64.i, 0
  br i1 %tobool.not.i65.i, label %if.then1.i.i, label %if.end.i66.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge

if.end.i66.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge: ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_dmc_change_freq_and_volt.exit

if.then1.i.i:                                     ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %curr_volt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call4.i, ptr %curr_volt.i.i.i, align 4
  br label %exynos5_dmc_change_freq_and_volt.exit

exynos5_dmc_change_freq_and_volt.exit:            ; preds = %if.then1.i.i, %if.end.i66.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge, %if.end19.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge, %if.end14.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge, %exynos5_switch_timing_regs.exit.i, %clk_prepare_enable.exit60.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %clk_prepare_enable.exit60.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge ], [ %call.i61.i, %exynos5_switch_timing_regs.exit.i ], [ %call16.i, %if.end14.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge ], [ 0, %if.end19.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge ], [ 0, %if.then1.i.i ], [ %call.i64.i, %if.end.i66.i.exynos5_dmc_change_freq_and_volt.exit_crit_edge ]
  %135 = ptrtoint ptr %mout_mx_mspll_ccore.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mout_mx_mspll_ccore.i, align 4
  call void @clk_disable(ptr noundef %136) #7
  call void @clk_unprepare(ptr noundef %136) #7
  %137 = ptrtoint ptr %mout_spll.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mout_spll.i, align 8
  call void @clk_disable(ptr noundef %138) #7
  call void @clk_unprepare(ptr noundef %138) #7
  %139 = ptrtoint ptr %fout_spll.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fout_spll.i, align 8
  call void @clk_disable(ptr noundef %140) #7
  call void @clk_unprepare(ptr noundef %140) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool5.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool5.not, label %if.end8, label %exynos5_dmc_change_freq_and_volt.exit.if.then6_crit_edge

exynos5_dmc_change_freq_and_volt.exit.if.then6_crit_edge: ; preds = %exynos5_dmc_change_freq_and_volt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %exynos5_dmc_change_freq_and_volt.exit.if.then6_crit_edge, %exynos5_dmc_switch_to_bypass_configuration.exit.i, %for.cond.i.i.i.i.if.then6_crit_edge, %if.end.i.i.i.if.then6_crit_edge
  %retval.0.i2539 = phi i32 [ %ret.0.i, %exynos5_dmc_change_freq_and_volt.exit.if.then6_crit_edge ], [ %call.i.i.i, %if.end.i.i.i.if.then6_crit_edge ], [ %call.i14.i.i, %exynos5_dmc_switch_to_bypass_configuration.exit.i ], [ -22, %for.cond.i.i.i.i.if.then6_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end8:                                          ; preds = %exynos5_dmc_change_freq_and_volt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call3.i, ptr %curr_rate, align 8
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %exynos5_dmc_get_volt_freq.exit, %exynos5_dmc_get_volt_freq.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i2539, %if.then6 ], [ 0, %if.end8 ], [ %6, %exynos5_dmc_get_volt_freq.exit ], [ 0, %exynos5_dmc_get_volt_freq.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_get_status(ptr noundef %dev, ptr nocapture noundef writeonly %stat) #2 align 64 {
entry:
  %event.i = alloca %struct.devfreq_event_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_irq_mode = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %in_irq_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_irq_mode, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %curr_rate = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr_rate, align 8
  %current_frequency = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 2
  %6 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %current_frequency, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %load2 = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %load2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %load2, align 8
  %busy_time = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 1
  %9 = ptrtoint ptr %busy_time to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %busy_time, align 4
  %total3 = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %total3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total3, align 4
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %stat, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event.i) #7
  %13 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %event.i, align 4, !annotation !196
  %14 = getelementptr inbounds %struct.devfreq_event_data, ptr %event.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !196
  %num_counters.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 28
  %16 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp25.i = icmp sgt i32 %17, 0
  br i1 %cmp25.i, label %for.body.lr.ph.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.else
  %counter.i = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 27
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %load.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %load.1, %for.inc.i.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %total.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %total.1.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %counter.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %i.027.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = call i32 @devfreq_event_get_event(ptr noundef nonnull %21, ptr noundef nonnull %event.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %exynos5_counters_get.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event.i, align 4
  %add.i = add i32 %23, %load.0
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %14, align 4
  %26 = call i32 @llvm.umax.i32(i32 %total.026.i, i32 %25) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i, %for.body.i.for.inc.i_crit_edge
  %load.1 = phi i32 [ %load.0, %for.body.i.for.inc.i_crit_edge ], [ %add.i, %if.end5.i ]
  %total.1.i = phi i32 [ %total.026.i, %for.body.i.for.inc.i_crit_edge ], [ %26, %if.end5.i ]
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %27 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_counters.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %28
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

exynos5_counters_get.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event.i) #7
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.else.if.end_crit_edge
  %load.3.ph = phi i32 [ 0, %if.else.if.end_crit_edge ], [ %load.1, %for.inc.i.if.end_crit_edge ]
  %total.0.ph = phi i32 [ 0, %if.else.if.end_crit_edge ], [ %total.1.i, %for.inc.i.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event.i) #7
  %shr = lshr i32 %load.3.ph, 10
  %busy_time6 = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 1
  %29 = ptrtoint ptr %busy_time6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr, ptr %busy_time6, align 4
  %shr7 = lshr i32 %total.0.ph, 10
  %30 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr7, ptr %stat, align 4
  %31 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp13.i = icmp sgt i32 %32, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i33, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i33:                               ; preds = %if.end
  %counter.i32 = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 27
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.inc.i42.for.body.i36_crit_edge, %for.body.lr.ph.i33
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i33 ], [ %inc.i40, %for.inc.i42.for.body.i36_crit_edge ]
  %33 = ptrtoint ptr %counter.i32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %counter.i32, align 8
  %arrayidx.i34 = getelementptr ptr, ptr %34, i32 %i.014.i
  %35 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i34, align 4
  %tobool.not.i35 = icmp eq ptr %36, null
  br i1 %tobool.not.i35, label %for.body.i36.for.inc.i42_crit_edge, label %if.end.i39

for.body.i36.for.inc.i42_crit_edge:               ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i42

if.end.i39:                                       ; preds = %for.body.i36
  %call.i37 = call i32 @devfreq_event_set_event(ptr noundef nonnull %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp3.i38 = icmp slt i32 %call.i37, 0
  br i1 %cmp3.i38, label %do.end, label %if.end.i39.for.inc.i42_crit_edge

if.end.i39.for.inc.i42_crit_edge:                 ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i42

for.inc.i42:                                      ; preds = %if.end.i39.for.inc.i42_crit_edge, %for.body.i36.for.inc.i42_crit_edge
  %inc.i40 = add nuw nsw i32 %i.014.i, 1
  %37 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_counters.i, align 4
  %cmp.i41 = icmp slt i32 %inc.i40, %38
  br i1 %cmp.i41, label %for.inc.i42.for.body.i36_crit_edge, label %for.inc.i42.cleanup_crit_edge

for.inc.i42.cleanup_crit_edge:                    ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i42.for.body.i36_crit_edge:               ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i36

do.end:                                           ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc.i42.cleanup_crit_edge, %if.end.cleanup_crit_edge, %exynos5_counters_get.exit, %if.then
  %retval.0 = phi i32 [ %call.i37, %do.end ], [ -22, %exynos5_counters_get.exit ], [ 0, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.i42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_get_cur_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %curr_rate = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_rate, align 8
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %freq, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_get_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_set_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_lpddr3_get_ddr_timings(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_lpddr3_get_min_tck(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos5_dmc_perf_events_check(ptr nocapture noundef %dmc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  tail call void @arm_heavy_mb() #7
  %base_drexi0 = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 3
  %0 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_drexi0, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %base_drexi1 = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 4
  %2 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_drexi1, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #7, !srcloc !199
  %4 = ptrtoint ptr %base_drexi0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_drexi0, align 8
  %add.ptr6 = getelementptr i8, ptr %5, i32 57424
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !239
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %last_overflow_ts = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 29
  %8 = ptrtoint ptr %last_overflow_ts to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %last_overflow_ts, align 8
  store i64 %call.i, ptr %last_overflow_ts, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_dmc_perf_events_check.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos5_dmc_perf_events_check, %if.then17)) #7
          to label %if.end49 [label %if.then17], !srcloc !241

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_dmc_perf_events_check.__UNIQUE_ID_ddebug291, ptr noundef %11, ptr noundef nonnull @.str.74, i32 noundef %7) #7
  br label %if.end49

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %base_drexi1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_drexi1, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 57424
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  %arrayidx28 = getelementptr %struct.exynos5_dmc, ptr %dmc, i32 0, i32 29, i32 1
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx28, align 8
  store i64 %call.i, ptr %arrayidx28, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_dmc_perf_events_check.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos5_dmc_perf_events_check, %if.then44)) #7
          to label %if.end49 [label %if.then44], !srcloc !241

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %14)
  %18 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_dmc_perf_events_check.__UNIQUE_ID_ddebug292, ptr noundef %19, ptr noundef nonnull @.str.75, i32 noundef %17) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.else, %if.then17, %if.then
  %.pn = phi i64 [ %9, %if.then17 ], [ %16, %if.then44 ], [ %9, %if.then ], [ %16, %if.else ]
  %diff_ts.0 = sub i64 %call.i, %.pn
  call void @__sanitizer_cov_trace_const_cmp8(i64 900000000, i64 %diff_ts.0)
  %cmp.i = icmp ult i64 %diff_ts.0, 900000000
  %spec.select.i = select i1 %cmp.i, i32 70, i32 35
  %20 = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 30
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.i, ptr %20, align 8
  %22 = getelementptr inbounds %struct.exynos5_dmc, ptr %dmc, i32 0, i32 31
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 100, ptr %22, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_dmc_perf_events_calc.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos5_dmc_perf_events_check, %if.then5.i)) #7
          to label %exynos5_dmc_perf_events_calc.exit [label %if.then5.i], !srcloc !241

if.then5.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dmc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dmc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_dmc_perf_events_calc.__UNIQUE_ID_ddebug290, ptr noundef %25, ptr noundef nonnull @.str.77, i64 noundef %diff_ts.0) #7
  br label %exynos5_dmc_perf_events_calc.exit

exynos5_dmc_perf_events_calc.exit:                ; preds = %if.then5.i, %if.end49
  tail call fastcc void @exynos5_dmc_start_perf_events(ptr noundef %dmc)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_devfreq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_get_edev_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_event_get_edev_by_phandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_enable_edev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_disable_edev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @__param_irqmode, !1, !"__param_irqmode", i1 false, i1 false}
!1 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_irqmodetype288, !1, !"__UNIQUE_ID_irqmodetype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_irqmode289, !4, !"__UNIQUE_ID_irqmode289", i1 false, i1 false}
!4 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 27, i32 1}
!5 = !{ptr @__initcall__kmod_exynos5422_dmc__331_1584_exynos5_dmc_platdrv_init6, !6, !"__initcall__kmod_exynos5422_dmc__331_1584_exynos5_dmc_platdrv_init6", i1 false, i1 false}
!6 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1584, i32 1}
!7 = !{ptr @__exitcall_exynos5_dmc_platdrv_exit, !6, !"__exitcall_exynos5_dmc_platdrv_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description332, !9, !"__UNIQUE_ID_description332", i1 false, i1 false}
!9 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1585, i32 1}
!10 = !{ptr @__UNIQUE_ID_file333, !11, !"__UNIQUE_ID_file333", i1 false, i1 false}
!11 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1586, i32 1}
!12 = !{ptr @__UNIQUE_ID_license334, !11, !"__UNIQUE_ID_license334", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author335, !14, !"__UNIQUE_ID_author335", i1 false, i1 false}
!14 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1587, i32 1}
!15 = !{ptr @irqmode, !16, !"irqmode", i1 false, i1 false}
!16 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 25, i32 12}
!17 = !{ptr @__param_str_irqmode, !1, !"__param_str_irqmode", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1580, i32 11}
!20 = !{ptr @exynos5_dmc_platdrv, !21, !"exynos5_dmc_platdrv", i1 false, i1 false}
!21 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1576, i32 31}
!22 = !{ptr @exynos5_dmc_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1426, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1440, i32 10}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1446, i32 3}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @exynos5_dmc_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @exynos5_dmc_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1450, i32 41}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1462, i32 3}
!39 = !{ptr @exynos5_dmc_probe._entry.9, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @exynos5_dmc_probe._entry_ptr.11, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1468, i32 3}
!43 = !{ptr @exynos5_dmc_probe._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @exynos5_dmc_probe._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1473, i32 41}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1474, i32 41}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1480, i32 4}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @exynos5_dmc_probe._entry.17, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @exynos5_dmc_probe._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @exynos5_dmc_probe._entry.21, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1488, i32 4}
!56 = !{ptr @exynos5_dmc_probe._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1505, i32 4}
!59 = !{ptr @exynos5_dmc_probe._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @exynos5_dmc_probe._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1520, i32 8}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1531, i32 2}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @exynos5_dmc_probe._entry.27, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @exynos5_dmc_probe._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 348, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @exynos5_init_freq_table._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @exynos5_init_freq_table._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @exynos5_dmc_df_profile, !74, !"exynos5_dmc_df_profile", i1 false, i1 false}
!74 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 988, i32 35}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 955, i32 4}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @exynos5_dmc_get_status._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @exynos5_dmc_get_status._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1254, i32 42}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1258, i32 42}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1262, i32 48}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1266, i32 42}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1271, i32 7}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1275, i32 42}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1277, i32 43}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1182, i32 47}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1184, i32 3}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @of_get_dram_timings._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @of_get_dram_timings._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1208, i32 3}
!103 = !{ptr @of_get_dram_timings._entry.45, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @of_get_dram_timings._entry_ptr.47, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1215, i32 3}
!107 = !{ptr @of_get_dram_timings._entry.48, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @of_get_dram_timings._entry_ptr.50, !106, !"_entry_ptr", i1 false, i1 false}
!109 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 207, i32 2}
!111 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 208, i32 2}
!113 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 209, i32 2}
!115 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 210, i32 2}
!117 = distinct !{null, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 211, i32 2}
!119 = distinct !{null, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 212, i32 2}
!121 = distinct !{null, !122, !"timing_row_reg_fields", i1 false, i1 false}
!122 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 206, i32 32}
!123 = distinct !{null, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 216, i32 2}
!125 = distinct !{null, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 217, i32 2}
!127 = distinct !{null, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 218, i32 2}
!129 = distinct !{null, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 219, i32 2}
!131 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 220, i32 2}
!133 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 221, i32 2}
!135 = distinct !{null, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 222, i32 2}
!137 = distinct !{null, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 223, i32 2}
!139 = distinct !{null, !140, !"timing_data_reg_fields", i1 false, i1 false}
!140 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 215, i32 32}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 227, i32 2}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 228, i32 2}
!145 = distinct !{null, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 229, i32 2}
!147 = distinct !{null, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 230, i32 2}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 231, i32 2}
!151 = distinct !{null, !152, !"timing_power_reg_fields", i1 false, i1 false}
!152 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 226, i32 32}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1399, i32 3}
!155 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @dmc_irq_thread._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @dmc_irq_thread._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 856, i32 3}
!160 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @exynos5_dmc_perf_events_check.__UNIQUE_ID_ddebug291, !159, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 861, i32 3}
!165 = !{ptr @exynos5_dmc_perf_events_check.__UNIQUE_ID_ddebug292, !164, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 830, i32 2}
!168 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @exynos5_dmc_perf_events_calc.__UNIQUE_ID_ddebug290, !167, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1329, i32 8}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1331, i32 3}
!174 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @exynos5_performance_counters_init._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @exynos5_performance_counters_init._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1350, i32 3}
!179 = !{ptr @exynos5_performance_counters_init._entry.81, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @exynos5_performance_counters_init._entry_ptr.83, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @exynos5_performance_counters_init._entry.84, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1357, i32 3}
!183 = !{ptr @exynos5_performance_counters_init._entry_ptr.85, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @exynos5_dmc_of_match, !185, !"exynos5_dmc_of_match", i1 false, i1 false}
!185 = !{!"../drivers/memory/samsung/exynos5422-dmc.c", i32 1570, i32 34}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{!"auto-init"}
!197 = !{i8 0, i8 2}
!198 = !{i64 2155251105}
!199 = !{i64 4985390}
!200 = !{i64 2155251701}
!201 = !{i64 2155252201}
!202 = !{i64 2155252638}
!203 = !{i64 2155234294}
!204 = !{i64 2155234890}
!205 = !{i64 2155235601}
!206 = !{i64 2155236405}
!207 = !{i64 2155237209}
!208 = !{i64 2155238013}
!209 = !{i64 2155238814}
!210 = !{i64 2155239612}
!211 = !{i64 2155240198}
!212 = !{i64 2155240640}
!213 = !{i64 2155241182}
!214 = !{i64 2155241778}
!215 = !{i64 2155253063}
!216 = !{i64 2155253473}
!217 = !{i64 2155253991}
!218 = !{i64 2155254587}
!219 = !{i64 2155255298}
!220 = !{i64 2155256102}
!221 = !{i64 2155256906}
!222 = !{i64 2155257710}
!223 = !{i64 2155227344}
!224 = !{i64 2155227790}
!225 = !{i64 2155228284}
!226 = !{i64 2155228779}
!227 = !{i64 2155229277}
!228 = !{i64 2155229776}
!229 = !{i64 2155230278}
!230 = !{i64 2155230772}
!231 = !{i64 2155231216}
!232 = !{i64 2155231702}
!233 = !{i64 2155232189}
!234 = !{i64 2155232679}
!235 = !{i64 2155233170}
!236 = !{i64 2155233664}
!237 = !{i64 2155244490}
!238 = !{i64 2155244900}
!239 = !{i64 4985808}
!240 = !{i64 2155245614}
!241 = !{i64 2148767753, i64 2148767758, i64 2148767771, i64 2148767815, i64 2148767849, i64 2148767870}
!242 = !{i64 2155248452}
