; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/vexpress-spc-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/vexpress-spc-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_vexpress_spc_cpufreq__196_573_ve_spc_cpufreq_platdrv_init6 = internal global ptr @ve_spc_cpufreq_platdrv_init, section ".initcall6.init", align 4
@ve_spc_cpufreq_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ve_spc_cpufreq_probe, ptr @ve_spc_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ve_spc_cpufreq_platdrv_exit = internal global ptr @ve_spc_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias197 = internal constant [57 x i8] c"vexpress_spc_cpufreq.alias=platform:vexpress-spc-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_author198 = internal constant [67 x i8] c"vexpress_spc_cpufreq.author=Viresh Kumar <viresh.kumar@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author199 = internal constant [64 x i8] c"vexpress_spc_cpufreq.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description200 = internal constant [76 x i8] c"vexpress_spc_cpufreq.description=Vexpress SPC ARM big LITTLE cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file201 = internal constant [63 x i8] c"vexpress_spc_cpufreq.file=drivers/cpufreq/vexpress-spc-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license202 = internal constant [36 x i8] c"vexpress_spc_cpufreq.license=GPL v2\00", section ".modinfo", align 1
@__pcpu_unique_physical_cluster = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@physical_cluster = weak dso_local global i32 0, section ".data..percpu", align 4
@__pcpu_unique_cpu_last_req_freq = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@cpu_last_req_freq = weak dso_local global i32 0, section ".data..percpu", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vexpress-spc-cpufreq\00", [43 x i8] zeroinitializer }, align 32
@bL_switching_enabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@ve_spc_cpufreq_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cluster_lock = internal global { [2 x %struct.mutex], [40 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cluster_lock[i]\00", [47 x i8] zeroinitializer }, align 32
@ve_spc_cpufreq_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"vexpress-spc\00\00\00\00", i16 40, ptr null, ptr @ve_spc_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @ve_spc_cpufreq_set_target, ptr null, ptr null, ptr null, ptr null, ptr @ve_spc_cpufreq_get_rate, ptr null, ptr null, ptr null, ptr null, ptr @ve_spc_cpufreq_exit, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr @cpufreq_register_em_with_opp }, [48 x i8] zeroinitializer }, align 32
@ve_spc_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016vexpress_spc_cpufreq: %s: Failed registering platform driver: %s, err: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ve_spc_cpufreq_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/cpufreq/vexpress-spc-cpufreq.c\00", [57 x i8] zeroinitializer }, align 32
@ve_spc_cpufreq_probe._entry_ptr = internal global ptr @ve_spc_cpufreq_probe._entry, section ".printk_index", align 4
@ve_spc_cpufreq_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016vexpress_spc_cpufreq: %s: Registered platform driver: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@ve_spc_cpufreq_probe._entry_ptr.7 = internal global ptr @ve_spc_cpufreq_probe._entry.5, section ".printk_index", align 4
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@ve_spc_cpufreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013vexpress_spc_cpufreq: %s: failed to get cpu%d device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ve_spc_cpufreq_init\00", [44 x i8] zeroinitializer }, align 32
@ve_spc_cpufreq_init._entry_ptr = internal global ptr @ve_spc_cpufreq_init._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@freq_table = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@ve_spc_cpufreq_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 447, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: CPU %d initialized\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ve_spc_cpufreq_init._entry_ptr.14 = internal global ptr @ve_spc_cpufreq_init._entry.10, section ".printk_index", align 4
@cpu_topology = external dso_local local_unnamed_addr global [4 x %struct.cpu_topology], align 4
@cluster_usage = internal global { [3 x %struct.atomic_t], [20 x i8] } zeroinitializer, align 32
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@clk_big_min = internal global { i32, [28 x i8] } zeroinitializer, align 32
@clk_little_max = internal global { i32, [28 x i8] } zeroinitializer, align 32
@clk = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@_get_cluster_clk_and_freq_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 343, ptr @.str.17, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Failed to get clk for cpu: %d, cluster: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_get_cluster_clk_and_freq_table\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@_get_cluster_clk_and_freq_table._entry_ptr = internal global ptr @_get_cluster_clk_and_freq_table._entry, section ".printk_index", align 4
@_get_cluster_clk_and_freq_table._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.4, i32 349, ptr @.str.17, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to get data for cluster: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@_get_cluster_clk_and_freq_table._entry_ptr.20 = internal global ptr @_get_cluster_clk_and_freq_table._entry.18, section ".printk_index", align 4
@ve_spc_cpufreq_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013vexpress_spc_cpufreq: %s: clk_set_rate failed: %d, old cluster: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ve_spc_cpufreq_set_rate\00", [40 x i8] zeroinitializer }, align 32
@ve_spc_cpufreq_set_rate._entry_ptr = internal global ptr @ve_spc_cpufreq_set_rate._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@ve_spc_cpufreq_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.23, ptr @.str.4, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ve_spc_cpufreq_exit\00", [44 x i8] zeroinitializer }, align 32
@ve_spc_cpufreq_exit._entry_ptr = internal global ptr @ve_spc_cpufreq_exit._entry, section ".printk_index", align 4
@bL_switcher_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @bL_cpufreq_switcher_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@bL_cpufreq_switcher_notifier.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vexpress_spc_cpufreq\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bL_cpufreq_switcher_notifier\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: action: %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vexpress_spc_cpufreq: %s: action: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@ve_spc_cpufreq_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016vexpress_spc_cpufreq: %s: Un-registered platform driver: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ve_spc_cpufreq_remove\00", [42 x i8] zeroinitializer }, align 32
@ve_spc_cpufreq_remove._entry_ptr = internal global ptr @ve_spc_cpufreq_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"ve_spc_cpufreq_platdrv\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 566, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 568, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"bL_switching_enabled\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 35, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"cluster_lock\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 59, i32 21 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 533, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"ve_spc_cpufreq_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 466, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 540, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 547, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 419, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"freq_table\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 50, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 447, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"cluster_usage\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 51, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"clk_big_min\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 53, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"clk_little_max\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 54, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 49, i32 20 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 342, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 348, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 168, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 457, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"bL_switcher_notifier\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 508, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 483, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [42 x i8] c"../drivers/cpufreq/vexpress-spc-cpufreq.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 561, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias197, ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_author199, ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__exitcall_ve_spc_cpufreq_platdrv_exit, ptr @__initcall__kmod_vexpress_spc_cpufreq__196_573_ve_spc_cpufreq_platdrv_init6, ptr @_get_cluster_clk_and_freq_table._entry, ptr @_get_cluster_clk_and_freq_table._entry.18, ptr @_get_cluster_clk_and_freq_table._entry_ptr, ptr @_get_cluster_clk_and_freq_table._entry_ptr.20, ptr @ve_spc_cpufreq_exit._entry, ptr @ve_spc_cpufreq_exit._entry_ptr, ptr @ve_spc_cpufreq_init._entry, ptr @ve_spc_cpufreq_init._entry.10, ptr @ve_spc_cpufreq_init._entry_ptr, ptr @ve_spc_cpufreq_init._entry_ptr.14, ptr @ve_spc_cpufreq_platdrv_exit, ptr @ve_spc_cpufreq_probe._entry, ptr @ve_spc_cpufreq_probe._entry.5, ptr @ve_spc_cpufreq_probe._entry_ptr, ptr @ve_spc_cpufreq_probe._entry_ptr.7, ptr @ve_spc_cpufreq_remove._entry, ptr @ve_spc_cpufreq_remove._entry_ptr, ptr @ve_spc_cpufreq_set_rate._entry, ptr @ve_spc_cpufreq_set_rate._entry_ptr, ptr @ve_spc_cpufreq_platdrv, ptr @.str, ptr @bL_switching_enabled, ptr @ve_spc_cpufreq_probe.__key, ptr @cluster_lock, ptr @.str.1, ptr @ve_spc_cpufreq_driver, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @freq_table, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @cluster_usage, ptr @clk_big_min, ptr @clk_little_max, ptr @clk, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @bL_switcher_notifier, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_cpufreq_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switching_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_cpufreq_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_lock to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_cpufreq_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_cpufreq_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_cpufreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_cpufreq_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_usage to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_big_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_little_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_cluster_clk_and_freq_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_cluster_clk_and_freq_table._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_cpufreq_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_cpufreq_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ve_spc_cpufreq_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ve_spc_cpufreq_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ve_spc_cpufreq_platdrv, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ve_spc_cpufreq_platdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @ve_spc_cpufreq_platdrv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ve_spc_cpufreq_probe(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @bL_switcher_get_enabled() #9
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr @bL_switching_enabled, align 1
  tail call void @__mutex_init(ptr noundef nonnull @cluster_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ve_spc_cpufreq_probe.__key) #9
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([2 x %struct.mutex], ptr @cluster_lock, i32 0, i32 1), ptr noundef nonnull @.str.1, ptr noundef nonnull @ve_spc_cpufreq_probe.__key) #9
  %0 = load i8, ptr @bL_switching_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load i16, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @ve_spc_cpufreq_driver, i32 0, i32 1), align 4
  %2 = or i16 %1, 4
  store i16 %2, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @ve_spc_cpufreq_driver, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @ve_spc_cpufreq_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @ve_spc_cpufreq_driver, i32 noundef %call2) #12
  br label %if.end20

