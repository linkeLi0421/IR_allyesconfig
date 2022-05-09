; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/cpufreq-dt.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq-dt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.private_data = type { %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.cpufreq_dt_platform_data = type { i8, ptr, ptr, ptr, ptr }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_cpufreq_dt__301_369_dt_cpufreq_platdrv_init6 = internal global ptr @dt_cpufreq_platdrv_init, section ".initcall6.init", align 4
@dt_cpufreq_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dt_cpufreq_probe, ptr @dt_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dt_cpufreq_platdrv_exit = internal global ptr @dt_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias302 = internal constant [37 x i8] c"cpufreq_dt.alias=platform:cpufreq-dt\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [57 x i8] c"cpufreq_dt.author=Viresh Kumar <viresh.kumar@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [51 x i8] c"cpufreq_dt.author=Shawn Guo <shawn.guo@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [46 x i8] c"cpufreq_dt.description=Generic cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [43 x i8] c"cpufreq_dt.file=drivers/cpufreq/cpufreq-dt\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [23 x i8] c"cpufreq_dt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-dt\00", [21 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@dt_cpufreq_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"cpufreq-dt\00\00\00\00\00\00", i16 36, ptr null, ptr @cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @set_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr @cpufreq_online, ptr @cpufreq_offline, ptr @cpufreq_exit, ptr @cpufreq_generic_suspend, ptr null, ptr null, ptr @cpufreq_dt_attr, i8 0, ptr null, ptr @cpufreq_register_em_with_opp }, [48 x i8] zeroinitializer }, align 32
@dt_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed register driver: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dt_cpufreq_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/cpufreq/cpufreq-dt.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dt_cpufreq_probe._entry_ptr = internal global ptr @dt_cpufreq_probe._entry, section ".printk_index", align 4
@dt_cpufreq_early_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dt_cpufreq_early_init\00", [42 x i8] zeroinitializer }, align 32
@dt_cpufreq_early_init._entry_ptr = internal global ptr @dt_cpufreq_early_init._entry, section ".printk_index", align 4
@dt_cpufreq_early_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"OPP table can't be empty\0A\00", [38 x i8] zeroinitializer }, align 32
@dt_cpufreq_early_init._entry_ptr.10 = internal global ptr @dt_cpufreq_early_init._entry.8, section ".printk_index", align 4
@dt_cpufreq_early_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: failed to mark OPPs as shared: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@dt_cpufreq_early_init._entry_ptr.13 = internal global ptr @dt_cpufreq_early_init._entry.11, section ".printk_index", align 4
@dt_cpufreq_early_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init cpufreq table: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dt_cpufreq_early_init._entry_ptr.16 = internal global ptr @dt_cpufreq_early_init._entry.14, section ".printk_index", align 4
@priv_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @priv_list, ptr @priv_list }, [24 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpu0-supply\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpu0\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu-supply\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@find_supply_name.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq_dt\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"find_supply_name\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no regulator for cpu%d\0A\00", [40 x i8] zeroinitializer }, align 32
@cpufreq_dt_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @cpufreq_freq_attr_scaling_available_freqs, ptr null, ptr null], [20 x i8] zeroinitializer }, align 32
@cpufreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cpufreq_dt: failed to find data for cpu%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpufreq_init\00", [19 x i8] zeroinitializer }, align 32
@cpufreq_init._entry_ptr = internal global ptr @cpufreq_init._entry, section ".printk_index", align 4
@cpufreq_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 121, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: failed to get clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cpufreq_init._entry_ptr.29 = internal global ptr @cpufreq_init._entry.27, section ".printk_index", align 4
@cpufreq_freq_attr_scaling_boost_freqs = external dso_local global %struct.freq_attr, align 4
@cpufreq_freq_attr_scaling_available_freqs = external dso_local global %struct.freq_attr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"dt_cpufreq_platdrv\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 362, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 364, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"dt_cpufreq_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 175, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 345, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 228, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 273, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 282, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 288, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"priv_list\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 37, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 108, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 84, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 86, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 91, i32 28 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 93, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 97, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"cpufreq_dt_attr\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 39, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 113, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [32 x i8] c"../drivers/cpufreq/cpufreq-dt.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 121, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_dt_cpufreq_platdrv_exit, ptr @__initcall__kmod_cpufreq_dt__301_369_dt_cpufreq_platdrv_init6, ptr @cpufreq_init._entry, ptr @cpufreq_init._entry.27, ptr @cpufreq_init._entry_ptr, ptr @cpufreq_init._entry_ptr.29, ptr @dt_cpufreq_early_init._entry, ptr @dt_cpufreq_early_init._entry.11, ptr @dt_cpufreq_early_init._entry.14, ptr @dt_cpufreq_early_init._entry.8, ptr @dt_cpufreq_early_init._entry_ptr, ptr @dt_cpufreq_early_init._entry_ptr.10, ptr @dt_cpufreq_early_init._entry_ptr.13, ptr @dt_cpufreq_early_init._entry_ptr.16, ptr @dt_cpufreq_platdrv_exit, ptr @dt_cpufreq_probe._entry, ptr @dt_cpufreq_probe._entry_ptr, ptr @dt_cpufreq_platdrv, ptr @.str, ptr @dt_cpufreq_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @priv_list, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @cpufreq_dt_attr, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_cpufreq_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_cpufreq_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_cpufreq_early_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_cpufreq_early_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_cpufreq_early_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_cpufreq_early_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @priv_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_dt_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dt_cpufreq_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dt_cpufreq_platdrv, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dt_cpufreq_platdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @dt_cpufreq_platdrv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt_cpufreq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg_name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  br label %for.cond

