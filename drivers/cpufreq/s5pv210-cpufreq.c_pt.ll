; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/s5pv210-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/s5pv210-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.s5pv210_dvs_conf = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_s5pv210_cpufreq__302_687_s5pv210_cpufreq_platdrv_init6 = internal global ptr @s5pv210_cpufreq_platdrv_init, section ".initcall6.init", align 4
@s5pv210_cpufreq_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s5pv210_cpufreq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5pv210-cpufreq\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddarm\00", [25 x i8] zeroinitializer }, align 32
@arm_regulator = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get regulator vddarm\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddint\00", [25 x i8] zeroinitializer }, align 32
@int_regulator = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get regulator vddint\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung,s5pv210-clock\00", [42 x i8] zeroinitializer }, align 32
@s5pv210_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 619, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to find clock controller DT node\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5pv210_cpufreq_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/cpufreq/s5pv210-cpufreq.c\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5pv210_cpufreq_probe._entry_ptr = internal global ptr @s5pv210_cpufreq_probe._entry, section ".printk_index", align 4
@clk_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@s5pv210_cpufreq_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 627, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to map clock registers\0A\00", [33 x i8] zeroinitializer }, align 32
@s5pv210_cpufreq_probe._entry_ptr.13 = internal global ptr @s5pv210_cpufreq_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,s5pv210-dmc\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dmc\00", [28 x i8] zeroinitializer }, align 32
@s5pv210_cpufreq_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.8, i32 635, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get alias of dmc node '%pOFn'\0A\00", [55 x i8] zeroinitializer }, align 32
@s5pv210_cpufreq_probe._entry_ptr.18 = internal global ptr @s5pv210_cpufreq_probe._entry.16, section ".printk_index", align 4
@dmc_base = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@s5pv210_cpufreq_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.8, i32 643, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to map dmc%d registers\0A\00", [33 x i8] zeroinitializer }, align 32
@s5pv210_cpufreq_probe._entry_ptr.21 = internal global ptr @s5pv210_cpufreq_probe._entry.19, section ".printk_index", align 4
@s5pv210_cpufreq_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.8, i32 652, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to find dmc%d node\0A\00", [37 x i8] zeroinitializer }, align 32
@s5pv210_cpufreq_probe._entry_ptr.24 = internal global ptr @s5pv210_cpufreq_probe._entry.22, section ".printk_index", align 4
@s5pv210_cpufreq_reboot_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @s5pv210_cpufreq_reboot_notifier_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@s5pv210_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"s5pv210\00\00\00\00\00\00\00\00\00", i16 32, ptr null, ptr @s5pv210_cpu_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @s5pv210_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_suspend, ptr @cpufreq_generic_suspend, ptr null, ptr null, i8 0, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@s5pv210_cpufreq_reboot_notifier_event.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.8, ptr @.str.27, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5pv210_cpufreq\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"s5pv210_cpufreq_reboot_notifier_event\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cpufreq: get no policy for cpu0\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"s5pv210_cpufreq: cpufreq: get no policy for cpu0\0A\00", [46 x i8] zeroinitializer }, align 32
@no_cpufreq_access = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armclk\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_dmc0\00", [22 x i8] zeroinitializer }, align 32
@dmc0_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_msys\00", [22 x i8] zeroinitializer }, align 32
@dmc1_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@s5pv210_cpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.8, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013s5pv210_cpufreq: CPUFreq doesn't support this memory type\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5pv210_cpu_init\00", [47 x i8] zeroinitializer }, align 32
@s5pv210_cpu_init._entry_ptr = internal global ptr @s5pv210_cpu_init._entry, section ".printk_index", align 4
@s5pv210_dram_conf.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@s5pv210_dram_conf.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@s5pv210_dram_conf.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@s5pv210_dram_conf.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@s5pv210_freq_table = internal global { [6 x %struct.cpufreq_frequency_table], [56 x i8] } { [6 x %struct.cpufreq_frequency_table] [%struct.cpufreq_frequency_table { i32 0, i32 0, i32 1000000 }, %struct.cpufreq_frequency_table { i32 0, i32 1, i32 800000 }, %struct.cpufreq_frequency_table { i32 0, i32 2, i32 400000 }, %struct.cpufreq_frequency_table { i32 0, i32 3, i32 200000 }, %struct.cpufreq_frequency_table { i32 0, i32 4, i32 100000 }, %struct.cpufreq_frequency_table { i32 0, i32 0, i32 -2 }], [56 x i8] zeroinitializer }, align 32
@set_freq_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @set_freq_lock, i64 52), ptr getelementptr (i8, ptr @set_freq_lock, i64 52) }, ptr @set_freq_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@s5pv210_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.8, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013s5pv210_cpufreq: Denied access to %s as it is disabled temporarily\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5pv210_target\00", [17 x i8] zeroinitializer }, align 32
@s5pv210_target._entry_ptr = internal global ptr @s5pv210_target._entry, section ".printk_index", align 4
@dvs_conf = internal constant { [5 x %struct.s5pv210_dvs_conf], [56 x i8] } { [5 x %struct.s5pv210_dvs_conf] [%struct.s5pv210_dvs_conf { i32 1250000, i32 1100000 }, %struct.s5pv210_dvs_conf { i32 1200000, i32 1100000 }, %struct.s5pv210_dvs_conf { i32 1050000, i32 1100000 }, %struct.s5pv210_dvs_conf { i32 950000, i32 1100000 }, %struct.s5pv210_dvs_conf { i32 950000, i32 1000000 }], [56 x i8] zeroinitializer }, align 32
@clkdiv_val = internal constant { [5 x [11 x i32]], [36 x i8] } { [5 x [11 x i32]] [[11 x i32] [i32 0, i32 4, i32 4, i32 1, i32 3, i32 1, i32 4, i32 1, i32 3, i32 0, i32 0], [11 x i32] [i32 0, i32 3, i32 3, i32 1, i32 3, i32 1, i32 4, i32 1, i32 3, i32 0, i32 0], [11 x i32] [i32 1, i32 3, i32 1, i32 1, i32 3, i32 1, i32 4, i32 1, i32 3, i32 0, i32 0], [11 x i32] [i32 3, i32 3, i32 1, i32 1, i32 3, i32 1, i32 4, i32 1, i32 3, i32 0, i32 0], [11 x i32] [i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 9, i32 0, i32 7, i32 0, i32 0]], [36 x i8] zeroinitializer }, align 32
@s5pv210_target.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.35, ptr @.str.8, ptr @.str.36, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Perf changed[L%d]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"s5pv210_cpufreq: Perf changed[L%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set_freq_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_freq_lock\00", [18 x i8] zeroinitializer }, align 32
@s5pv210_set_refresh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.8, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013s5pv210_cpufreq: Cannot find DMC port\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5pv210_set_refresh\00", [44 x i8] zeroinitializer }, align 32
@s5pv210_set_refresh._entry_ptr = internal global ptr @s5pv210_set_refresh._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"s5pv210_cpufreq_platdrv\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 681, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 683, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 605, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"arm_regulator\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 133, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 608, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 610, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"int_regulator\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 134, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 613, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 617, i32 43 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 619, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [9 x i8] c"clk_base\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 24, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 627, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 632, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 633, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 635, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [9 x i8] c"dmc_base\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 25, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 643, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 652, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [32 x i8] c"s5pv210_cpufreq_reboot_notifier\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 587, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"s5pv210_driver\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 576, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 562, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"no_cpufreq_access\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 503, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 507, i32 27 }
@___asan_gen_.149 = private unnamed_addr constant [9 x i8] c"dmc0_clk\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 83, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 513, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant [9 x i8] c"dmc1_clk\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 84, i32 20 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 531, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"s5pv210_dram_conf.0\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"s5pv210_dram_conf.1\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"s5pv210_dram_conf.2\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c"s5pv210_dram_conf.3\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"s5pv210_freq_table\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 124, i32 39 }
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"set_freq_lock\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 236, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [9 x i8] c"dvs_conf\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 144, i32 32 }
@___asan_gen_.189 = private unnamed_addr constant [11 x i8] c"clkdiv_val\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 167, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 481, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 85, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [37 x i8] c"../drivers/cpufreq/s5pv210-cpufreq.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 207, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__initcall__kmod_s5pv210_cpufreq__302_687_s5pv210_cpufreq_platdrv_init6, ptr @s5pv210_cpu_init._entry, ptr @s5pv210_cpu_init._entry_ptr, ptr @s5pv210_cpufreq_probe._entry, ptr @s5pv210_cpufreq_probe._entry.11, ptr @s5pv210_cpufreq_probe._entry.16, ptr @s5pv210_cpufreq_probe._entry.19, ptr @s5pv210_cpufreq_probe._entry.22, ptr @s5pv210_cpufreq_probe._entry_ptr, ptr @s5pv210_cpufreq_probe._entry_ptr.13, ptr @s5pv210_cpufreq_probe._entry_ptr.18, ptr @s5pv210_cpufreq_probe._entry_ptr.21, ptr @s5pv210_cpufreq_probe._entry_ptr.24, ptr @s5pv210_set_refresh._entry, ptr @s5pv210_set_refresh._entry_ptr, ptr @s5pv210_target._entry, ptr @s5pv210_target._entry_ptr, ptr @s5pv210_cpufreq_platdrv, ptr @.str, ptr @.str.1, ptr @arm_regulator, ptr @.str.2, ptr @.str.3, ptr @int_regulator, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @clk_base, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @dmc_base, ptr @.str.20, ptr @.str.23, ptr @s5pv210_cpufreq_reboot_notifier, ptr @s5pv210_driver, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @no_cpufreq_access, ptr @.str.29, ptr @.str.30, ptr @dmc0_clk, ptr @.str.31, ptr @dmc1_clk, ptr @.str.32, ptr @.str.33, ptr @s5pv210_dram_conf.0, ptr @s5pv210_dram_conf.1, ptr @s5pv210_dram_conf.2, ptr @s5pv210_dram_conf.3, ptr @s5pv210_freq_table, ptr @set_freq_lock, ptr @.str.34, ptr @.str.35, ptr @dvs_conf, ptr @clkdiv_val, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_cpufreq_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_regulator to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_regulator to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_cpufreq_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_cpufreq_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc_base to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_cpufreq_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_cpufreq_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_cpufreq_reboot_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_cpufreq_access to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc0_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmc1_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_cpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_dram_conf.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_dram_conf.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_dram_conf.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_dram_conf.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_freq_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_freq_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvs_conf to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkdiv_val to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_set_refresh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pv210_cpufreq_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5pv210_cpufreq_platdrv, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pv210_cpufreq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @regulator_get(ptr noundef null, ptr noundef nonnull @.str.1) #5
  store ptr %call, ptr @arm_regulator, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %0, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @regulator_get(ptr noundef null, ptr noundef nonnull @.str.3) #5
  store ptr %call5, ptr @int_regulator, align 4
  %cmp.i97 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call5 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %1, ptr noundef nonnull @.str.4) #5
  br label %err_int_regulator

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #5
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #8
  br label %err_clock