if.else:                                          ; preds = %if.end
  %call.i = tail call i32 @bL_switcher_register_notifier(ptr noundef nonnull @bL_switcher_notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %do.end16, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @ve_spc_cpufreq_driver) #9
  br label %if.end20

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @ve_spc_cpufreq_driver) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end16, %if.then11, %do.end7
  %ret.0 = phi i32 [ %call2, %do.end7 ], [ %call.i, %if.then11 ], [ 0, %do.end16 ]
  tail call void @bL_switcher_put_enabled() #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ve_spc_cpufreq_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @bL_switcher_get_enabled() #9
  %call.i = tail call i32 @bL_switcher_unregister_notifier(ptr noundef nonnull @bL_switcher_notifier) #9
  %call2 = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @ve_spc_cpufreq_driver) #9
  tail call void @bL_switcher_put_enabled() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @ve_spc_cpufreq_driver) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bL_switcher_get_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bL_switcher_put_enabled() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ve_spc_cpufreq_init(ptr nocapture noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %2 = load i8, ptr @bL_switching_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %cpu_to_cluster.exit, label %cpu_to_cluster.exit.thread

cpu_to_cluster.exit:                              ; preds = %entry
  %package_id.i.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %1, i32 3
  %3 = ptrtoint ptr %package_id.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %package_id.i.i, align 4
  %call2 = tail call ptr @get_cpu_device(i32 noundef %1) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %cpu_to_cluster.exit.do.end_crit_edge, label %if.end

cpu_to_cluster.exit.do.end_crit_edge:             ; preds = %cpu_to_cluster.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

cpu_to_cluster.exit.thread:                       ; preds = %entry
  %call278 = tail call ptr @get_cpu_device(i32 noundef %1) #9
  %tobool.not79 = icmp eq ptr %call278, null
  br i1 %tobool.not79, label %cpu_to_cluster.exit.thread.do.end_crit_edge, label %cpu_to_cluster.exit.thread.do.body16_crit_edge

cpu_to_cluster.exit.thread.do.body16_crit_edge:   ; preds = %cpu_to_cluster.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

cpu_to_cluster.exit.thread.do.end_crit_edge:      ; preds = %cpu_to_cluster.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %cpu_to_cluster.exit.thread.do.end_crit_edge, %cpu_to_cluster.exit.do.end_crit_edge
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %6) #12
  br label %cleanup

if.end:                                           ; preds = %cpu_to_cluster.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ult i32 %4, 2
  br i1 %cmp, label %if.then5, label %if.end.do.body16_crit_edge

if.end.do.body16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

if.then5:                                         ; preds = %if.end
  %7 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %policy, align 4
  %call7 = tail call i32 @dev_pm_opp_get_sharing_cpus(ptr noundef nonnull %call2, ptr noundef %8) #9
  %9 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %policy, align 4
  %call998 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %10) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call998, i32 %11)
  %cmp1099 = icmp ult i32 %call998, %11
  br i1 %cmp1099, label %if.then5.for.body_crit_edge, label %if.then5.if.end26_crit_edge

if.then5.if.end26_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then5.for.body_crit_edge:                      ; preds = %if.then5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then5.for.body_crit_edge
  %call9100 = phi i32 [ %call9, %for.body.for.body_crit_edge ], [ %call998, %if.then5.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9100
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, ptrtoint (ptr @physical_cluster to i32)
  %14 = inttoptr i32 %add to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %4, ptr %14, align 4
  %16 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %policy, align 4
  %call9 = tail call i32 @cpumask_next(i32 noundef %call9100, ptr noundef %17) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp10 = icmp ult i32 %call9, %18
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.if.end26_crit_edge

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body16:                                        ; preds = %if.end.do.body16_crit_edge, %cpu_to_cluster.exit.thread.do.body16_crit_edge
  %cond.i8088 = phi i32 [ %4, %if.end.do.body16_crit_edge ], [ 2, %cpu_to_cluster.exit.thread.do.body16_crit_edge ]
  %call28287 = phi ptr [ %call2, %if.end.do.body16_crit_edge ], [ %call278, %cpu_to_cluster.exit.thread.do.body16_crit_edge ]
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx24 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %22, ptrtoint (ptr @physical_cluster to i32)
  %23 = inttoptr i32 %add25 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %23, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.body16, %for.body.if.end26_crit_edge, %if.then5.if.end26_crit_edge
  %call28286 = phi ptr [ %call28287, %do.body16 ], [ %call2, %if.then5.if.end26_crit_edge ], [ %call2, %for.body.if.end26_crit_edge ]
  %cond.i81 = phi i32 [ %cond.i8088, %do.body16 ], [ %4, %if.then5.if.end26_crit_edge ], [ %4, %for.body.if.end26_crit_edge ]
  %25 = load i8, ptr @bL_switching_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end26.cpu_to_cluster.exit.i_crit_edge

if.end26.cpu_to_cluster.exit.i_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_to_cluster.exit.i

cond.false.i.i:                                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %id.i = getelementptr inbounds %struct.device, ptr %call28286, i32 0, i32 30
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 4
  %package_id.i.i.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %27, i32 3
  %28 = ptrtoint ptr %package_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %package_id.i.i.i, align 4
  br label %cpu_to_cluster.exit.i

cpu_to_cluster.exit.i:                            ; preds = %cond.false.i.i, %if.end26.cpu_to_cluster.exit.i_crit_edge
  %cond.i.i = phi i32 [ %29, %cond.false.i.i ], [ 2, %if.end26.cpu_to_cluster.exit.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x %struct.atomic_t], ptr @cluster_usage, i32 0, i32 %cond.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #9, !srcloc !107
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %cpu_to_cluster.exit.i.if.end31_crit_edge

cpu_to_cluster.exit.i.if.end31_crit_edge:         ; preds = %cpu_to_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end.i:                                         ; preds = %cpu_to_cluster.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond.i.i)
  %cmp2.i = icmp ult i32 %cond.i.i, 2
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call fastcc i32 @_get_cluster_clk_and_freq_table(ptr noundef %call28286) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i73 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i73, label %if.then3.i.if.end31_crit_edge, label %if.then5.i

if.then3.i.if.end31_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #9, !srcloc !109
  br label %cleanup

for.cond.i:                                       ; preds = %if.end14.i.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %i.0.i = phi i32 [ %call9.i, %if.end14.i.for.cond.i_crit_edge ], [ -1, %if.end.i.for.cond.i_crit_edge ]
  %call9.i = tail call i32 @cpumask_next(i32 noundef %i.0.i, ptr noundef nonnull @__cpu_present_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %32)
  %cmp10.i = icmp ult i32 %call9.i, %32
  br i1 %cmp10.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %call11.i = tail call ptr @get_cpu_device(i32 noundef %call9.i) #9
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %for.body.i.cleanup_crit_edge, label %if.end14.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.i:                                       ; preds = %for.body.i
  %call15.i = tail call fastcc i32 @_get_cluster_clk_and_freq_table(ptr noundef nonnull %call11.i) #9
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.for.cond.i_crit_edge, label %if.end14.i.put_clusters.i_crit_edge

if.end14.i.put_clusters.i_crit_edge:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_clusters.i

if.end14.i.for.cond.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %33 = load ptr, ptr @freq_table, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %for.end.i
  %count.0.i.i.i = phi i32 [ 0, %for.end.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %frequency.i.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %33, i32 %count.0.i.i.i, i32 2
  %34 = ptrtoint ptr %frequency.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frequency.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq i32 %35, -2
  %inc.i.i.i = add i32 %count.0.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %get_table_count.exit.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

get_table_count.exit.i.i:                         ; preds = %for.cond.i.i.i
  %36 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @freq_table, i32 0, i32 1), align 4
  br label %for.cond.i.1.i.i