for.cond:                                         ; preds = %dt_cpufreq_early_init.exit.for.cond_crit_edge, %entry
  %cpu.0 = phi i32 [ -1, %entry ], [ %call1, %dt_cpufreq_early_init.exit.for.cond_crit_edge ]
  %call1 = call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %2)
  %cmp = icmp ult i32 %call1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_name.i) #8
  %div3.i.i.i.i = lshr i32 %call1, 5
  %and.i.i.i.i = and i32 %call1, 31
  %3 = shl nuw i32 1, %and.i.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %cpumask_test_cpu.exit.i.i.for.cond.i.i_crit_edge, %for.body
  %priv.0.in.i.i = phi ptr [ @priv_list, %for.body ], [ %priv.0.i.i, %cpumask_test_cpu.exit.i.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %priv.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %priv.0.i.i = load ptr, ptr %priv.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %priv.0.i.i, @priv_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cpus.i.i = getelementptr inbounds %struct.private_data, ptr %priv.0.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpus.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call1)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %7, %call1
  br i1 %cmp.not.i.i.i.i.i, label %for.body.i.i.cpumask_test_cpu.exit.i.i_crit_edge, label %land.rhs.i.i.i.i.i

for.body.i.i.cpumask_test_cpu.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i.i

land.rhs.i.i.i.i.i:                               ; preds = %for.body.i.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpumask_test_cpu.exit.i.i_crit_edge, label %if.then.i.i.i.i.i, !prof !83

land.rhs.i.i.i.i.i.cpumask_test_cpu.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_test_cpu.exit.i.i

cpumask_test_cpu.exit.i.i:                        ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.cpumask_test_cpu.exit.i.i_crit_edge, %for.body.i.i.cpumask_test_cpu.exit.i.i_crit_edge
  %arrayidx.i.i.i.i = getelementptr i32, ptr %6, i32 %div3.i.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %10 = and i32 %9, %3
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %cpumask_test_cpu.exit.i.i.for.cond.i.i_crit_edge, label %cpufreq_dt_find_data.exit.i

cpumask_test_cpu.exit.i.i.for.cond.i.i_crit_edge: ; preds = %cpumask_test_cpu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

cpufreq_dt_find_data.exit.i:                      ; preds = %cpumask_test_cpu.exit.i.i
  %tobool.not.i = icmp eq ptr %priv.0.i.i, null
  br i1 %tobool.not.i, label %cpufreq_dt_find_data.exit.i.if.end.i_crit_edge, label %cpufreq_dt_find_data.exit.i.dt_cpufreq_early_init.exit_crit_edge

cpufreq_dt_find_data.exit.i.dt_cpufreq_early_init.exit_crit_edge: ; preds = %cpufreq_dt_find_data.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dt_cpufreq_early_init.exit

cpufreq_dt_find_data.exit.i.if.end.i_crit_edge:   ; preds = %cpufreq_dt_find_data.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %cpufreq_dt_find_data.exit.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge
  %call1.i = call ptr @get_cpu_device(i32 noundef %call1) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.dt_cpufreq_early_init.exit.thread_crit_edge, label %if.end4.i