if.end13:                                         ; preds = %if.end10
  %call14 = tail call ptr @of_iomap(ptr noundef nonnull %call11, i32 noundef 0) #5
  store ptr %call14, ptr @clk_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %call11) #5
  %2 = load ptr, ptr @clk_base, align 4
  %tobool15.not = icmp eq ptr %2, null
  br i1 %tobool15.not, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %err_clock

if.end20:                                         ; preds = %if.end13
  %call21 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14) #5
  %tobool22.not102 = icmp eq ptr %call21, null
  br i1 %tobool22.not102, label %if.end20.for.cond39.preheader_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.for.cond39.preheader_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.inc.for.cond39.preheader_crit_edge, %if.end20.for.cond39.preheader_crit_edge
  %3 = load ptr, ptr @dmc_base, align 4
  %tobool43.not = icmp eq ptr %3, null
  br i1 %tobool43.not, label %for.cond39.preheader.do.end47_crit_edge, label %for.inc49

for.cond39.preheader.do.end47_crit_edge:          ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end20.for.body_crit_edge
  %np.0103 = phi ptr [ %call38, %for.inc.for.body_crit_edge ], [ %call21, %if.end20.for.body_crit_edge ]
  %call23 = tail call i32 @of_alias_get_id(ptr noundef nonnull %np.0103, ptr noundef nonnull @.str.15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23)
  %cmp24 = icmp ugt i32 %call23, 1
  br i1 %cmp24, label %do.end28, label %if.end29

do.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull %np.0103) #8
  tail call void @of_node_put(ptr noundef nonnull %np.0103) #5
  br label %err_clk_base