for.cond.i.1.i.i:                                 ; preds = %for.cond.i.1.i.i.for.cond.i.1.i.i_crit_edge, %get_table_count.exit.i.i
  %count.0.i.1.i.i = phi i32 [ 0, %get_table_count.exit.i.i ], [ %inc.i.1.i.i, %for.cond.i.1.i.i.for.cond.i.1.i.i_crit_edge ]
  %frequency.i.1.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %36, i32 %count.0.i.1.i.i, i32 2
  %37 = ptrtoint ptr %frequency.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frequency.i.1.i.i, align 4
  %cmp.not.i.1.i.i = icmp eq i32 %38, -2
  %inc.i.1.i.i = add i32 %count.0.i.1.i.i, 1
  br i1 %cmp.not.i.1.i.i, label %get_table_count.exit.1.i.i, label %for.cond.i.1.i.i.for.cond.i.1.i.i_crit_edge

for.cond.i.1.i.i.for.cond.i.1.i.i_crit_edge:      ; preds = %for.cond.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.1.i.i

get_table_count.exit.1.i.i:                       ; preds = %for.cond.i.1.i.i
  %add.1.i.i = add i32 %count.0.i.1.i.i, %inc.i.i.i
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.1.i.i, i32 12) #9
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %get_table_count.exit.1.i.i.put_clusters.i_crit_edge, label %if.end7.i.i.i.i, !prof !110

get_table_count.exit.1.i.i.put_clusters.i_crit_edge: ; preds = %get_table_count.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_clusters.i

if.end7.i.i.i.i:                                  ; preds = %get_table_count.exit.1.i.i
  %41 = extractvalue { i32, i1 } %39, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3520) #14
  %tobool.not.i3.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i3.i, label %if.end7.i.i.i.i.put_clusters.i_crit_edge, label %if.end.i.i

if.end7.i.i.i.i.put_clusters.i_crit_edge:         ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_clusters.i

if.end.i.i:                                       ; preds = %if.end7.i.i.i.i
  store ptr %call8.i.i.i.i, ptr getelementptr inbounds ([3 x ptr], ptr @freq_table, i32 0, i32 2), align 4
  %frequency.i6677.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i.i.i, i32 0, i32 2
  %42 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @freq_table, i32 0, i32 1), align 4
  %frequency81.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %frequency81.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frequency81.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %44)
  %cmp8.not82.i.i = icmp eq i32 %44, -2
  br i1 %cmp8.not82.i.i, label %if.end.i.i.for.inc30.i.i_crit_edge, label %for.inc27.i.i.preheader

if.end.i.i.for.inc30.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.i.i

for.inc27.i.i.preheader:                          ; preds = %if.end.i.i
  %45 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @freq_table, i32 0, i32 1), align 4
  br label %for.inc27.i.i

for.inc27.i.i:                                    ; preds = %for.inc27.i.i.for.inc27.i.i_crit_edge, %for.inc27.i.i.preheader
  %46 = phi i32 [ %49, %for.inc27.i.i.for.inc27.i.i_crit_edge ], [ %44, %for.inc27.i.i.preheader ]
  %k.184.i.i = phi i32 [ %inc24.i.i, %for.inc27.i.i.for.inc27.i.i_crit_edge ], [ 0, %for.inc27.i.i.preheader ]
  %shr.i.i = lshr i32 %46, 1
  %inc24.i.i = add i32 %k.184.i.i, 1
  %frequency26.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i.i.i, i32 %k.184.i.i, i32 2
  %47 = ptrtoint ptr %frequency26.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr.i.i, ptr %frequency26.i.i, align 4
  %frequency.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %45, i32 %inc24.i.i, i32 2
  %48 = ptrtoint ptr %frequency.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frequency.i.i, align 4
  %cmp8.not.i.i = icmp eq i32 %49, -2
  br i1 %cmp8.not.i.i, label %for.inc27.i.i.for.inc30.i.i_crit_edge, label %for.inc27.i.i.for.inc27.i.i_crit_edge

for.inc27.i.i.for.inc27.i.i_crit_edge:            ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc27.i.i

for.inc27.i.i.for.inc30.i.i_crit_edge:            ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.i.i

for.inc30.i.i:                                    ; preds = %for.inc27.i.i.for.inc30.i.i_crit_edge, %if.end.i.i.for.inc30.i.i_crit_edge
  %k.1.lcssa.i.i = phi i32 [ 0, %if.end.i.i.for.inc30.i.i_crit_edge ], [ %inc24.i.i, %for.inc27.i.i.for.inc30.i.i_crit_edge ]
  %50 = load ptr, ptr @freq_table, align 4
  %frequency81.1.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %frequency81.1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %frequency81.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %52)
  %cmp8.not82.1.i.i = icmp eq i32 %52, -2
  br i1 %cmp8.not82.1.i.i, label %for.inc30.i.i.if.end22.i_crit_edge, label %for.body9.lr.ph.1.i.i

for.inc30.i.i.if.end22.i_crit_edge:               ; preds = %for.inc30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

for.body9.lr.ph.1.i.i:                            ; preds = %for.inc30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.1.lcssa.i.i)
  %cmp4.i.1.i.i = icmp sgt i32 %k.1.lcssa.i.i, 0
  %53 = load ptr, ptr @freq_table, align 4
  br label %land.lhs.true.1.i.i

land.lhs.true.1.i.i:                              ; preds = %for.inc27.1.i.i.land.lhs.true.1.i.i_crit_edge, %for.body9.lr.ph.1.i.i
  %54 = phi i32 [ %52, %for.body9.lr.ph.1.i.i ], [ %61, %for.inc27.1.i.i.land.lhs.true.1.i.i_crit_edge ]
  %k.184.1.i.i = phi i32 [ %k.1.lcssa.i.i, %for.body9.lr.ph.1.i.i ], [ %k.2.1.i.i, %for.inc27.1.i.i.land.lhs.true.1.i.i_crit_edge ]
  %j.083.1.i.i = phi i32 [ 0, %for.body9.lr.ph.1.i.i ], [ %inc28.1.i.i, %for.inc27.1.i.i.land.lhs.true.1.i.i_crit_edge ]
  br i1 %cmp4.i.1.i.i, label %for.body.i.preheader.1.i.i, label %land.lhs.true.1.i.i.cond.end.1.i.i_crit_edge

land.lhs.true.1.i.i.cond.end.1.i.i_crit_edge:     ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.1.i.i

for.body.i.preheader.1.i.i:                       ; preds = %land.lhs.true.1.i.i
  %55 = ptrtoint ptr %frequency.i6677.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %frequency.i6677.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %54)
  %cmp1.i78.1.i.i = icmp eq i32 %56, %54
  br i1 %cmp1.i78.1.i.i, label %for.body.i.preheader.1.i.i.for.inc27.1.i.i_crit_edge, label %for.body.i.preheader.1.i.i.for.cond.i65.1.i.i_crit_edge

for.body.i.preheader.1.i.i.for.cond.i65.1.i.i_crit_edge: ; preds = %for.body.i.preheader.1.i.i
  br label %for.cond.i65.1.i.i

for.body.i.preheader.1.i.i.for.inc27.1.i.i_crit_edge: ; preds = %for.body.i.preheader.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc27.1.i.i

for.cond.i65.1.i.i:                               ; preds = %for.body.i.1.i.i.for.cond.i65.1.i.i_crit_edge, %for.body.i.preheader.1.i.i.for.cond.i65.1.i.i_crit_edge
  %count.05.i79.1.i.i = phi i32 [ %inc.i64.1.i.i, %for.body.i.1.i.i.for.cond.i65.1.i.i_crit_edge ], [ 0, %for.body.i.preheader.1.i.i.for.cond.i65.1.i.i_crit_edge ]
  %inc.i64.1.i.i = add nuw nsw i32 %count.05.i79.1.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i64.1.i.i, i32 %k.1.lcssa.i.i)
  %exitcond.not.i.1.i.i = icmp eq i32 %inc.i64.1.i.i, %k.1.lcssa.i.i
  br i1 %exitcond.not.i.1.i.i, label %for.cond.i65.1.i.i.cond.end.1.i.i_crit_edge, label %for.body.i.1.i.i

for.cond.i65.1.i.i.cond.end.1.i.i_crit_edge:      ; preds = %for.cond.i65.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.1.i.i