if.end.i.dt_cpufreq_early_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dt_cpufreq_early_init.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #8
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.end4.i.dt_cpufreq_early_init.exit.thread_crit_edge, label %if.end8.i

if.end4.i.dt_cpufreq_early_init.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dt_cpufreq_early_init.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %cpus.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 1
  %call9.i = call zeroext i1 @alloc_cpumask_var(ptr noundef %cpus.i, i32 noundef 3264) #8
  br i1 %call9.i, label %if.end11.i, label %if.end8.i.dt_cpufreq_early_init.exit.thread_crit_edge

if.end8.i.dt_cpufreq_early_init.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dt_cpufreq_early_init.exit.thread

if.end11.i:                                       ; preds = %if.end8.i
  %11 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpus.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call1)
  %cmp.not.i.i.i.i = icmp ugt i32 %13, %call1
  br i1 %cmp.not.i.i.i.i, label %if.end11.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.end11.i.cpumask_set_cpu.exit.i_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.end11.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.end11.i.cpumask_set_cpu.exit.i_crit_edge
  call void @_set_bit(i32 noundef %call1, ptr noundef %12) #8
  %cpu_dev13.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %cpu_dev13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1.i, ptr %cpu_dev13.i, align 4
  %call14.i = call fastcc ptr @find_supply_name(ptr noundef nonnull %call1.i) #8
  %15 = ptrtoint ptr %reg_name.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call14.i, ptr %reg_name.i, align 4
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %cpumask_set_cpu.exit.i.if.end26.i_crit_edge, label %if.then16.i

cpumask_set_cpu.exit.i.if.end26.i_crit_edge:      ; preds = %cpumask_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then16.i:                                      ; preds = %cpumask_set_cpu.exit.i
  %call17.i = call ptr @dev_pm_opp_set_regulators(ptr noundef nonnull %call1.i, ptr noundef nonnull %reg_name.i, i32 noundef 1) #8
  %opp_table.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %opp_table.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17.i, ptr %opp_table.i, align 4
  %cmp.i.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then20.i, label %if.then16.i.if.end26.i_crit_edge

if.then16.i.if.end26.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then20.i:                                      ; preds = %if.then16.i
  %cmp.not.i = icmp eq ptr %call17.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then20.i.free_cpumask.i_crit_edge, label %do.end.i

if.then20.i.free_cpumask.i_crit_edge:             ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_cpumask.i

do.end.i:                                         ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call17.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.6, i32 noundef %17) #12
  br label %free_cpumask.i

if.end26.i:                                       ; preds = %if.then16.i.if.end26.i_crit_edge, %cpumask_set_cpu.exit.i.if.end26.i_crit_edge
  %18 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpus.i, align 4
  %call28.i = call i32 @dev_pm_opp_of_get_sharing_cpus(ptr noundef nonnull %call1.i, ptr noundef %19) #8
  %20 = zext i32 %call28.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call28.i, label %if.end26.i.out.i_crit_edge [
    i32 0, label %if.end26.i.if.end39.i_crit_edge
    i32 -2, label %if.end33.i
  ]