if.end29:                                         ; preds = %for.body
  %call30 = tail call ptr @of_iomap(ptr noundef nonnull %np.0103, i32 noundef 0) #5
  %arrayidx = getelementptr [2 x ptr], ptr @dmc_base, i32 0, i32 %call23
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call30, ptr %arrayidx, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %do.end36, label %for.inc

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call23) #8
  tail call void @of_node_put(ptr noundef nonnull %np.0103) #5
  br label %err_dmc

for.inc:                                          ; preds = %if.end29
  %call38 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %np.0103, ptr noundef null, ptr noundef nonnull @.str.14) #5
  %tobool22.not = icmp eq ptr %call38, null
  br i1 %tobool22.not, label %for.inc.for.cond39.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.cond39.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond39.preheader

do.end47:                                         ; preds = %for.inc49.do.end47_crit_edge, %for.cond39.preheader.do.end47_crit_edge
  %id.0104.lcssa = phi i32 [ 0, %for.cond39.preheader.do.end47_crit_edge ], [ 1, %for.inc49.do.end47_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %id.0104.lcssa) #8
  br label %err_dmc

for.inc49:                                        ; preds = %for.cond39.preheader
  %5 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @dmc_base, i32 0, i32 1), align 4
  %tobool43.not.1 = icmp eq ptr %5, null
  br i1 %tobool43.not.1, label %for.inc49.do.end47_crit_edge, label %for.inc49.1

for.inc49.do.end47_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

for.inc49.1:                                      ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #7
  %call51 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @s5pv210_cpufreq_reboot_notifier) #5
  %call52 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @s5pv210_driver) #5
  br label %cleanup

err_dmc:                                          ; preds = %do.end47, %do.end36
  %result.0 = phi i32 [ -14, %do.end36 ], [ -19, %do.end47 ]
  %6 = load ptr, ptr @dmc_base, align 4
  %tobool57.not = icmp eq ptr %6, null
  br i1 %tobool57.not, label %err_dmc.for.inc62_crit_edge, label %if.then58

err_dmc.for.inc62_crit_edge:                      ; preds = %err_dmc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc62

if.then58:                                        ; preds = %err_dmc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %6) #5
  store ptr null, ptr @dmc_base, align 4
  br label %for.inc62

for.inc62:                                        ; preds = %if.then58, %err_dmc.for.inc62_crit_edge
  %7 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @dmc_base, i32 0, i32 1), align 4
  %tobool57.not.1 = icmp eq ptr %7, null
  br i1 %tobool57.not.1, label %for.inc62.err_clk_base_crit_edge, label %if.then58.1

for.inc62.err_clk_base_crit_edge:                 ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk_base

if.then58.1:                                      ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %7) #5
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @dmc_base, i32 0, i32 1), align 4
  br label %err_clk_base

err_clk_base:                                     ; preds = %if.then58.1, %for.inc62.err_clk_base_crit_edge, %do.end28
  %result.1 = phi i32 [ %call23, %do.end28 ], [ %result.0, %if.then58.1 ], [ %result.0, %for.inc62.err_clk_base_crit_edge ]
  %8 = load ptr, ptr @clk_base, align 4
  tail call void @iounmap(ptr noundef %8) #5
  br label %err_clock

err_clock:                                        ; preds = %err_clk_base, %do.end19, %do.end
  %result.2 = phi i32 [ %result.1, %err_clk_base ], [ -14, %do.end19 ], [ -19, %do.end ]
  %9 = load ptr, ptr @int_regulator, align 4
  tail call void @regulator_put(ptr noundef %9) #5
  br label %err_int_regulator

err_int_regulator:                                ; preds = %err_clock, %if.then7
  %result.3 = phi i32 [ %call9, %if.then7 ], [ %result.2, %err_clock ]
  %10 = load ptr, ptr @arm_regulator, align 4
  tail call void @regulator_put(ptr noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %err_int_regulator, %for.inc49.1, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %result.3, %err_int_regulator ], [ %call52, %for.inc49.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pv210_cpufreq_reboot_notifier_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_cpu_get(i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5pv210_cpufreq_reboot_notifier_event.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5pv210_cpufreq_reboot_notifier_event, %if.then5)) #5
          to label %cleanup [label %if.then5], !srcloc !114

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s5pv210_cpufreq_reboot_notifier_event.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.28) #5
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call i32 @cpufreq_driver_target(ptr noundef nonnull %call, i32 noundef 800000, i32 noundef 0) #5
  tail call void @cpufreq_cpu_put(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @no_cpufreq_access, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 32770, %if.then5 ], [ 32770, %if.end6.cleanup_crit_edge ], [ 32770, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cpu_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pv210_cpu_init(ptr noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.29) #5
  %clk = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.30) #5
  store ptr %call5, ptr @dmc0_clk, align 4
  %cmp.i41 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call5 to i32
  br label %out_dmc0

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.31) #5
  store ptr %call10, ptr @dmc1_clk, align 4
  %cmp.i42 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call10 to i32
  br label %out_dmc1

if.end14:                                         ; preds = %if.end9
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end16, label %if.end14.out_dmc1_crit_edge

if.end14.out_dmc1_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dmc1

if.end16:                                         ; preds = %if.end14
  %6 = load ptr, ptr @dmc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !115
  %8 = lshr i32 %7, 16
  %and.i = and i32 %8, 15
  %call17.off = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17.off)
  %switch = icmp ult i32 %call17.off, 2
  br i1 %switch, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #8
  br label %out_dmc1

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %9 = load ptr, ptr @dmc_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !115
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %mul = mul i32 %11, 1000
  store i32 %mul, ptr @s5pv210_dram_conf.1, align 4
  %12 = load ptr, ptr @dmc0_clk, align 4
  %call25 = tail call i32 @clk_get_rate(ptr noundef %12) #5
  store i32 %call25, ptr @s5pv210_dram_conf.0, align 4
  %13 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @dmc_base, i32 0, i32 1), align 4
  %add.ptr27 = getelementptr i8, ptr %13, i32 48
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !115
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %mul30 = mul i32 %15, 1000
  store i32 %mul30, ptr @s5pv210_dram_conf.3, align 4
  %16 = load ptr, ptr @dmc1_clk, align 4
  %call31 = tail call i32 @clk_get_rate(ptr noundef %16) #5
  store i32 %call31, ptr @s5pv210_dram_conf.2, align 4
  %suspend_freq = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 10
  %17 = ptrtoint ptr %suspend_freq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 800000, ptr %suspend_freq, align 4
  tail call void @cpufreq_generic_init(ptr noundef %policy, ptr noundef nonnull @s5pv210_freq_table, i32 noundef 40000) #5
  br label %cleanup