for.body.i.1.i.i:                                 ; preds = %for.cond.i65.1.i.i
  %frequency.i66.1.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i.i.i, i32 %inc.i64.1.i.i, i32 2
  %57 = ptrtoint ptr %frequency.i66.1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %frequency.i66.1.i.i, align 4
  %cmp1.i.1.i.i = icmp eq i32 %58, %54
  br i1 %cmp1.i.1.i.i, label %search_frequency.exit.1.i.i, label %for.body.i.1.i.i.for.cond.i65.1.i.i_crit_edge

for.body.i.1.i.i.for.cond.i65.1.i.i_crit_edge:    ; preds = %for.body.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i65.1.i.i

search_frequency.exit.1.i.i:                      ; preds = %for.body.i.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i64.1.i.i, i32 %k.1.lcssa.i.i)
  %cmp.i.1.le.i.i = icmp slt i32 %inc.i64.1.i.i, %k.1.lcssa.i.i
  br i1 %cmp.i.1.le.i.i, label %search_frequency.exit.1.i.i.for.inc27.1.i.i_crit_edge, label %search_frequency.exit.1.i.i.cond.end.1.i.i_crit_edge

search_frequency.exit.1.i.i.cond.end.1.i.i_crit_edge: ; preds = %search_frequency.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.1.i.i

search_frequency.exit.1.i.i.for.inc27.1.i.i_crit_edge: ; preds = %search_frequency.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc27.1.i.i

cond.end.1.i.i:                                   ; preds = %search_frequency.exit.1.i.i.cond.end.1.i.i_crit_edge, %for.cond.i65.1.i.i.cond.end.1.i.i_crit_edge, %land.lhs.true.1.i.i.cond.end.1.i.i_crit_edge
  %inc24.1.i.i = add i32 %k.184.1.i.i, 1
  %frequency26.1.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i.i.i, i32 %k.184.1.i.i, i32 2
  %59 = ptrtoint ptr %frequency26.1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %54, ptr %frequency26.1.i.i, align 4
  br label %for.inc27.1.i.i

for.inc27.1.i.i:                                  ; preds = %cond.end.1.i.i, %search_frequency.exit.1.i.i.for.inc27.1.i.i_crit_edge, %for.body.i.preheader.1.i.i.for.inc27.1.i.i_crit_edge
  %k.2.1.i.i = phi i32 [ %k.184.1.i.i, %search_frequency.exit.1.i.i.for.inc27.1.i.i_crit_edge ], [ %inc24.1.i.i, %cond.end.1.i.i ], [ %k.184.1.i.i, %for.body.i.preheader.1.i.i.for.inc27.1.i.i_crit_edge ]
  %inc28.1.i.i = add i32 %j.083.1.i.i, 1
  %frequency.1.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %53, i32 %inc28.1.i.i, i32 2
  %60 = ptrtoint ptr %frequency.1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %frequency.1.i.i, align 4
  %cmp8.not.1.i.i = icmp eq i32 %61, -2
  br i1 %cmp8.not.1.i.i, label %for.inc27.1.i.i.if.end22.i_crit_edge, label %for.inc27.1.i.i.land.lhs.true.1.i.i_crit_edge

for.inc27.1.i.i.land.lhs.true.1.i.i_crit_edge:    ; preds = %for.inc27.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1.i.i

for.inc27.1.i.i.if.end22.i_crit_edge:             ; preds = %for.inc27.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %for.inc27.1.i.i.if.end22.i_crit_edge, %for.inc30.i.i.if.end22.i_crit_edge
  %k.1.lcssa.1.i.i = phi i32 [ %k.1.lcssa.i.i, %for.inc30.i.i.if.end22.i_crit_edge ], [ %k.2.1.i.i, %for.inc27.1.i.i.if.end22.i_crit_edge ]
  %driver_data.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i.i.i, i32 %k.1.lcssa.1.i.i, i32 1
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %k.1.lcssa.1.i.i, ptr %driver_data.i.i, align 4
  %frequency34.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i.i.i, i32 %k.1.lcssa.1.i.i, i32 2
  %63 = ptrtoint ptr %frequency34.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -2, ptr %frequency34.i.i, align 4
  %64 = load ptr, ptr @freq_table, align 4
  %frequency8.i.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %frequency8.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %frequency8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %66)
  %cmp.not9.i.i = icmp eq i32 %66, -2
  br i1 %cmp.not9.i.i, label %if.end22.i.get_table_min.exit.i_crit_edge, label %if.end22.i.for.body.i.i_crit_edge

if.end22.i.for.body.i.i_crit_edge:                ; preds = %if.end22.i
  br label %for.body.i.i

if.end22.i.get_table_min.exit.i_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_table_min.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end22.i.for.body.i.i_crit_edge
  %67 = phi i32 [ %70, %for.body.i.i.for.body.i.i_crit_edge ], [ %66, %if.end22.i.for.body.i.i_crit_edge ]
  %min_freq.011.i.i = phi i32 [ %68, %for.body.i.i.for.body.i.i_crit_edge ], [ -1, %if.end22.i.for.body.i.i_crit_edge ]
  %pos.010.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %64, %if.end22.i.for.body.i.i_crit_edge ]
  %68 = tail call i32 @llvm.umin.i32(i32 %67, i32 %min_freq.011.i.i) #9
  %incdec.ptr.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.010.i.i, i32 1
  %frequency.i4.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.010.i.i, i32 1, i32 2
  %69 = ptrtoint ptr %frequency.i4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %frequency.i4.i, align 4
  %cmp.not.i.i = icmp eq i32 %70, -2
  br i1 %cmp.not.i.i, label %for.body.i.i.get_table_min.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.get_table_min.exit.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_table_min.exit.i

get_table_min.exit.i:                             ; preds = %for.body.i.i.get_table_min.exit.i_crit_edge, %if.end22.i.get_table_min.exit.i_crit_edge
  %min_freq.0.lcssa.i.i = phi i32 [ -1, %if.end22.i.get_table_min.exit.i_crit_edge ], [ %68, %for.body.i.i.get_table_min.exit.i_crit_edge ]
  store i32 %min_freq.0.lcssa.i.i, ptr @clk_big_min, align 4
  %71 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @freq_table, i32 0, i32 1), align 4
  %frequency8.i5.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %frequency8.i5.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %frequency8.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %73)
  %cmp.not9.i6.i = icmp eq i32 %73, -2
  br i1 %cmp.not9.i6.i, label %get_table_min.exit.i.get_table_max.exit.i_crit_edge, label %get_table_min.exit.i.for.body.i11.i_crit_edge

get_table_min.exit.i.for.body.i11.i_crit_edge:    ; preds = %get_table_min.exit.i
  br label %for.body.i11.i

get_table_min.exit.i.get_table_max.exit.i_crit_edge: ; preds = %get_table_min.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_table_max.exit.i

for.body.i11.i:                                   ; preds = %for.body.i11.i.for.body.i11.i_crit_edge, %get_table_min.exit.i.for.body.i11.i_crit_edge
  %74 = phi i32 [ %77, %for.body.i11.i.for.body.i11.i_crit_edge ], [ %73, %get_table_min.exit.i.for.body.i11.i_crit_edge ]
  %max_freq.011.i.i = phi i32 [ %75, %for.body.i11.i.for.body.i11.i_crit_edge ], [ 0, %get_table_min.exit.i.for.body.i11.i_crit_edge ]
  %pos.010.i7.i = phi ptr [ %incdec.ptr.i8.i, %for.body.i11.i.for.body.i11.i_crit_edge ], [ %71, %get_table_min.exit.i.for.body.i11.i_crit_edge ]
  %75 = tail call i32 @llvm.umax.i32(i32 %74, i32 %max_freq.011.i.i) #9
  %incdec.ptr.i8.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.010.i7.i, i32 1
  %frequency.i9.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.010.i7.i, i32 1, i32 2
  %76 = ptrtoint ptr %frequency.i9.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %frequency.i9.i, align 4
  %cmp.not.i10.i = icmp eq i32 %77, -2
  br i1 %cmp.not.i10.i, label %get_table_max.exit.loopexit.i, label %for.body.i11.i.for.body.i11.i_crit_edge

for.body.i11.i.for.body.i11.i_crit_edge:          ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i11.i

get_table_max.exit.loopexit.i:                    ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = lshr i32 %75, 1
  br label %get_table_max.exit.i

get_table_max.exit.i:                             ; preds = %get_table_max.exit.loopexit.i, %get_table_min.exit.i.get_table_max.exit.i_crit_edge
  %max_freq.0.lcssa.i.i = phi i32 [ 0, %get_table_min.exit.i.get_table_max.exit.i_crit_edge ], [ %phi.bo.i, %get_table_max.exit.loopexit.i ]
  store i32 %max_freq.0.lcssa.i.i, ptr @clk_little_max, align 4
  br label %if.end31