if.end26.i.if.end39.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.end26.i.out.i_crit_edge:                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpus.i, align 4
  %call35.i = call i32 @dev_pm_opp_get_sharing_cpus(ptr noundef nonnull %call1.i, ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp ne i32 %call35.i, 0
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end33.i, %if.end26.i.if.end39.i_crit_edge
  %fallback.0.off0.i = phi i1 [ false, %if.end26.i.if.end39.i_crit_edge ], [ %tobool36.not.i, %if.end33.i ]
  %23 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cpus.i, align 4
  %call41.i = call i32 @dev_pm_opp_of_cpumask_add_table(ptr noundef %24) #8
  %25 = zext i32 %call41.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call41.i, label %if.end39.i.if.end47.i_crit_edge [
    i32 0, label %if.then43.i
    i32 -517, label %if.end39.i.out.i_crit_edge
  ]

if.end39.i.out.i_crit_edge:                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end39.i.if.end47.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %have_static_opps.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %have_static_opps.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %have_static_opps.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then43.i, %if.end39.i.if.end47.i_crit_edge
  %call48.i = call i32 @dev_pm_opp_get_opp_count(ptr noundef nonnull %call1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 1
  br i1 %cmp49.i, label %do.end53.i, label %if.end54.i

do.end53.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.9) #12
  br label %out.i

if.end54.i:                                       ; preds = %if.end47.i
  br i1 %fallback.0.off0.i, label %if.then56.i, label %if.end54.i.if.end66.i_crit_edge

if.end54.i.if.end66.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then56.i:                                      ; preds = %if.end54.i
  %27 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpus.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %29, 31
  %30 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %30, 536870908
  %31 = call ptr @memset(ptr %28, i32 255, i32 %mul.i.i.i)
  %32 = load ptr, ptr %cpus.i, align 4
  %call59.i = call i32 @dev_pm_opp_set_sharing_cpus(ptr noundef nonnull %call1.i, ptr noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.then56.i.if.end66.i_crit_edge, label %do.end64.i

if.then56.i.if.end66.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

do.end64.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i32 noundef %call59.i) #12
  br label %if.end66.i

if.end66.i:                                       ; preds = %do.end64.i, %if.then56.i.if.end66.i_crit_edge, %if.end54.i.if.end66.i_crit_edge
  %freq_table.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4
  %call67.i = call i32 @dev_pm_opp_init_cpufreq_table(ptr noundef nonnull %call1.i, ptr noundef %freq_table.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end73.i, label %do.end72.i

do.end72.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.15, i32 noundef %call67.i) #12
  br label %out.i

if.end73.i:                                       ; preds = %if.end66.i
  %33 = load ptr, ptr @priv_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef nonnull @priv_list, ptr noundef %33) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end73.i.dt_cpufreq_early_init.exit_crit_edge

if.end73.i.dt_cpufreq_early_init.exit_crit_edge:  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dt_cpufreq_early_init.exit

if.end.i.i.i:                                     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @priv_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %call.i.i, ptr @priv_list, align 4
  br label %dt_cpufreq_early_init.exit

out.i:                                            ; preds = %do.end72.i, %do.end53.i, %if.end39.i.out.i_crit_edge, %if.end26.i.out.i_crit_edge
  %ret.0.i = phi i32 [ -19, %do.end53.i ], [ %call67.i, %do.end72.i ], [ %call28.i, %if.end26.i.out.i_crit_edge ], [ %call41.i, %if.end39.i.out.i_crit_edge ]
  %have_static_opps74.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %have_static_opps74.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %have_static_opps74.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool75.not.i = icmp eq i8 %38, 0
  br i1 %tobool75.not.i, label %out.i.if.end78.i_crit_edge, label %if.then76.i

out.i.if.end78.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i

if.then76.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cpus.i, align 4
  call void @dev_pm_opp_of_cpumask_remove_table(ptr noundef %40) #8
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then76.i, %out.i.if.end78.i_crit_edge
  %opp_table79.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %opp_table79.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %opp_table79.i, align 4
  call void @dev_pm_opp_put_regulators(ptr noundef %42) #8
  br label %free_cpumask.i

free_cpumask.i:                                   ; preds = %if.end78.i, %do.end.i, %if.then20.i.free_cpumask.i_crit_edge
  %ret.1.i = phi i32 [ %17, %do.end.i ], [ -517, %if.then20.i.free_cpumask.i_crit_edge ], [ %ret.0.i, %if.end78.i ]
  %43 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cpus.i, align 4
  call void @free_cpumask_var(ptr noundef %44) #8
  br label %dt_cpufreq_early_init.exit

dt_cpufreq_early_init.exit.thread:                ; preds = %if.end8.i.dt_cpufreq_early_init.exit.thread_crit_edge, %if.end4.i.dt_cpufreq_early_init.exit.thread_crit_edge, %if.end.i.dt_cpufreq_early_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end8.i.dt_cpufreq_early_init.exit.thread_crit_edge ], [ -12, %if.end4.i.dt_cpufreq_early_init.exit.thread_crit_edge ], [ -517, %if.end.i.dt_cpufreq_early_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_name.i) #8
  br label %err

dt_cpufreq_early_init.exit:                       ; preds = %free_cpumask.i, %if.end.i.i.i, %if.end73.i.dt_cpufreq_early_init.exit_crit_edge, %cpufreq_dt_find_data.exit.i.dt_cpufreq_early_init.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %free_cpumask.i ], [ 0, %cpufreq_dt_find_data.exit.i.dt_cpufreq_early_init.exit_crit_edge ], [ 0, %if.end73.i.dt_cpufreq_early_init.exit_crit_edge ], [ 0, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_name.i) #8
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %dt_cpufreq_early_init.exit.for.cond_crit_edge, label %dt_cpufreq_early_init.exit.err_crit_edge