out_dmc1:                                         ; preds = %do.end, %if.end14.out_dmc1_crit_edge, %if.then12
  %ret.0 = phi i32 [ %3, %if.then12 ], [ -22, %do.end ], [ -22, %if.end14.out_dmc1_crit_edge ]
  %18 = load ptr, ptr @dmc0_clk, align 4
  tail call void @clk_put(ptr noundef %18) #5
  br label %out_dmc0

out_dmc0:                                         ; preds = %out_dmc1, %if.then7
  %ret.1 = phi i32 [ %2, %if.then7 ], [ %ret.0, %out_dmc1 ]
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %20) #5
  br label %cleanup

cleanup:                                          ; preds = %out_dmc0, %if.end22, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %ret.1, %out_dmc0 ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pv210_target(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @set_freq_lock, i32 noundef 0) #5
  %.b327 = load i1, ptr @no_cpufreq_access, align 1
  br i1 %.b327, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #8
  br label %exit

if.end:                                           ; preds = %entry
  %cur = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 9
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur, align 4
  %frequency = getelementptr [6 x %struct.cpufreq_frequency_table], ptr @s5pv210_freq_table, i32 0, i32 %index, i32 2
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %min.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 7
  %4 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min.i, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 %1) #5
  %max.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 8
  %7 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max.i, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8) #5
  %freq_table_sorted.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 21
  %10 = ptrtoint ptr %freq_table_sorted.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %freq_table_sorted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7.i = icmp eq i32 %11, 1
  %freq_table.i.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %12 = ptrtoint ptr %freq_table.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %freq_table.i.i, align 4
  br i1 %cmp7.i, label %if.end.for.cond.i.i_crit_edge, label %if.end.for.cond.i6.i_crit_edge

if.end.for.cond.i6.i_crit_edge:                   ; preds = %if.end
  br label %for.cond.i6.i

if.end.for.cond.i.i_crit_edge:                    ; preds = %if.end
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %if.end.for.cond.i.i_crit_edge
  %pos.0.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i ], [ %13, %if.end.for.cond.i.i_crit_edge ]
  %idx.0.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 0, %if.end.for.cond.i.i_crit_edge ]
  %best.0.i.i = phi i32 [ %best.1.i.i, %for.inc.i.i ], [ -1, %if.end.for.cond.i.i_crit_edge ]
  %frequency.i.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %frequency.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frequency.i.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.else5.i.i [
    i32 -2, label %for.cond.i.i.cpufreq_table_find_index_h.exit_crit_edge
    i32 -1, label %for.cond.i.i.for.inc.i.i_crit_edge
  ]

for.cond.i.i.for.inc.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.cond.i.i.cpufreq_table_find_index_h.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpufreq_table_find_index_h.exit

if.else5.i.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp7.i.i = icmp eq i32 %15, %9
  br i1 %cmp7.i.i, label %if.else5.i.i.cpufreq_table_find_index_h.exit_crit_edge, label %if.end.i.i

if.else5.i.i.cpufreq_table_find_index_h.exit_crit_edge: ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpufreq_table_find_index_h.exit

if.end.i.i:                                       ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp9.i.i = icmp ult i32 %15, %9
  br i1 %cmp9.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end11.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best.0.i.i)
  %cmp12.i.i = icmp eq i32 %best.0.i.i, -1
  %idx.0.best.0.i.i = select i1 %cmp12.i.i, i32 %idx.0.i.i, i32 %best.0.i.i
  br label %cpufreq_table_find_index_h.exit

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.cond.i.i.for.inc.i.i_crit_edge
  %best.1.i.i = phi i32 [ %best.0.i.i, %for.cond.i.i.for.inc.i.i_crit_edge ], [ %idx.0.i.i, %if.end.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i.i, i32 1
  %inc.i.i = add i32 %idx.0.i.i, 1
  br label %for.cond.i.i

for.cond.i6.i:                                    ; preds = %for.inc.i11.i, %if.end.for.cond.i6.i_crit_edge
  %pos.0.i2.i = phi ptr [ %incdec.ptr.i9.i, %for.inc.i11.i ], [ %13, %if.end.for.cond.i6.i_crit_edge ]
  %idx.0.i3.i = phi i32 [ %inc.i10.i, %for.inc.i11.i ], [ 0, %if.end.for.cond.i6.i_crit_edge ]
  %best.0.i4.i = phi i32 [ %best.1.i8.i, %for.inc.i11.i ], [ -1, %if.end.for.cond.i6.i_crit_edge ]
  %frequency.i5.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i2.i, i32 0, i32 2
  %17 = ptrtoint ptr %frequency.i5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frequency.i5.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %18, label %if.else5.i7.i [
    i32 -2, label %for.cond.i6.i.cpufreq_table_find_index_h.exit_crit_edge
    i32 -1, label %for.cond.i6.i.for.inc.i11.i_crit_edge
  ]

for.cond.i6.i.for.inc.i11.i_crit_edge:            ; preds = %for.cond.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i11.i

for.cond.i6.i.cpufreq_table_find_index_h.exit_crit_edge: ; preds = %for.cond.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpufreq_table_find_index_h.exit

if.else5.i7.i:                                    ; preds = %for.cond.i6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %9)
  %cmp7.not.i.i = icmp ugt i32 %18, %9
  br i1 %cmp7.not.i.i, label %if.else5.i7.i.for.inc.i11.i_crit_edge, label %if.else5.i7.i.cpufreq_table_find_index_h.exit_crit_edge

if.else5.i7.i.cpufreq_table_find_index_h.exit_crit_edge: ; preds = %if.else5.i7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpufreq_table_find_index_h.exit

if.else5.i7.i.for.inc.i11.i_crit_edge:            ; preds = %if.else5.i7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i11.i

for.inc.i11.i:                                    ; preds = %if.else5.i7.i.for.inc.i11.i_crit_edge, %for.cond.i6.i.for.inc.i11.i_crit_edge
  %best.1.i8.i = phi i32 [ %best.0.i4.i, %for.cond.i6.i.for.inc.i11.i_crit_edge ], [ %idx.0.i3.i, %if.else5.i7.i.for.inc.i11.i_crit_edge ]
  %incdec.ptr.i9.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i2.i, i32 1
  %inc.i10.i = add i32 %idx.0.i3.i, 1
  br label %for.cond.i6.i