put_clusters.i:                                   ; preds = %if.end7.i.i.i.i.put_clusters.i_crit_edge, %get_table_count.exit.1.i.i.put_clusters.i_crit_edge, %if.end14.i.put_clusters.i_crit_edge
  %ret.2.i = phi i32 [ -12, %if.end7.i.i.i.i.put_clusters.i_crit_edge ], [ -12, %get_table_count.exit.1.i.i.put_clusters.i_crit_edge ], [ %call15.i, %if.end14.i.put_clusters.i_crit_edge ]
  %call2624.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %78 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2624.i, i32 %78)
  %cmp2725.i = icmp ult i32 %call2624.i, %78
  br i1 %cmp2725.i, label %put_clusters.i.for.body28.i_crit_edge, label %put_clusters.i.get_cluster_clk_and_freq_table.exit_crit_edge

put_clusters.i.get_cluster_clk_and_freq_table.exit_crit_edge: ; preds = %put_clusters.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cluster_clk_and_freq_table.exit

put_clusters.i.for.body28.i_crit_edge:            ; preds = %put_clusters.i
  br label %for.body28.i

for.body28.i:                                     ; preds = %_put_cluster_clk_and_freq_table.exit.i.for.body28.i_crit_edge, %put_clusters.i.for.body28.i_crit_edge
  %call2626.i = phi i32 [ %call26.i, %_put_cluster_clk_and_freq_table.exit.i.for.body28.i_crit_edge ], [ %call2624.i, %put_clusters.i.for.body28.i_crit_edge ]
  %call30.i = tail call ptr @get_cpu_device(i32 noundef %call2626.i) #9
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %for.body28.i.cleanup_crit_edge, label %if.end33.i

for.body28.i.cleanup_crit_edge:                   ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33.i:                                       ; preds = %for.body28.i
  %id.i.i = getelementptr inbounds %struct.device, ptr %call30.i, i32 0, i32 30
  %79 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id.i.i, align 4
  %package_id.i.i12.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %80, i32 3
  %81 = ptrtoint ptr %package_id.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %package_id.i.i12.i, align 4
  %arrayidx.i.i = getelementptr [3 x ptr], ptr @freq_table, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i13.i = icmp eq ptr %84, null
  br i1 %tobool.not.i13.i, label %if.end33.i._put_cluster_clk_and_freq_table.exit.i_crit_edge, label %if.end.i14.i

if.end33.i._put_cluster_clk_and_freq_table.exit.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_put_cluster_clk_and_freq_table.exit.i

if.end.i14.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i.i = getelementptr [2 x ptr], ptr @clk, i32 0, i32 %82
  %85 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx1.i.i, align 4
  tail call void @clk_put(ptr noundef %86) #9
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef nonnull %call30.i, ptr noundef %arrayidx.i.i) #9
  br label %_put_cluster_clk_and_freq_table.exit.i

_put_cluster_clk_and_freq_table.exit.i:           ; preds = %if.end.i14.i, %if.end33.i._put_cluster_clk_and_freq_table.exit.i_crit_edge
  %call26.i = tail call i32 @cpumask_next(i32 noundef %call2626.i, ptr noundef nonnull @__cpu_present_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %87 = load i32, ptr @nr_cpu_ids, align 4
  %cmp27.i = icmp ult i32 %call26.i, %87
  br i1 %cmp27.i, label %_put_cluster_clk_and_freq_table.exit.i.for.body28.i_crit_edge, label %_put_cluster_clk_and_freq_table.exit.i.get_cluster_clk_and_freq_table.exit_crit_edge

_put_cluster_clk_and_freq_table.exit.i.get_cluster_clk_and_freq_table.exit_crit_edge: ; preds = %_put_cluster_clk_and_freq_table.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cluster_clk_and_freq_table.exit

_put_cluster_clk_and_freq_table.exit.i.for.body28.i_crit_edge: ; preds = %_put_cluster_clk_and_freq_table.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28.i

get_cluster_clk_and_freq_table.exit:              ; preds = %_put_cluster_clk_and_freq_table.exit.i.get_cluster_clk_and_freq_table.exit_crit_edge, %put_clusters.i.get_cluster_clk_and_freq_table.exit_crit_edge
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #9
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #9, !srcloc !109
  br label %cleanup

if.end31:                                         ; preds = %get_table_max.exit.i, %if.then3.i.if.end31_crit_edge, %cpu_to_cluster.exit.i.if.end31_crit_edge
  %arrayidx32 = getelementptr [3 x ptr], ptr @freq_table, i32 0, i32 %cond.i81
  %89 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx32, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %91 = ptrtoint ptr %freq_table to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %freq_table, align 4
  %transition_latency = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 6, i32 2
  %92 = ptrtoint ptr %transition_latency to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1000000, ptr %transition_latency, align 4
  %93 = load i8, ptr @bL_switching_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool33.not = icmp eq i8 %93, 0
  br i1 %tobool33.not, label %if.end31.do.end50_crit_edge, label %if.then34

if.end31.do.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cpu, align 4
  %arrayidx.i74 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i74, align 4
  %add.i = add i32 %97, ptrtoint (ptr @physical_cluster to i32)
  %98 = inttoptr i32 %add.i to ptr
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %arrayidx2.i = getelementptr [2 x ptr], ptr @clk, i32 0, i32 %100
  %101 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx2.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %102) #9
  %div.i = udiv i32 %call.i, 1000
  %103 = load i8, ptr @bL_switching_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i75 = icmp ne i8 %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp.i = icmp eq i32 %100, 1
  %narrow.i = select i1 %tobool.not.i75, i1 %cmp.i, i1 false
  %cond.i76 = zext i1 %narrow.i to i32
  %rate.0.i = lshr i32 %div.i, %cond.i76
  %104 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cpu, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %105
  %106 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %107, ptrtoint (ptr @cpu_last_req_freq to i32)
  %108 = inttoptr i32 %add46 to ptr
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %rate.0.i, ptr %108, align 4
  br label %do.end50

do.end50:                                         ; preds = %if.then34, %if.end31.do.end50_crit_edge
  %110 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call28286, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %111) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %get_cluster_clk_and_freq_table.exit, %for.body28.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then5.i, %do.end
  %retval.0 = phi i32 [ 0, %do.end50 ], [ -19, %do.end ], [ %ret.2.i, %get_cluster_clk_and_freq_table.exit ], [ %call4.i, %if.then5.i ], [ -19, %for.body28.i.cleanup_crit_edge ], [ -19, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ve_spc_cpufreq_set_target(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu1 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu1, align 4
  %2 = load i8, ptr @bL_switching_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.cpu_to_cluster.exit_crit_edge

entry.cpu_to_cluster.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_to_cluster.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %package_id.i.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %1, i32 3
  %3 = ptrtoint ptr %package_id.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %package_id.i.i, align 4
  br label %cpu_to_cluster.exit

cpu_to_cluster.exit:                              ; preds = %cond.false.i, %entry.cpu_to_cluster.exit_crit_edge
  %cond.i = phi i32 [ %4, %cond.false.i ], [ 2, %entry.cpu_to_cluster.exit_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @physical_cluster to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %arrayidx3 = getelementptr [3 x ptr], ptr @freq_table, i32 0, i32 %cond.i
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %11, i32 %index, i32 2
  %12 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frequency, align 4
  br i1 %tobool.not.i, label %if.end12, label %if.then

if.then:                                          ; preds = %cpu_to_cluster.exit
  %14 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then.do.body.i_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true8
  ]

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %15 = load i32, ptr @clk_big_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp5 = icmp ult i32 %13, %15
  %spec.select29 = zext i1 %cmp5 to i32
  br label %do.body.i

land.lhs.true8:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %16 = load i32, ptr @clk_little_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %16)
  %cmp9 = icmp ule i32 %13, %16
  %spec.select = zext i1 %cmp9 to i32
  br label %do.body.i

if.end12:                                         ; preds = %cpu_to_cluster.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [2 x %struct.mutex], ptr @cluster_lock, i32 0, i32 %9
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i, i32 noundef 0) #9
  br label %if.end.i