dt_cpufreq_early_init.exit.err_crit_edge:         ; preds = %dt_cpufreq_early_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

dt_cpufreq_early_init.exit.for.cond_crit_edge:    ; preds = %dt_cpufreq_early_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %for.end.if.end18_crit_edge, label %if.then5

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then5:                                         ; preds = %for.end
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %1, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool6.not = icmp eq i8 %46, 0
  br i1 %tobool6.not, label %if.then5.if.end9_crit_edge, label %if.then7

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %47 = load i16, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 1), align 4
  %48 = or i16 %47, 8
  store i16 %48, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 1), align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5.if.end9_crit_edge
  %resume = getelementptr inbounds %struct.cpufreq_dt_platform_data, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %resume, align 4
  store ptr %50, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 19), align 4
  %suspend = getelementptr inbounds %struct.cpufreq_dt_platform_data, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %suspend, align 4
  %tobool10.not = icmp eq ptr %52, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %52, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 18), align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %get_intermediate = getelementptr inbounds %struct.cpufreq_dt_platform_data, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %get_intermediate to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_intermediate, align 4
  %tobool14.not = icmp eq ptr %54, null
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %target_intermediate = getelementptr inbounds %struct.cpufreq_dt_platform_data, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %target_intermediate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %target_intermediate, align 4
  store ptr %56, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 11), align 4
  %57 = ptrtoint ptr %get_intermediate to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %get_intermediate, align 4
  store ptr %58, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @dt_cpufreq_driver, i32 0, i32 10), align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge, %for.end.if.end18_crit_edge
  %call19 = call i32 @cpufreq_register_driver(ptr noundef nonnull @dt_cpufreq_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %do.end

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call19) #12
  br label %err

err:                                              ; preds = %do.end, %dt_cpufreq_early_init.exit.err_crit_edge, %dt_cpufreq_early_init.exit.thread
  %ret.0 = phi i32 [ %call19, %do.end ], [ %retval.0.i.ph, %dt_cpufreq_early_init.exit.thread ], [ %retval.0.i, %dt_cpufreq_early_init.exit.err_crit_edge ]
  call fastcc void @dt_cpufreq_release()
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt_cpufreq_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @dt_cpufreq_driver) #8
  tail call fastcc void @dt_cpufreq_release()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dt_cpufreq_release() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @priv_list, align 4
  %cmp.not23 = icmp eq ptr %0, @priv_list
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %priv.024 = phi ptr [ %tmp.026, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %priv.024 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.026 = load ptr, ptr %priv.024, align 4
  %cpu_dev = getelementptr inbounds %struct.private_data, ptr %priv.024, i32 0, i32 2
  %2 = ptrtoint ptr %cpu_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dev, align 4
  %freq_table = getelementptr inbounds %struct.private_data, ptr %priv.024, i32 0, i32 4
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef %3, ptr noundef %freq_table) #8
  %have_static_opps = getelementptr inbounds %struct.private_data, ptr %priv.024, i32 0, i32 5
  %4 = ptrtoint ptr %have_static_opps to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %have_static_opps, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %cpus = getelementptr inbounds %struct.private_data, ptr %priv.024, i32 0, i32 1
  %6 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpus, align 4
  tail call void @dev_pm_opp_of_cpumask_remove_table(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %opp_table = getelementptr inbounds %struct.private_data, ptr %priv.024, i32 0, i32 3
  %8 = ptrtoint ptr %opp_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %opp_table, align 4
  tail call void @dev_pm_opp_put_regulators(ptr noundef %9) #8
  %cpus6 = getelementptr inbounds %struct.private_data, ptr %priv.024, i32 0, i32 1
  %10 = ptrtoint ptr %cpus6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpus6, align 4
  tail call void @free_cpumask_var(ptr noundef %11) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %priv.024) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %priv.024, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %priv.024 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %18 = ptrtoint ptr %priv.024 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %priv.024, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %priv.024, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %tmp.026, @priv_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_supply_name(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_node_get(ptr noundef %3) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !85

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 79, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool24.not = icmp eq i32 %1, 0
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  %call26 = tail call ptr @of_find_property(ptr noundef nonnull %call, ptr noundef nonnull @.str.18, ptr noundef null) #8
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then25.if.end30_crit_edge, label %if.then25.node_put_crit_edge

if.then25.node_put_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_put

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end30:                                         ; preds = %if.then25.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %call31 = tail call ptr @of_find_property(ptr noundef nonnull %call, ptr noundef nonnull @.str.20, ptr noundef null) #8
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.body35, label %if.end30.node_put_crit_edge

if.end30.node_put_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_put

do.body35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_supply_name.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_supply_name, %if.then45)) #8
          to label %node_put [label %if.then45], !srcloc !86