cpufreq_table_find_index_h.exit:                  ; preds = %if.else5.i7.i.cpufreq_table_find_index_h.exit_crit_edge, %for.cond.i6.i.cpufreq_table_find_index_h.exit_crit_edge, %if.end11.i.i, %if.else5.i.i.cpufreq_table_find_index_h.exit_crit_edge, %for.cond.i.i.cpufreq_table_find_index_h.exit_crit_edge
  %retval.0.i330 = phi i32 [ %idx.0.best.0.i.i, %if.end11.i.i ], [ %best.0.i.i, %for.cond.i.i.cpufreq_table_find_index_h.exit_crit_edge ], [ %idx.0.i.i, %if.else5.i.i.cpufreq_table_find_index_h.exit_crit_edge ], [ %idx.0.i3.i, %if.else5.i7.i.cpufreq_table_find_index_h.exit_crit_edge ], [ %best.0.i4.i, %for.cond.i6.i.cpufreq_table_find_index_h.exit_crit_edge ]
  %arrayidx2 = getelementptr [5 x %struct.s5pv210_dvs_conf], ptr @dvs_conf, i32 0, i32 %index
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2, align 4
  %int_volt5 = getelementptr [5 x %struct.s5pv210_dvs_conf], ptr @dvs_conf, i32 0, i32 %index, i32 1
  %22 = ptrtoint ptr %int_volt5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %int_volt5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp ugt i32 %3, %1
  br i1 %cmp, label %if.then6, label %cpufreq_table_find_index_h.exit.if.end15_crit_edge

cpufreq_table_find_index_h.exit.if.end15_crit_edge: ; preds = %cpufreq_table_find_index_h.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then6:                                         ; preds = %cpufreq_table_find_index_h.exit
  %24 = load ptr, ptr @arm_regulator, align 4
  %call7 = tail call i32 @regulator_set_voltage(ptr noundef %24, i32 noundef %21, i32 noundef 1350000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then6.exit_crit_edge

if.then6.exit_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end10:                                         ; preds = %if.then6
  %25 = load ptr, ptr @int_regulator, align 4
  %call11 = tail call i32 @regulator_set_voltage(ptr noundef %25, i32 noundef %23, i32 noundef 1250000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.end10.exit_crit_edge

if.end10.exit_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end15:                                         ; preds = %if.end10.if.end15_crit_edge, %cpufreq_table_find_index_h.exit.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp16 = icmp eq i32 %index, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i330)
  %cmp17 = icmp ne i32 %retval.0.i330, 0
  %not.cmp16 = xor i1 %cmp16, true
  %or.cond = select i1 %not.cmp16, i1 %cmp17, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %index)
  %cmp20 = icmp eq i32 %index, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i330)
  %cmp22 = icmp ne i32 %retval.0.i330, 4
  %not.cmp20 = xor i1 %cmp20, true
  %or.cond328 = select i1 %not.cmp20, i1 %cmp22, i1 false
  br i1 %or.cond328, label %if.end15.if.end30_crit_edge, label %if.then26

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then26:                                        ; preds = %if.end15
  %.val.i332 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @dmc_base, i32 0, i32 1), align 4
  %reg.0.i333 = getelementptr i8, ptr %.val.i332, i32 48
  %26 = load i32, ptr @s5pv210_dram_conf.2, align 4
  br i1 %or.cond, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %div.i = udiv i32 %26, 83000
  %27 = load i32, ptr @s5pv210_dram_conf.3, align 4
  %div9.i = udiv i32 %27, %div.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %div9.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i333, i32 %28) #5, !srcloc !116
  br label %if.end29

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %div.i334 = udiv i32 %26, 100000
  %29 = load i32, ptr @s5pv210_dram_conf.3, align 4
  %div9.i335 = udiv i32 %29, %div.i334
  %30 = tail call i32 @llvm.bswap.i32(i32 %div9.i335) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i333, i32 %30) #5, !srcloc !116
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then28
  %dmc_base.val.i336 = load ptr, ptr @dmc_base, align 4
  %reg.0.i338 = getelementptr i8, ptr %dmc_base.val.i336, i32 48
  %31 = load i32, ptr @s5pv210_dram_conf.0, align 4
  %div.i339 = udiv i32 %31, 83000
  %32 = load i32, ptr @s5pv210_dram_conf.1, align 4
  %div9.i340 = udiv i32 %32, %div.i339
  %33 = tail call i32 @llvm.bswap.i32(i32 %div9.i340) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i338, i32 %33) #5, !srcloc !116
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end15.if.end30_crit_edge
  br i1 %or.cond, label %if.end30.if.end80_crit_edge, label %if.then32

if.end30.if.end80_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then32:                                        ; preds = %if.end30
  %34 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 776
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !115
  %36 = and i32 %35, 16777215
  %37 = or i32 %36, 855638016
  %38 = load ptr, ptr @clk_base, align 4
  %add.ptr35 = getelementptr i8, ptr %38, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %37) #5, !srcloc !116
  br label %do.body36

do.body36:                                        ; preds = %do.body36.do.body36_crit_edge, %if.then32
  %39 = load ptr, ptr @clk_base, align 4
  %add.ptr38 = getelementptr i8, ptr %39, i32 4096
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #5, !srcloc !115
  %41 = and i32 %40, 768
  %tobool43.not = icmp eq i32 %41, 0
  br i1 %tobool43.not, label %do.end44, label %do.body36.do.body36_crit_edge

do.body36.do.body36_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

do.end44:                                         ; preds = %do.body36
  %42 = load ptr, ptr @clk_base, align 4
  %add.ptr46 = getelementptr i8, ptr %42, i32 520
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #5, !srcloc !115
  %44 = and i32 %43, -855638017
  %45 = or i32 %44, 285212672
  %46 = load ptr, ptr @clk_base, align 4
  %add.ptr51 = getelementptr i8, ptr %46, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %45) #5, !srcloc !116
  br label %do.body52