do.body.i:                                        ; preds = %land.lhs.true8, %land.lhs.true, %if.then.do.body.i_crit_edge
  %new_cluster.0.ph = phi i32 [ %spec.select, %land.lhs.true8 ], [ %9, %if.then.do.body.i_crit_edge ], [ %spec.select29, %land.lhs.true ]
  %arrayidx.i23 = getelementptr [2 x %struct.mutex], ptr @cluster_lock, i32 0, i32 %new_cluster.0.ph
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i23, i32 noundef 0) #9
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %18, ptrtoint (ptr @cpu_last_req_freq to i32)
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  store i32 %13, ptr %19, align 4
  %22 = load i32, ptr %arrayidx, align 4
  %add21.i = add i32 %22, ptrtoint (ptr @physical_cluster to i32)
  %23 = inttoptr i32 %add21.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %new_cluster.0.ph, ptr %23, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %call18.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i.i, i32 %25)
  %cmp19.i.i = icmp ult i32 %call18.i.i, %25
  br i1 %cmp19.i.i, label %do.body.i.do.body.i.i_crit_edge, label %do.body.i.find_cluster_maxfreq.exit.i_crit_edge

do.body.i.find_cluster_maxfreq.exit.i_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_cluster_maxfreq.exit.i

do.body.i.do.body.i.i_crit_edge:                  ; preds = %do.body.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i.do.body.i.i_crit_edge
  %call21.i.i = phi i32 [ %call.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %call18.i.i, %do.body.i.do.body.i.i_crit_edge ]
  %max_freq.020.i.i = phi i32 [ %max_freq.1.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 0, %do.body.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call21.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %27, ptrtoint (ptr @cpu_last_req_freq to i32)
  %28 = inttoptr i32 %add.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add10.i.i = add i32 %27, ptrtoint (ptr @physical_cluster to i32)
  %31 = inttoptr i32 %add10.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %new_cluster.0.ph)
  %cmp11.i.i = icmp eq i32 %33, %new_cluster.0.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %max_freq.020.i.i, i32 %30)
  %cmp12.i.i = icmp ult i32 %max_freq.020.i.i, %30
  %or.cond.i.i = select i1 %cmp11.i.i, i1 %cmp12.i.i, i1 false
  %max_freq.1.i.i = select i1 %or.cond.i.i, i32 %30, i32 %max_freq.020.i.i
  %call.i.i = tail call i32 @cpumask_next(i32 noundef %call21.i.i, ptr noundef nonnull @__cpu_online_mask) #13
  %cmp.i.i = icmp ult i32 %call.i.i, %25
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.find_cluster_maxfreq.exit.i_crit_edge

do.body.i.i.find_cluster_maxfreq.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_cluster_maxfreq.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

find_cluster_maxfreq.exit.i:                      ; preds = %do.body.i.i.find_cluster_maxfreq.exit.i_crit_edge, %do.body.i.find_cluster_maxfreq.exit.i_crit_edge
  %max_freq.0.lcssa.i.i = phi i32 [ 0, %do.body.i.find_cluster_maxfreq.exit.i_crit_edge ], [ %max_freq.1.i.i, %do.body.i.i.find_cluster_maxfreq.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_cluster.0.ph)
  %cmp.i = icmp eq i32 %new_cluster.0.ph, 1
  %shl.i = zext i1 %cmp.i to i32
  %cond.i21 = shl i32 %max_freq.0.lcssa.i.i, %shl.i
  br label %if.end.i

if.end.i:                                         ; preds = %find_cluster_maxfreq.exit.i, %if.end12
  %arrayidx.i27 = phi ptr [ %arrayidx.i23, %find_cluster_maxfreq.exit.i ], [ %arrayidx.i, %if.end12 ]
  %new_cluster.025 = phi i32 [ %new_cluster.0.ph, %find_cluster_maxfreq.exit.i ], [ %9, %if.end12 ]
  %prev_rate.0.i = phi i32 [ %21, %find_cluster_maxfreq.exit.i ], [ -1, %if.end12 ]
  %new_rate.0.i = phi i32 [ %cond.i21, %find_cluster_maxfreq.exit.i ], [ %13, %if.end12 ]
  %arrayidx22.i = getelementptr [2 x ptr], ptr @clk, i32 0, i32 %new_cluster.025
  %34 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx22.i, align 4
  %mul.i = mul i32 %new_rate.0.i, 1000
  %call23.i = tail call i32 @clk_set_rate(ptr noundef %35, i32 noundef %mul.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end.i.do.end45.i_crit_edge

if.end.i.do.end45.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45.i

if.then25.i:                                      ; preds = %if.end.i
  %36 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx22.i, align 4
  %call27.i = tail call i32 @clk_get_rate(ptr noundef %37) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call27.i, i32 %mul.i)
  %cmp29.not.i = icmp eq i32 %call27.i, %mul.i
  br i1 %cmp29.not.i, label %if.end83.i, label %if.then25.i.do.end45.i_crit_edge

if.then25.i.do.end45.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45.i

do.end45.i:                                       ; preds = %if.then25.i.do.end45.i_crit_edge, %if.end.i.do.end45.i_crit_edge
  %ret.0.ph.i = phi i32 [ -5, %if.then25.i.do.end45.i_crit_edge ], [ %call23.i, %if.end.i.do.end45.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 142, i32 noundef 9, ptr noundef null) #9
  br i1 %tobool.not.i, label %do.end45.i.cleanup.sink.split.i_crit_edge, label %if.then62.i

do.end45.i.cleanup.sink.split.i_crit_edge:        ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.then62.i:                                      ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %add71.i = add i32 %39, ptrtoint (ptr @cpu_last_req_freq to i32)
  %40 = inttoptr i32 %add71.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %prev_rate.0.i, ptr %40, align 4
  %42 = load i32, ptr %arrayidx, align 4
  %add80.i = add i32 %42, ptrtoint (ptr @physical_cluster to i32)
  %43 = inttoptr i32 %add80.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %9, ptr %43, align 4
  br label %cleanup.sink.split.i

if.end83.i:                                       ; preds = %if.then25.i
  tail call void @mutex_unlock(ptr noundef %arrayidx.i27) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %new_cluster.025)
  %cmp85.not.i = icmp eq i32 %9, %new_cluster.025
  br i1 %cmp85.not.i, label %if.end83.i.ve_spc_cpufreq_set_rate.exit_crit_edge, label %if.then86.i

if.end83.i.ve_spc_cpufreq_set_rate.exit_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ve_spc_cpufreq_set_rate.exit

if.then86.i:                                      ; preds = %if.end83.i
  %call.i147.i = tail call i32 @bL_switch_request_cb(i32 noundef %1, i32 noundef %new_cluster.025, ptr noundef null, ptr noundef null) #9
  %arrayidx88.i = getelementptr [2 x %struct.mutex], ptr @cluster_lock, i32 0, i32 %9
  tail call void @mutex_lock_nested(ptr noundef %arrayidx88.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  %call18.i148.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i148.i, i32 %45)
  %cmp19.i149.i = icmp ult i32 %call18.i148.i, %45
  br i1 %cmp19.i149.i, label %if.then86.i.do.body.i161.i_crit_edge, label %if.then86.i.find_cluster_maxfreq.exit163.i_crit_edge

if.then86.i.find_cluster_maxfreq.exit163.i_crit_edge: ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_cluster_maxfreq.exit163.i

if.then86.i.do.body.i161.i_crit_edge:             ; preds = %if.then86.i
  br label %do.body.i161.i

do.body.i161.i:                                   ; preds = %do.body.i161.i.do.body.i161.i_crit_edge, %if.then86.i.do.body.i161.i_crit_edge
  %call21.i150.i = phi i32 [ %call.i159.i, %do.body.i161.i.do.body.i161.i_crit_edge ], [ %call18.i148.i, %if.then86.i.do.body.i161.i_crit_edge ]
  %max_freq.020.i151.i = phi i32 [ %max_freq.1.i158.i, %do.body.i161.i.do.body.i161.i_crit_edge ], [ 0, %if.then86.i.do.body.i161.i_crit_edge ]
  %arrayidx.i152.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call21.i150.i
  %46 = ptrtoint ptr %arrayidx.i152.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i152.i, align 4
  %add.i153.i = add i32 %47, ptrtoint (ptr @cpu_last_req_freq to i32)
  %48 = inttoptr i32 %add.i153.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add10.i154.i = add i32 %47, ptrtoint (ptr @physical_cluster to i32)
  %51 = inttoptr i32 %add10.i154.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %9)
  %cmp11.i155.i = icmp eq i32 %53, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %max_freq.020.i151.i, i32 %50)
  %cmp12.i156.i = icmp ult i32 %max_freq.020.i151.i, %50
  %or.cond.i157.i = select i1 %cmp11.i155.i, i1 %cmp12.i156.i, i1 false
  %max_freq.1.i158.i = select i1 %or.cond.i157.i, i32 %50, i32 %max_freq.020.i151.i
  %call.i159.i = tail call i32 @cpumask_next(i32 noundef %call21.i150.i, ptr noundef nonnull @__cpu_online_mask) #13
  %cmp.i160.i = icmp ult i32 %call.i159.i, %45
  br i1 %cmp.i160.i, label %do.body.i161.i.do.body.i161.i_crit_edge, label %do.body.i161.i.find_cluster_maxfreq.exit163.i_crit_edge