if.then45:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @find_supply_name.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %1) #8
  br label %node_put

node_put:                                         ; preds = %if.then45, %do.body35, %if.end30.node_put_crit_edge, %if.then25.node_put_crit_edge
  %name.0 = phi ptr [ null, %if.then45 ], [ @.str.19, %if.then25.node_put_crit_edge ], [ @.str.21, %if.end30.node_put_crit_edge ], [ null, %do.body35 ]
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %node_put, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %name.0, %node_put ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_regulators(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_get_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_cpumask_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_cpumask_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpufreq_init(ptr noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %div3.i.i.i = lshr i32 %1, 5
  %and.i.i.i = and i32 %1, 31
  %2 = shl nuw i32 1, %and.i.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %cpumask_test_cpu.exit.i.for.cond.i_crit_edge, %entry
  %priv.0.in.i = phi ptr [ @priv_list, %entry ], [ %priv.0.i, %cpumask_test_cpu.exit.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %priv.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %priv.0.i = load ptr, ptr %priv.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %priv.0.i, @priv_list
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %cpus.i = getelementptr inbounds %struct.private_data, ptr %priv.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpus.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp.not.i.i.i.i = icmp ugt i32 %6, %1
  br i1 %cmp.not.i.i.i.i, label %for.body.i.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

for.body.i.cpumask_test_cpu.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %for.body.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, %for.body.i.cpumask_test_cpu.exit.i_crit_edge
  %arrayidx.i.i.i = getelementptr i32, ptr %5, i32 %div3.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %9 = and i32 %8, %2
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %cpumask_test_cpu.exit.i.for.cond.i_crit_edge, label %cpufreq_dt_find_data.exit

cpumask_test_cpu.exit.i.for.cond.i_crit_edge:     ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

cpufreq_dt_find_data.exit:                        ; preds = %cpumask_test_cpu.exit.i
  %cpus.i.le = getelementptr inbounds %struct.private_data, ptr %priv.0.i, i32 0, i32 1
  %tobool.not = icmp eq ptr %priv.0.i, null
  br i1 %tobool.not, label %cpufreq_dt_find_data.exit.do.end_crit_edge, label %if.end

cpufreq_dt_find_data.exit.do.end_crit_edge:       ; preds = %cpufreq_dt_find_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %cpufreq_dt_find_data.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %11) #12
  br label %cleanup

if.end:                                           ; preds = %cpufreq_dt_find_data.exit
  %cpu_dev3 = getelementptr inbounds %struct.private_data, ptr %priv.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %cpu_dev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_dev3, align 4
  %call4 = tail call ptr @clk_get(ptr noundef %13, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %14) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @dev_pm_opp_get_max_transition_latency(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %spec.store.select = select i1 %tobool13.not, i32 -1, i32 %call12
  %15 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %policy, align 4
  %17 = ptrtoint ptr %cpus.i.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpus.i.le, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %19, 31
  %20 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %20, 536870908
  %21 = call ptr @memcpy(ptr %16, ptr %18, i32 %mul.i.i)
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %22 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %priv.0.i, ptr %driver_data, align 4
  %clk = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call4, ptr %clk, align 4
  %freq_table = getelementptr inbounds %struct.private_data, ptr %priv.0.i, i32 0, i32 4
  %24 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %freq_table, align 4
  %freq_table17 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %26 = ptrtoint ptr %freq_table17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %freq_table17, align 4
  %call18 = tail call i32 @dev_pm_opp_get_suspend_opp_freq(ptr noundef %13) #8
  %div = udiv i32 %call18, 1000
  %suspend_freq = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 10
  %27 = ptrtoint ptr %suspend_freq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div, ptr %suspend_freq, align 4
  %transition_latency19 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %transition_latency19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.store.select, ptr %transition_latency19, align 4
  %dvfs_possible_from_any_cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 31
  %29 = ptrtoint ptr %dvfs_possible_from_any_cpu to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %dvfs_possible_from_any_cpu, align 4
  %call20 = tail call zeroext i1 @policy_has_boost_freq(ptr noundef %policy) #8
  br i1 %call20, label %if.then21, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end11
  %call22 = tail call i32 @cpufreq_enable_boost_support() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %out_clk_put

if.end25:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  store ptr @cpufreq_freq_attr_scaling_boost_freqs, ptr getelementptr inbounds ([3 x ptr], ptr @cpufreq_dt_attr, i32 0, i32 1), align 4
  br label %cleanup

out_clk_put:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_put(ptr noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %out_clk_put, %if.end25, %if.end11.cleanup_crit_edge, %if.then6, %do.end
  %retval.0 = phi i32 [ %14, %if.then6 ], [ %call22, %out_clk_put ], [ -19, %do.end ], [ 0, %if.end25 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_target(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %2 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %freq_table, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %3, i32 %index, i32 2
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency, align 4
  %cpu_dev = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cpu_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_dev, align 4
  %mul = mul i32 %5, 1000
  %call = tail call i32 @dev_pm_opp_set_rate(ptr noundef %7, i32 noundef %mul) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpufreq_online(ptr nocapture noundef readnone %policy) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpufreq_offline(ptr nocapture noundef readnone %policy) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpufreq_exit(ptr nocapture noundef readonly %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_suspend(ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpufreq_register_em_with_opp(ptr nocapture noundef readonly %policy) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %1) #8
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 1
  %2 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %related_cpus, align 4
  %call1 = tail call i32 @dev_pm_opp_of_register_em(ptr noundef %call, ptr noundef %3) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_max_transition_latency(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_suspend_opp_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @policy_has_boost_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_enable_boost_support() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_free_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_cpufreq_dt__301_369_dt_cpufreq_platdrv_init6, !1, !"__initcall__kmod_cpufreq_dt__301_369_dt_cpufreq_platdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 369, i32 1}
!2 = !{ptr @__exitcall_dt_cpufreq_platdrv_exit, !1, !"__exitcall_dt_cpufreq_platdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias302, !4, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 371, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 372, i32 1}
!7 = !{ptr @__UNIQUE_ID_author304, !8, !"__UNIQUE_ID_author304", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 373, i32 1}
!9 = !{ptr @__UNIQUE_ID_description305, !10, !"__UNIQUE_ID_description305", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 374, i32 1}
!11 = !{ptr @__UNIQUE_ID_file306, !12, !"__UNIQUE_ID_file306", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 375, i32 1}
!13 = !{ptr @__UNIQUE_ID_license307, !12, !"__UNIQUE_ID_license307", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 364, i32 11}
!16 = !{ptr @dt_cpufreq_platdrv, !17, !"dt_cpufreq_platdrv", i1 false, i1 false}
!17 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 362, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 345, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dt_cpufreq_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @dt_cpufreq_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 228, i32 5}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dt_cpufreq_early_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @dt_cpufreq_early_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 273, i32 3}
!33 = !{ptr @dt_cpufreq_early_init._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @dt_cpufreq_early_init._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 282, i32 4}
!37 = !{ptr @dt_cpufreq_early_init._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @dt_cpufreq_early_init._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 288, i32 3}
!41 = !{ptr @dt_cpufreq_early_init._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @dt_cpufreq_early_init._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 84, i32 29}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 86, i32 11}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 91, i32 28}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 93, i32 10}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 97, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @find_supply_name.__UNIQUE_ID_ddebug300, !55, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!59 = !{ptr @priv_list, !60, !"priv_list", i1 false, i1 false}
!60 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 37, i32 8}
!61 = !{ptr @dt_cpufreq_driver, !62, !"dt_cpufreq_driver", i1 false, i1 false}
!62 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 175, i32 30}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 113, i32 3}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cpufreq_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @cpufreq_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 121, i32 3}
!70 = !{ptr @cpufreq_init._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cpufreq_init._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @cpufreq_dt_attr, !73, !"cpufreq_dt_attr", i1 false, i1 false}
!73 = !{!"../drivers/cpufreq/cpufreq-dt.c", i32 39, i32 26}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i8 0, i8 2}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 2148728952, i64 2148728957, i64 2148728970, i64 2148729014, i64 2148729048, i64 2148729069}