do.body52:                                        ; preds = %do.body52.do.body52_crit_edge, %do.end44
  %47 = load ptr, ptr @clk_base, align 4
  %add.ptr54 = getelementptr i8, ptr %47, i32 4356
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #5, !srcloc !115
  %49 = and i32 %48, -2013265920
  %tobool59.not = icmp eq i32 %49, 0
  br i1 %tobool59.not, label %do.end60, label %do.body52.do.body52_crit_edge

do.body52.do.body52_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body52

do.end60:                                         ; preds = %do.body52
  br i1 %or.cond328, label %if.then62, label %do.end60.if.end63_crit_edge

do.end60.if.end63_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then62:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #7
  %.val.i342 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @dmc_base, i32 0, i32 1), align 4
  %reg.0.i343 = getelementptr i8, ptr %.val.i342, i32 48
  %50 = load i32, ptr @s5pv210_dram_conf.2, align 4
  %div.i344 = udiv i32 %50, 133000
  %51 = load i32, ptr @s5pv210_dram_conf.3, align 4
  %div9.i345 = udiv i32 %51, %div.i344
  %52 = tail call i32 @llvm.bswap.i32(i32 %div9.i345) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i343, i32 %52) #5, !srcloc !116
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %do.end60.if.end63_crit_edge
  %53 = load ptr, ptr @clk_base, align 4
  %add.ptr65 = getelementptr i8, ptr %53, i32 512
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #5, !srcloc !115
  %55 = or i32 %54, 256
  %56 = load ptr, ptr @clk_base, align 4
  %add.ptr70 = getelementptr i8, ptr %56, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %55) #5, !srcloc !116
  br label %do.body71

do.body71:                                        ; preds = %do.body71.do.body71_crit_edge, %if.end63
  %57 = load ptr, ptr @clk_base, align 4
  %add.ptr73 = getelementptr i8, ptr %57, i32 4352
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #5, !srcloc !115
  %59 = and i32 %58, 1024
  %tobool78.not = icmp eq i32 %59, 0
  br i1 %tobool78.not, label %do.body71.if.end80_crit_edge, label %do.body71.do.body71_crit_edge

do.body71.do.body71_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body71

do.body71.if.end80_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.end80:                                         ; preds = %do.body71.if.end80_crit_edge, %if.end30.if.end80_crit_edge
  %60 = load ptr, ptr @clk_base, align 4
  %add.ptr82 = getelementptr i8, ptr %60, i32 768
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #5, !srcloc !115
  %62 = and i32 %61, -2004320128
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %arrayidx86 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index
  %64 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx86, align 4
  %arrayidx89 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index, i32 1
  %66 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx89, align 4
  %shl90 = shl i32 %67, 4
  %arrayidx93 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index, i32 2
  %68 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx93, align 4
  %shl94 = shl i32 %69, 8
  %arrayidx97 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index, i32 3
  %70 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx97, align 4
  %shl98 = shl i32 %71, 12
  %arrayidx101 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index, i32 4
  %72 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx101, align 4
  %shl102 = shl i32 %73, 16
  %arrayidx105 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index, i32 5
  %74 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx105, align 4
  %shl106 = shl i32 %75, 20
  %arrayidx109 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index, i32 6
  %76 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx109, align 4
  %shl110 = shl i32 %77, 24
  %arrayidx113 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index, i32 7
  %78 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx113, align 4
  %shl114 = shl i32 %79, 28
  %or91 = or i32 %63, %65
  %or95 = or i32 %or91, %shl90
  %or99 = or i32 %or95, %shl94
  %or103 = or i32 %or99, %shl98
  %or107 = or i32 %or103, %shl102
  %or111 = or i32 %or107, %shl106
  %or115 = or i32 %or111, %shl110
  %or116 = or i32 %or115, %shl114
  %80 = tail call i32 @llvm.bswap.i32(i32 %or116)
  %81 = load ptr, ptr @clk_base, align 4
  %add.ptr117 = getelementptr i8, ptr %81, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %80) #5, !srcloc !116
  br label %do.body118

do.body118:                                       ; preds = %do.body118.do.body118_crit_edge, %if.end80
  %82 = load ptr, ptr @clk_base, align 4
  %add.ptr120 = getelementptr i8, ptr %82, i32 4096
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #5, !srcloc !115
  %tobool125.not = icmp ult i32 %83, 16777216
  br i1 %tobool125.not, label %do.end126, label %do.body118.do.body118_crit_edge

do.body118.do.body118_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body118

do.end126:                                        ; preds = %do.body118
  %84 = load ptr, ptr @clk_base, align 4
  %add.ptr128 = getelementptr i8, ptr %84, i32 24832
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #5, !srcloc !115
  %86 = and i32 %85, -50331649
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp132.inv = icmp ult i32 %index, 3
  %reg.0.v = select i1 %cmp132.inv, i32 1, i32 3
  %reg.0 = or i32 %87, %reg.0.v
  %88 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %89 = load ptr, ptr @clk_base, align 4
  %add.ptr138 = getelementptr i8, ptr %89, i32 24832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %88) #5, !srcloc !116
  br i1 %or.cond, label %if.end215, label %if.then140

if.then140:                                       ; preds = %do.end126
  %90 = load ptr, ptr @clk_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 -821952512) #5, !srcloc !116
  %91 = load ptr, ptr @clk_base, align 4
  %add.ptr144 = getelementptr i8, ptr %91, i32 256
  br i1 %cmp16, label %if.then143, label %if.else145

if.then143:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 17005952) #5, !srcloc !116
  br label %do.body148.preheader

if.else145:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 16999552) #5, !srcloc !116
  br label %do.body148.preheader

do.body148.preheader:                             ; preds = %if.else145, %if.then143
  br label %do.body148

do.body148:                                       ; preds = %do.body148.do.body148_crit_edge, %do.body148.preheader
  %92 = load ptr, ptr @clk_base, align 4
  %add.ptr150 = getelementptr i8, ptr %92, i32 256
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #5, !srcloc !115
  %94 = and i32 %93, 32
  %tobool155.not = icmp eq i32 %94, 0
  br i1 %tobool155.not, label %do.body148.do.body148_crit_edge, label %do.end156

do.body148.do.body148_crit_edge:                  ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body148

do.end156:                                        ; preds = %do.body148
  %95 = load ptr, ptr @clk_base, align 4
  %add.ptr158 = getelementptr i8, ptr %95, i32 520
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158) #5, !srcloc !115
  %97 = and i32 %96, -855638017
  %98 = load ptr, ptr @clk_base, align 4
  %add.ptr163 = getelementptr i8, ptr %98, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %97) #5, !srcloc !116
  br label %do.body164