do.body.i161.i.find_cluster_maxfreq.exit163.i_crit_edge: ; preds = %do.body.i161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_cluster_maxfreq.exit163.i

do.body.i161.i.do.body.i161.i_crit_edge:          ; preds = %do.body.i161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i161.i

find_cluster_maxfreq.exit163.i:                   ; preds = %do.body.i161.i.find_cluster_maxfreq.exit163.i_crit_edge, %if.then86.i.find_cluster_maxfreq.exit163.i_crit_edge
  %max_freq.0.lcssa.i162.i = phi i32 [ 0, %if.then86.i.find_cluster_maxfreq.exit163.i_crit_edge ], [ %max_freq.1.i158.i, %do.body.i161.i.find_cluster_maxfreq.exit163.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp90.i = icmp eq i32 %9, 1
  %shl92.i = zext i1 %cmp90.i to i32
  %cond95.i = shl i32 %max_freq.0.lcssa.i162.i, %shl92.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond95.i)
  %tobool96.not.i = icmp eq i32 %cond95.i, 0
  br i1 %tobool96.not.i, label %find_cluster_maxfreq.exit163.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true.i

find_cluster_maxfreq.exit163.i.cleanup.sink.split.i_crit_edge: ; preds = %find_cluster_maxfreq.exit163.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

land.lhs.true.i:                                  ; preds = %find_cluster_maxfreq.exit163.i
  %arrayidx97.i = getelementptr [2 x ptr], ptr @clk, i32 0, i32 %9
  %54 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx97.i, align 4
  %mul98.i = mul i32 %cond95.i, 1000
  %call99.i = tail call i32 @clk_set_rate(ptr noundef %55, i32 noundef %mul98.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge, label %do.end104.i

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.end104.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef %9) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end104.i, %land.lhs.true.i.cleanup.sink.split.i_crit_edge, %find_cluster_maxfreq.exit163.i.cleanup.sink.split.i_crit_edge, %if.then62.i, %do.end45.i.cleanup.sink.split.i_crit_edge
  %arrayidx88.sink.i = phi ptr [ %arrayidx.i27, %if.then62.i ], [ %arrayidx.i27, %do.end45.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx88.i, %do.end104.i ], [ %arrayidx88.i, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %arrayidx88.i, %find_cluster_maxfreq.exit163.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %ret.0.ph.i, %if.then62.i ], [ %ret.0.ph.i, %do.end45.i.cleanup.sink.split.i_crit_edge ], [ 0, %do.end104.i ], [ 0, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ 0, %find_cluster_maxfreq.exit163.i.cleanup.sink.split.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %arrayidx88.sink.i) #9
  br label %ve_spc_cpufreq_set_rate.exit