do.body164:                                       ; preds = %do.body164.do.body164_crit_edge, %do.end156
  %99 = load ptr, ptr @clk_base, align 4
  %add.ptr166 = getelementptr i8, ptr %99, i32 4356
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166) #5, !srcloc !115
  %101 = and i32 %100, -2013265920
  %tobool171.not = icmp eq i32 %101, 0
  br i1 %tobool171.not, label %do.end172, label %do.body164.do.body164_crit_edge

do.body164.do.body164_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164

do.end172:                                        ; preds = %do.body164
  %102 = load ptr, ptr @clk_base, align 4
  %add.ptr174 = getelementptr i8, ptr %102, i32 776
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr174) #5, !srcloc !115
  %104 = and i32 %103, 16777215
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %arrayidx179 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index, i32 10
  %106 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx179, align 4
  %arrayidx182 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index, i32 9
  %108 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx182, align 4
  %shl183 = shl i32 %109, 4
  %or184 = or i32 %105, %107
  %or185 = or i32 %or184, %shl183
  %110 = tail call i32 @llvm.bswap.i32(i32 %or185)
  %111 = load ptr, ptr @clk_base, align 4
  %add.ptr186 = getelementptr i8, ptr %111, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 %110) #5, !srcloc !116
  br label %do.body187

do.body187:                                       ; preds = %do.body187.do.body187_crit_edge, %do.end172
  %112 = load ptr, ptr @clk_base, align 4
  %add.ptr189 = getelementptr i8, ptr %112, i32 4096
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #5, !srcloc !115
  %114 = and i32 %113, 768
  %tobool194.not = icmp eq i32 %114, 0
  br i1 %tobool194.not, label %do.end195, label %do.body187.do.body187_crit_edge

do.body187.do.body187_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body187

do.end195:                                        ; preds = %do.body187
  %115 = load ptr, ptr @clk_base, align 4
  %add.ptr197 = getelementptr i8, ptr %115, i32 512
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197) #5, !srcloc !115
  %117 = and i32 %116, -257
  %118 = load ptr, ptr @clk_base, align 4
  %add.ptr202 = getelementptr i8, ptr %118, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %117) #5, !srcloc !116
  br label %do.body203

do.body203:                                       ; preds = %do.body203.do.body203_crit_edge, %do.end195
  %119 = load ptr, ptr @clk_base, align 4
  %add.ptr205 = getelementptr i8, ptr %119, i32 4352
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #5, !srcloc !115
  %121 = and i32 %120, 1024
  %tobool210.not = icmp eq i32 %121, 0
  br i1 %tobool210.not, label %do.end211, label %do.body203.do.body203_crit_edge

do.body203.do.body203_crit_edge:                  ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body203

do.end211:                                        ; preds = %do.body203
  br i1 %or.cond328, label %if.then213, label %do.end211.if.then217_crit_edge

do.end211.if.then217_crit_edge:                   ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then217

if.then213:                                       ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #7
  %.val.i347 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @dmc_base, i32 0, i32 1), align 4
  %reg.0.i348 = getelementptr i8, ptr %.val.i347, i32 48
  %122 = load i32, ptr @s5pv210_dram_conf.2, align 4
  %div.i349 = udiv i32 %122, 200000
  %123 = load i32, ptr @s5pv210_dram_conf.3, align 4
  %div9.i350 = udiv i32 %123, %div.i349
  %124 = tail call i32 @llvm.bswap.i32(i32 %div9.i350) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i348, i32 %124) #5, !srcloc !116
  br label %if.end241

if.end215:                                        ; preds = %do.end126
  br i1 %or.cond328, label %if.end215.if.end241_crit_edge, label %if.end215.if.then217_crit_edge

if.end215.if.then217_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then217

if.end215.if.end241_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241

if.then217:                                       ; preds = %if.end215.if.then217_crit_edge, %do.end211.if.then217_crit_edge
  %125 = load ptr, ptr @clk_base, align 4
  %add.ptr219 = getelementptr i8, ptr %125, i32 792
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219) #5, !srcloc !115
  %127 = and i32 %126, -241
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  %arrayidx224 = getelementptr [5 x [11 x i32]], ptr @clkdiv_val, i32 0, i32 %index, i32 8
  %129 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx224, align 4
  %shl225 = shl i32 %130, 28
  %or226 = or i32 %128, %shl225
  %131 = tail call i32 @llvm.bswap.i32(i32 %or226)
  %132 = load ptr, ptr @clk_base, align 4
  %add.ptr227 = getelementptr i8, ptr %132, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 %131) #5, !srcloc !116
  br label %do.body228

do.body228:                                       ; preds = %do.body228.do.body228_crit_edge, %if.then217
  %133 = load ptr, ptr @clk_base, align 4
  %add.ptr230 = getelementptr i8, ptr %133, i32 4100
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr230) #5, !srcloc !115
  %135 = and i32 %134, 8388608
  %tobool235.not = icmp eq i32 %135, 0
  br i1 %tobool235.not, label %do.end236, label %do.body228.do.body228_crit_edge

do.body228.do.body228_crit_edge:                  ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body228

do.end236:                                        ; preds = %do.body228
  %dmc_base.val.i361 = load ptr, ptr @dmc_base, align 4
  %reg.0.i363 = getelementptr i8, ptr %dmc_base.val.i361, i32 48
  %136 = load i32, ptr @s5pv210_dram_conf.0, align 4
  br i1 %cmp20, label %if.else239, label %if.then238

if.then238:                                       ; preds = %do.end236
  call void @__sanitizer_cov_trace_pc() #7
  %div.i354 = udiv i32 %136, 166000
  %137 = load i32, ptr @s5pv210_dram_conf.1, align 4
  %div9.i355 = udiv i32 %137, %div.i354
  %138 = tail call i32 @llvm.bswap.i32(i32 %div9.i355) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i363, i32 %138) #5, !srcloc !116
  %.val.i357 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @dmc_base, i32 0, i32 1), align 4
  %reg.0.i358 = getelementptr i8, ptr %.val.i357, i32 48
  %139 = load i32, ptr @s5pv210_dram_conf.2, align 4
  %div.i359 = udiv i32 %139, 200000
  %140 = load i32, ptr @s5pv210_dram_conf.3, align 4
  %div9.i360 = udiv i32 %140, %div.i359
  %141 = tail call i32 @llvm.bswap.i32(i32 %div9.i360) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i358, i32 %141) #5, !srcloc !116
  br label %if.end241

if.else239:                                       ; preds = %do.end236
  call void @__sanitizer_cov_trace_pc() #7
  %div.i364 = udiv i32 %136, 83000
  %142 = load i32, ptr @s5pv210_dram_conf.1, align 4
  %div9.i365 = udiv i32 %142, %div.i364
  %143 = tail call i32 @llvm.bswap.i32(i32 %div9.i365) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i363, i32 %143) #5, !srcloc !116
  %.val.i367 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @dmc_base, i32 0, i32 1), align 4
  %reg.0.i368 = getelementptr i8, ptr %.val.i367, i32 48
  %144 = load i32, ptr @s5pv210_dram_conf.2, align 4
  %div.i369 = udiv i32 %144, 100000
  %145 = load i32, ptr @s5pv210_dram_conf.3, align 4
  %div9.i370 = udiv i32 %145, %div.i369
  %146 = tail call i32 @llvm.bswap.i32(i32 %div9.i370) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i368, i32 %146) #5, !srcloc !116
  br label %if.end241

if.end241:                                        ; preds = %if.else239, %if.then238, %if.end215.if.end241_crit_edge, %if.then213
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp242 = icmp ult i32 %3, %1
  br i1 %cmp242, label %if.then243, label %if.end241.do.body247_crit_edge

if.end241.do.body247_crit_edge:                   ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body247

if.then243:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  %147 = load ptr, ptr @int_regulator, align 4
  %call244 = tail call i32 @regulator_set_voltage(ptr noundef %147, i32 noundef %23, i32 noundef 1250000) #5
  %148 = load ptr, ptr @arm_regulator, align 4
  %call245 = tail call i32 @regulator_set_voltage(ptr noundef %148, i32 noundef %21, i32 noundef 1350000) #5
  br label %do.body247

do.body247:                                       ; preds = %if.then243, %if.end241.do.body247_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5pv210_target.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5pv210_target, %if.then254)) #5
          to label %exit [label %if.then254], !srcloc !114

if.then254:                                       ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s5pv210_target.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.37, i32 noundef %index) #5
  br label %exit

exit:                                             ; preds = %if.then254, %do.body247, %if.end10.exit_crit_edge, %if.then6.exit_crit_edge, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ %call7, %if.then6.exit_crit_edge ], [ %call11, %if.end10.exit_crit_edge ], [ 0, %if.then254 ], [ 0, %do.body247 ]
  tail call void @mutex_unlock(ptr noundef nonnull @set_freq_lock) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_generic_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__initcall__kmod_s5pv210_cpufreq__302_687_s5pv210_cpufreq_platdrv_init6, !1, !"__initcall__kmod_s5pv210_cpufreq__302_687_s5pv210_cpufreq_platdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 687, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 683, i32 11}
!4 = !{ptr @s5pv210_cpufreq_platdrv, !5, !"s5pv210_cpufreq_platdrv", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 681, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 605, i32 38}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 608, i32 10}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 610, i32 38}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 613, i32 12}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 617, i32 43}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 619, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @s5pv210_cpufreq_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @s5pv210_cpufreq_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 627, i32 3}
!26 = !{ptr @s5pv210_cpufreq_probe._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @s5pv210_cpufreq_probe._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 632, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 633, i32 28}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 635, i32 4}
!34 = !{ptr @s5pv210_cpufreq_probe._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @s5pv210_cpufreq_probe._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 643, i32 4}
!38 = !{ptr @s5pv210_cpufreq_probe._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @s5pv210_cpufreq_probe._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 652, i32 4}
!42 = !{ptr @s5pv210_cpufreq_probe._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @s5pv210_cpufreq_probe._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @arm_regulator, !45, !"arm_regulator", i1 false, i1 false}
!45 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 133, i32 26}
!46 = !{ptr @int_regulator, !47, !"int_regulator", i1 false, i1 false}
!47 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 134, i32 26}
!48 = !{ptr @clk_base, !49, !"clk_base", i1 false, i1 false}
!49 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 24, i32 22}
!50 = !{ptr @dmc_base, !51, !"dmc_base", i1 false, i1 false}
!51 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 25, i32 22}
!52 = !{ptr @s5pv210_cpufreq_reboot_notifier, !53, !"s5pv210_cpufreq_reboot_notifier", i1 false, i1 false}
!53 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 587, i32 30}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 562, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @s5pv210_cpufreq_reboot_notifier_event.__UNIQUE_ID_ddebug301, !55, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!59 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"no_cpufreq_access", i1 false, i1 false}
!61 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 95, i32 13}
!62 = !{ptr @s5pv210_driver, !63, !"s5pv210_driver", i1 false, i1 false}
!63 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 576, i32 30}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 503, i32 30}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 507, i32 27}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 513, i32 27}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 531, i32 3}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @s5pv210_cpu_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @s5pv210_cpu_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @dmc0_clk, !76, !"dmc0_clk", i1 false, i1 false}
!76 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 83, i32 20}
!77 = !{ptr @dmc1_clk, !78, !"dmc1_clk", i1 false, i1 false}
!78 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 84, i32 20}
!79 = distinct !{null, !80, !"s5pv210_dram_conf", i1 false, i1 false}
!80 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 107, i32 25}
!81 = !{ptr @s5pv210_freq_table, !82, !"s5pv210_freq_table", i1 false, i1 false}
!82 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 124, i32 39}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 236, i32 3}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @s5pv210_target._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @s5pv210_target._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 481, i32 2}
!90 = !{ptr @s5pv210_target.__UNIQUE_ID_ddebug300, !89, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!91 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 85, i32 8}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @set_freq_lock, !93, !"set_freq_lock", i1 false, i1 false}
!96 = !{ptr @dvs_conf, !97, !"dvs_conf", i1 false, i1 false}
!97 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 144, i32 32}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 207, i32 3}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @s5pv210_set_refresh._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @s5pv210_set_refresh._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @clkdiv_val, !104, !"clkdiv_val", i1 false, i1 false}
!104 = !{!"../drivers/cpufreq/s5pv210-cpufreq.c", i32 167, i32 12}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2148707055, i64 2148707060, i64 2148707073, i64 2148707117, i64 2148707151, i64 2148707172}
!115 = !{i64 2044861}
!116 = !{i64 2044443}