ve_spc_cpufreq_set_rate.exit:                     ; preds = %cleanup.sink.split.i, %if.end83.i.ve_spc_cpufreq_set_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end83.i.ve_spc_cpufreq_set_rate.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ve_spc_cpufreq_get_rate(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @bL_switching_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %2, ptrtoint (ptr @cpu_last_req_freq to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %2, ptrtoint (ptr @physical_cluster to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %arrayidx2.i = getelementptr [2 x ptr], ptr @clk, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %10) #9
  %div.i = udiv i32 %call.i, 1000
  %11 = load i8, ptr @bL_switching_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  %narrow.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  %cond.i = zext i1 %narrow.i to i32
  %rate.0.i = lshr i32 %div.i, %cond.i
  br label %return

return:                                           ; preds = %if.else, %do.body
  %retval.0 = phi i32 [ %5, %do.body ], [ %rate.0.i, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ve_spc_cpufreq_exit(ptr nocapture noundef readonly %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.23, i32 noundef %3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %id.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 30
  %4 = load i8, ptr @bL_switching_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end.cpu_to_cluster.exit.i_crit_edge

if.end.cpu_to_cluster.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_to_cluster.exit.i

cond.false.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  %package_id.i.i.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %6, i32 3
  %7 = ptrtoint ptr %package_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %package_id.i.i.i, align 4
  br label %cpu_to_cluster.exit.i

cpu_to_cluster.exit.i:                            ; preds = %cond.false.i.i, %if.end.cpu_to_cluster.exit.i_crit_edge
  %cond.i.i = phi i32 [ %8, %cond.false.i.i ], [ 2, %if.end.cpu_to_cluster.exit.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x %struct.atomic_t], ptr @cluster_usage, i32 0, i32 %cond.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #9, !srcloc !112
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cpu_to_cluster.exit.i.cleanup_crit_edge

cpu_to_cluster.exit.i.cleanup_crit_edge:          ; preds = %cpu_to_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %cpu_to_cluster.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond.i.i)
  %cmp.i = icmp ult i32 %cond.i.i, 2
  br i1 %cmp.i, label %if.then2.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %call410.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call410.i, i32 %10)
  %cmp511.i = icmp ult i32 %call410.i, %10
  br i1 %cmp511.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then2.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %package_id.i.i1.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %12, i32 3
  %13 = ptrtoint ptr %package_id.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %package_id.i.i1.i, align 4
  %arrayidx.i.i = getelementptr [3 x ptr], ptr @freq_table, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i2.i = icmp eq ptr %16, null
  br i1 %tobool.not.i2.i, label %if.then2.i.cleanup_crit_edge, label %if.end.i.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i.i = getelementptr [2 x ptr], ptr @clk, i32 0, i32 %14
  %17 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx1.i.i, align 4
  tail call void @clk_put(ptr noundef %18) #9
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef nonnull %call, ptr noundef %arrayidx.i.i) #9
  br label %cleanup

for.body.i:                                       ; preds = %_put_cluster_clk_and_freq_table.exit9.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call412.i = phi i32 [ %call4.i, %_put_cluster_clk_and_freq_table.exit9.i.for.body.i_crit_edge ], [ %call410.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call6.i = tail call ptr @get_cpu_device(i32 noundef %call412.i) #9
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %for.body.i.cleanup_crit_edge, label %if.end9.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.i:                                        ; preds = %for.body.i
  %id.i3.i = getelementptr inbounds %struct.device, ptr %call6.i, i32 0, i32 30
  %19 = ptrtoint ptr %id.i3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id.i3.i, align 4
  %package_id.i.i4.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %20, i32 3
  %21 = ptrtoint ptr %package_id.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %package_id.i.i4.i, align 4
  %arrayidx.i5.i = getelementptr [3 x ptr], ptr @freq_table, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i5.i, align 4
  %tobool.not.i6.i = icmp eq ptr %24, null
  br i1 %tobool.not.i6.i, label %if.end9.i._put_cluster_clk_and_freq_table.exit9.i_crit_edge, label %if.end.i8.i

if.end9.i._put_cluster_clk_and_freq_table.exit9.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_put_cluster_clk_and_freq_table.exit9.i

if.end.i8.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i7.i = getelementptr [2 x ptr], ptr @clk, i32 0, i32 %22
  %25 = ptrtoint ptr %arrayidx1.i7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx1.i7.i, align 4
  tail call void @clk_put(ptr noundef %26) #9
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef nonnull %call6.i, ptr noundef %arrayidx.i5.i) #9
  br label %_put_cluster_clk_and_freq_table.exit9.i

_put_cluster_clk_and_freq_table.exit9.i:          ; preds = %if.end.i8.i, %if.end9.i._put_cluster_clk_and_freq_table.exit9.i_crit_edge
  %call4.i = tail call i32 @cpumask_next(i32 noundef %call412.i, ptr noundef nonnull @__cpu_present_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp5.i = icmp ult i32 %call4.i, %27
  br i1 %cmp5.i, label %_put_cluster_clk_and_freq_table.exit9.i.for.body.i_crit_edge, label %_put_cluster_clk_and_freq_table.exit9.i.for.end.i_crit_edge

_put_cluster_clk_and_freq_table.exit9.i.for.end.i_crit_edge: ; preds = %_put_cluster_clk_and_freq_table.exit9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

_put_cluster_clk_and_freq_table.exit9.i.for.body.i_crit_edge: ; preds = %_put_cluster_clk_and_freq_table.exit9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %_put_cluster_clk_and_freq_table.exit9.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %arrayidx10.i = getelementptr [3 x ptr], ptr @freq_table, i32 0, i32 %cond.i.i
  %28 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx10.i, align 4
  tail call void @kfree(ptr noundef %29) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %for.body.i.cleanup_crit_edge, %if.end.i.i, %if.then2.i.cleanup_crit_edge, %cpu_to_cluster.exit.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %cpu_to_cluster.exit.i.cleanup_crit_edge ], [ 0, %if.then2.i.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %for.end.i ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpufreq_register_em_with_opp(ptr nocapture noundef readonly %policy) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %1) #9
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 1
  %2 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %related_cpus, align 4
  %call1 = tail call i32 @dev_pm_opp_of_register_em(ptr noundef %call, ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_get_cluster_clk_and_freq_table(ptr noundef %cpu_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %cpu_dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %package_id.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %1, i32 3
  %2 = ptrtoint ptr %package_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %package_id.i, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @freq_table, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %cpu_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.end.do.end22_crit_edge, label %if.end4

if.end.do.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

if.end4:                                          ; preds = %if.end
  %call6 = tail call i32 @dev_pm_opp_init_cpufreq_table(ptr noundef %cpu_dev, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.do.end22_crit_edge

if.end4.do.end22_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

if.end9:                                          ; preds = %if.end4
  %call10 = tail call ptr @clk_get(ptr noundef %cpu_dev, ptr noundef null) #9
  %arrayidx11 = getelementptr [2 x ptr], ptr @clk, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %arrayidx11, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cpu_dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %8, i32 noundef %3) #12
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11, align 4
  %11 = ptrtoint ptr %10 to i32
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef %cpu_dev, ptr noundef %arrayidx) #9
  br label %do.end22

do.end22:                                         ; preds = %do.end, %if.end4.do.end22_crit_edge, %if.end.do.end22_crit_edge
  %ret.0 = phi i32 [ 1, %if.end.do.end22_crit_edge ], [ %call6, %if.end4.do.end22_crit_edge ], [ %11, %do.end ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cpu_dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16, i32 noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end22 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_free_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bL_switch_request_cb(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bL_switcher_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bL_cpufreq_switcher_notifier(ptr nocapture noundef readnone %nfb, i32 noundef %action, ptr nocapture noundef readnone %_arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bL_cpufreq_switcher_notifier.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bL_cpufreq_switcher_notifier, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bL_cpufreq_switcher_notifier.__UNIQUE_ID_ddebug195, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %action) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %action, label %do.end.return_crit_edge [
    i32 0, label %do.end.sw.bb_crit_edge
    i32 2, label %do.end.sw.bb_crit_edge10
    i32 1, label %sw.bb4
    i32 3, label %sw.bb6
  ]

do.end.sw.bb_crit_edge10:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge10
  %call3 = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @ve_spc_cpufreq_driver) #9
  br label %return

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  store i8 1, ptr @bL_switching_enabled, align 1
  %call5 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @ve_spc_cpufreq_driver) #9
  br label %return

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  store i8 0, ptr @bL_switching_enabled, align 1
  %call7 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @ve_spc_cpufreq_driver) #9
  br label %return

return:                                           ; preds = %sw.bb6, %sw.bb4, %sw.bb, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.return_crit_edge ], [ 1, %sw.bb6 ], [ 1, %sw.bb4 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bL_switcher_unregister_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !90, !91, !93, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_vexpress_spc_cpufreq__196_573_ve_spc_cpufreq_platdrv_init6, !1, !"__initcall__kmod_vexpress_spc_cpufreq__196_573_ve_spc_cpufreq_platdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 573, i32 1}
!2 = !{ptr @__exitcall_ve_spc_cpufreq_platdrv_exit, !1, !"__exitcall_ve_spc_cpufreq_platdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias197, !4, !"__UNIQUE_ID_alias197", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 575, i32 1}
!5 = !{ptr @__UNIQUE_ID_author198, !6, !"__UNIQUE_ID_author198", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 576, i32 1}
!7 = !{ptr @__UNIQUE_ID_author199, !8, !"__UNIQUE_ID_author199", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 577, i32 1}
!9 = !{ptr @__UNIQUE_ID_description200, !10, !"__UNIQUE_ID_description200", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 578, i32 1}
!11 = !{ptr @__UNIQUE_ID_file201, !12, !"__UNIQUE_ID_file201", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 579, i32 1}
!13 = !{ptr @__UNIQUE_ID_license202, !12, !"__UNIQUE_ID_license202", i1 false, i1 false}
!14 = !{ptr @__pcpu_unique_physical_cluster, !15, !"__pcpu_unique_physical_cluster", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 56, i32 8}
!16 = !{ptr @physical_cluster, !15, !"physical_cluster", i1 false, i1 false}
!17 = !{ptr @__pcpu_unique_cpu_last_req_freq, !18, !"__pcpu_unique_cpu_last_req_freq", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 57, i32 8}
!19 = !{ptr @cpu_last_req_freq, !18, !"cpu_last_req_freq", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 568, i32 11}
!22 = !{ptr @ve_spc_cpufreq_platdrv, !23, !"ve_spc_cpufreq_platdrv", i1 false, i1 false}
!23 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 566, i32 31}
!24 = !{ptr @ve_spc_cpufreq_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 533, i32 3}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 540, i32 3}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ve_spc_cpufreq_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @ve_spc_cpufreq_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 547, i32 4}
!35 = !{ptr @ve_spc_cpufreq_probe._entry.5, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ve_spc_cpufreq_probe._entry_ptr.7, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @bL_switching_enabled, !38, !"bL_switching_enabled", i1 false, i1 false}
!38 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 35, i32 13}
!39 = !{ptr @cluster_lock, !40, !"cluster_lock", i1 false, i1 false}
!40 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 59, i32 21}
!41 = !{ptr @ve_spc_cpufreq_driver, !42, !"ve_spc_cpufreq_driver", i1 false, i1 false}
!42 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 466, i32 30}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 419, i32 3}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ve_spc_cpufreq_init._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ve_spc_cpufreq_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 447, i32 2}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ve_spc_cpufreq_init._entry.10, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @ve_spc_cpufreq_init._entry_ptr.14, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @cluster_usage, !55, !"cluster_usage", i1 false, i1 false}
!55 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 51, i32 17}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 342, i32 2}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @_get_cluster_clk_and_freq_table._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @_get_cluster_clk_and_freq_table._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 348, i32 2}
!64 = !{ptr @_get_cluster_clk_and_freq_table._entry.18, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @_get_cluster_clk_and_freq_table._entry_ptr.20, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @clk, !67, !"clk", i1 false, i1 false}
!67 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 49, i32 20}
!68 = !{ptr @clk_big_min, !69, !"clk_big_min", i1 false, i1 false}
!69 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 53, i32 21}
!70 = !{ptr @clk_little_max, !71, !"clk_little_max", i1 false, i1 false}
!71 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 54, i32 21}
!72 = !{ptr @freq_table, !73, !"freq_table", i1 false, i1 false}
!73 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 50, i32 40}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 168, i32 4}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ve_spc_cpufreq_set_rate._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ve_spc_cpufreq_set_rate._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 457, i32 3}
!81 = !{ptr @ve_spc_cpufreq_exit._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ve_spc_cpufreq_exit._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @bL_switcher_notifier, !84, !"bL_switcher_notifier", i1 false, i1 false}
!84 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 508, i32 30}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 483, i32 2}
!87 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @bL_cpufreq_switcher_notifier.__UNIQUE_ID_ddebug195, !86, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!90 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/cpufreq/vexpress-spc-cpufreq.c", i32 561, i32 2}
!93 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ve_spc_cpufreq_remove._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @ve_spc_cpufreq_remove._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i8 0, i8 2}
!106 = !{i64 2148338045}
!107 = !{i64 2148253354, i64 2148253386, i64 2148253415, i64 2148253449, i64 2148253480, i64 2148253503}
!108 = !{i64 2148338274}
!109 = !{i64 2148255099, i64 2148255125, i64 2148255154, i64 2148255188, i64 2148255219, i64 2148255242}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{i64 2148341086}
!112 = !{i64 2148255819, i64 2148255851, i64 2148255880, i64 2148255914, i64 2148255945, i64 2148255968}
!113 = !{i64 2148341315}
!114 = !{i64 2148734449, i64 2148734454, i64 2148734467, i64 2148734511, i64 2148734545, i64 2148734566}
