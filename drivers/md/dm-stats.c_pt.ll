; ModuleID = '/llk/IR_all_yes/drivers/md/dm-stats.c_pt.bc'
source_filename = "../drivers/md/dm-stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.17 }
%union.anon.17 = type { ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.dm_stats = type { %struct.mutex, %struct.list_head, ptr, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dm_stats_last_position = type { i64, i32 }
%struct.dm_stat = type { %struct.list_head, i32, i32, i32, i64, i64, i64, i32, ptr, ptr, ptr, %struct.callback_head, i32, i32, i32, [4 x ptr], [0 x %struct.dm_stat_shared] }
%struct.callback_head = type { ptr, ptr }
%struct.dm_stat_shared = type { [2 x %struct.atomic_t], i64, %struct.dm_stat_percpu }
%struct.dm_stat_percpu = type { [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], i64, i64, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dm_stats_aux = type { i8, i64 }
%struct.dm_arg_set = type { i32, ptr }
%struct.mapped_device = type { %struct.mutex, %struct.mutex, %struct.list_head, ptr, i32, %struct.mutex, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, [16 x i8], ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.spinlock, %struct.bio_list, ptr, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, i32, %struct.bio_set, %struct.bio_set, ptr, %struct.hd_geometry, %struct.dm_kobject_holder, i32, %struct.semaphore, %struct.mutex, %struct.dm_stats, ptr, i8, %struct.srcu_struct, i32, ptr, %struct.dm_ima_measurements }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bio_list = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.dm_kobject_holder = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.dm_ima_measurements = type { %struct.dm_ima_device_table_metadata, %struct.dm_ima_device_table_metadata, i32 }
%struct.dm_ima_device_table_metadata = type { ptr, i32, i32, ptr, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@dm_stats_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&stats->mutex\00", [18 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/md/dm-stats.c\00", [42 x i8] zeroinitializer }, align 32
@dm_stats_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\012device-mapper: stats: leaked in-flight counter at index %lu (start %llu, end %llu, step %llu): reads %d, writes %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm_stats_cleanup\00", [47 x i8] zeroinitializer }, align 32
@dm_stats_cleanup._entry_ptr = internal global ptr @dm_stats_cleanup._entry, section ".printk_index", align 4
@dm_stats_account_io.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"@stats_create\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"@stats_delete\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"@stats_clear\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"@stats_list\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"@stats_print\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"@stats_print_clear\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"@stats_set_aux\00", [17 x i8] zeroinitializer }, align 32
@dm_stats_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.1, i32 1188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014device-mapper: stats: Invalid parameters for message %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm_stats_message\00", [47 x i8] zeroinitializer }, align 32
@dm_stats_message._entry_ptr = internal global ptr @dm_stats_message._entry, section ".printk_index", align 4
@shared_memory_amount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_stat_need_rcu_barrier = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm_statistics_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.1, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\012device-mapper: stats: shared_memory_amount leaked: %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm_statistics_exit\00", [45 x i8] zeroinitializer }, align 32
@dm_statistics_exit._entry_ptr = internal global ptr @dm_statistics_exit._entry, section ".printk_index", align 4
@__param_str_stats_current_allocated_bytes = internal constant [37 x i8] c"dm_mod.stats_current_allocated_bytes\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_stats_current_allocated_bytes = internal constant %struct.kernel_param { ptr @__param_str_stats_current_allocated_bytes, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.17 { ptr @shared_memory_amount } }, section "__param", align 4
@__UNIQUE_ID_stats_current_allocated_bytestype355 = internal constant [52 x i8] c"dm_mod.parmtype=stats_current_allocated_bytes:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_stats_current_allocated_bytes356 = internal constant [78 x i8] c"dm_mod.parm=stats_current_allocated_bytes:Memory currently used by statistics\00", section ".modinfo", align 1
@shared_memory_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@free_shared_memory.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@free_shared_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.1, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\012device-mapper: stats: Memory usage accounting bug.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"free_shared_memory\00", [45 x i8] zeroinitializer }, align 32
@free_shared_memory._entry_ptr = internal global ptr @free_shared_memory._entry, section ".printk_index", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"shared_memory_lock\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__dm_stat_bio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__dm_stat_bio._entry = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.1, i32 608, ptr null, ptr null }, align 1
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\012device-mapper: stats: Invalid area access in region id %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__dm_stat_bio\00", [18 x i8] zeroinitializer }, align 32
@__dm_stat_bio._entry_ptr = internal global ptr @__dm_stat_bio._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%llu+%llu%c\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/%u%c\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"precise_timestamps\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"histogram:\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d%c\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d: %llu+%llu %llu %s %s\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" precise_timestamps\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" histogram:\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lu%c\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%llu+%llu %llu %llu %llu %llu %llu %llu %llu %llu %d %llu %llu %llu %llu\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%llu\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 196, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 217, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 218, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 655, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1170, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1172, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1174, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1176, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1178, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1180, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1182, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1188, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [21 x i8] c"shared_memory_amount\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 79, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant [25 x i8] c"dm_stat_need_rcu_barrier\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 19, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1205, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"shared_memory_lock\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 134, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 77, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 695, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 608, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 723, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 976, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 981, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 990, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 998, i32 23 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1004, i32 21 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1009, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1011, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1043, i32 27 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1078, i32 22 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 458, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 465, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 468, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 471, i32 7 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 472, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 475, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1138, i32 23 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 842, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [25 x i8] c"../drivers/md/dm-stats.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 861, i32 5 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_stats_current_allocated_bytes356, ptr @__UNIQUE_ID_stats_current_allocated_bytestype355, ptr @__dm_stat_bio._entry, ptr @__dm_stat_bio._entry_ptr, ptr @__param_stats_current_allocated_bytes, ptr @dm_statistics_exit._entry, ptr @dm_statistics_exit._entry_ptr, ptr @dm_stats_cleanup._entry, ptr @dm_stats_cleanup._entry_ptr, ptr @dm_stats_message._entry, ptr @dm_stats_message._entry_ptr, ptr @free_shared_memory._entry, ptr @free_shared_memory._entry_ptr, ptr @dm_stats_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @shared_memory_amount, ptr @dm_stat_need_rcu_barrier, ptr @.str.14, ptr @.str.15, ptr @shared_memory_lock, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_stats_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_stats_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_stats_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shared_memory_amount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_stat_need_rcu_barrier to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_statistics_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shared_memory_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_shared_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_stats_init(ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef %stats, ptr noundef nonnull @.str, ptr noundef nonnull @dm_stats_init.__key) #13
  %list = getelementptr inbounds %struct.dm_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.dm_stats, ptr %stats, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 16, i32 noundef 8) #16
  %last1 = getelementptr inbounds %struct.dm_stats, ptr %stats, i32 0, i32 2
  %2 = ptrtoint ptr %last1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %last1, align 4
  %call214 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call214, i32 %3)
  %cmp15 = icmp ult i32 %call214, %3
  br i1 %cmp15, label %entry.do.body3_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %call216 = phi i32 [ %call2, %do.body3.do.body3_crit_edge ], [ %call214, %entry.do.body3_crit_edge ]
  %4 = ptrtoint ptr %last1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last1, align 4
  %6 = ptrtoint ptr %5 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call216
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %6
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %9, align 8
  %last_rw = getelementptr inbounds %struct.dm_stats_last_position, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %last_rw to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %last_rw, align 8
  %call2 = tail call i32 @cpumask_next(i32 noundef %call216, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %12
  br i1 %cmp, label %do.body3.do.body3_crit_edge, label %do.body3.for.end_crit_edge

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

for.end:                                          ; preds = %do.body3.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_stats_cleanup(ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.dm_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not58 = icmp eq ptr %1, %list
  br i1 %cmp.i.not58, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %for.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %30, %for.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i54 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i54, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %n_entries = getelementptr inbounds %struct.dm_stat, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %n_entries to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp55.not = icmp eq i32 %12, 0
  br i1 %cmp55.not, label %list_del.exit.for.end_crit_edge, label %for.body.lr.ph

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_del.exit
  %start = getelementptr inbounds %struct.dm_stat, ptr %2, i32 0, i32 4
  %end = getelementptr inbounds %struct.dm_stat, ptr %2, i32 0, i32 5
  %step = getelementptr inbounds %struct.dm_stat, ptr %2, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ni.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dm_stat, ptr %2, i32 0, i32 16, i32 %ni.056
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #13
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx, align 4
  %arrayidx2.i = getelementptr [2 x %struct.atomic_t], ptr %arrayidx, i32 0, i32 1
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.i, i32 noundef 4) #13
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx2.i, align 4
  %add.i = sub i32 0, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i)
  %tobool3.not = icmp eq i32 %16, %add.i
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %do.end, !prof !119

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 217, i32 noundef 9, ptr noundef null) #13
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start, align 8
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %end, align 8
  %21 = ptrtoint ptr %step to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %step, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #13
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx, align 4
  %call.i.i53 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.i, i32 noundef 4) #13
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx2.i, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %ni.056, i64 noundef %18, i64 noundef %20, i64 noundef %22, i32 noundef %24, i32 noundef %26) #18
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %ni.056, 1
  %27 = ptrtoint ptr %n_entries to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_entries, align 8
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  %callback_head = getelementptr inbounds %struct.dm_stat, ptr %2, i32 0, i32 11
  tail call void @dm_stat_free(ptr noundef %callback_head)
  %29 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %30, %list
  br i1 %cmp.i.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  %last = getelementptr inbounds %struct.dm_stats, ptr %stats, i32 0, i32 2
  %31 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %last, align 4
  tail call void @free_percpu(ptr noundef %32) #13
  tail call void @mutex_destroy(ptr noundef %stats) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_stat_free(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %histogram_boundaries = getelementptr i8, ptr %head, i32 -12
  %0 = ptrtoint ptr %histogram_boundaries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %histogram_boundaries, align 4
  tail call void @kfree(ptr noundef %1) #13
  %program_id = getelementptr i8, ptr %head, i32 -8
  %2 = ptrtoint ptr %program_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %program_id, align 8
  tail call void @kfree(ptr noundef %3) #13
  %aux_data = getelementptr i8, ptr %head, i32 -4
  %4 = ptrtoint ptr %aux_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux_data, align 4
  tail call void @kfree(ptr noundef %5) #13
  %call21 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %6)
  %cmp22 = icmp ult i32 %call21, %6
  br i1 %cmp22, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %stat_percpu = getelementptr i8, ptr %head, i32 20
  %histogram_alloc_size = getelementptr i8, ptr %head, i32 16
  %percpu_alloc_size = getelementptr i8, ptr %head, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call23 = phi i32 [ %call21, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %stat_percpu, i32 0, i32 %call23
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %histogram = getelementptr inbounds %struct.dm_stat_percpu, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %histogram to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %histogram, align 8
  %11 = ptrtoint ptr %histogram_alloc_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %histogram_alloc_size, align 8
  tail call fastcc void @dm_kvfree(ptr noundef %10, i32 noundef %12)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %percpu_alloc_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %percpu_alloc_size, align 4
  tail call fastcc void @dm_kvfree(ptr noundef %14, i32 noundef %16)
  %call = tail call i32 @cpumask_next(i32 noundef %call23, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -64
  %histogram6 = getelementptr i8, ptr %head, i32 152
  %18 = ptrtoint ptr %histogram6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %histogram6, align 8
  %histogram_alloc_size7 = getelementptr i8, ptr %head, i32 16
  %20 = ptrtoint ptr %histogram_alloc_size7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %histogram_alloc_size7, align 8
  tail call fastcc void @dm_kvfree(ptr noundef %19, i32 noundef %21)
  %shared_alloc_size = getelementptr i8, ptr %head, i32 8
  %22 = ptrtoint ptr %shared_alloc_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shared_alloc_size, align 8
  tail call fastcc void @dm_kvfree(ptr noundef %add.ptr, i32 noundef %23)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_stats_account_io(ptr noundef %stats, i32 noundef %bi_rw, i64 noundef %bi_sector, i32 noundef %bi_sectors, i1 noundef zeroext %end, i32 noundef %duration_jiffies, ptr nocapture noundef %stats_aux) local_unnamed_addr #0 align 64 {
entry:
  %_res.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bi_sectors)
  %tobool.not = icmp eq i32 %bi_sectors, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !120

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %bi_sectors to i64
  %add = add i64 %conv, %bi_sector
  br i1 %end, label %if.end.if.end47_crit_edge, label %do.body

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

do.body:                                          ; preds = %if.end
  %last6 = getelementptr inbounds %struct.dm_stats, ptr %stats, i32 0, i32 2
  %0 = ptrtoint ptr %last6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last6, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !109) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add8 = add i32 %8, %2
  %9 = inttoptr i32 %add8 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load volatile i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool13.not = icmp eq i64 %11, 0
  br i1 %tobool13.not, label %do.body.land.end_crit_edge, label %land.rhs

do.body.land.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bi_rw)
  %cmp = icmp ne i32 %bi_rw, 1
  %last_rw = getelementptr inbounds %struct.dm_stats_last_position, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %last_rw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %last_rw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp19 = icmp eq i32 %13, 1
  %14 = xor i1 %cmp, %cmp19
  %cmp21 = zext i1 %14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body.land.end_crit_edge
  %15 = phi i32 [ 0, %do.body.land.end_crit_edge ], [ %cmp21, %land.rhs ]
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %bi_sector)
  %cmp24 = icmp eq i64 %16, %bi_sector
  %frombool26 = zext i1 %cmp24 to i8
  %17 = ptrtoint ptr %stats_aux to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool26, ptr %stats_aux, align 8
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %add, ptr %9, align 8
  %last_rw42 = getelementptr inbounds %struct.dm_stats_last_position, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %last_rw42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %bi_rw, ptr %last_rw42, align 8
  br label %if.end47

if.end47:                                         ; preds = %land.end, %if.end.if.end47_crit_edge
  %20 = tail call i32 @llvm.read_register.i32(metadata !109) #13
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !121
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end47.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end47.rcu_read_lock.exit_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end47
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end47.rcu_read_lock.exit_crit_edge
  %call49 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end58_crit_edge

rcu_read_lock.exit.do.end58_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true.do.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true
  %.b116 = load i1, ptr @dm_stats_account_io.__warned, align 1
  br i1 %.b116, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dm_stats_account_io.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 655, ptr noundef nonnull @.str.4) #13
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true.do.end58_crit_edge, %rcu_read_lock.exit.do.end58_crit_edge
  %list = getelementptr inbounds %struct.dm_stats, ptr %stats, i32 0, i32 1
  %24 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %24)
  %s.0127 = load volatile ptr, ptr %list, align 4
  %cmp65.not128 = icmp eq ptr %s.0127, %list
  br i1 %cmp65.not128, label %do.end58.for.end_crit_edge, label %for.body.lr.ph

do.end58.for.end_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end58
  %duration_ns = getelementptr inbounds %struct.dm_stats_aux, ptr %stats_aux, i32 0, i32 1
  %conv29.i.i = zext i32 %duration_jiffies to i64
  br label %for.body

for.body:                                         ; preds = %__dm_stat_bio.exit.for.body_crit_edge, %for.body.lr.ph
  %s.0130 = phi ptr [ %s.0127, %for.body.lr.ph ], [ %s.0, %__dm_stat_bio.exit.for.body_crit_edge ]
  %got_precise_time.0.off0129 = phi i1 [ false, %for.body.lr.ph ], [ %got_precise_time.1.off0, %__dm_stat_bio.exit.for.body_crit_edge ]
  %stat_flags = getelementptr inbounds %struct.dm_stat, ptr %s.0130, i32 0, i32 2
  %25 = ptrtoint ptr %stat_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stat_flags, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  %brmerge = select i1 %tobool67.not, i1 true, i1 %got_precise_time.0.off0129
  br i1 %brmerge, label %for.body.if.end80_crit_edge, label %if.then70

for.body.if.end80_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then70:                                        ; preds = %for.body
  %call75 = call i64 @ktime_get() #13
  br i1 %end, label %if.else, label %if.then70.if.end80.sink.split_crit_edge

if.then70.if.end80.sink.split_crit_edge:          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.sink.split

if.else:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %duration_ns to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %duration_ns, align 8
  %sub = sub i64 %call75, %28
  br label %if.end80.sink.split

if.end80.sink.split:                              ; preds = %if.else, %if.then70.if.end80.sink.split_crit_edge
  %call75.sink = phi i64 [ %sub, %if.else ], [ %call75, %if.then70.if.end80.sink.split_crit_edge ]
  %29 = ptrtoint ptr %duration_ns to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call75.sink, ptr %duration_ns, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %for.body.if.end80_crit_edge
  %got_precise_time.1.off0 = phi i1 [ %got_precise_time.0.off0129, %for.body.if.end80_crit_edge ], [ true, %if.end80.sink.split ]
  %start.i = getelementptr inbounds %struct.dm_stat, ptr %s.0130, i32 0, i32 4
  %30 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %add)
  %cmp.not.i = icmp ult i64 %31, %add
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end80.__dm_stat_bio.exit_crit_edge

if.end80.__dm_stat_bio.exit_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dm_stat_bio.exit

lor.lhs.false.i:                                  ; preds = %if.end80
  %end2.i = getelementptr inbounds %struct.dm_stat, ptr %s.0130, i32 0, i32 5
  %32 = ptrtoint ptr %end2.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %end2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %bi_sector)
  %cmp3.not.i = icmp ugt i64 %33, %bi_sector
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.__dm_stat_bio.exit_crit_edge

lor.lhs.false.i.__dm_stat_bio.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dm_stat_bio.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %34 = call i64 @llvm.umax.i64(i64 %31, i64 %bi_sector) #13
  %35 = call i64 @llvm.usub.sat.i64(i64 %bi_sector, i64 %31) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %add)
  %cmp14.i = icmp ult i64 %33, %add
  br i1 %cmp14.i, label %if.then21.i, label %if.end.i.if.end25.i_crit_edge, !prof !120

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end.i.if.end25.i_crit_edge
  %.pn.i = phi i64 [ %33, %if.then21.i ], [ %add, %if.end.i.if.end25.i_crit_edge ]
  %todo.1.i = sub i64 %.pn.i, %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_res.i) #13
  %36 = ptrtoint ptr %_res.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %_res.i, align 8, !annotation !122
  %step.i = getelementptr inbounds %struct.dm_stat, ptr %s.0130, i32 0, i32 6
  %37 = ptrtoint ptr %step.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %step.i, align 8
  %call.i117 = call i64 @div64_u64_rem(i64 noundef %35, i64 noundef %38, ptr noundef nonnull %_res.i) #13
  %39 = ptrtoint ptr %_res.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %_res.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_res.i) #13
  %conv.i = trunc i64 %call.i117 to i32
  %n_entries.i = getelementptr inbounds %struct.dm_stat, ptr %s.0130, i32 0, i32 3
  %n_histogram_entries.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0130, i32 0, i32 7
  %histogram_boundaries.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0130, i32 0, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %dm_stat_for_entry.exit.i.do.body.i_crit_edge, %if.end25.i
  %entry1.0.i = phi i32 [ %conv.i, %if.end25.i ], [ %inc.i, %dm_stat_for_entry.exit.i.do.body.i_crit_edge ]
  %todo.2.i = phi i64 [ %todo.1.i, %if.end25.i ], [ %sub93.i, %dm_stat_for_entry.exit.i.do.body.i_crit_edge ]
  %offset.0.i = phi i64 [ %40, %if.end25.i ], [ 0, %dm_stat_for_entry.exit.i.do.body.i_crit_edge ]
  %41 = ptrtoint ptr %n_entries.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %entry1.0.i, i32 %42)
  %cmp26.not.i = icmp ult i32 %entry1.0.i, %42
  br i1 %cmp26.not.i, label %if.end83.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i
  %.b139.i = load i1, ptr @__dm_stat_bio.__already_done, align 1
  br i1 %.b139.i, label %land.rhs.i.do.end80.i_crit_edge, label %if.then44.i, !prof !119

land.rhs.i.do.end80.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end80.i

if.then44.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__dm_stat_bio.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 607, i32 noundef 9, ptr noundef null) #13
  br label %do.end80.i

do.end80.i:                                       ; preds = %if.then44.i, %land.rhs.i.do.end80.i_crit_edge
  %id.i = getelementptr inbounds %struct.dm_stat, ptr %s.0130, i32 0, i32 1
  %43 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id.i, align 8
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %44) #18
  br label %__dm_stat_bio.exit

if.end83.i:                                       ; preds = %do.body.i
  %45 = ptrtoint ptr %step.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %step.i, align 8
  %sub85.i = sub i64 %46, %offset.0.i
  %47 = call i64 @llvm.umin.i64(i64 %todo.2.i, i64 %sub85.i) #13
  %arrayidx.i.i = getelementptr %struct.dm_stat, ptr %s.0130, i32 0, i32 16, i32 %entry1.0.i
  %48 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !123
  %and.i.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end83.i.do.end11.i.i_crit_edge

if.end83.i.do.end11.i.i_crit_edge:                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11.i.i

if.then.i.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @trace_hardirqs_off() #13
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.then.i.i, %if.end83.i.do.end11.i.i_crit_edge
  %49 = call i32 @llvm.read_register.i32(metadata !109) #13
  %and.i124.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i124.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.dm_stat, ptr %s.0130, i32 0, i32 15, i32 %52
  %53 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx13.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.dm_stat_percpu, ptr %54, i32 %entry1.0.i
  call fastcc void @dm_stat_round(ptr noundef %s.0130, ptr noundef %arrayidx.i.i, ptr noundef %arrayidx14.i.i) #13
  %arrayidx19.i.i = getelementptr [2 x %struct.atomic_t], ptr %arrayidx.i.i, i32 0, i32 %bi_rw
  %call.i.i123.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx19.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %arrayidx19.i.i, i32 1, i32 3, i32 1) #13
  br i1 %end, label %if.else.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %55 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx19.i.i, ptr %arrayidx19.i.i, i32 1, ptr elementtype(i32) %arrayidx19.i.i) #13, !srcloc !124
  br label %do.body57.i.i

if.else.i.i:                                      ; preds = %do.end11.i.i
  %56 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx19.i.i, ptr %arrayidx19.i.i, i32 1, ptr elementtype(i32) %arrayidx19.i.i) #13, !srcloc !125
  %arrayidx20.i.i = getelementptr [2 x i64], ptr %arrayidx14.i.i, i32 0, i32 %bi_rw
  %57 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx20.i.i, align 8
  %add.i.i = add i64 %58, %47
  store i64 %add.i.i, ptr %arrayidx20.i.i, align 8
  %arrayidx21.i.i = getelementptr %struct.dm_stat_percpu, ptr %54, i32 %entry1.0.i, i32 1, i32 %bi_rw
  %59 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx21.i.i, align 8
  %add22.i.i = add i64 %60, 1
  store i64 %add22.i.i, ptr %arrayidx21.i.i, align 8
  %61 = ptrtoint ptr %stats_aux to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %stats_aux, align 8, !range !126
  %63 = zext i8 %62 to i64
  %arrayidx25.i.i = getelementptr %struct.dm_stat_percpu, ptr %54, i32 %entry1.0.i, i32 2, i32 %bi_rw
  %64 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx25.i.i, align 8
  %add26.i.i = add i64 %65, %63
  store i64 %add26.i.i, ptr %arrayidx25.i.i, align 8
  %66 = ptrtoint ptr %stat_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %stat_flags, align 4
  %and.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool27.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool27.not.i.i, label %if.then28.i.i, label %if.else34.i.i

if.then28.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx30.i.i = getelementptr %struct.dm_stat_percpu, ptr %54, i32 %entry1.0.i, i32 3, i32 %bi_rw
  %68 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx30.i.i, align 8
  %add31.i.i = add i64 %69, %conv29.i.i
  store i64 %add31.i.i, ptr %arrayidx30.i.i, align 8
  %call32.i.i = call i32 @jiffies_to_msecs(i32 noundef %duration_jiffies) #13
  %conv33.i.i = zext i32 %call32.i.i to i64
  br label %if.end39.i.i

if.else34.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %duration_ns to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %duration_ns, align 8
  %arrayidx36.i.i = getelementptr %struct.dm_stat_percpu, ptr %54, i32 %entry1.0.i, i32 3, i32 %bi_rw
  %72 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx36.i.i, align 8
  %add37.i.i = add i64 %73, %71
  store i64 %add37.i.i, ptr %arrayidx36.i.i, align 8
  %74 = load i64, ptr %duration_ns, align 8
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.else34.i.i, %if.then28.i.i
  %duration.0.i.i = phi i64 [ %74, %if.else34.i.i ], [ %conv33.i.i, %if.then28.i.i ]
  %75 = ptrtoint ptr %n_histogram_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %n_histogram_entries.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool40.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool40.not.i.i, label %if.end39.i.i.do.body57.i.i_crit_edge, label %if.then41.i.i

if.end39.i.i.do.body57.i.i_crit_edge:             ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body57.i.i

if.then41.i.i:                                    ; preds = %if.end39.i.i
  %add43.i.i = add i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add43.i.i)
  %cmp45126.i.i = icmp ugt i32 %add43.i.i, 1
  br i1 %cmp45126.i.i, label %while.body.lr.ph.i.i, label %if.then41.i.i.while.end.i.i_crit_edge

if.then41.i.i.while.end.i.i_crit_edge:            ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.then41.i.i
  %77 = ptrtoint ptr %histogram_boundaries.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %histogram_boundaries.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %hi.0128.i.i = phi i32 [ %add43.i.i, %while.body.lr.ph.i.i ], [ %div122.hi.0.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %lo.0127.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %lo.0.div122.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %add47.i.i = add i32 %lo.0127.i.i, %hi.0128.i.i
  %div122.i.i = lshr i32 %add47.i.i, 1
  %sub.i.i = add nsw i32 %div122.i.i, -1
  %arrayidx48.i.i = getelementptr i64, ptr %78, i32 %sub.i.i
  %79 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx48.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %duration.0.i.i)
  %cmp49.i.i = icmp ugt i64 %80, %duration.0.i.i
  %lo.0.div122.i.i = select i1 %cmp49.i.i, i32 %lo.0127.i.i, i32 %div122.i.i
  %div122.hi.0.i.i = select i1 %cmp49.i.i, i32 %div122.i.i, i32 %hi.0128.i.i
  %add44.i.i = add i32 %lo.0.div122.i.i, 1
  %cmp45.i.i = icmp ult i32 %add44.i.i, %div122.hi.0.i.i
  br i1 %cmp45.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.then41.i.i.while.end.i.i_crit_edge
  %lo.0.lcssa.i.i = phi i32 [ 0, %if.then41.i.i.while.end.i.i_crit_edge ], [ %lo.0.div122.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %histogram.i.i = getelementptr %struct.dm_stat_percpu, ptr %54, i32 %entry1.0.i, i32 7
  %81 = ptrtoint ptr %histogram.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %histogram.i.i, align 8
  %arrayidx54.i.i = getelementptr i64, ptr %82, i32 %lo.0.lcssa.i.i
  %83 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx54.i.i, align 8
  %inc.i.i = add i64 %84, 1
  store i64 %inc.i.i, ptr %arrayidx54.i.i, align 8
  br label %do.body57.i.i

do.body57.i.i:                                    ; preds = %while.end.i.i, %if.end39.i.i.do.body57.i.i_crit_edge, %if.then16.i.i
  br i1 %tobool.not.i.i, label %if.then66.i.i, label %do.body57.i.i.do.body68.i.i_crit_edge

do.body57.i.i.do.body68.i.i_crit_edge:            ; preds = %do.body57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68.i.i

if.then66.i.i:                                    ; preds = %do.body57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @trace_hardirqs_on() #13
  br label %do.body68.i.i

do.body68.i.i:                                    ; preds = %if.then66.i.i, %do.body57.i.i.do.body68.i.i_crit_edge
  %85 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !127
  %and.i.i.i.i = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool76.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool76.not.i.i, label %if.then80.i.i, label %do.body68.i.i.dm_stat_for_entry.exit.i_crit_edge, !prof !120

do.body68.i.i.dm_stat_for_entry.exit.i_crit_edge: ; preds = %do.body68.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stat_for_entry.exit.i

if.then80.i.i:                                    ; preds = %do.body68.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %dm_stat_for_entry.exit.i

dm_stat_for_entry.exit.i:                         ; preds = %if.then80.i.i, %do.body68.i.i.dm_stat_for_entry.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #13, !srcloc !128
  %sub93.i = sub i64 %todo.2.i, %47
  %inc.i = add i32 %entry1.0.i, 1
  %cmp95.not.i = icmp eq i64 %sub93.i, 0
  br i1 %cmp95.not.i, label %dm_stat_for_entry.exit.i.__dm_stat_bio.exit_crit_edge, label %dm_stat_for_entry.exit.i.do.body.i_crit_edge, !prof !119

dm_stat_for_entry.exit.i.do.body.i_crit_edge:     ; preds = %dm_stat_for_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

dm_stat_for_entry.exit.i.__dm_stat_bio.exit_crit_edge: ; preds = %dm_stat_for_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dm_stat_bio.exit

__dm_stat_bio.exit:                               ; preds = %dm_stat_for_entry.exit.i.__dm_stat_bio.exit_crit_edge, %do.end80.i, %lor.lhs.false.i.__dm_stat_bio.exit_crit_edge, %if.end80.__dm_stat_bio.exit_crit_edge
  %86 = ptrtoint ptr %s.0130 to i32
  call void @__asan_load4_noabort(i32 %86)
  %s.0 = load volatile ptr, ptr %s.0130, align 4
  %cmp65.not = icmp eq ptr %s.0, %list
  br i1 %cmp65.not, label %__dm_stat_bio.exit.for.end_crit_edge, label %__dm_stat_bio.exit.for.body_crit_edge

__dm_stat_bio.exit.for.body_crit_edge:            ; preds = %__dm_stat_bio.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

__dm_stat_bio.exit.for.end_crit_edge:             ; preds = %__dm_stat_bio.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %__dm_stat_bio.exit.for.end_crit_edge, %do.end58.for.end_crit_edge
  %call.i118 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i118, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i121

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i121:                               ; preds = %for.end
  %call1.i119 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119)
  %tobool.not.i120 = icmp eq i32 %call1.i119, 0
  br i1 %tobool.not.i120, label %land.lhs.true.i121.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i123

land.lhs.true.i121.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i123:                              ; preds = %land.lhs.true.i121
  %.b4.i122 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i122, label %land.lhs.true2.i123.rcu_read_unlock.exit_crit_edge, label %if.then.i124

land.lhs.true2.i123.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i124:                                     ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.23) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i124, %land.lhs.true2.i123.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i121.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !129
  %87 = call i32 @llvm.read_register.i32(metadata !109) #13
  %and.i.i.i.i.i125 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i125 to ptr
  %preempt_count.i.i.i.i126 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i126, align 4
  %sub.i.i.i = add i32 %90, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i126, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_stats_message(ptr noundef %md, i32 noundef %argc, ptr noundef %argv, ptr noundef %result, i32 noundef %maxlen) local_unnamed_addr #0 align 64 {
entry:
  %id.i135 = alloca i32, align 4
  %dummy.i136 = alloca i8, align 1
  %id.i93 = alloca i32, align 4
  %dummy.i94 = alloca i8, align 1
  %id.i = alloca i32, align 4
  %dummy.i81 = alloca i8, align 1
  %hi.i.i = alloca i64, align 8
  %ch.i.i = alloca i8, align 1
  %dummy.i = alloca i8, align 1
  %start.i = alloca i64, align 8
  %len.i = alloca i64, align 8
  %step.i = alloca i64, align 8
  %divisor.i = alloca i32, align 4
  %as.i = alloca %struct.dm_arg_set, align 4
  %feature_args.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %argv, align 4
  %call = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #13
  %2 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dummy.i, align 1, !annotation !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start.i) #13
  %3 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %start.i, align 8, !annotation !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i) #13
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %len.i, align 8, !annotation !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %step.i) #13
  %5 = ptrtoint ptr %step.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %step.i, align 8, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %divisor.i) #13
  %6 = ptrtoint ptr %divisor.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %divisor.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as.i) #13
  %7 = ptrtoint ptr %as.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %as.i, align 4, !annotation !122
  %8 = getelementptr inbounds %struct.dm_arg_set, ptr %as.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_args.i) #13
  %10 = ptrtoint ptr %feature_args.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %feature_args.i, align 4, !annotation !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %argc)
  %cmp.i = icmp ult i32 %argc, 3
  br i1 %cmp.i, label %if.then.ret.i_crit_edge, label %if.end.i

if.then.ret.i_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

if.end.i:                                         ; preds = %if.then
  %11 = ptrtoint ptr %as.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %argc, ptr %as.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %argv, ptr %8, align 4
  call void @dm_consume_args(ptr noundef nonnull %as.i, i32 noundef 1) #13
  %call.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #13
  %call3.i = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(2) @.str.24) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %start.i, align 8
  %disk.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %14 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disk.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part0.i.i.i, align 4
  %bd_nr_sectors.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %bd_nr_sectors.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bd_nr_sectors.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool6.not.i = icmp eq i64 %19, 0
  %spec.store.select.i = select i1 %tobool6.not.i, i64 1, i64 %19
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %spec.store.select.i, ptr %len.i, align 8
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end.i
  %call9.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %start.i, ptr noundef nonnull %len.i, ptr noundef nonnull %dummy.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 2
  br i1 %cmp10.not.i, label %if.else.i.if.end16.i_crit_edge, label %if.else.i.ret.i_crit_edge

if.else.i.ret.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i.if.end16.i_crit_edge, %if.then4.i
  %21 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start.i, align 8
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %len.i, align 8
  %add.i = add i64 %24, %22
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %add.i)
  %cmp17.not.i = icmp ult i64 %22, %add.i
  br i1 %cmp17.not.i, label %if.end19.i, label %if.end16.i.ret.i_crit_edge

if.end16.i.ret.i_crit_edge:                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

if.end19.i:                                       ; preds = %if.end16.i
  %call20.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #13
  %call21.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call20.i, ptr noundef nonnull @.str.26, ptr noundef nonnull %divisor.i, ptr noundef nonnull %dummy.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.i = icmp eq i32 %call21.i, 1
  br i1 %cmp22.i, label %if.then23.i, label %if.else220.i

if.then23.i:                                      ; preds = %if.end19.i
  %25 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %divisor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool24.not.i = icmp eq i32 %26, 0
  br i1 %tobool24.not.i, label %if.then23.i.message_stats_create.exit_crit_edge, label %if.end26.i

if.then23.i.message_stats_create.exit_crit_edge:  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %message_stats_create.exit

if.end26.i:                                       ; preds = %if.then23.i
  %27 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start.i, align 8
  %sub.i = sub i64 %add.i, %28
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp198.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp198.i, label %if.then202.i, label %if.else208.i, !prof !119

if.then202.i:                                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv203.i = trunc i64 %sub.i to i32
  %conv203.i.frozen = freeze i32 %conv203.i
  %.frozen = freeze i32 %26
  %div206.i = udiv i32 %conv203.i.frozen, %.frozen
  %29 = mul i32 %div206.i, %.frozen
  %rem204.i.decomposed = sub i32 %conv203.i.frozen, %29
  %conv207.i = zext i32 %div206.i to i64
  br label %if.end212.i

if.else208.i:                                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %sub.i) #20, !srcloc !130
  %asmresult.i.i = extractvalue { i64, i64 } %30, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %30, 1
  %shr.i.i = lshr i64 %asmresult.i.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end212.i

if.end212.i:                                      ; preds = %if.else208.i, %if.then202.i
  %storemerge = phi i64 [ %asmresult1.i.i, %if.else208.i ], [ %conv207.i, %if.then202.i ]
  %__rem.0.i = phi i32 [ %conv.i.i, %if.else208.i ], [ %rem204.i.decomposed, %if.then202.i ]
  %31 = ptrtoint ptr %step.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %storemerge, ptr %step.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool214.not.i = icmp ne i32 %__rem.0.i, 0
  %inc.i = zext i1 %tobool214.not.i to i64
  %32 = add i64 %storemerge, %inc.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool217.not.i = icmp eq i64 %32, 0
  %33 = or i1 %tobool214.not.i, %tobool217.not.i
  br i1 %33, label %36, label %if.end212.i.if.end231.i_crit_edge

if.end212.i.if.end231.i_crit_edge:                ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end231.i

if.else220.i:                                     ; preds = %if.end19.i
  %call221.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call20.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %step.i, ptr noundef nonnull %dummy.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call221.i)
  %cmp222.not.i = icmp eq i32 %call221.i, 1
  br i1 %cmp222.not.i, label %lor.lhs.false227.i, label %if.else220.i.ret.i_crit_edge

if.else220.i.ret.i_crit_edge:                     ; preds = %if.else220.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

lor.lhs.false227.i:                               ; preds = %if.else220.i
  %34 = ptrtoint ptr %step.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %step.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool228.not.i = icmp eq i64 %35, 0
  br i1 %tobool228.not.i, label %lor.lhs.false227.i.ret.i_crit_edge, label %lor.lhs.false227.i.if.end231.i_crit_edge

lor.lhs.false227.i.if.end231.i_crit_edge:         ; preds = %lor.lhs.false227.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end231.i

lor.lhs.false227.i.ret.i_crit_edge:               ; preds = %lor.lhs.false227.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

36:                                               ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #15
  %simplifycfg.merge.i = select i1 %tobool217.not.i, i64 1, i64 %32
  %37 = ptrtoint ptr %step.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %simplifycfg.merge.i, ptr %step.i, align 8
  br label %if.end231.i

if.end231.i:                                      ; preds = %36, %lor.lhs.false227.i.if.end231.i_crit_edge, %if.end212.i.if.end231.i_crit_edge
  %38 = ptrtoint ptr %as.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %as_backup.sroa.0.0.copyload.i = load i32, ptr %as.i, align 4
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %as_backup.sroa.5.0.copyload.i = load ptr, ptr %8, align 4
  %call232.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #13
  %tobool233.not.i = icmp eq ptr %call232.i, null
  br i1 %tobool233.not.i, label %if.end231.i.if.else262.i_crit_edge, label %land.lhs.true234.i

if.end231.i.if.else262.i_crit_edge:               ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else262.i

land.lhs.true234.i:                               ; preds = %if.end231.i
  %call235.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call232.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %feature_args.i, ptr noundef nonnull %dummy.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call235.i)
  %cmp236.i = icmp eq i32 %call235.i, 1
  br i1 %cmp236.i, label %while.cond.preheader.i, label %land.lhs.true234.i.if.else262.i_crit_edge

land.lhs.true234.i.if.else262.i_crit_edge:        ; preds = %land.lhs.true234.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else262.i

while.cond.preheader.i:                           ; preds = %land.lhs.true234.i
  %40 = ptrtoint ptr %feature_args.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %feature_args.i, align 4
  %dec435.i = add i32 %41, -1
  store i32 %dec435.i, ptr %feature_args.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool239.not436.i = icmp eq i32 %41, 0
  br i1 %tobool239.not436.i, label %while.cond.preheader.i.if.end263.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end263.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end263.i

while.body.i:                                     ; preds = %if.end261.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %stat_flags.0439.i = phi i32 [ %stat_flags.1.i, %if.end261.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %histogram_boundaries.0438.i = phi ptr [ %histogram_boundaries.3.i, %if.end261.i.while.body.i_crit_edge ], [ null, %while.cond.preheader.i.while.body.i_crit_edge ]
  %n_histogram_entries.0437.i = phi i32 [ %n_histogram_entries.3.i, %if.end261.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call240.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #13
  %tobool241.not.i = icmp eq ptr %call240.i, null
  br i1 %tobool241.not.i, label %while.body.i.ret.i_crit_edge, label %if.end243.i

while.body.i.ret.i_crit_edge:                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

if.end243.i:                                      ; preds = %while.body.i
  %call244.i = call i32 @strcasecmp(ptr noundef nonnull %call240.i, ptr noundef nonnull @.str.29) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244.i)
  %tobool245.not.i = icmp eq i32 %call244.i, 0
  br i1 %tobool245.not.i, label %if.then246.i, label %if.else248.i

if.then246.i:                                     ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #15
  %or247.i = or i32 %stat_flags.0439.i, 1
  br label %if.end261.i

if.else248.i:                                     ; preds = %if.end243.i
  %call249.i = call i32 @strncasecmp(ptr noundef nonnull %call240.i, ptr noundef nonnull @.str.30, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249.i)
  %tobool250.not.i = icmp eq i32 %call249.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_histogram_entries.0437.i)
  %tobool252.not.i = icmp eq i32 %n_histogram_entries.0437.i, 0
  %or.cond.i = select i1 %tobool250.not.i, i1 %tobool252.not.i, i1 false
  br i1 %or.cond.i, label %if.end254.i, label %if.else248.i.ret.i_crit_edge

if.else248.i.ret.i_crit_edge:                     ; preds = %if.else248.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

if.end254.i:                                      ; preds = %if.else248.i
  %add.ptr.i = getelementptr i8, ptr %call240.i, i32 10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %if.end254.i
  %n_histogram_entries.1.i = phi i32 [ 1, %if.end254.i ], [ %n_histogram_entries.2.i, %for.inc.i.i ]
  %q.0.i.i = phi ptr [ %add.ptr.i, %if.end254.i ], [ %incdec.ptr.i.i, %for.inc.i.i ]
  %42 = ptrtoint ptr %q.0.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %q.0.i.i, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i8 %43, label %for.cond.i.i.for.inc.i.i_crit_edge [
    i8 0, label %for.end.i.i
    i8 44, label %if.then.i.i
  ]

for.cond.i.i.for.inc.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i.i = add i32 %n_histogram_entries.1.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.cond.i.i.for.inc.i.i_crit_edge
  %n_histogram_entries.2.i = phi i32 [ %n_histogram_entries.1.i, %for.cond.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.then.i.i ]
  %incdec.ptr.i.i = getelementptr i8, ptr %q.0.i.i, i32 1
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %45 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_histogram_entries.1.i, i32 8) #13
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %for.end.i.i.ret.i_crit_edge, label %if.end7.i.i.i, !prof !120

for.end.i.i.ret.i_crit_edge:                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

if.end7.i.i.i:                                    ; preds = %for.end.i.i
  %47 = extractvalue { i32, i1 } %45, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3264) #16
  %tobool2.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end7.i.i.i.ret.i_crit_edge, label %if.end7.i.i.i.while.cond.i.i_crit_edge

if.end7.i.i.i.while.cond.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  br label %while.cond.i.i

if.end7.i.i.i.ret.i_crit_edge:                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

while.cond.i.i:                                   ; preds = %cleanup.i.i, %if.end7.i.i.i.while.cond.i.i_crit_edge
  %h.addr.0.i.i = phi ptr [ %add.ptr.i.i, %cleanup.i.i ], [ %add.ptr.i, %if.end7.i.i.i.while.cond.i.i_crit_edge ]
  %n.0.i.i = phi i32 [ %inc23.i.i, %cleanup.i.i ], [ 0, %if.end7.i.i.i.while.cond.i.i_crit_edge ]
  %last.0.i.i = phi i64 [ %59, %cleanup.i.i ], [ 0, %if.end7.i.i.i.while.cond.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hi.i.i) #13
  %48 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 -1, ptr %hi.i.i, align 8, !annotation !122
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch.i.i) #13
  %49 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %ch.i.i, align 1, !annotation !122
  %call5.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %h.addr.0.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %hi.i.i, ptr noundef nonnull %ch.i.i) #13
  %50 = zext i32 %call5.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call5.i.i, label %if.end13.i.i [
    i32 0, label %while.cond.i.i.parse_histogram.exit.thread426.i_crit_edge
    i32 2, label %land.lhs.true.i.i
  ]

while.cond.i.i.parse_histogram.exit.thread426.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_histogram.exit.thread426.i

land.lhs.true.i.i:                                ; preds = %while.cond.i.i
  %51 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ch.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %52)
  %cmp10.not.i.i = icmp eq i8 %52, 44
  br i1 %cmp10.not.i.i, label %if.end13.thread.i.i, label %land.lhs.true.i.i.parse_histogram.exit.thread426.i_crit_edge

land.lhs.true.i.i.parse_histogram.exit.thread426.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_histogram.exit.thread426.i

if.end13.i.i:                                     ; preds = %while.cond.i.i
  %53 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %hi.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %last.0.i.i)
  %cmp14.not.i.i = icmp ugt i64 %54, %last.0.i.i
  br i1 %cmp14.not.i.i, label %if.end17.i.i, label %if.end13.i.i.parse_histogram.exit.thread426.i_crit_edge

if.end13.i.i.parse_histogram.exit.thread426.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_histogram.exit.thread426.i

if.end13.thread.i.i:                              ; preds = %land.lhs.true.i.i
  %55 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %hi.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %last.0.i.i)
  %cmp14.not43.i.i = icmp ugt i64 %56, %last.0.i.i
  br i1 %cmp14.not43.i.i, label %if.end17.thread.i.i, label %if.end13.thread.i.i.parse_histogram.exit.thread426.i_crit_edge

if.end13.thread.i.i.parse_histogram.exit.thread426.i_crit_edge: ; preds = %if.end13.thread.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_histogram.exit.thread426.i

if.end17.thread.i.i:                              ; preds = %if.end13.thread.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx44.i.i = getelementptr i64, ptr %call8.i.i.i, i32 %n.0.i.i
  %57 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx44.i.i, align 8
  br label %cleanup.i.i

if.end17.i.i:                                     ; preds = %if.end13.i.i
  %arrayidx.i.i = getelementptr i64, ptr %call8.i.i.i, i32 %n.0.i.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %54, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i.i)
  %cmp18.i.i = icmp eq i32 %call5.i.i, 1
  br i1 %cmp18.i.i, label %parse_histogram.exit.i, label %if.end17.i.i.cleanup.i.i_crit_edge

if.end17.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end17.i.i.cleanup.i.i_crit_edge, %if.end17.thread.i.i
  %59 = phi i64 [ %56, %if.end17.thread.i.i ], [ %54, %if.end17.i.i.cleanup.i.i_crit_edge ]
  %call22.i.i = call ptr @strchr(ptr noundef %h.addr.0.i.i, i32 noundef 44) #13
  %add.ptr.i.i = getelementptr i8, ptr %call22.i.i, i32 1
  %inc23.i.i = add i32 %n.0.i.i, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hi.i.i) #13
  br label %while.cond.i.i

parse_histogram.exit.thread426.i:                 ; preds = %if.end13.thread.i.i.parse_histogram.exit.thread426.i_crit_edge, %if.end13.i.i.parse_histogram.exit.thread426.i_crit_edge, %land.lhs.true.i.i.parse_histogram.exit.thread426.i_crit_edge, %while.cond.i.i.parse_histogram.exit.thread426.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hi.i.i) #13
  br label %ret.i

parse_histogram.exit.i:                           ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hi.i.i) #13
  br label %if.end261.i

if.end261.i:                                      ; preds = %parse_histogram.exit.i, %if.then246.i
  %n_histogram_entries.3.i = phi i32 [ %n_histogram_entries.0437.i, %if.then246.i ], [ %n_histogram_entries.1.i, %parse_histogram.exit.i ]
  %histogram_boundaries.3.i = phi ptr [ %histogram_boundaries.0438.i, %if.then246.i ], [ %call8.i.i.i, %parse_histogram.exit.i ]
  %stat_flags.1.i = phi i32 [ %or247.i, %if.then246.i ], [ %stat_flags.0439.i, %parse_histogram.exit.i ]
  %60 = ptrtoint ptr %feature_args.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %feature_args.i, align 4
  %dec.i = add i32 %61, -1
  store i32 %dec.i, ptr %feature_args.i, align 4
  %tobool239.not.i = icmp eq i32 %61, 0
  br i1 %tobool239.not.i, label %if.end261.i.if.end263.i_crit_edge, label %if.end261.i.while.body.i_crit_edge

if.end261.i.while.body.i_crit_edge:               ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end261.i.if.end263.i_crit_edge:                ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end263.i

if.else262.i:                                     ; preds = %land.lhs.true234.i.if.else262.i_crit_edge, %if.end231.i.if.else262.i_crit_edge
  %62 = ptrtoint ptr %as.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %as_backup.sroa.0.0.copyload.i, ptr %as.i, align 4
  %63 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %as_backup.sroa.5.0.copyload.i, ptr %8, align 4
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.else262.i, %if.end261.i.if.end263.i_crit_edge, %while.cond.preheader.i.if.end263.i_crit_edge
  %n_histogram_entries.4.i = phi i32 [ 0, %if.else262.i ], [ 0, %while.cond.preheader.i.if.end263.i_crit_edge ], [ %n_histogram_entries.3.i, %if.end261.i.if.end263.i_crit_edge ]
  %histogram_boundaries.4.i = phi ptr [ null, %if.else262.i ], [ null, %while.cond.preheader.i.if.end263.i_crit_edge ], [ %histogram_boundaries.3.i, %if.end261.i.if.end263.i_crit_edge ]
  %stat_flags.2.i = phi i32 [ 0, %if.else262.i ], [ 0, %while.cond.preheader.i.if.end263.i_crit_edge ], [ %stat_flags.1.i, %if.end261.i.if.end263.i_crit_edge ]
  %call264.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #13
  %tobool265.not.i = icmp eq ptr %call264.i, null
  %spec.select.i = select i1 %tobool265.not.i, ptr @.str.24, ptr %call264.i
  %call268.i = call ptr @dm_shift_arg(ptr noundef nonnull %as.i) #13
  %tobool269.not.i = icmp eq ptr %call268.i, null
  %aux_data.0.i = select i1 %tobool269.not.i, ptr @.str.24, ptr %call268.i
  %64 = ptrtoint ptr %as.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %as.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool273.not.i = icmp eq i32 %65, 0
  br i1 %tobool273.not.i, label %if.end275.i, label %if.end263.i.ret.i_crit_edge

if.end263.i.ret.i_crit_edge:                      ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

if.end275.i:                                      ; preds = %if.end263.i
  %call276.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.31, i32 noundef 2147483647) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %tobool.not.i.i = icmp eq i32 %maxlen, 0
  br i1 %tobool.not.i.i, label %if.end275.i.ret.i_crit_edge, label %dm_message_test_buffer_overflow.exit.i

if.end275.i.ret.i_crit_edge:                      ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

dm_message_test_buffer_overflow.exit.i:           ; preds = %if.end275.i
  %call.i.i = call i32 @strlen(ptr noundef %result) #19
  %add.i.i = add i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %maxlen)
  %cmp.i.not.i = icmp ult i32 %add.i.i, %maxlen
  br i1 %cmp.i.not.i, label %if.end279.i, label %dm_message_test_buffer_overflow.exit.i.ret.i_crit_edge

dm_message_test_buffer_overflow.exit.i.ret.i_crit_edge: ; preds = %dm_message_test_buffer_overflow.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

if.end279.i:                                      ; preds = %dm_message_test_buffer_overflow.exit.i
  %stats.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35
  %66 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %start.i, align 8
  %68 = ptrtoint ptr %step.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %step.i, align 8
  %call281.i = call fastcc i32 @dm_stats_create(ptr noundef %stats.i.i, i64 noundef %67, i64 noundef %add.i, i64 noundef %69, i32 noundef %stat_flags.2.i, i32 noundef %n_histogram_entries.4.i, ptr noundef %histogram_boundaries.4.i, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %aux_data.0.i, ptr noundef %md) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281.i)
  %cmp282.i = icmp slt i32 %call281.i, 0
  br i1 %cmp282.i, label %if.end279.i.ret.i_crit_edge, label %if.end285.i

if.end279.i.ret.i_crit_edge:                      ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret.i

if.end285.i:                                      ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #15
  %call286.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.31, i32 noundef %call281.i) #13
  br label %ret.i

ret.i:                                            ; preds = %if.end285.i, %if.end279.i.ret.i_crit_edge, %dm_message_test_buffer_overflow.exit.i.ret.i_crit_edge, %if.end275.i.ret.i_crit_edge, %if.end263.i.ret.i_crit_edge, %parse_histogram.exit.thread426.i, %if.end7.i.i.i.ret.i_crit_edge, %for.end.i.i.ret.i_crit_edge, %if.else248.i.ret.i_crit_edge, %while.body.i.ret.i_crit_edge, %lor.lhs.false227.i.ret.i_crit_edge, %if.else220.i.ret.i_crit_edge, %if.end16.i.ret.i_crit_edge, %if.else.i.ret.i_crit_edge, %if.then.ret.i_crit_edge
  %histogram_boundaries.5.i = phi ptr [ null, %if.then.ret.i_crit_edge ], [ %histogram_boundaries.4.i, %dm_message_test_buffer_overflow.exit.i.ret.i_crit_edge ], [ %histogram_boundaries.4.i, %if.end279.i.ret.i_crit_edge ], [ %histogram_boundaries.4.i, %if.end285.i ], [ %histogram_boundaries.4.i, %if.end263.i.ret.i_crit_edge ], [ null, %lor.lhs.false227.i.ret.i_crit_edge ], [ null, %if.else220.i.ret.i_crit_edge ], [ null, %if.end16.i.ret.i_crit_edge ], [ null, %if.else.i.ret.i_crit_edge ], [ %call8.i.i.i, %parse_histogram.exit.thread426.i ], [ %histogram_boundaries.4.i, %if.end275.i.ret.i_crit_edge ], [ %histogram_boundaries.0438.i, %while.body.i.ret.i_crit_edge ], [ %histogram_boundaries.0438.i, %if.else248.i.ret.i_crit_edge ], [ null, %for.end.i.i.ret.i_crit_edge ], [ null, %if.end7.i.i.i.ret.i_crit_edge ]
  %r.0.i = phi i32 [ -22, %if.then.ret.i_crit_edge ], [ 1, %dm_message_test_buffer_overflow.exit.i.ret.i_crit_edge ], [ %call281.i, %if.end279.i.ret.i_crit_edge ], [ 1, %if.end285.i ], [ -22, %if.end263.i.ret.i_crit_edge ], [ -22, %lor.lhs.false227.i.ret.i_crit_edge ], [ -22, %if.else220.i.ret.i_crit_edge ], [ -22, %if.end16.i.ret.i_crit_edge ], [ -22, %if.else.i.ret.i_crit_edge ], [ -22, %parse_histogram.exit.thread426.i ], [ 1, %if.end275.i.ret.i_crit_edge ], [ -22, %while.body.i.ret.i_crit_edge ], [ -22, %if.else248.i.ret.i_crit_edge ], [ -12, %for.end.i.i.ret.i_crit_edge ], [ -12, %if.end7.i.i.i.ret.i_crit_edge ]
  call void @kfree(ptr noundef %histogram_boundaries.5.i) #13
  br label %message_stats_create.exit

message_stats_create.exit:                        ; preds = %ret.i, %if.then23.i.message_stats_create.exit_crit_edge
  %retval.0.i = phi i32 [ %r.0.i, %ret.i ], [ -22, %if.then23.i.message_stats_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_args.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %divisor.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %step.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #13
  br label %if.end43

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #13
  %70 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %id.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i81) #13
  %71 = ptrtoint ptr %dummy.i81 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %dummy.i81, align 1, !annotation !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp.not.i = icmp eq i32 %argc, 2
  br i1 %cmp.not.i, label %if.end.i83, label %if.then5.message_stats_delete.exit_crit_edge

if.then5.message_stats_delete.exit_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %message_stats_delete.exit

if.end.i83:                                       ; preds = %if.then5
  %arrayidx.i = getelementptr ptr, ptr %argv, i32 1
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i, align 4
  %call.i82 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %73, ptr noundef nonnull @.str.32, ptr noundef nonnull %id.i, ptr noundef nonnull %dummy.i81) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i82)
  %cmp1.not.i = icmp eq i32 %call.i82, 1
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %if.end.i83.message_stats_delete.exit_crit_edge

if.end.i83.message_stats_delete.exit_crit_edge:   ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %message_stats_delete.exit

lor.lhs.false.i:                                  ; preds = %if.end.i83
  %74 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp2.i = icmp slt i32 %75, 0
  br i1 %cmp2.i, label %lor.lhs.false.i.message_stats_delete.exit_crit_edge, label %if.end4.i

lor.lhs.false.i.message_stats_delete.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %message_stats_delete.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %stats.i.i84 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35
  call void @mutex_lock_nested(ptr noundef %stats.i.i84, i32 noundef 0) #13
  %list.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35, i32 1
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %if.end.i.i.i85.for.cond.i.i.i_crit_edge, %if.end4.i
  %s.0.in.i.i.i = phi ptr [ %list.i.i.i, %if.end4.i ], [ %s.0.i.i.i, %if.end.i.i.i85.for.cond.i.i.i_crit_edge ]
  %76 = ptrtoint ptr %s.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %s.0.i.i.i = load ptr, ptr %s.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %s.0.i.i.i, %list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.if.then.i.i87_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.then.i.i87_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i87

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %id2.i.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %id2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %id2.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %75)
  %cmp3.i.i.i = icmp sgt i32 %78, %75
  br i1 %cmp3.i.i.i, label %for.body.i.i.i.if.then.i.i87_crit_edge, label %if.end.i.i.i85

for.body.i.i.i.if.then.i.i87_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i87

if.end.i.i.i85:                                   ; preds = %for.body.i.i.i
  %cmp5.i.i.i = icmp eq i32 %78, %75
  br i1 %cmp5.i.i.i, label %__dm_stats_find.exit.i.i, label %if.end.i.i.i85.for.cond.i.i.i_crit_edge

if.end.i.i.i85.for.cond.i.i.i_crit_edge:          ; preds = %if.end.i.i.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.i

__dm_stats_find.exit.i.i:                         ; preds = %if.end.i.i.i85
  %tobool.not.i.i86 = icmp eq ptr %s.0.i.i.i, null
  br i1 %tobool.not.i.i86, label %__dm_stats_find.exit.i.i.if.then.i.i87_crit_edge, label %if.end.i.i

__dm_stats_find.exit.i.i.if.then.i.i87_crit_edge: ; preds = %__dm_stats_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i87

if.then.i.i87:                                    ; preds = %__dm_stats_find.exit.i.i.if.then.i.i87_crit_edge, %for.body.i.i.i.if.then.i.i87_crit_edge, %for.cond.i.i.i.if.then.i.i87_crit_edge
  call void @mutex_unlock(ptr noundef %stats.i.i84) #13
  br label %message_stats_delete.exit

if.end.i.i:                                       ; preds = %__dm_stats_find.exit.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %s.0.i.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i88, label %if.end.i.i.list_del_rcu.exit.i.i_crit_edge

if.end.i.i.list_del_rcu.exit.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_rcu.exit.i.i

if.end.i.i.i.i88:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %s.0.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i.i, align 4
  %81 = ptrtoint ptr %s.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s.0.i.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del_rcu.exit.i.i

list_del_rcu.exit.i.i:                            ; preds = %if.end.i.i.i.i88, %if.end.i.i.list_del_rcu.exit.i.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %s.0.i.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @mutex_unlock(ptr noundef %stats.i.i84) #13
  %stat_percpu.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i.i, i32 0, i32 15
  br label %for.cond.i.i89

for.cond.i.i89:                                   ; preds = %lor.lhs.false.i.i.for.cond.i.i89_crit_edge, %list_del_rcu.exit.i.i
  %cpu.0.i.i = phi i32 [ -1, %list_del_rcu.exit.i.i ], [ %call3.i.i, %lor.lhs.false.i.i.for.cond.i.i89_crit_edge ]
  %call3.i.i = call i32 @cpumask_next(i32 noundef %cpu.0.i.i, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %86 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %86)
  %cmp.i.i = icmp ult i32 %call3.i.i, %86
  br i1 %cmp.i.i, label %for.body.i.i, label %for.end.i.i91

for.body.i.i:                                     ; preds = %for.cond.i.i89
  %call4.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %stat_percpu.i.i) #13
  br i1 %call4.i.i, label %for.body.i.i.do_sync_free.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.do_sync_free.i.i_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_sync_free.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %arrayidx.i.i90 = getelementptr %struct.dm_stat, ptr %s.0.i.i.i, i32 0, i32 15, i32 %call3.i.i
  %87 = ptrtoint ptr %arrayidx.i.i90 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i90, align 4
  %histogram.i.i = getelementptr inbounds %struct.dm_stat_percpu, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %histogram.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %histogram.i.i, align 8
  %call7.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %90) #13
  br i1 %call7.i.i, label %lor.lhs.false.i.i.do_sync_free.i.i_crit_edge, label %lor.lhs.false.i.i.for.cond.i.i89_crit_edge

lor.lhs.false.i.i.for.cond.i.i89_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i89

lor.lhs.false.i.i.do_sync_free.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_sync_free.i.i

for.end.i.i91:                                    ; preds = %for.cond.i.i89
  %call10.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %s.0.i.i.i) #13
  br i1 %call10.i.i, label %for.end.i.i91.do_sync_free.i.i_crit_edge, label %lor.lhs.false11.i.i

for.end.i.i91.do_sync_free.i.i_crit_edge:         ; preds = %for.end.i.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_sync_free.i.i

lor.lhs.false11.i.i:                              ; preds = %for.end.i.i91
  %histogram13.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i.i, i32 2, i32 1
  %91 = ptrtoint ptr %histogram13.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %histogram13.i.i, align 8
  %call14.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %92) #13
  br i1 %call14.i.i, label %lor.lhs.false11.i.i.do_sync_free.i.i_crit_edge, label %do.body17.i.i

lor.lhs.false11.i.i.do_sync_free.i.i_crit_edge:   ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_sync_free.i.i

do_sync_free.i.i:                                 ; preds = %lor.lhs.false11.i.i.do_sync_free.i.i_crit_edge, %for.end.i.i91.do_sync_free.i.i_crit_edge, %lor.lhs.false.i.i.do_sync_free.i.i_crit_edge, %for.body.i.i.do_sync_free.i.i_crit_edge
  call void @synchronize_rcu_expedited() #13
  %callback_head.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i.i, i32 0, i32 11
  call void @dm_stat_free(ptr noundef %callback_head.i.i) #13
  br label %message_stats_delete.exit

do.body17.i.i:                                    ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store volatile i32 1, ptr @dm_stat_need_rcu_barrier, align 4
  %callback_head22.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i.i, i32 0, i32 11
  call void @call_rcu(ptr noundef %callback_head22.i.i, ptr noundef nonnull @dm_stat_free) #13
  br label %message_stats_delete.exit

message_stats_delete.exit:                        ; preds = %do.body17.i.i, %do_sync_free.i.i, %if.then.i.i87, %lor.lhs.false.i.message_stats_delete.exit_crit_edge, %if.end.i83.message_stats_delete.exit_crit_edge, %if.then5.message_stats_delete.exit_crit_edge
  %retval.0.i92 = phi i32 [ -22, %if.then5.message_stats_delete.exit_crit_edge ], [ -22, %lor.lhs.false.i.message_stats_delete.exit_crit_edge ], [ -22, %if.end.i83.message_stats_delete.exit_crit_edge ], [ -2, %if.then.i.i87 ], [ 0, %do.body17.i.i ], [ 0, %do_sync_free.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i81) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #13
  br label %if.end43

if.else7:                                         ; preds = %if.else
  %call9 = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i93) #13
  %93 = ptrtoint ptr %id.i93 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %id.i93, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i94) #13
  %94 = ptrtoint ptr %dummy.i94 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %dummy.i94, align 1, !annotation !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp.not.i95 = icmp eq i32 %argc, 2
  br i1 %cmp.not.i95, label %if.end.i99, label %if.then11.message_stats_clear.exit_crit_edge

if.then11.message_stats_clear.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %message_stats_clear.exit

if.end.i99:                                       ; preds = %if.then11
  %arrayidx.i96 = getelementptr ptr, ptr %argv, i32 1
  %95 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i96, align 4
  %call.i97 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %96, ptr noundef nonnull @.str.32, ptr noundef nonnull %id.i93, ptr noundef nonnull %dummy.i94) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i97)
  %cmp1.not.i98 = icmp eq i32 %call.i97, 1
  br i1 %cmp1.not.i98, label %lor.lhs.false.i101, label %if.end.i99.message_stats_clear.exit_crit_edge

if.end.i99.message_stats_clear.exit_crit_edge:    ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #15
  br label %message_stats_clear.exit

lor.lhs.false.i101:                               ; preds = %if.end.i99
  %97 = ptrtoint ptr %id.i93 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %id.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp2.i100 = icmp slt i32 %98, 0
  br i1 %cmp2.i100, label %lor.lhs.false.i101.message_stats_clear.exit_crit_edge, label %if.end4.i104

lor.lhs.false.i101.message_stats_clear.exit_crit_edge: ; preds = %lor.lhs.false.i101
  call void @__sanitizer_cov_trace_pc() #15
  br label %message_stats_clear.exit

if.end4.i104:                                     ; preds = %lor.lhs.false.i101
  %stats.i.i102 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35
  call void @mutex_lock_nested(ptr noundef %stats.i.i102, i32 noundef 0) #13
  %list.i.i.i103 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35, i32 1
  br label %for.cond.i.i.i108

for.cond.i.i.i108:                                ; preds = %if.end.i.i.i113.for.cond.i.i.i108_crit_edge, %if.end4.i104
  %s.0.in.i.i.i105 = phi ptr [ %list.i.i.i103, %if.end4.i104 ], [ %s.0.i.i.i106, %if.end.i.i.i113.for.cond.i.i.i108_crit_edge ]
  %99 = ptrtoint ptr %s.0.in.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %99)
  %s.0.i.i.i106 = load ptr, ptr %s.0.in.i.i.i105, align 4
  %cmp.not.i.i.i107 = icmp eq ptr %s.0.i.i.i106, %list.i.i.i103
  br i1 %cmp.not.i.i.i107, label %for.cond.i.i.i108.dm_stats_clear.exit.i_crit_edge, label %for.body.i.i.i111

for.cond.i.i.i108.dm_stats_clear.exit.i_crit_edge: ; preds = %for.cond.i.i.i108
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_clear.exit.i

for.body.i.i.i111:                                ; preds = %for.cond.i.i.i108
  %id2.i.i.i109 = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i.i106, i32 0, i32 1
  %100 = ptrtoint ptr %id2.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %id2.i.i.i109, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %98)
  %cmp3.i.i.i110 = icmp sgt i32 %101, %98
  br i1 %cmp3.i.i.i110, label %for.body.i.i.i111.dm_stats_clear.exit.i_crit_edge, label %if.end.i.i.i113

for.body.i.i.i111.dm_stats_clear.exit.i_crit_edge: ; preds = %for.body.i.i.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_clear.exit.i

if.end.i.i.i113:                                  ; preds = %for.body.i.i.i111
  %cmp5.i.i.i112 = icmp eq i32 %101, %98
  br i1 %cmp5.i.i.i112, label %__dm_stats_find.exit.i.i115, label %if.end.i.i.i113.for.cond.i.i.i108_crit_edge

if.end.i.i.i113.for.cond.i.i.i108_crit_edge:      ; preds = %if.end.i.i.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.i108

__dm_stats_find.exit.i.i115:                      ; preds = %if.end.i.i.i113
  %tobool.not.i.i114 = icmp eq ptr %s.0.i.i.i106, null
  br i1 %tobool.not.i.i114, label %__dm_stats_find.exit.i.i115.dm_stats_clear.exit.i_crit_edge, label %if.end.i.i116

__dm_stats_find.exit.i.i115.dm_stats_clear.exit.i_crit_edge: ; preds = %__dm_stats_find.exit.i.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_clear.exit.i

if.end.i.i116:                                    ; preds = %__dm_stats_find.exit.i.i115
  call void @__sanitizer_cov_trace_pc() #15
  %n_entries.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i.i106, i32 0, i32 3
  %102 = ptrtoint ptr %n_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %n_entries.i.i, align 8
  call fastcc void @__dm_stat_clear(ptr noundef nonnull %s.0.i.i.i106, i32 noundef 0, i32 noundef %103, i1 noundef zeroext true) #13
  br label %dm_stats_clear.exit.i

dm_stats_clear.exit.i:                            ; preds = %if.end.i.i116, %__dm_stats_find.exit.i.i115.dm_stats_clear.exit.i_crit_edge, %for.body.i.i.i111.dm_stats_clear.exit.i_crit_edge, %for.cond.i.i.i108.dm_stats_clear.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end.i.i116 ], [ -2, %__dm_stats_find.exit.i.i115.dm_stats_clear.exit.i_crit_edge ], [ -2, %for.cond.i.i.i108.dm_stats_clear.exit.i_crit_edge ], [ -2, %for.body.i.i.i111.dm_stats_clear.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %stats.i.i102) #13
  br label %message_stats_clear.exit

message_stats_clear.exit:                         ; preds = %dm_stats_clear.exit.i, %lor.lhs.false.i101.message_stats_clear.exit_crit_edge, %if.end.i99.message_stats_clear.exit_crit_edge, %if.then11.message_stats_clear.exit_crit_edge
  %retval.0.i117 = phi i32 [ %retval.0.i.i, %dm_stats_clear.exit.i ], [ -22, %if.then11.message_stats_clear.exit_crit_edge ], [ -22, %lor.lhs.false.i101.message_stats_clear.exit_crit_edge ], [ -22, %if.end.i99.message_stats_clear.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i94) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i93) #13
  br label %if.end43

if.else13:                                        ; preds = %if.else7
  %call15 = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else13
  %104 = add i32 %argc, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %104)
  %105 = icmp ult i32 %104, -2
  br i1 %105, label %if.then17.do.end_crit_edge, label %if.end.i119

if.then17.do.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i119:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp2.i118 = icmp eq i32 %argc, 2
  br i1 %cmp2.i118, label %if.then3.i, label %if.end.i119.if.end6.i_crit_edge

if.end.i119.if.end6.i_crit_edge:                  ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i119
  %arrayidx.i120 = getelementptr ptr, ptr %argv, i32 1
  %106 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i120, align 4
  %call.i121 = tail call noalias ptr @kstrdup(ptr noundef %107, i32 noundef 3264) #13
  %tobool.not.i122 = icmp eq ptr %call.i121, null
  br i1 %tobool.not.i122, label %if.then3.i.cleanup_crit_edge, label %if.then3.i.if.end6.i_crit_edge

if.then3.i.if.end6.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6.i:                                        ; preds = %if.then3.i.if.end6.i_crit_edge, %if.end.i119.if.end6.i_crit_edge
  %program.0.i = phi ptr [ %call.i121, %if.then3.i.if.end6.i_crit_edge ], [ null, %if.end.i119.if.end6.i_crit_edge ]
  %stats.i.i123 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %stats.i.i123, i32 noundef 0) #13
  %list.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35, i32 1
  %108 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %s.05.i.i = load ptr, ptr %list.i.i, align 4
  %cmp.not6.i.i = icmp eq ptr %s.05.i.i, %list.i.i
  br i1 %cmp.not6.i.i, label %if.end6.i.dm_stats_list.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end6.i.dm_stats_list.exit.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_list.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end6.i
  %tobool.not.i.i124 = icmp eq ptr %program.0.i, null
  br label %for.body.i.i125

for.body.i.i125:                                  ; preds = %for.inc67.i.i.for.body.i.i125_crit_edge, %for.body.lr.ph.i.i
  %s.09.i.i = phi ptr [ %s.05.i.i, %for.body.lr.ph.i.i ], [ %s.0.i.i, %for.inc67.i.i.for.body.i.i125_crit_edge ]
  %sz.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %sz.5.i.i, %for.inc67.i.i.for.body.i.i125_crit_edge ]
  br i1 %tobool.not.i.i124, label %for.body.i.i125.if.then.i.i129_crit_edge, label %lor.lhs.false.i.i128

for.body.i.i125.if.then.i.i129_crit_edge:         ; preds = %for.body.i.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i129

lor.lhs.false.i.i128:                             ; preds = %for.body.i.i125
  %program_id.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.09.i.i, i32 0, i32 9
  %109 = ptrtoint ptr %program_id.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %program_id.i.i, align 8
  %call.i.i126 = tail call i32 @strcmp(ptr noundef nonnull %program.0.i, ptr noundef %110) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126)
  %tobool2.not.i.i127 = icmp eq i32 %call.i.i126, 0
  br i1 %tobool2.not.i.i127, label %lor.lhs.false.i.i128.if.then.i.i129_crit_edge, label %lor.lhs.false.i.i128.for.inc67.i.i_crit_edge

lor.lhs.false.i.i128.for.inc67.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i128
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc67.i.i

lor.lhs.false.i.i128.if.then.i.i129_crit_edge:    ; preds = %lor.lhs.false.i.i128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i129

if.then.i.i129:                                   ; preds = %lor.lhs.false.i.i128.if.then.i.i129_crit_edge, %for.body.i.i125.if.then.i.i129_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.07.i.i, i32 %maxlen)
  %cmp3.not.i.i = icmp ult i32 %sz.07.i.i, %maxlen
  br i1 %cmp3.not.i.i, label %cond.false.i.i, label %if.then.i.i129.cond.end.i.i_crit_edge

if.then.i.i129.cond.end.i.i_crit_edge:            ; preds = %if.then.i.i129
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then.i.i129
  call void @__sanitizer_cov_trace_pc() #15
  %end.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.09.i.i, i32 0, i32 5
  %111 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %end.i.i, align 8
  %start.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.09.i.i, i32 0, i32 4
  %113 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %start.i.i, align 8
  %sub.i.i = sub i64 %112, %114
  %add.ptr4.i.i = getelementptr i8, ptr %result, i32 %sz.07.i.i
  %sub5.i.i = sub i32 %maxlen, %sz.07.i.i
  %id.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.09.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %id.i.i, align 8
  %step.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.09.i.i, i32 0, i32 6
  %117 = ptrtoint ptr %step.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %step.i.i, align 8
  %program_id7.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.09.i.i, i32 0, i32 9
  %119 = ptrtoint ptr %program_id7.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %program_id7.i.i, align 8
  %aux_data.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.09.i.i, i32 0, i32 10
  %121 = ptrtoint ptr %aux_data.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %aux_data.i.i, align 4
  %call8.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4.i.i, i32 noundef %sub5.i.i, ptr noundef nonnull @.str.33, i32 noundef %116, i64 noundef %114, i64 noundef %sub.i.i, i64 noundef %118, ptr noundef %120, ptr noundef %122) #13
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.then.i.i129.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %call8.i.i, %cond.false.i.i ], [ 0, %if.then.i.i129.cond.end.i.i_crit_edge ]
  %add.i.i130 = add i32 %cond.i.i, %sz.07.i.i
  %stat_flags.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.09.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %stat_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %stat_flags.i.i, align 4
  %and.i.i = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool9.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool9.not.i.i, label %cond.end.i.i.if.end.i.i131_crit_edge, label %if.then10.i.i

cond.end.i.i.if.end.i.i131_crit_edge:             ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i131

if.then10.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i130, i32 %maxlen)
  %cmp11.not.i.i = icmp ult i32 %add.i.i130, %maxlen
  br i1 %cmp11.not.i.i, label %cond.false13.i.i, label %if.then10.i.i.cond.end17.i.i_crit_edge

if.then10.i.i.cond.end17.i.i_crit_edge:           ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end17.i.i

cond.false13.i.i:                                 ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr14.i.i = getelementptr i8, ptr %result, i32 %add.i.i130
  %sub15.i.i = sub i32 %maxlen, %add.i.i130
  %call16.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.i.i, i32 noundef %sub15.i.i, ptr noundef nonnull @.str.34) #13
  br label %cond.end17.i.i

cond.end17.i.i:                                   ; preds = %cond.false13.i.i, %if.then10.i.i.cond.end17.i.i_crit_edge
  %cond18.i.i = phi i32 [ %call16.i.i, %cond.false13.i.i ], [ 0, %if.then10.i.i.cond.end17.i.i_crit_edge ]
  %add19.i.i = add i32 %cond18.i.i, %add.i.i130
  br label %if.end.i.i131

if.end.i.i131:                                    ; preds = %cond.end17.i.i, %cond.end.i.i.if.end.i.i131_crit_edge
  %sz.1.i.i = phi i32 [ %add19.i.i, %cond.end17.i.i ], [ %add.i.i130, %cond.end.i.i.if.end.i.i131_crit_edge ]
  %n_histogram_entries.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.09.i.i, i32 0, i32 7
  %125 = ptrtoint ptr %n_histogram_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %n_histogram_entries.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool20.not.i.i = icmp eq i32 %126, 0
  br i1 %tobool20.not.i.i, label %if.end.i.i131.if.end56.i.i_crit_edge, label %if.then21.i.i

if.end.i.i131.if.end56.i.i_crit_edge:             ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i.i

if.then21.i.i:                                    ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1.i.i, i32 %maxlen)
  %cmp22.not.i.i = icmp ult i32 %sz.1.i.i, %maxlen
  br i1 %cmp22.not.i.i, label %cond.end28.i.i, label %if.then21.i.i.if.end46.peel.i.i_crit_edge

if.then21.i.i.if.end46.peel.i.i_crit_edge:        ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.peel.i.i

cond.end28.i.i:                                   ; preds = %if.then21.i.i
  %add.ptr25.i.i = getelementptr i8, ptr %result, i32 %sz.1.i.i
  %sub26.i.i = sub i32 %maxlen, %sz.1.i.i
  %call27.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25.i.i, i32 noundef %sub26.i.i, ptr noundef nonnull @.str.35) #13
  %127 = ptrtoint ptr %n_histogram_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pr.i.i = load i32, ptr %n_histogram_entries.i.i, align 8
  %add30.i.i = add i32 %call27.i.i, %sz.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp331.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %cmp331.not.i.i, label %cond.end28.i.i.if.end56.i.i_crit_edge, label %cond.end28.i.i.if.end46.peel.i.i_crit_edge

cond.end28.i.i.if.end46.peel.i.i_crit_edge:       ; preds = %cond.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.peel.i.i

cond.end28.i.i.if.end56.i.i_crit_edge:            ; preds = %cond.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i.i

if.end46.peel.i.i:                                ; preds = %cond.end28.i.i.if.end46.peel.i.i_crit_edge, %if.then21.i.i.if.end46.peel.i.i_crit_edge
  %add3014.i.i = phi i32 [ %add30.i.i, %cond.end28.i.i.if.end46.peel.i.i_crit_edge ], [ %sz.1.i.i, %if.then21.i.i.if.end46.peel.i.i_crit_edge ]
  %histogram_boundaries.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.09.i.i, i32 0, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add3014.i.i, i32 %maxlen)
  %cmp47.not.peel.i.i = icmp ult i32 %add3014.i.i, %maxlen
  br i1 %cmp47.not.peel.i.i, label %cond.false49.peel.i.i, label %if.end46.peel.i.i.cond.end53.peel.i.i_crit_edge

if.end46.peel.i.i.cond.end53.peel.i.i_crit_edge:  ; preds = %if.end46.peel.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end53.peel.i.i

cond.false49.peel.i.i:                            ; preds = %if.end46.peel.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr50.peel.i.i = getelementptr i8, ptr %result, i32 %add3014.i.i
  %sub51.peel.i.i = sub i32 %maxlen, %add3014.i.i
  %128 = ptrtoint ptr %histogram_boundaries.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %histogram_boundaries.i.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %129, align 8
  %call52.peel.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.peel.i.i, i32 noundef %sub51.peel.i.i, ptr noundef nonnull @.str.37, i64 noundef %131) #13
  br label %cond.end53.peel.i.i

cond.end53.peel.i.i:                              ; preds = %cond.false49.peel.i.i, %if.end46.peel.i.i.cond.end53.peel.i.i_crit_edge
  %cond54.peel.i.i = phi i32 [ %call52.peel.i.i, %cond.false49.peel.i.i ], [ 0, %if.end46.peel.i.i.cond.end53.peel.i.i_crit_edge ]
  %add55.peel.i.i = add i32 %cond54.peel.i.i, %add3014.i.i
  %132 = ptrtoint ptr %n_histogram_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %n_histogram_entries.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp33.peel.i.i = icmp ugt i32 %133, 1
  br i1 %cmp33.peel.i.i, label %cond.end53.peel.i.i.if.then36.i.i_crit_edge, label %cond.end53.peel.i.i.if.end56.i.i_crit_edge

cond.end53.peel.i.i.if.end56.i.i_crit_edge:       ; preds = %cond.end53.peel.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i.i

cond.end53.peel.i.i.if.then36.i.i_crit_edge:      ; preds = %cond.end53.peel.i.i
  br label %if.then36.i.i

if.then36.i.i:                                    ; preds = %cond.end53.i.i.if.then36.i.i_crit_edge, %cond.end53.peel.i.i.if.then36.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i133, %cond.end53.i.i.if.then36.i.i_crit_edge ], [ 1, %cond.end53.peel.i.i.if.then36.i.i_crit_edge ]
  %sz.22.i.i = phi i32 [ %add55.i.i, %cond.end53.i.i.if.then36.i.i_crit_edge ], [ %add55.peel.i.i, %cond.end53.peel.i.i.if.then36.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.22.i.i, i32 %maxlen)
  %cmp37.not.i.i = icmp ult i32 %sz.22.i.i, %maxlen
  br i1 %cmp37.not.i.i, label %cond.false39.i.i, label %if.then36.i.i.if.end46.i.i_crit_edge

if.then36.i.i.if.end46.i.i_crit_edge:             ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i.i

cond.false39.i.i:                                 ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr40.i.i = getelementptr i8, ptr %result, i32 %sz.22.i.i
  %sub41.i.i = sub i32 %maxlen, %sz.22.i.i
  %call42.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.i.i, i32 noundef %sub41.i.i, ptr noundef nonnull @.str.36) #13
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %cond.false39.i.i, %if.then36.i.i.if.end46.i.i_crit_edge
  %cond44.i.i = phi i32 [ %call42.i.i, %cond.false39.i.i ], [ 0, %if.then36.i.i.if.end46.i.i_crit_edge ]
  %add45.i.i = add i32 %cond44.i.i, %sz.22.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i.i, i32 %maxlen)
  %cmp47.not.i.i = icmp ult i32 %add45.i.i, %maxlen
  br i1 %cmp47.not.i.i, label %cond.false49.i.i, label %if.end46.i.i.cond.end53.i.i_crit_edge

if.end46.i.i.cond.end53.i.i_crit_edge:            ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end53.i.i

cond.false49.i.i:                                 ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr50.i.i = getelementptr i8, ptr %result, i32 %add45.i.i
  %sub51.i.i = sub i32 %maxlen, %add45.i.i
  %134 = ptrtoint ptr %histogram_boundaries.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %histogram_boundaries.i.i, align 4
  %arrayidx.i.i132 = getelementptr i64, ptr %135, i32 %i.04.i.i
  %136 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx.i.i132, align 8
  %call52.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.i.i, i32 noundef %sub51.i.i, ptr noundef nonnull @.str.37, i64 noundef %137) #13
  br label %cond.end53.i.i

cond.end53.i.i:                                   ; preds = %cond.false49.i.i, %if.end46.i.i.cond.end53.i.i_crit_edge
  %cond54.i.i = phi i32 [ %call52.i.i, %cond.false49.i.i ], [ 0, %if.end46.i.i.cond.end53.i.i_crit_edge ]
  %add55.i.i = add i32 %cond54.i.i, %add45.i.i
  %inc.i.i133 = add nuw i32 %i.04.i.i, 1
  %138 = ptrtoint ptr %n_histogram_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %n_histogram_entries.i.i, align 8
  %cmp33.i.i = icmp ult i32 %inc.i.i133, %139
  br i1 %cmp33.i.i, label %cond.end53.i.i.if.then36.i.i_crit_edge, label %cond.end53.i.i.if.end56.i.i_crit_edge, !llvm.loop !131

cond.end53.i.i.if.end56.i.i_crit_edge:            ; preds = %cond.end53.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i.i

cond.end53.i.i.if.then36.i.i_crit_edge:           ; preds = %cond.end53.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36.i.i

if.end56.i.i:                                     ; preds = %cond.end53.i.i.if.end56.i.i_crit_edge, %cond.end53.peel.i.i.if.end56.i.i_crit_edge, %cond.end28.i.i.if.end56.i.i_crit_edge, %if.end.i.i131.if.end56.i.i_crit_edge
  %sz.4.i.i = phi i32 [ %sz.1.i.i, %if.end.i.i131.if.end56.i.i_crit_edge ], [ %add30.i.i, %cond.end28.i.i.if.end56.i.i_crit_edge ], [ %add55.peel.i.i, %cond.end53.peel.i.i.if.end56.i.i_crit_edge ], [ %add55.i.i, %cond.end53.i.i.if.end56.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.4.i.i, i32 %maxlen)
  %cmp57.not.i.i = icmp ult i32 %sz.4.i.i, %maxlen
  br i1 %cmp57.not.i.i, label %cond.false59.i.i, label %if.end56.i.i.cond.end63.i.i_crit_edge

if.end56.i.i.cond.end63.i.i_crit_edge:            ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end63.i.i

cond.false59.i.i:                                 ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr60.i.i = getelementptr i8, ptr %result, i32 %sz.4.i.i
  %sub61.i.i = sub i32 %maxlen, %sz.4.i.i
  %call62.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60.i.i, i32 noundef %sub61.i.i, ptr noundef nonnull @.str.38) #13
  br label %cond.end63.i.i

cond.end63.i.i:                                   ; preds = %cond.false59.i.i, %if.end56.i.i.cond.end63.i.i_crit_edge
  %cond64.i.i = phi i32 [ %call62.i.i, %cond.false59.i.i ], [ 0, %if.end56.i.i.cond.end63.i.i_crit_edge ]
  %add65.i.i = add i32 %cond64.i.i, %sz.4.i.i
  br label %for.inc67.i.i

for.inc67.i.i:                                    ; preds = %cond.end63.i.i, %lor.lhs.false.i.i128.for.inc67.i.i_crit_edge
  %sz.5.i.i = phi i32 [ %sz.07.i.i, %lor.lhs.false.i.i128.for.inc67.i.i_crit_edge ], [ %add65.i.i, %cond.end63.i.i ]
  %140 = ptrtoint ptr %s.09.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %s.0.i.i = load ptr, ptr %s.09.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %s.0.i.i, %list.i.i
  br i1 %cmp.not.i.i, label %for.inc67.i.i.dm_stats_list.exit.i_crit_edge, label %for.inc67.i.i.for.body.i.i125_crit_edge

for.inc67.i.i.for.body.i.i125_crit_edge:          ; preds = %for.inc67.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i125

for.inc67.i.i.dm_stats_list.exit.i_crit_edge:     ; preds = %for.inc67.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_list.exit.i

dm_stats_list.exit.i:                             ; preds = %for.inc67.i.i.dm_stats_list.exit.i_crit_edge, %if.end6.i.dm_stats_list.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %stats.i.i123) #13
  tail call void @kfree(ptr noundef %program.0.i) #13
  br label %cleanup

if.else19:                                        ; preds = %if.else13
  %call21 = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call fastcc i32 @message_stats_print(ptr noundef %md, i32 noundef %argc, ptr noundef %argv, i1 noundef zeroext false, ptr noundef %result, i32 noundef %maxlen)
  br label %if.end43

if.else25:                                        ; preds = %if.else19
  %call27 = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call fastcc i32 @message_stats_print(ptr noundef %md, i32 noundef %argc, ptr noundef %argv, i1 noundef zeroext true, ptr noundef %result, i32 noundef %maxlen)
  br label %if.end43

if.else31:                                        ; preds = %if.else25
  %call33 = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.else31.cleanup_crit_edge

if.else31.cleanup_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then35:                                        ; preds = %if.else31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i135) #13
  %141 = ptrtoint ptr %id.i135 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %id.i135, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i136) #13
  %142 = ptrtoint ptr %dummy.i136 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -1, ptr %dummy.i136, align 1, !annotation !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %argc)
  %cmp.not.i137 = icmp eq i32 %argc, 3
  br i1 %cmp.not.i137, label %if.end.i141, label %if.then35.message_stats_set_aux.exit_crit_edge

if.then35.message_stats_set_aux.exit_crit_edge:   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %message_stats_set_aux.exit

if.end.i141:                                      ; preds = %if.then35
  %arrayidx.i138 = getelementptr ptr, ptr %argv, i32 1
  %143 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i138, align 4
  %call.i139 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %144, ptr noundef nonnull @.str.32, ptr noundef nonnull %id.i135, ptr noundef nonnull %dummy.i136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i139)
  %cmp1.not.i140 = icmp eq i32 %call.i139, 1
  br i1 %cmp1.not.i140, label %lor.lhs.false.i143, label %if.end.i141.message_stats_set_aux.exit_crit_edge

if.end.i141.message_stats_set_aux.exit_crit_edge: ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #15
  br label %message_stats_set_aux.exit

lor.lhs.false.i143:                               ; preds = %if.end.i141
  %145 = ptrtoint ptr %id.i135 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %id.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp2.i142 = icmp slt i32 %146, 0
  br i1 %cmp2.i142, label %lor.lhs.false.i143.message_stats_set_aux.exit_crit_edge, label %if.end4.i146

lor.lhs.false.i143.message_stats_set_aux.exit_crit_edge: ; preds = %lor.lhs.false.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %message_stats_set_aux.exit

if.end4.i146:                                     ; preds = %lor.lhs.false.i143
  %stats.i.i144 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35
  %arrayidx6.i = getelementptr ptr, ptr %argv, i32 2
  %147 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx6.i, align 4
  call void @mutex_lock_nested(ptr noundef %stats.i.i144, i32 noundef 0) #13
  %list.i.i.i145 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35, i32 1
  br label %for.cond.i.i.i150

for.cond.i.i.i150:                                ; preds = %if.end.i.i.i155.for.cond.i.i.i150_crit_edge, %if.end4.i146
  %s.0.in.i.i.i147 = phi ptr [ %list.i.i.i145, %if.end4.i146 ], [ %s.0.i.i.i148, %if.end.i.i.i155.for.cond.i.i.i150_crit_edge ]
  %149 = ptrtoint ptr %s.0.in.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %149)
  %s.0.i.i.i148 = load ptr, ptr %s.0.in.i.i.i147, align 4
  %cmp.not.i.i.i149 = icmp eq ptr %s.0.i.i.i148, %list.i.i.i145
  br i1 %cmp.not.i.i.i149, label %for.cond.i.i.i150.dm_stats_set_aux.exit.i_crit_edge, label %for.body.i.i.i153

for.cond.i.i.i150.dm_stats_set_aux.exit.i_crit_edge: ; preds = %for.cond.i.i.i150
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_set_aux.exit.i

for.body.i.i.i153:                                ; preds = %for.cond.i.i.i150
  %id2.i.i.i151 = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i.i148, i32 0, i32 1
  %150 = ptrtoint ptr %id2.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %id2.i.i.i151, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %146)
  %cmp3.i.i.i152 = icmp sgt i32 %151, %146
  br i1 %cmp3.i.i.i152, label %for.body.i.i.i153.dm_stats_set_aux.exit.i_crit_edge, label %if.end.i.i.i155

for.body.i.i.i153.dm_stats_set_aux.exit.i_crit_edge: ; preds = %for.body.i.i.i153
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_set_aux.exit.i

if.end.i.i.i155:                                  ; preds = %for.body.i.i.i153
  %cmp5.i.i.i154 = icmp eq i32 %151, %146
  br i1 %cmp5.i.i.i154, label %__dm_stats_find.exit.i.i157, label %if.end.i.i.i155.for.cond.i.i.i150_crit_edge

if.end.i.i.i155.for.cond.i.i.i150_crit_edge:      ; preds = %if.end.i.i.i155
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.i150

__dm_stats_find.exit.i.i157:                      ; preds = %if.end.i.i.i155
  %tobool.not.i.i156 = icmp eq ptr %s.0.i.i.i148, null
  br i1 %tobool.not.i.i156, label %__dm_stats_find.exit.i.i157.dm_stats_set_aux.exit.i_crit_edge, label %if.end.i.i158

__dm_stats_find.exit.i.i157.dm_stats_set_aux.exit.i_crit_edge: ; preds = %__dm_stats_find.exit.i.i157
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_set_aux.exit.i

if.end.i.i158:                                    ; preds = %__dm_stats_find.exit.i.i157
  %call2.i.i = call noalias ptr @kstrdup(ptr noundef %148, i32 noundef 3264) #13
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i158.dm_stats_set_aux.exit.i_crit_edge, label %if.end6.i.i

if.end.i.i158.dm_stats_set_aux.exit.i_crit_edge:  ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_set_aux.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #15
  %aux_data7.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i.i148, i32 0, i32 10
  %152 = ptrtoint ptr %aux_data7.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %aux_data7.i.i, align 4
  call void @kfree(ptr noundef %153) #13
  %154 = ptrtoint ptr %aux_data7.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call2.i.i, ptr %aux_data7.i.i, align 4
  br label %dm_stats_set_aux.exit.i

dm_stats_set_aux.exit.i:                          ; preds = %if.end6.i.i, %if.end.i.i158.dm_stats_set_aux.exit.i_crit_edge, %__dm_stats_find.exit.i.i157.dm_stats_set_aux.exit.i_crit_edge, %for.body.i.i.i153.dm_stats_set_aux.exit.i_crit_edge, %for.cond.i.i.i150.dm_stats_set_aux.exit.i_crit_edge
  %retval.0.i.i159 = phi i32 [ 0, %if.end6.i.i ], [ -2, %__dm_stats_find.exit.i.i157.dm_stats_set_aux.exit.i_crit_edge ], [ -12, %if.end.i.i158.dm_stats_set_aux.exit.i_crit_edge ], [ -2, %for.cond.i.i.i150.dm_stats_set_aux.exit.i_crit_edge ], [ -2, %for.body.i.i.i153.dm_stats_set_aux.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %stats.i.i144) #13
  br label %message_stats_set_aux.exit

message_stats_set_aux.exit:                       ; preds = %dm_stats_set_aux.exit.i, %lor.lhs.false.i143.message_stats_set_aux.exit_crit_edge, %if.end.i141.message_stats_set_aux.exit_crit_edge, %if.then35.message_stats_set_aux.exit_crit_edge
  %retval.0.i160 = phi i32 [ %retval.0.i.i159, %dm_stats_set_aux.exit.i ], [ -22, %if.then35.message_stats_set_aux.exit_crit_edge ], [ -22, %lor.lhs.false.i143.message_stats_set_aux.exit_crit_edge ], [ -22, %if.end.i141.message_stats_set_aux.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i136) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i135) #13
  br label %if.end43

if.end43:                                         ; preds = %message_stats_set_aux.exit, %if.then29, %if.then23, %message_stats_clear.exit, %message_stats_delete.exit, %message_stats_create.exit
  %r.0 = phi i32 [ %retval.0.i160, %message_stats_set_aux.exit ], [ %call30, %if.then29 ], [ %call24, %if.then23 ], [ %retval.0.i117, %message_stats_clear.exit ], [ %retval.0.i92, %message_stats_delete.exit ], [ %retval.0.i, %message_stats_create.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %r.0)
  %cmp = icmp eq i32 %r.0, -22
  br i1 %cmp, label %if.end43.do.end_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end43.do.end_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.end43.do.end_crit_edge, %if.then17.do.end_crit_edge
  %155 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %argv, align 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %156) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end43.cleanup_crit_edge, %if.else31.cleanup_crit_edge, %dm_stats_list.exit.i, %if.then3.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.else31.cleanup_crit_edge ], [ -22, %do.end ], [ %r.0, %if.end43.cleanup_crit_edge ], [ -12, %if.then3.i.cleanup_crit_edge ], [ 1, %dm_stats_list.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @message_stats_print(ptr noundef %md, i32 noundef %argc, ptr nocapture noundef readonly %argv, i1 noundef zeroext %clear, ptr noundef %result, i32 noundef %maxlen) unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  %dummy = alloca i8, align 1
  %idx_start = alloca i32, align 4
  %idx_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #13
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #13
  %1 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dummy, align 1, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx_start) #13
  %2 = ptrtoint ptr %idx_start to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idx_start, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx_len) #13
  %3 = ptrtoint ptr %idx_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %idx_len, align 4
  %4 = zext i32 %argc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %argc, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge51
  ]

entry.if.end_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge51
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull %id, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2.not = icmp eq i32 %call, 1
  br i1 %cmp2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %argc)
  %cmp6 = icmp ugt i32 %argc, 3
  br i1 %cmp6, label %if.then7, label %if.end5.if.end25_crit_edge

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then7:                                         ; preds = %if.end5
  %arrayidx8 = getelementptr ptr, ptr %argv, i32 2
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx8, align 4
  %call9 = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(2) @.str.24) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then7.if.end15_crit_edge, label %land.lhs.true10

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true10:                                  ; preds = %if.then7
  %call12 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %10, ptr noundef nonnull @.str.39, ptr noundef nonnull %idx_start, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 1
  br i1 %cmp13.not, label %land.lhs.true10.if.end15_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true10.if.end15_crit_edge, %if.then7.if.end15_crit_edge
  %arrayidx16 = getelementptr ptr, ptr %argv, i32 3
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx16, align 4
  %call17 = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(2) @.str.24) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.if.end25_crit_edge, label %land.lhs.true19

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true19:                                  ; preds = %if.end15
  %call21 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %12, ptr noundef nonnull @.str.39, ptr noundef nonnull %idx_len, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 1
  br i1 %cmp22.not, label %land.lhs.true19.if.end25_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true19.if.end25_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true19.if.end25_crit_edge, %if.end15.if.end25_crit_edge, %if.end5.if.end25_crit_edge
  %stats.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %15 = ptrtoint ptr %idx_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx_start, align 4
  %17 = ptrtoint ptr %idx_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx_len, align 4
  call void @mutex_lock_nested(ptr noundef %stats.i, i32 noundef 0) #13
  %list.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end.i.i.for.cond.i.i_crit_edge, %if.end25
  %s.0.in.i.i = phi ptr [ %list.i.i, %if.end25 ], [ %s.0.i.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %19 = ptrtoint ptr %s.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %s.0.i.i = load ptr, ptr %s.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %s.0.i.i, %list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.dm_stats_print.exit_crit_edge, label %for.body.i.i

for.cond.i.i.dm_stats_print.exit_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_print.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %id2.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %14)
  %cmp3.i.i = icmp sgt i32 %21, %14
  br i1 %cmp3.i.i, label %for.body.i.i.dm_stats_print.exit_crit_edge, label %if.end.i.i

for.body.i.i.dm_stats_print.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_print.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %cmp5.i.i = icmp eq i32 %21, %14
  br i1 %cmp5.i.i, label %__dm_stats_find.exit.i, label %if.end.i.i.for.cond.i.i_crit_edge

if.end.i.i.for.cond.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

__dm_stats_find.exit.i:                           ; preds = %if.end.i.i
  %tobool.not.i = icmp eq ptr %s.0.i.i, null
  br i1 %tobool.not.i, label %__dm_stats_find.exit.i.dm_stats_print.exit_crit_edge, label %if.end.i

__dm_stats_find.exit.i.dm_stats_print.exit_crit_edge: ; preds = %__dm_stats_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_print.exit

if.end.i:                                         ; preds = %__dm_stats_find.exit.i
  %add.i = add i32 %18, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp.i = icmp ult i32 %add.i, %16
  br i1 %cmp.i, label %if.end.i.if.then3.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %n_entries.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %n_entries.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %23)
  %cmp2.i = icmp ugt i32 %add.i, %23
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then3.i_crit_edge, label %lor.lhs.false.i.if.end5.i_crit_edge

lor.lhs.false.i.if.end5.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %n_entries4.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %n_entries4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_entries4.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %lor.lhs.false.i.if.end5.i_crit_edge
  %idx_end.0.i = phi i32 [ %25, %if.then3.i ], [ %add.i, %lor.lhs.false.i.if.end5.i_crit_edge ]
  %26 = call i32 @llvm.umin.i32(i32 %idx_end.0.i, i32 %16) #13
  %step9.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %step9.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %step9.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %idx_end.0.i, i32 %16)
  %cmp12355.i = icmp ugt i32 %idx_end.0.i, %16
  br i1 %cmp12355.i, label %for.body.lr.ph.i, label %if.end5.i.for.end108.i_crit_edge

if.end5.i.for.end108.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end108.i

for.body.lr.ph.i:                                 ; preds = %if.end5.i
  %conv.i = zext i32 %26 to i64
  %mul.i = mul i64 %28, %conv.i
  %start10.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %start10.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %start10.i, align 8
  %add11.i = add i64 %30, %mul.i
  %end15.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 5
  %stat_flags.i.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 2
  %n_histogram_entries.i = getelementptr inbounds %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 7
  br label %for.body.i

for.cond.i:                                       ; preds = %cond.end92.i
  %inc107.i = add i32 %x.0358.i, 1
  %exitcond.not.i = icmp eq i32 %inc107.i, %idx_end.0.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end108.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.for.end108.i_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end108.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %start.0361.i = phi i64 [ %add11.i, %for.body.lr.ph.i ], [ %end.0.i, %for.cond.i.for.body.i_crit_edge ]
  %x.0358.i = phi i32 [ %26, %for.body.lr.ph.i ], [ %inc107.i, %for.cond.i.for.body.i_crit_edge ]
  %sz.0356.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add94.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i
  %add14.i = add i64 %start.0361.i, %28
  %31 = ptrtoint ptr %end15.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %end15.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add14.i, i64 %32)
  %cmp16.i = icmp ugt i64 %add14.i, %32
  br i1 %cmp16.i, label %if.then20.i, label %for.body.i.if.end22.i_crit_edge, !prof !120

for.body.i.if.end22.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %for.body.i.if.end22.i_crit_edge
  %end.0.i = phi i64 [ %32, %if.then20.i ], [ %add14.i, %for.body.i.if.end22.i_crit_edge ]
  call fastcc void @__dm_stat_init_temporary_percpu_totals(ptr noundef %arrayidx.i, ptr noundef nonnull %s.0.i.i, i32 noundef %x.0358.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0356.i, i32 %maxlen)
  %cmp23.not.i = icmp ult i32 %sz.0356.i, %maxlen
  br i1 %cmp23.not.i, label %cond.false.i, label %if.end22.i.cond.end.i_crit_edge

if.end22.i.cond.end.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end22.i
  %add.ptr.i = getelementptr i8, ptr %result, i32 %sz.0356.i
  %sub.i = sub i32 %maxlen, %sz.0356.i
  %tmp.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2
  %ios.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 1
  %33 = ptrtoint ptr %ios.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ios.i, align 8
  %merges.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 2
  %35 = ptrtoint ptr %merges.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %merges.i, align 8
  %37 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tmp.i, align 8
  %ticks.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 3
  %39 = ptrtoint ptr %ticks.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ticks.i, align 8
  %41 = ptrtoint ptr %stat_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stat_flags.i.i, align 4
  %and.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i194.i, label %cond.false.i.dm_jiffies_to_msec64.exit.i_crit_edge

cond.false.i.dm_jiffies_to_msec64.exit.i_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit.i

if.end.i194.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool1.not.i.i = icmp eq i64 %40, 0
  br i1 %tobool1.not.i.i, label %if.end.i194.i.dm_jiffies_to_msec64.exit.i_crit_edge, label %if.end5.i.i

if.end.i194.i.dm_jiffies_to_msec64.exit.i_crit_edge: ; preds = %if.end.i194.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit.i

if.end5.i.i:                                      ; preds = %if.end.i194.i
  %43 = trunc i64 %40 to i32
  %conv.i.i = and i32 %43, 4194303
  %call.i.i = call i32 @jiffies_to_msecs(i32 noundef %conv.i.i) #13
  %conv4.i.i = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %40)
  %cmp.i.i = icmp ugt i64 %40, 4194303
  br i1 %cmp.i.i, label %if.end14.i.i, label %if.end5.i.i.dm_jiffies_to_msec64.exit.i_crit_edge

if.end5.i.i.dm_jiffies_to_msec64.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit.i

if.end14.i.i:                                     ; preds = %if.end5.i.i
  %call8.i.i = call i32 @jiffies_to_msecs(i32 noundef 4194304) #13
  %conv9.i.i = zext i32 %call8.i.i to i64
  %shr.i.i = lshr i64 %40, 22
  %44 = trunc i64 %shr.i.i to i32
  %conv11.i.i = and i32 %44, 4194303
  %call12.i.i = call i32 @jiffies_to_msecs(i32 noundef %conv11.i.i) #13
  %conv13.i.i = zext i32 %call12.i.i to i64
  %mul.i.i = mul nuw i64 %conv13.i.i, %conv9.i.i
  %add.i.i = add nuw i64 %mul.i.i, %conv4.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044415, i64 %40)
  %cmp15.i.i = icmp ugt i64 %40, 17592186044415
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.end14.i.i.dm_jiffies_to_msec64.exit.i_crit_edge

if.end14.i.i.dm_jiffies_to_msec64.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul20.i.i = mul nuw i64 %conv9.i.i, %conv9.i.i
  %shr21.i.i = lshr i64 %40, 44
  %conv22.i.i = trunc i64 %shr21.i.i to i32
  %call23.i.i = call i32 @jiffies_to_msecs(i32 noundef %conv22.i.i) #13
  %conv24.i.i = zext i32 %call23.i.i to i64
  %mul25.i.i = mul i64 %mul20.i.i, %conv24.i.i
  %add26.i.i = add i64 %mul25.i.i, %add.i.i
  br label %dm_jiffies_to_msec64.exit.i

dm_jiffies_to_msec64.exit.i:                      ; preds = %if.then17.i.i, %if.end14.i.i.dm_jiffies_to_msec64.exit.i_crit_edge, %if.end5.i.i.dm_jiffies_to_msec64.exit.i_crit_edge, %if.end.i194.i.dm_jiffies_to_msec64.exit.i_crit_edge, %cond.false.i.dm_jiffies_to_msec64.exit.i_crit_edge
  %retval.0.i195.i = phi i64 [ %40, %cond.false.i.dm_jiffies_to_msec64.exit.i_crit_edge ], [ %add26.i.i, %if.then17.i.i ], [ %add.i.i, %if.end14.i.i.dm_jiffies_to_msec64.exit.i_crit_edge ], [ %conv4.i.i, %if.end5.i.i.dm_jiffies_to_msec64.exit.i_crit_edge ], [ 0, %if.end.i194.i.dm_jiffies_to_msec64.exit.i_crit_edge ]
  %arrayidx35.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx35.i, align 8
  %arrayidx38.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx38.i, align 8
  %arrayidx41.i = getelementptr [2 x i64], ptr %tmp.i, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx41.i, align 8
  %arrayidx44.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 3, i32 1
  %51 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx44.i, align 8
  %53 = ptrtoint ptr %stat_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %stat_flags.i.i, align 4
  %and.i197.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197.i)
  %tobool.not.i198.i = icmp eq i32 %and.i197.i, 0
  br i1 %tobool.not.i198.i, label %if.end.i200.i, label %dm_jiffies_to_msec64.exit.i.dm_jiffies_to_msec64.exit225.i_crit_edge

dm_jiffies_to_msec64.exit.i.dm_jiffies_to_msec64.exit225.i_crit_edge: ; preds = %dm_jiffies_to_msec64.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit225.i

if.end.i200.i:                                    ; preds = %dm_jiffies_to_msec64.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %tobool1.not.i199.i = icmp eq i64 %52, 0
  br i1 %tobool1.not.i199.i, label %if.end.i200.i.dm_jiffies_to_msec64.exit225.i_crit_edge, label %if.end5.i205.i

if.end.i200.i.dm_jiffies_to_msec64.exit225.i_crit_edge: ; preds = %if.end.i200.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit225.i

if.end5.i205.i:                                   ; preds = %if.end.i200.i
  %55 = trunc i64 %52 to i32
  %conv.i201.i = and i32 %55, 4194303
  %call.i202.i = call i32 @jiffies_to_msecs(i32 noundef %conv.i201.i) #13
  %conv4.i203.i = zext i32 %call.i202.i to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %52)
  %cmp.i204.i = icmp ugt i64 %52, 4194303
  br i1 %cmp.i204.i, label %if.end14.i215.i, label %if.end5.i205.i.dm_jiffies_to_msec64.exit225.i_crit_edge

if.end5.i205.i.dm_jiffies_to_msec64.exit225.i_crit_edge: ; preds = %if.end5.i205.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit225.i

if.end14.i215.i:                                  ; preds = %if.end5.i205.i
  %call8.i206.i = call i32 @jiffies_to_msecs(i32 noundef 4194304) #13
  %conv9.i207.i = zext i32 %call8.i206.i to i64
  %shr.i208.i = lshr i64 %52, 22
  %56 = trunc i64 %shr.i208.i to i32
  %conv11.i209.i = and i32 %56, 4194303
  %call12.i210.i = call i32 @jiffies_to_msecs(i32 noundef %conv11.i209.i) #13
  %conv13.i211.i = zext i32 %call12.i210.i to i64
  %mul.i212.i = mul nuw i64 %conv13.i211.i, %conv9.i207.i
  %add.i213.i = add nuw i64 %mul.i212.i, %conv4.i203.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044415, i64 %52)
  %cmp15.i214.i = icmp ugt i64 %52, 17592186044415
  br i1 %cmp15.i214.i, label %if.then17.i223.i, label %if.end14.i215.i.dm_jiffies_to_msec64.exit225.i_crit_edge

if.end14.i215.i.dm_jiffies_to_msec64.exit225.i_crit_edge: ; preds = %if.end14.i215.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit225.i

if.then17.i223.i:                                 ; preds = %if.end14.i215.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul20.i216.i = mul nuw i64 %conv9.i207.i, %conv9.i207.i
  %shr21.i217.i = lshr i64 %52, 44
  %conv22.i218.i = trunc i64 %shr21.i217.i to i32
  %call23.i219.i = call i32 @jiffies_to_msecs(i32 noundef %conv22.i218.i) #13
  %conv24.i220.i = zext i32 %call23.i219.i to i64
  %mul25.i221.i = mul i64 %mul20.i216.i, %conv24.i220.i
  %add26.i222.i = add i64 %mul25.i221.i, %add.i213.i
  br label %dm_jiffies_to_msec64.exit225.i

dm_jiffies_to_msec64.exit225.i:                   ; preds = %if.then17.i223.i, %if.end14.i215.i.dm_jiffies_to_msec64.exit225.i_crit_edge, %if.end5.i205.i.dm_jiffies_to_msec64.exit225.i_crit_edge, %if.end.i200.i.dm_jiffies_to_msec64.exit225.i_crit_edge, %dm_jiffies_to_msec64.exit.i.dm_jiffies_to_msec64.exit225.i_crit_edge
  %retval.0.i224.i = phi i64 [ %52, %dm_jiffies_to_msec64.exit.i.dm_jiffies_to_msec64.exit225.i_crit_edge ], [ %add26.i222.i, %if.then17.i223.i ], [ %add.i213.i, %if.end14.i215.i.dm_jiffies_to_msec64.exit225.i_crit_edge ], [ %conv4.i203.i, %if.end5.i205.i.dm_jiffies_to_msec64.exit225.i_crit_edge ], [ 0, %if.end.i200.i.dm_jiffies_to_msec64.exit225.i_crit_edge ]
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #13
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %arrayidx.i, align 4
  %arrayidx2.i.i = getelementptr [2 x %struct.atomic_t], ptr %arrayidx.i, i32 0, i32 1
  %call.i.i5.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2.i.i, i32 noundef 4) #13
  %59 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx2.i.i, align 4
  %add.i226.i = add i32 %60, %58
  %io_ticks_total.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 5
  %61 = ptrtoint ptr %io_ticks_total.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %io_ticks_total.i, align 8
  %63 = ptrtoint ptr %stat_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stat_flags.i.i, align 4
  %and.i228.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228.i)
  %tobool.not.i229.i = icmp eq i32 %and.i228.i, 0
  br i1 %tobool.not.i229.i, label %if.end.i231.i, label %dm_jiffies_to_msec64.exit225.i.dm_jiffies_to_msec64.exit256.i_crit_edge

dm_jiffies_to_msec64.exit225.i.dm_jiffies_to_msec64.exit256.i_crit_edge: ; preds = %dm_jiffies_to_msec64.exit225.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit256.i

if.end.i231.i:                                    ; preds = %dm_jiffies_to_msec64.exit225.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %tobool1.not.i230.i = icmp eq i64 %62, 0
  br i1 %tobool1.not.i230.i, label %if.end.i231.i.dm_jiffies_to_msec64.exit256.i_crit_edge, label %if.end5.i236.i

if.end.i231.i.dm_jiffies_to_msec64.exit256.i_crit_edge: ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit256.i

if.end5.i236.i:                                   ; preds = %if.end.i231.i
  %65 = trunc i64 %62 to i32
  %conv.i232.i = and i32 %65, 4194303
  %call.i233.i = call i32 @jiffies_to_msecs(i32 noundef %conv.i232.i) #13
  %conv4.i234.i = zext i32 %call.i233.i to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %62)
  %cmp.i235.i = icmp ugt i64 %62, 4194303
  br i1 %cmp.i235.i, label %if.end14.i246.i, label %if.end5.i236.i.dm_jiffies_to_msec64.exit256.i_crit_edge

if.end5.i236.i.dm_jiffies_to_msec64.exit256.i_crit_edge: ; preds = %if.end5.i236.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit256.i

if.end14.i246.i:                                  ; preds = %if.end5.i236.i
  %call8.i237.i = call i32 @jiffies_to_msecs(i32 noundef 4194304) #13
  %conv9.i238.i = zext i32 %call8.i237.i to i64
  %shr.i239.i = lshr i64 %62, 22
  %66 = trunc i64 %shr.i239.i to i32
  %conv11.i240.i = and i32 %66, 4194303
  %call12.i241.i = call i32 @jiffies_to_msecs(i32 noundef %conv11.i240.i) #13
  %conv13.i242.i = zext i32 %call12.i241.i to i64
  %mul.i243.i = mul nuw i64 %conv13.i242.i, %conv9.i238.i
  %add.i244.i = add nuw i64 %mul.i243.i, %conv4.i234.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044415, i64 %62)
  %cmp15.i245.i = icmp ugt i64 %62, 17592186044415
  br i1 %cmp15.i245.i, label %if.then17.i254.i, label %if.end14.i246.i.dm_jiffies_to_msec64.exit256.i_crit_edge

if.end14.i246.i.dm_jiffies_to_msec64.exit256.i_crit_edge: ; preds = %if.end14.i246.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit256.i

if.then17.i254.i:                                 ; preds = %if.end14.i246.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul20.i247.i = mul nuw i64 %conv9.i238.i, %conv9.i238.i
  %shr21.i248.i = lshr i64 %62, 44
  %conv22.i249.i = trunc i64 %shr21.i248.i to i32
  %call23.i250.i = call i32 @jiffies_to_msecs(i32 noundef %conv22.i249.i) #13
  %conv24.i251.i = zext i32 %call23.i250.i to i64
  %mul25.i252.i = mul i64 %mul20.i247.i, %conv24.i251.i
  %add26.i253.i = add i64 %mul25.i252.i, %add.i244.i
  br label %dm_jiffies_to_msec64.exit256.i

dm_jiffies_to_msec64.exit256.i:                   ; preds = %if.then17.i254.i, %if.end14.i246.i.dm_jiffies_to_msec64.exit256.i_crit_edge, %if.end5.i236.i.dm_jiffies_to_msec64.exit256.i_crit_edge, %if.end.i231.i.dm_jiffies_to_msec64.exit256.i_crit_edge, %dm_jiffies_to_msec64.exit225.i.dm_jiffies_to_msec64.exit256.i_crit_edge
  %retval.0.i255.i = phi i64 [ %62, %dm_jiffies_to_msec64.exit225.i.dm_jiffies_to_msec64.exit256.i_crit_edge ], [ %add26.i253.i, %if.then17.i254.i ], [ %add.i244.i, %if.end14.i246.i.dm_jiffies_to_msec64.exit256.i_crit_edge ], [ %conv4.i234.i, %if.end5.i236.i.dm_jiffies_to_msec64.exit256.i_crit_edge ], [ 0, %if.end.i231.i.dm_jiffies_to_msec64.exit256.i_crit_edge ]
  %time_in_queue.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 6
  %67 = ptrtoint ptr %time_in_queue.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %time_in_queue.i, align 8
  %69 = ptrtoint ptr %stat_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stat_flags.i.i, align 4
  %and.i258.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i258.i)
  %tobool.not.i259.i = icmp eq i32 %and.i258.i, 0
  br i1 %tobool.not.i259.i, label %if.end.i261.i, label %dm_jiffies_to_msec64.exit256.i.dm_jiffies_to_msec64.exit286.i_crit_edge

dm_jiffies_to_msec64.exit256.i.dm_jiffies_to_msec64.exit286.i_crit_edge: ; preds = %dm_jiffies_to_msec64.exit256.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit286.i

if.end.i261.i:                                    ; preds = %dm_jiffies_to_msec64.exit256.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %tobool1.not.i260.i = icmp eq i64 %68, 0
  br i1 %tobool1.not.i260.i, label %if.end.i261.i.dm_jiffies_to_msec64.exit286.i_crit_edge, label %if.end5.i266.i

if.end.i261.i.dm_jiffies_to_msec64.exit286.i_crit_edge: ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit286.i

if.end5.i266.i:                                   ; preds = %if.end.i261.i
  %71 = trunc i64 %68 to i32
  %conv.i262.i = and i32 %71, 4194303
  %call.i263.i = call i32 @jiffies_to_msecs(i32 noundef %conv.i262.i) #13
  %conv4.i264.i = zext i32 %call.i263.i to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %68)
  %cmp.i265.i = icmp ugt i64 %68, 4194303
  br i1 %cmp.i265.i, label %if.end14.i276.i, label %if.end5.i266.i.dm_jiffies_to_msec64.exit286.i_crit_edge

if.end5.i266.i.dm_jiffies_to_msec64.exit286.i_crit_edge: ; preds = %if.end5.i266.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit286.i

if.end14.i276.i:                                  ; preds = %if.end5.i266.i
  %call8.i267.i = call i32 @jiffies_to_msecs(i32 noundef 4194304) #13
  %conv9.i268.i = zext i32 %call8.i267.i to i64
  %shr.i269.i = lshr i64 %68, 22
  %72 = trunc i64 %shr.i269.i to i32
  %conv11.i270.i = and i32 %72, 4194303
  %call12.i271.i = call i32 @jiffies_to_msecs(i32 noundef %conv11.i270.i) #13
  %conv13.i272.i = zext i32 %call12.i271.i to i64
  %mul.i273.i = mul nuw i64 %conv13.i272.i, %conv9.i268.i
  %add.i274.i = add nuw i64 %mul.i273.i, %conv4.i264.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044415, i64 %68)
  %cmp15.i275.i = icmp ugt i64 %68, 17592186044415
  br i1 %cmp15.i275.i, label %if.then17.i284.i, label %if.end14.i276.i.dm_jiffies_to_msec64.exit286.i_crit_edge

if.end14.i276.i.dm_jiffies_to_msec64.exit286.i_crit_edge: ; preds = %if.end14.i276.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit286.i

if.then17.i284.i:                                 ; preds = %if.end14.i276.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul20.i277.i = mul nuw i64 %conv9.i268.i, %conv9.i268.i
  %shr21.i278.i = lshr i64 %68, 44
  %conv22.i279.i = trunc i64 %shr21.i278.i to i32
  %call23.i280.i = call i32 @jiffies_to_msecs(i32 noundef %conv22.i279.i) #13
  %conv24.i281.i = zext i32 %call23.i280.i to i64
  %mul25.i282.i = mul i64 %mul20.i277.i, %conv24.i281.i
  %add26.i283.i = add i64 %mul25.i282.i, %add.i274.i
  br label %dm_jiffies_to_msec64.exit286.i

dm_jiffies_to_msec64.exit286.i:                   ; preds = %if.then17.i284.i, %if.end14.i276.i.dm_jiffies_to_msec64.exit286.i_crit_edge, %if.end5.i266.i.dm_jiffies_to_msec64.exit286.i_crit_edge, %if.end.i261.i.dm_jiffies_to_msec64.exit286.i_crit_edge, %dm_jiffies_to_msec64.exit256.i.dm_jiffies_to_msec64.exit286.i_crit_edge
  %retval.0.i285.i = phi i64 [ %68, %dm_jiffies_to_msec64.exit256.i.dm_jiffies_to_msec64.exit286.i_crit_edge ], [ %add26.i283.i, %if.then17.i284.i ], [ %add.i274.i, %if.end14.i276.i.dm_jiffies_to_msec64.exit286.i_crit_edge ], [ %conv4.i264.i, %if.end5.i266.i.dm_jiffies_to_msec64.exit286.i_crit_edge ], [ 0, %if.end.i261.i.dm_jiffies_to_msec64.exit286.i_crit_edge ]
  %io_ticks.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 4
  %73 = ptrtoint ptr %io_ticks.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %io_ticks.i, align 8
  %75 = ptrtoint ptr %stat_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %stat_flags.i.i, align 4
  %and.i288.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i288.i)
  %tobool.not.i289.i = icmp eq i32 %and.i288.i, 0
  br i1 %tobool.not.i289.i, label %if.end.i291.i, label %dm_jiffies_to_msec64.exit286.i.dm_jiffies_to_msec64.exit316.i_crit_edge

dm_jiffies_to_msec64.exit286.i.dm_jiffies_to_msec64.exit316.i_crit_edge: ; preds = %dm_jiffies_to_msec64.exit286.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit316.i

if.end.i291.i:                                    ; preds = %dm_jiffies_to_msec64.exit286.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %tobool1.not.i290.i = icmp eq i64 %74, 0
  br i1 %tobool1.not.i290.i, label %if.end.i291.i.dm_jiffies_to_msec64.exit316.i_crit_edge, label %if.end5.i296.i

if.end.i291.i.dm_jiffies_to_msec64.exit316.i_crit_edge: ; preds = %if.end.i291.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit316.i

if.end5.i296.i:                                   ; preds = %if.end.i291.i
  %77 = trunc i64 %74 to i32
  %conv.i292.i = and i32 %77, 4194303
  %call.i293.i = call i32 @jiffies_to_msecs(i32 noundef %conv.i292.i) #13
  %conv4.i294.i = zext i32 %call.i293.i to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %74)
  %cmp.i295.i = icmp ugt i64 %74, 4194303
  br i1 %cmp.i295.i, label %if.end14.i306.i, label %if.end5.i296.i.dm_jiffies_to_msec64.exit316.i_crit_edge

if.end5.i296.i.dm_jiffies_to_msec64.exit316.i_crit_edge: ; preds = %if.end5.i296.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit316.i

if.end14.i306.i:                                  ; preds = %if.end5.i296.i
  %call8.i297.i = call i32 @jiffies_to_msecs(i32 noundef 4194304) #13
  %conv9.i298.i = zext i32 %call8.i297.i to i64
  %shr.i299.i = lshr i64 %74, 22
  %78 = trunc i64 %shr.i299.i to i32
  %conv11.i300.i = and i32 %78, 4194303
  %call12.i301.i = call i32 @jiffies_to_msecs(i32 noundef %conv11.i300.i) #13
  %conv13.i302.i = zext i32 %call12.i301.i to i64
  %mul.i303.i = mul nuw i64 %conv13.i302.i, %conv9.i298.i
  %add.i304.i = add nuw i64 %mul.i303.i, %conv4.i294.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044415, i64 %74)
  %cmp15.i305.i = icmp ugt i64 %74, 17592186044415
  br i1 %cmp15.i305.i, label %if.then17.i314.i, label %if.end14.i306.i.dm_jiffies_to_msec64.exit316.i_crit_edge

if.end14.i306.i.dm_jiffies_to_msec64.exit316.i_crit_edge: ; preds = %if.end14.i306.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit316.i

if.then17.i314.i:                                 ; preds = %if.end14.i306.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul20.i307.i = mul nuw i64 %conv9.i298.i, %conv9.i298.i
  %shr21.i308.i = lshr i64 %74, 44
  %conv22.i309.i = trunc i64 %shr21.i308.i to i32
  %call23.i310.i = call i32 @jiffies_to_msecs(i32 noundef %conv22.i309.i) #13
  %conv24.i311.i = zext i32 %call23.i310.i to i64
  %mul25.i312.i = mul i64 %mul20.i307.i, %conv24.i311.i
  %add26.i313.i = add i64 %mul25.i312.i, %add.i304.i
  br label %dm_jiffies_to_msec64.exit316.i

dm_jiffies_to_msec64.exit316.i:                   ; preds = %if.then17.i314.i, %if.end14.i306.i.dm_jiffies_to_msec64.exit316.i_crit_edge, %if.end5.i296.i.dm_jiffies_to_msec64.exit316.i_crit_edge, %if.end.i291.i.dm_jiffies_to_msec64.exit316.i_crit_edge, %dm_jiffies_to_msec64.exit286.i.dm_jiffies_to_msec64.exit316.i_crit_edge
  %retval.0.i315.i = phi i64 [ %74, %dm_jiffies_to_msec64.exit286.i.dm_jiffies_to_msec64.exit316.i_crit_edge ], [ %add26.i313.i, %if.then17.i314.i ], [ %add.i304.i, %if.end14.i306.i.dm_jiffies_to_msec64.exit316.i_crit_edge ], [ %conv4.i294.i, %if.end5.i296.i.dm_jiffies_to_msec64.exit316.i_crit_edge ], [ 0, %if.end.i291.i.dm_jiffies_to_msec64.exit316.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 4, i32 1
  %79 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx56.i, align 8
  %81 = ptrtoint ptr %stat_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stat_flags.i.i, align 4
  %and.i318.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i318.i)
  %tobool.not.i319.i = icmp eq i32 %and.i318.i, 0
  br i1 %tobool.not.i319.i, label %if.end.i321.i, label %dm_jiffies_to_msec64.exit316.i.dm_jiffies_to_msec64.exit346.i_crit_edge

dm_jiffies_to_msec64.exit316.i.dm_jiffies_to_msec64.exit346.i_crit_edge: ; preds = %dm_jiffies_to_msec64.exit316.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit346.i

if.end.i321.i:                                    ; preds = %dm_jiffies_to_msec64.exit316.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %tobool1.not.i320.i = icmp eq i64 %80, 0
  br i1 %tobool1.not.i320.i, label %if.end.i321.i.dm_jiffies_to_msec64.exit346.i_crit_edge, label %if.end5.i326.i

if.end.i321.i.dm_jiffies_to_msec64.exit346.i_crit_edge: ; preds = %if.end.i321.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit346.i

if.end5.i326.i:                                   ; preds = %if.end.i321.i
  %83 = trunc i64 %80 to i32
  %conv.i322.i = and i32 %83, 4194303
  %call.i323.i = call i32 @jiffies_to_msecs(i32 noundef %conv.i322.i) #13
  %conv4.i324.i = zext i32 %call.i323.i to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %80)
  %cmp.i325.i = icmp ugt i64 %80, 4194303
  br i1 %cmp.i325.i, label %if.end14.i336.i, label %if.end5.i326.i.dm_jiffies_to_msec64.exit346.i_crit_edge

if.end5.i326.i.dm_jiffies_to_msec64.exit346.i_crit_edge: ; preds = %if.end5.i326.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit346.i

if.end14.i336.i:                                  ; preds = %if.end5.i326.i
  %call8.i327.i = call i32 @jiffies_to_msecs(i32 noundef 4194304) #13
  %conv9.i328.i = zext i32 %call8.i327.i to i64
  %shr.i329.i = lshr i64 %80, 22
  %84 = trunc i64 %shr.i329.i to i32
  %conv11.i330.i = and i32 %84, 4194303
  %call12.i331.i = call i32 @jiffies_to_msecs(i32 noundef %conv11.i330.i) #13
  %conv13.i332.i = zext i32 %call12.i331.i to i64
  %mul.i333.i = mul nuw i64 %conv13.i332.i, %conv9.i328.i
  %add.i334.i = add nuw i64 %mul.i333.i, %conv4.i324.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044415, i64 %80)
  %cmp15.i335.i = icmp ugt i64 %80, 17592186044415
  br i1 %cmp15.i335.i, label %if.then17.i344.i, label %if.end14.i336.i.dm_jiffies_to_msec64.exit346.i_crit_edge

if.end14.i336.i.dm_jiffies_to_msec64.exit346.i_crit_edge: ; preds = %if.end14.i336.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_jiffies_to_msec64.exit346.i

if.then17.i344.i:                                 ; preds = %if.end14.i336.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul20.i337.i = mul nuw i64 %conv9.i328.i, %conv9.i328.i
  %shr21.i338.i = lshr i64 %80, 44
  %conv22.i339.i = trunc i64 %shr21.i338.i to i32
  %call23.i340.i = call i32 @jiffies_to_msecs(i32 noundef %conv22.i339.i) #13
  %conv24.i341.i = zext i32 %call23.i340.i to i64
  %mul25.i342.i = mul i64 %mul20.i337.i, %conv24.i341.i
  %add26.i343.i = add i64 %mul25.i342.i, %add.i334.i
  br label %dm_jiffies_to_msec64.exit346.i

dm_jiffies_to_msec64.exit346.i:                   ; preds = %if.then17.i344.i, %if.end14.i336.i.dm_jiffies_to_msec64.exit346.i_crit_edge, %if.end5.i326.i.dm_jiffies_to_msec64.exit346.i_crit_edge, %if.end.i321.i.dm_jiffies_to_msec64.exit346.i_crit_edge, %dm_jiffies_to_msec64.exit316.i.dm_jiffies_to_msec64.exit346.i_crit_edge
  %retval.0.i345.i = phi i64 [ %80, %dm_jiffies_to_msec64.exit316.i.dm_jiffies_to_msec64.exit346.i_crit_edge ], [ %add26.i343.i, %if.then17.i344.i ], [ %add.i334.i, %if.end14.i336.i.dm_jiffies_to_msec64.exit346.i_crit_edge ], [ %conv4.i324.i, %if.end5.i326.i.dm_jiffies_to_msec64.exit346.i_crit_edge ], [ 0, %if.end.i321.i.dm_jiffies_to_msec64.exit346.i_crit_edge ]
  %call58.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.40, i64 noundef %start.0361.i, i64 noundef %28, i64 noundef %34, i64 noundef %36, i64 noundef %38, i64 noundef %retval.0.i195.i, i64 noundef %46, i64 noundef %48, i64 noundef %50, i64 noundef %retval.0.i224.i, i32 noundef %add.i226.i, i64 noundef %retval.0.i255.i, i64 noundef %retval.0.i285.i, i64 noundef %retval.0.i315.i, i64 noundef %retval.0.i345.i) #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %dm_jiffies_to_msec64.exit346.i, %if.end22.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call58.i, %dm_jiffies_to_msec64.exit346.i ], [ 0, %if.end22.i.cond.end.i_crit_edge ]
  %add59.i = add i32 %cond.i, %sz.0356.i
  %85 = ptrtoint ptr %n_histogram_entries.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %n_histogram_entries.i, align 8
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %86, label %for.body67.lr.ph.i [
    i32 0, label %cond.end.i.if.end84.i_crit_edge
    i32 -1, label %cond.end.i.if.end84.i_crit_edge52
  ]

cond.end.i.if.end84.i_crit_edge52:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

cond.end.i.if.end84.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

for.body67.lr.ph.i:                               ; preds = %cond.end.i
  %histogram.i = getelementptr %struct.dm_stat, ptr %s.0.i.i, i32 0, i32 16, i32 %x.0358.i, i32 2, i32 7
  br label %for.body67.i

for.body67.i:                                     ; preds = %cond.end81.i.for.body67.i_crit_edge, %for.body67.lr.ph.i
  %i.0354.i = phi i32 [ 0, %for.body67.lr.ph.i ], [ %inc.i, %cond.end81.i.for.body67.i_crit_edge ]
  %sz.1352.i = phi i32 [ %add59.i, %for.body67.lr.ph.i ], [ %add83.i, %cond.end81.i.for.body67.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1352.i, i32 %maxlen)
  %cmp68.not.i = icmp ult i32 %sz.1352.i, %maxlen
  br i1 %cmp68.not.i, label %cond.false71.i, label %for.body67.i.cond.end81.i_crit_edge

for.body67.i.cond.end81.i_crit_edge:              ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end81.i

cond.false71.i:                                   ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr72.i = getelementptr i8, ptr %result, i32 %sz.1352.i
  %sub73.i = sub i32 %maxlen, %sz.1352.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0354.i)
  %tobool74.not.i = icmp eq i32 %i.0354.i, 0
  %cond77.i = select i1 %tobool74.not.i, ptr @.str.42, ptr @.str.43
  %88 = ptrtoint ptr %histogram.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %histogram.i, align 8
  %arrayidx79.i = getelementptr i64, ptr %89, i32 %i.0354.i
  %90 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx79.i, align 8
  %call80.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr72.i, i32 noundef %sub73.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond77.i, i64 noundef %91) #13
  br label %cond.end81.i

cond.end81.i:                                     ; preds = %cond.false71.i, %for.body67.i.cond.end81.i_crit_edge
  %cond82.i = phi i32 [ %call80.i, %cond.false71.i ], [ 0, %for.body67.i.cond.end81.i_crit_edge ]
  %add83.i = add i32 %cond82.i, %sz.1352.i
  %inc.i = add nuw i32 %i.0354.i, 1
  %92 = ptrtoint ptr %n_histogram_entries.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %n_histogram_entries.i, align 8
  %add64.i = add i32 %93, 1
  %cmp65.i = icmp ult i32 %inc.i, %add64.i
  br i1 %cmp65.i, label %cond.end81.i.for.body67.i_crit_edge, label %cond.end81.i.if.end84.i_crit_edge

cond.end81.i.if.end84.i_crit_edge:                ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

cond.end81.i.for.body67.i_crit_edge:              ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body67.i

if.end84.i:                                       ; preds = %cond.end81.i.if.end84.i_crit_edge, %cond.end.i.if.end84.i_crit_edge, %cond.end.i.if.end84.i_crit_edge52
  %sz.2.i = phi i32 [ %add59.i, %cond.end.i.if.end84.i_crit_edge ], [ %add59.i, %cond.end.i.if.end84.i_crit_edge52 ], [ %add83.i, %cond.end81.i.if.end84.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.2.i, i32 %maxlen)
  %cmp85.not.i = icmp ult i32 %sz.2.i, %maxlen
  br i1 %cmp85.not.i, label %cond.false88.i, label %if.end84.i.cond.end92.i_crit_edge

if.end84.i.cond.end92.i_crit_edge:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end92.i

cond.false88.i:                                   ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr89.i = getelementptr i8, ptr %result, i32 %sz.2.i
  %sub90.i = sub i32 %maxlen, %sz.2.i
  %call91.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89.i, i32 noundef %sub90.i, ptr noundef nonnull @.str.38) #13
  br label %cond.end92.i

cond.end92.i:                                     ; preds = %cond.false88.i, %if.end84.i.cond.end92.i_crit_edge
  %cond93.i = phi i32 [ %call91.i, %cond.false88.i ], [ 0, %if.end84.i.cond.end92.i_crit_edge ]
  %add94.i = add i32 %cond93.i, %sz.2.i
  %add95.i = add i32 %add94.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add95.i, i32 %maxlen)
  %cmp96.not.i = icmp ult i32 %add95.i, %maxlen
  br i1 %cmp96.not.i, label %for.cond.i, label %cond.end92.i.dm_stats_print.exit_crit_edge, !prof !119

cond.end92.i.dm_stats_print.exit_crit_edge:       ; preds = %cond.end92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_print.exit

for.end108.i:                                     ; preds = %for.cond.i.for.end108.i_crit_edge, %if.end5.i.for.end108.i_crit_edge
  br i1 %clear, label %if.then110.i, label %for.end108.i.dm_stats_print.exit_crit_edge

for.end108.i.dm_stats_print.exit_crit_edge:       ; preds = %for.end108.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_stats_print.exit

if.then110.i:                                     ; preds = %for.end108.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @__dm_stat_clear(ptr noundef nonnull %s.0.i.i, i32 noundef %26, i32 noundef %idx_end.0.i, i1 noundef zeroext false) #13
  br label %dm_stats_print.exit

dm_stats_print.exit:                              ; preds = %if.then110.i, %for.end108.i.dm_stats_print.exit_crit_edge, %cond.end92.i.dm_stats_print.exit_crit_edge, %__dm_stats_find.exit.i.dm_stats_print.exit_crit_edge, %for.body.i.i.dm_stats_print.exit_crit_edge, %for.cond.i.i.dm_stats_print.exit_crit_edge
  %retval.0.i = phi i32 [ -2, %__dm_stats_find.exit.i.dm_stats_print.exit_crit_edge ], [ 1, %for.end108.i.dm_stats_print.exit_crit_edge ], [ 1, %if.then110.i ], [ 1, %cond.end92.i.dm_stats_print.exit_crit_edge ], [ -2, %for.body.i.i.dm_stats_print.exit_crit_edge ], [ -2, %for.cond.i.i.dm_stats_print.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %stats.i) #13
  br label %cleanup

cleanup:                                          ; preds = %dm_stats_print.exit, %land.lhs.true19.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %dm_stats_print.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true10.cleanup_crit_edge ], [ -22, %land.lhs.true19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx_len) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx_start) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #13
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @dm_statistics_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @shared_memory_amount, align 4
  store i32 0, ptr @dm_stat_need_rcu_barrier, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_statistics_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dm_stat_need_rcu_barrier, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rcu_barrier() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @shared_memory_amount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end29_crit_edge, label %do.end, !prof !119

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1204, i32 noundef 9, ptr noundef null) #13
  %2 = load i32, ptr @shared_memory_amount, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %2) #18
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_kvfree(ptr noundef %ptr, i32 noundef %alloc_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @shared_memory_lock) #13
  %0 = load i32, ptr @shared_memory_amount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %alloc_size)
  %cmp5.i = icmp ult i32 %0, %alloc_size
  br i1 %cmp5.i, label %land.rhs.i, label %if.end53.i

land.rhs.i:                                       ; preds = %if.end
  %.b58.i = load i1, ptr @free_shared_memory.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i.if.then47.i_crit_edge, label %if.then.i, !prof !119

land.rhs.i.if.then47.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @free_shared_memory.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 9, ptr noundef null) #13
  br label %if.then47.i

if.then47.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then47.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @shared_memory_lock, i32 noundef %call2.i) #13
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #18
  br label %free_shared_memory.exit

if.end53.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %0, %alloc_size
  store i32 %sub.i, ptr @shared_memory_amount, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @shared_memory_lock, i32 noundef %call2.i) #13
  br label %free_shared_memory.exit

free_shared_memory.exit:                          ; preds = %if.end53.i, %if.then47.i
  tail call void @kvfree(ptr noundef nonnull %ptr) #13
  br label %return

return:                                           ; preds = %free_shared_memory.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_stat_round(ptr nocapture noundef readonly %s, ptr noundef %shared, ptr nocapture noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_flags = getelementptr inbounds %struct.dm_stat, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %stat_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stat_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %2 to i64
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i64 @ktime_get() #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %now.0 = phi i64 [ %conv, %if.then ], [ %call, %if.else ]
  %stamp = getelementptr inbounds %struct.dm_stat_shared, ptr %shared, i32 0, i32 1
  %3 = ptrtoint ptr %stamp to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %stamp, align 8
  %sub = sub i64 %now.0, %4
  call void @__sanitizer_cov_trace_cmp8(i64 %now.0, i64 %4)
  %tobool5.not = icmp eq i64 %now.0, %4
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shared, i32 noundef 4) #13
  %5 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %shared, align 4
  %arrayidx10 = getelementptr [2 x %struct.atomic_t], ptr %shared, i32 0, i32 1
  %call.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx10, i32 noundef 4) #13
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %if.end7.if.end15_crit_edge, label %if.then13

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %io_ticks = getelementptr inbounds %struct.dm_stat_percpu, ptr %p, i32 0, i32 4
  %9 = ptrtoint ptr %io_ticks to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %io_ticks, align 8
  %add = add i64 %10, %sub
  store i64 %add, ptr %io_ticks, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end7.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.end15.if.end21_crit_edge, label %if.then17

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx19 = getelementptr %struct.dm_stat_percpu, ptr %p, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx19, align 8
  %add20 = add i64 %12, %sub
  store i64 %add20, ptr %arrayidx19, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15.if.end21_crit_edge
  %add22 = add i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add22)
  %tobool23.not = icmp eq i32 %add22, 0
  br i1 %tobool23.not, label %if.end21.if.end29_crit_edge, label %if.then24

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %io_ticks_total = getelementptr inbounds %struct.dm_stat_percpu, ptr %p, i32 0, i32 5
  %13 = ptrtoint ptr %io_ticks_total to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %io_ticks_total, align 8
  %add25 = add i64 %14, %sub
  store i64 %add25, ptr %io_ticks_total, align 8
  %conv27 = zext i32 %add22 to i64
  %mul = mul i64 %sub, %conv27
  %time_in_queue = getelementptr inbounds %struct.dm_stat_percpu, ptr %p, i32 0, i32 6
  %15 = ptrtoint ptr %time_in_queue to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %time_in_queue, align 8
  %add28 = add i64 %16, %mul
  store i64 %add28, ptr %time_in_queue, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end21.if.end29_crit_edge
  %17 = ptrtoint ptr %stamp to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %now.0, ptr %stamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_consume_args(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_stats_create(ptr noundef %stats, i64 noundef %start, i64 noundef %end, i64 noundef %step, i32 noundef %stat_flags, i32 noundef %n_histogram_entries, ptr noundef %histogram_boundaries, ptr noundef %program_id, ptr noundef %aux_data, ptr noundef %md) unnamed_addr #0 align 64 {
entry:
  %_res = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp8(i64 %end, i64 %start)
  %cmp = icmp ult i64 %end, %start
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %step)
  %tobool.not = icmp eq i64 %step, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup211_crit_edge, label %if.end

entry.cleanup211_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end:                                           ; preds = %entry
  %sub = sub i64 %end, %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_res) #13
  %0 = ptrtoint ptr %_res to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %_res, align 8, !annotation !122
  %call = call i64 @div64_u64_rem(i64 noundef %sub, i64 noundef %step, ptr noundef nonnull %_res) #13
  %1 = ptrtoint ptr %_res to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %_res, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_res) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool1.not = icmp ne i64 %2, 0
  %inc = zext i1 %tobool1.not to i64
  %spec.select = add i64 %call, %inc
  %conv = trunc i64 %spec.select to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %spec.select)
  %3 = icmp ugt i64 %spec.select, 4294967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv)
  %tobool9.not = icmp eq i32 %conv, -1
  %or.cond1 = or i1 %3, %tobool9.not
  br i1 %or.cond1, label %if.end.cleanup211_crit_edge, label %if.end11

if.end.cleanup211_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end11:                                         ; preds = %if.end
  %4 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv, i32 120) #13
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %6, i32 104) #13
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %sub14 = add i32 %retval.0.i, -104
  %div = udiv i32 %sub14, 120
  %conv15 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %conv15)
  %cmp16.not = icmp eq i64 %spec.select, %conv15
  br i1 %cmp16.not, label %if.end19, label %if.end11.cleanup211_crit_edge

if.end11.cleanup211_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end19:                                         ; preds = %if.end11
  %mul = mul i32 %conv, 104
  %div21 = udiv i32 %mul, 104
  %conv22 = zext i32 %div21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %conv22)
  %cmp23.not = icmp eq i64 %spec.select, %conv22
  br i1 %cmp23.not, label %if.end26, label %if.end19.cleanup211_crit_edge

if.end19.cleanup211_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end26:                                         ; preds = %if.end19
  %add27 = add i32 %n_histogram_entries, 1
  %mul29 = shl i32 %add27, 3
  %mul30 = mul i32 %mul29, %conv
  %div32 = udiv i32 %mul30, %add27
  %mul34 = shl i32 %conv, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div32, i32 %mul34)
  %cmp35.not = icmp eq i32 %div32, %mul34
  br i1 %cmp35.not, label %if.end38, label %if.end26.cleanup211_crit_edge

if.end26.cleanup211_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end38:                                         ; preds = %if.end26
  %add39 = add i32 %retval.0.i, %mul30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %7) #13
  %add41 = add i32 %mul, %mul30
  %mul42 = mul i32 %call4.i.i, %add41
  %add43 = add i32 %add39, %mul42
  call void @_raw_spin_lock_irq(ptr noundef nonnull @shared_memory_lock) #13
  %8 = load i32, ptr @shared_memory_amount, align 4
  %add.i.i = add i32 %add43, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %8)
  %cmp.i.i = icmp ult i32 %add.i.i, %8
  br i1 %cmp.i.i, label %if.end38.check_shared_memory.exit.thread_crit_edge, label %if.end.i.i7

if.end38.check_shared_memory.exit.thread_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_shared_memory.exit.thread

if.end.i.i7:                                      ; preds = %if.end38
  %shr.i.i6 = lshr i32 %add.i.i, 12
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %9 = load volatile i32, ptr @_totalram_pages, align 4
  %div11.i.i = lshr i32 %9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i6, i32 %div11.i.i)
  %cmp1.i.i = icmp ugt i32 %shr.i.i6, %div11.i.i
  br i1 %cmp1.i.i, label %if.end.i.i7.check_shared_memory.exit.thread_crit_edge, label %check_shared_memory.exit

if.end.i.i7.check_shared_memory.exit.thread_crit_edge: ; preds = %if.end.i.i7
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_shared_memory.exit.thread

check_shared_memory.exit.thread:                  ; preds = %if.end.i.i7.check_shared_memory.exit.thread_crit_edge, %if.end38.check_shared_memory.exit.thread_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @shared_memory_lock) #13
  br label %cleanup211

check_shared_memory.exit:                         ; preds = %if.end.i.i7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %10 = load ptr, ptr @high_memory, align 4
  %11 = ptrtoint ptr %10 to i32
  %add4.not.i.i = sub i32 -8388609, %11
  %sub.i.i8 = lshr i32 %add4.not.i.i, 1
  %div512.i.i = and i32 %sub.i.i8, 2143289344
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %div512.i.i)
  %cmp6.i.i.not = icmp ugt i32 %add.i.i, %div512.i.i
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @shared_memory_lock) #13
  br i1 %cmp6.i.i.not, label %check_shared_memory.exit.cleanup211_crit_edge, label %if.end46

check_shared_memory.exit.cleanup211_crit_edge:    ; preds = %check_shared_memory.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end46:                                         ; preds = %check_shared_memory.exit
  %call47 = call fastcc ptr @dm_kvzalloc(i32 noundef %retval.0.i, i32 noundef -1)
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end46.cleanup211_crit_edge, label %if.end50

if.end46.cleanup211_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup211

if.end50:                                         ; preds = %if.end46
  %stat_flags51 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 2
  %12 = ptrtoint ptr %stat_flags51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %stat_flags, ptr %stat_flags51, align 4
  %n_entries53 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 3
  %13 = ptrtoint ptr %n_entries53 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %n_entries53, align 8
  %start54 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 4
  %14 = ptrtoint ptr %start54 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %start, ptr %start54, align 8
  %end55 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 5
  %15 = ptrtoint ptr %end55 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %end, ptr %end55, align 8
  %step56 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 6
  %16 = ptrtoint ptr %step56 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %step, ptr %step56, align 8
  %shared_alloc_size57 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 12
  %17 = ptrtoint ptr %shared_alloc_size57 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %shared_alloc_size57, align 8
  %percpu_alloc_size58 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 13
  %18 = ptrtoint ptr %percpu_alloc_size58 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %percpu_alloc_size58, align 4
  %histogram_alloc_size59 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 14
  %19 = ptrtoint ptr %histogram_alloc_size59 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul30, ptr %histogram_alloc_size59, align 8
  %n_histogram_entries60 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 7
  %20 = ptrtoint ptr %n_histogram_entries60 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %n_histogram_entries, ptr %n_histogram_entries60, align 8
  %mul62 = shl i32 %n_histogram_entries, 3
  %call63 = call ptr @kmemdup(ptr noundef %histogram_boundaries, i32 noundef %mul62, i32 noundef 3264) #13
  %histogram_boundaries64 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 8
  %21 = ptrtoint ptr %histogram_boundaries64 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call63, ptr %histogram_boundaries64, align 4
  %tobool66.not = icmp eq ptr %call63, null
  br i1 %tobool66.not, label %if.end50.out_crit_edge, label %if.end68

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end68:                                         ; preds = %if.end50
  %call69 = call noalias ptr @kstrdup(ptr noundef %program_id, i32 noundef 3264) #13
  %program_id70 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 9
  %22 = ptrtoint ptr %program_id70 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call69, ptr %program_id70, align 8
  %tobool72.not = icmp eq ptr %call69, null
  br i1 %tobool72.not, label %if.end68.out_crit_edge, label %if.end74

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end74:                                         ; preds = %if.end68
  %call75 = call noalias ptr @kstrdup(ptr noundef %aux_data, i32 noundef 3264) #13
  %aux_data76 = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 10
  %23 = ptrtoint ptr %aux_data76 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call75, ptr %aux_data76, align 4
  %tobool78.not = icmp eq ptr %call75, null
  br i1 %tobool78.not, label %if.end74.out_crit_edge, label %for.cond.preheader

if.end74.out_crit_edge:                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond.preheader:                               ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select)
  %cmp8219.not = icmp eq i64 %spec.select, 0
  br i1 %cmp8219.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ni.020 = phi i32 [ %inc89, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dm_stat, ptr %call47, i32 0, i32 16, i32 %ni.020
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #13
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %arrayidx, align 4
  %arrayidx88 = getelementptr [2 x %struct.atomic_t], ptr %arrayidx, i32 0, i32 1
  %call.i.i5 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx88, i32 noundef 4) #13
  %25 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %arrayidx88, align 4
  %inc89 = add i32 %ni.020, 1
  %conv81 = zext i32 %inc89 to i64
  %cmp82 = icmp ugt i64 %spec.select, %conv81
  br i1 %cmp82, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %26 = ptrtoint ptr %n_histogram_entries60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_histogram_entries60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool91.not = icmp eq i32 %27, 0
  br i1 %tobool91.not, label %for.end.if.end111_crit_edge, label %if.then92

for.end.if.end111_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

if.then92:                                        ; preds = %for.end
  %28 = ptrtoint ptr %histogram_alloc_size59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %histogram_alloc_size59, align 8
  %call94 = call fastcc ptr @dm_kvzalloc(i32 noundef %29, i32 noundef -1)
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %if.then92.out_crit_edge, label %for.cond98.preheader

if.then92.out_crit_edge:                          ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond98.preheader:                             ; preds = %if.then92
  br i1 %cmp8219.not, label %for.cond98.preheader.if.end111_crit_edge, label %for.cond98.preheader.for.body102_crit_edge

for.cond98.preheader.for.body102_crit_edge:       ; preds = %for.cond98.preheader
  br label %for.body102

for.cond98.preheader.if.end111_crit_edge:         ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %for.cond98.preheader.for.body102_crit_edge
  %hi.023 = phi ptr [ %add.ptr, %for.body102.for.body102_crit_edge ], [ %call94, %for.cond98.preheader.for.body102_crit_edge ]
  %ni.122 = phi i32 [ %inc109, %for.body102.for.body102_crit_edge ], [ 0, %for.cond98.preheader.for.body102_crit_edge ]
  %histogram = getelementptr %struct.dm_stat, ptr %call47, i32 0, i32 16, i32 %ni.122, i32 2, i32 7
  %30 = ptrtoint ptr %histogram to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %hi.023, ptr %histogram, align 8
  %31 = ptrtoint ptr %n_histogram_entries60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_histogram_entries60, align 8
  %add107 = add i32 %32, 1
  %add.ptr = getelementptr i64, ptr %hi.023, i32 %add107
  %inc109 = add i32 %ni.122, 1
  %conv99 = zext i32 %inc109 to i64
  %cmp100 = icmp ugt i64 %spec.select, %conv99
  br i1 %cmp100, label %for.body102.for.body102_crit_edge, label %for.body102.if.end111_crit_edge

for.body102.if.end111_crit_edge:                  ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body102

if.end111:                                        ; preds = %for.body102.if.end111_crit_edge, %for.cond98.preheader.if.end111_crit_edge, %for.end.if.end111_crit_edge
  %call11327 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %33 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11327, i32 %33)
  %cmp11428 = icmp ult i32 %call11327, %33
  br i1 %cmp11428, label %if.end111.for.body116_crit_edge, label %if.end111.for.end148_crit_edge

if.end111.for.end148_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end148

if.end111.for.body116_crit_edge:                  ; preds = %if.end111
  br label %for.body116

for.body116:                                      ; preds = %if.end147.for.body116_crit_edge, %if.end111.for.body116_crit_edge
  %call11329 = phi i32 [ %call113, %if.end147.for.body116_crit_edge ], [ %call11327, %if.end111.for.body116_crit_edge ]
  %call117 = call fastcc ptr @dm_kvzalloc(i32 noundef %mul, i32 noundef 0)
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %for.body116.out_crit_edge, label %if.end120

for.body116.out_crit_edge:                        ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end120:                                        ; preds = %for.body116
  %arrayidx121 = getelementptr %struct.dm_stat, ptr %call47, i32 0, i32 15, i32 %call11329
  %34 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call117, ptr %arrayidx121, align 4
  %35 = ptrtoint ptr %n_histogram_entries60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_histogram_entries60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool123.not = icmp eq i32 %36, 0
  br i1 %tobool123.not, label %if.end120.if.end147_crit_edge, label %if.then124

if.end120.if.end147_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

if.then124:                                       ; preds = %if.end120
  %37 = ptrtoint ptr %histogram_alloc_size59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %histogram_alloc_size59, align 8
  %call127 = call fastcc ptr @dm_kvzalloc(i32 noundef %38, i32 noundef 0)
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %if.then124.out_crit_edge, label %for.cond131.preheader

if.then124.out_crit_edge:                         ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond131.preheader:                            ; preds = %if.then124
  br i1 %cmp8219.not, label %for.cond131.preheader.if.end147_crit_edge, label %for.body135.lr.ph

for.cond131.preheader.if.end147_crit_edge:        ; preds = %for.cond131.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

for.body135.lr.ph:                                ; preds = %for.cond131.preheader
  %39 = ptrtoint ptr %n_histogram_entries60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_histogram_entries60, align 8
  %add139 = add i32 %40, 1
  br label %for.body135

for.body135:                                      ; preds = %for.body135.for.body135_crit_edge, %for.body135.lr.ph
  %hi125.026 = phi ptr [ %call127, %for.body135.lr.ph ], [ %add.ptr140, %for.body135.for.body135_crit_edge ]
  %ni.225 = phi i32 [ 0, %for.body135.lr.ph ], [ %inc142, %for.body135.for.body135_crit_edge ]
  %histogram137 = getelementptr %struct.dm_stat_percpu, ptr %call117, i32 %ni.225, i32 7
  %41 = ptrtoint ptr %histogram137 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %hi125.026, ptr %histogram137, align 8
  %add.ptr140 = getelementptr i64, ptr %hi125.026, i32 %add139
  %inc142 = add i32 %ni.225, 1
  %conv132 = zext i32 %inc142 to i64
  %cmp133 = icmp ugt i64 %spec.select, %conv132
  br i1 %cmp133, label %for.body135.for.body135_crit_edge, label %for.body135.if.end147_crit_edge

for.body135.if.end147_crit_edge:                  ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

for.body135.for.body135_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body135

if.end147:                                        ; preds = %for.body135.if.end147_crit_edge, %for.cond131.preheader.if.end147_crit_edge, %if.end120.if.end147_crit_edge
  %call113 = call i32 @cpumask_next(i32 noundef %call11329, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %cmp114 = icmp ult i32 %call113, %42
  br i1 %cmp114, label %if.end147.for.body116_crit_edge, label %if.end147.for.end148_crit_edge

if.end147.for.end148_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end148

if.end147.for.body116_crit_edge:                  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body116

for.end148:                                       ; preds = %if.end147.for.end148_crit_edge, %if.end111.for.end148_crit_edge
  call void @dm_internal_suspend_fast(ptr noundef %md) #13
  call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #13
  %id = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 1
  %43 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %id, align 8
  %list = getelementptr inbounds %struct.dm_stats, ptr %stats, i32 0, i32 1
  %44 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %44)
  %l.030 = load ptr, ptr %list, align 4
  %cmp.i.not31 = icmp eq ptr %l.030, %list
  br i1 %cmp.i.not31, label %for.end148.for.end207_crit_edge, label %for.end148.for.body153_crit_edge

for.end148.for.body153_crit_edge:                 ; preds = %for.end148
  br label %for.body153

for.end148.for.end207_crit_edge:                  ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end207

for.body153:                                      ; preds = %if.end202.for.body153_crit_edge, %for.end148.for.body153_crit_edge
  %45 = phi i32 [ %inc204, %if.end202.for.body153_crit_edge ], [ 0, %for.end148.for.body153_crit_edge ]
  %l.032 = phi ptr [ %l.0, %if.end202.for.body153_crit_edge ], [ %l.030, %for.end148.for.body153_crit_edge ]
  %id156 = getelementptr inbounds %struct.dm_stat, ptr %l.032, i32 0, i32 1
  %46 = ptrtoint ptr %id156 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id156, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp158 = icmp slt i32 %47, %45
  br i1 %cmp158, label %do.end, label %if.end185, !prof !120

do.end:                                           ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 365, i32 noundef 9, ptr noundef null) #13
  br label %out_unlock_resume

if.end185:                                        ; preds = %for.body153
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp188 = icmp sgt i32 %47, %45
  br i1 %cmp188, label %if.end185.for.end207_crit_edge, label %if.end191

if.end185.for.end207_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end207

if.end191:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %45)
  %cmp193 = icmp eq i32 %45, 2147483647
  br i1 %cmp193, label %if.end191.out_unlock_resume_crit_edge, label %if.end202, !prof !120

if.end191.out_unlock_resume_crit_edge:            ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock_resume

if.end202:                                        ; preds = %if.end191
  %inc204 = add nuw nsw i32 %45, 1
  %48 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %inc204, ptr %id, align 8
  %49 = ptrtoint ptr %l.032 to i32
  call void @__asan_load4_noabort(i32 %49)
  %l.0 = load ptr, ptr %l.032, align 4
  %cmp.i.not = icmp eq ptr %l.0, %list
  br i1 %cmp.i.not, label %if.end202.for.end207_crit_edge, label %if.end202.for.body153_crit_edge

if.end202.for.body153_crit_edge:                  ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body153

if.end202.for.end207_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end207

for.end207:                                       ; preds = %if.end202.for.end207_crit_edge, %if.end185.for.end207_crit_edge, %for.end148.for.end207_crit_edge
  %l.0.lcssa = phi ptr [ %list, %for.end148.for.end207_crit_edge ], [ %l.032, %if.end185.for.end207_crit_edge ], [ %list, %if.end202.for.end207_crit_edge ]
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 8
  call fastcc void @list_add_tail_rcu(ptr noundef nonnull %call47, ptr noundef %l.0.lcssa)
  call void @mutex_unlock(ptr noundef %stats) #13
  call void @dm_internal_resume_fast(ptr noundef %md) #13
  br label %cleanup211

out_unlock_resume:                                ; preds = %if.end191.out_unlock_resume_crit_edge, %do.end
  %r.5 = phi i32 [ -22, %do.end ], [ -23, %if.end191.out_unlock_resume_crit_edge ]
  call void @mutex_unlock(ptr noundef %stats) #13
  call void @dm_internal_resume_fast(ptr noundef %md) #13
  br label %out

out:                                              ; preds = %out_unlock_resume, %if.then124.out_crit_edge, %for.body116.out_crit_edge, %if.then92.out_crit_edge, %if.end74.out_crit_edge, %if.end68.out_crit_edge, %if.end50.out_crit_edge
  %r.6 = phi i32 [ %r.5, %out_unlock_resume ], [ -12, %if.end50.out_crit_edge ], [ -12, %if.end68.out_crit_edge ], [ -12, %if.end74.out_crit_edge ], [ -12, %if.then92.out_crit_edge ], [ -12, %for.body116.out_crit_edge ], [ -12, %if.then124.out_crit_edge ]
  %callback_head = getelementptr inbounds %struct.dm_stat, ptr %call47, i32 0, i32 11
  call void @dm_stat_free(ptr noundef %callback_head)
  br label %cleanup211

cleanup211:                                       ; preds = %out, %for.end207, %if.end46.cleanup211_crit_edge, %check_shared_memory.exit.cleanup211_crit_edge, %check_shared_memory.exit.thread, %if.end26.cleanup211_crit_edge, %if.end19.cleanup211_crit_edge, %if.end11.cleanup211_crit_edge, %if.end.cleanup211_crit_edge, %entry.cleanup211_crit_edge
  %retval.0 = phi i32 [ %r.6, %out ], [ %51, %for.end207 ], [ -22, %entry.cleanup211_crit_edge ], [ -75, %if.end.cleanup211_crit_edge ], [ -75, %if.end11.cleanup211_crit_edge ], [ -75, %if.end19.cleanup211_crit_edge ], [ -75, %if.end26.cleanup211_crit_edge ], [ -12, %check_shared_memory.exit.cleanup211_crit_edge ], [ -12, %if.end46.cleanup211_crit_edge ], [ -12, %check_shared_memory.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_internal_suspend_fast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_internal_resume_fast(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @dm_kvzalloc(i32 noundef %alloc_size, i32 noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @shared_memory_lock) #13
  %0 = load i32, ptr @shared_memory_amount, align 4
  %add.i.i = add i32 %0, %alloc_size
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %0)
  %cmp.i.i = icmp ult i32 %add.i.i, %0
  br i1 %cmp.i.i, label %entry.claim_shared_memory.exit.thread_crit_edge, label %if.end.i.i

entry.claim_shared_memory.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %claim_shared_memory.exit.thread

if.end.i.i:                                       ; preds = %entry
  %shr.i.i = lshr i32 %add.i.i, 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  %div11.i.i = lshr i32 %1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %div11.i.i)
  %cmp1.i.i = icmp ugt i32 %shr.i.i, %div11.i.i
  br i1 %cmp1.i.i, label %if.end.i.i.claim_shared_memory.exit.thread_crit_edge, label %__check_shared_memory.exit.i

if.end.i.i.claim_shared_memory.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %claim_shared_memory.exit.thread

__check_shared_memory.exit.i:                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %2 = load ptr, ptr @high_memory, align 4
  %3 = ptrtoint ptr %2 to i32
  %add4.not.i.i = sub i32 -8388609, %3
  %sub.i.i = lshr i32 %add4.not.i.i, 1
  %div512.i.i = and i32 %sub.i.i, 2143289344
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %div512.i.i)
  %cmp6.i.not.i = icmp ugt i32 %add.i.i, %div512.i.i
  br i1 %cmp6.i.not.i, label %__check_shared_memory.exit.i.claim_shared_memory.exit.thread_crit_edge, label %if.end

__check_shared_memory.exit.i.claim_shared_memory.exit.thread_crit_edge: ; preds = %__check_shared_memory.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %claim_shared_memory.exit.thread

claim_shared_memory.exit.thread:                  ; preds = %__check_shared_memory.exit.i.claim_shared_memory.exit.thread_crit_edge, %if.end.i.i.claim_shared_memory.exit.thread_crit_edge, %entry.claim_shared_memory.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @shared_memory_lock) #13
  br label %cleanup

if.end:                                           ; preds = %__check_shared_memory.exit.i
  %4 = load i32, ptr @shared_memory_amount, align 4
  %add.i = add i32 %4, %alloc_size
  store i32 %add.i, ptr @shared_memory_amount, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @shared_memory_lock) #13
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %alloc_size, i32 noundef 527808, i32 noundef %node) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @shared_memory_lock) #13
  %5 = load i32, ptr @shared_memory_amount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %alloc_size)
  %cmp5.i = icmp ult i32 %5, %alloc_size
  br i1 %cmp5.i, label %land.rhs.i, label %if.end53.i

land.rhs.i:                                       ; preds = %if.end3
  %.b58.i = load i1, ptr @free_shared_memory.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i.if.then47.i_crit_edge, label %if.then.i, !prof !119

land.rhs.i.if.then47.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @free_shared_memory.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 9, ptr noundef null) #13
  br label %if.then47.i

if.then47.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then47.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @shared_memory_lock, i32 noundef %call2.i) #13
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #18
  br label %cleanup

if.end53.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %5, %alloc_size
  store i32 %sub.i, ptr @shared_memory_amount, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @shared_memory_lock, i32 noundef %call2.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end53.i, %if.then47.i, %if.end.cleanup_crit_edge, %claim_shared_memory.exit.thread
  %retval.0 = phi ptr [ %call.i, %if.end.cleanup_crit_edge ], [ null, %claim_shared_memory.exit.thread ], [ null, %if.then47.i ], [ null, %if.end53.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #13
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !133
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %1, align 4
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_expedited() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dm_stat_clear(ptr noundef %s, i32 noundef %idx_start, i32 noundef %idx_end, i1 noundef zeroext %init_tmp_percpu_totals) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %idx_start, i32 %idx_end)
  %cmp146 = icmp ult i32 %idx_start, %idx_end
  br i1 %cmp146, label %for.body.lr.ph, label %entry.for.end103_crit_edge

entry.for.end103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end103

for.body.lr.ph:                                   ; preds = %entry
  %n_histogram_entries = getelementptr inbounds %struct.dm_stat, ptr %s, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc101.for.body_crit_edge, %for.body.lr.ph
  %x.0147 = phi i32 [ %idx_start, %for.body.lr.ph ], [ %inc102, %for.inc101.for.body_crit_edge ]
  br i1 %init_tmp_percpu_totals, label %if.then, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147
  tail call fastcc void @__dm_stat_init_temporary_percpu_totals(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %x.0147)
  br label %do.body

do.body:                                          ; preds = %if.then, %for.body.do.body_crit_edge
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !127
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !134
  br i1 %tobool1.not, label %if.then4, label %do.body.if.end5_crit_edge

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.body.if.end5_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !109) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx7 = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 15, i32 %4
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147
  %tmp = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tmp, align 8
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx8, align 8
  %sub = sub i64 %10, %8
  store i64 %sub, ptr %arrayidx8, align 8
  %arrayidx14 = getelementptr [2 x i64], ptr %tmp, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr [2 x i64], ptr %arrayidx8, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx16, align 8
  %sub17 = sub i64 %14, %12
  store i64 %sub17, ptr %arrayidx16, align 8
  %ios = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 1
  %15 = ptrtoint ptr %ios to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ios, align 8
  %ios20 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147, i32 1
  %17 = ptrtoint ptr %ios20 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ios20, align 8
  %sub22 = sub i64 %18, %16
  store i64 %sub22, ptr %ios20, align 8
  %arrayidx25 = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx25, align 8
  %arrayidx27 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx27, align 8
  %sub28 = sub i64 %22, %20
  store i64 %sub28, ptr %arrayidx27, align 8
  %merges = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 2
  %23 = ptrtoint ptr %merges to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %merges, align 8
  %merges31 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147, i32 2
  %25 = ptrtoint ptr %merges31 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %merges31, align 8
  %sub33 = sub i64 %26, %24
  store i64 %sub33, ptr %merges31, align 8
  %arrayidx36 = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx36, align 8
  %arrayidx38 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx38, align 8
  %sub39 = sub i64 %30, %28
  store i64 %sub39, ptr %arrayidx38, align 8
  %ticks = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 3
  %31 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ticks, align 8
  %ticks42 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147, i32 3
  %33 = ptrtoint ptr %ticks42 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ticks42, align 8
  %sub44 = sub i64 %34, %32
  store i64 %sub44, ptr %ticks42, align 8
  %arrayidx47 = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147, i32 3, i32 1
  %37 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx49, align 8
  %sub50 = sub i64 %38, %36
  store i64 %sub50, ptr %arrayidx49, align 8
  %io_ticks = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 4
  %39 = ptrtoint ptr %io_ticks to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %io_ticks, align 8
  %io_ticks53 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147, i32 4
  %41 = ptrtoint ptr %io_ticks53 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %io_ticks53, align 8
  %sub55 = sub i64 %42, %40
  store i64 %sub55, ptr %io_ticks53, align 8
  %arrayidx58 = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 4, i32 1
  %43 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx58, align 8
  %arrayidx60 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147, i32 4, i32 1
  %45 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx60, align 8
  %sub61 = sub i64 %46, %44
  store i64 %sub61, ptr %arrayidx60, align 8
  %io_ticks_total = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 5
  %47 = ptrtoint ptr %io_ticks_total to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %io_ticks_total, align 8
  %io_ticks_total63 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147, i32 5
  %49 = ptrtoint ptr %io_ticks_total63 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %io_ticks_total63, align 8
  %sub64 = sub i64 %50, %48
  store i64 %sub64, ptr %io_ticks_total63, align 8
  %time_in_queue = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 6
  %51 = ptrtoint ptr %time_in_queue to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %time_in_queue, align 8
  %time_in_queue66 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x.0147, i32 6
  %53 = ptrtoint ptr %time_in_queue66 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %time_in_queue66, align 8
  %sub67 = sub i64 %54, %52
  store i64 %sub67, ptr %time_in_queue66, align 8
  tail call void @trace_hardirqs_on() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !135
  %55 = ptrtoint ptr %n_histogram_entries to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_histogram_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool71.not = icmp eq i32 %56, 0
  br i1 %tobool71.not, label %if.end5.for.inc101_crit_edge, label %for.cond73.preheader

if.end5.for.inc101_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc101

for.cond73.preheader:                             ; preds = %if.end5
  %57 = ptrtoint ptr %n_histogram_entries to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_histogram_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp75144.not = icmp eq i32 %58, -1
  br i1 %cmp75144.not, label %for.cond73.preheader.for.inc101_crit_edge, label %do.body77.lr.ph

for.cond73.preheader.for.inc101_crit_edge:        ; preds = %for.cond73.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc101

do.body77.lr.ph:                                  ; preds = %for.cond73.preheader
  %histogram = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 16, i32 %x.0147, i32 2, i32 7
  br label %do.body77

do.body77:                                        ; preds = %if.end84.do.body77_crit_edge, %do.body77.lr.ph
  %i.0145 = phi i32 [ 0, %do.body77.lr.ph ], [ %inc, %if.end84.do.body77_crit_edge ]
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !127
  %and.i.i142 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i142)
  %tobool80.not = icmp eq i32 %and.i.i142, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !134
  br i1 %tobool80.not, label %if.then83, label %do.body77.if.end84_crit_edge

do.body77.if.end84_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then83:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %do.body77.if.end84_crit_edge
  %60 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu, align 4
  %arrayidx90 = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 15, i32 %61
  %62 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx90, align 4
  %64 = ptrtoint ptr %histogram to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %histogram, align 8
  %arrayidx93 = getelementptr i64, ptr %65, i32 %i.0145
  %66 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx93, align 8
  %histogram94 = getelementptr %struct.dm_stat_percpu, ptr %63, i32 %x.0147, i32 7
  %68 = ptrtoint ptr %histogram94 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %histogram94, align 8
  %arrayidx95 = getelementptr i64, ptr %69, i32 %i.0145
  %70 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx95, align 8
  %sub96 = sub i64 %71, %67
  store i64 %sub96, ptr %arrayidx95, align 8
  tail call void @trace_hardirqs_on() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !135
  %inc = add nuw i32 %i.0145, 1
  %72 = ptrtoint ptr %n_histogram_entries to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_histogram_entries, align 8
  %add = add i32 %73, 1
  %cmp75 = icmp ult i32 %inc, %add
  br i1 %cmp75, label %if.end84.do.body77_crit_edge, label %if.end84.for.inc101_crit_edge

if.end84.for.inc101_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc101

if.end84.do.body77_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

for.inc101:                                       ; preds = %if.end84.for.inc101_crit_edge, %for.cond73.preheader.for.inc101_crit_edge, %if.end5.for.inc101_crit_edge
  %inc102 = add nuw i32 %x.0147, 1
  %exitcond.not = icmp eq i32 %inc102, %idx_end
  br i1 %exitcond.not, label %for.inc101.for.end103_crit_edge, label %for.inc101.for.body_crit_edge

for.inc101.for.body_crit_edge:                    ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc101.for.end103_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end103

for.end103:                                       ; preds = %for.inc101.for.end103_crit_edge, %entry.for.end103_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dm_stat_init_temporary_percpu_totals(ptr noundef %shared, ptr nocapture noundef readonly %s, i32 noundef %x) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !127
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !134
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !109) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu3, align 4
  %arrayidx = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 15, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.dm_stat_percpu, ptr %6, i32 %x
  tail call fastcc void @dm_stat_round(ptr noundef %s, ptr noundef %shared, ptr noundef %arrayidx4)
  tail call void @trace_hardirqs_on() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !135
  %tmp = getelementptr inbounds %struct.dm_stat_shared, ptr %shared, i32 0, i32 2
  %arrayidx11 = getelementptr %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 0, i32 1
  %ios = getelementptr inbounds %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 1
  %arrayidx16 = getelementptr %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 1, i32 1
  %merges = getelementptr inbounds %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 2
  %arrayidx21 = getelementptr %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 2, i32 1
  %ticks = getelementptr inbounds %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 3
  %arrayidx26 = getelementptr %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 3, i32 1
  %io_ticks = getelementptr inbounds %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 4
  %arrayidx31 = getelementptr %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 4, i32 1
  %io_ticks_total = getelementptr inbounds %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 5
  %time_in_queue = getelementptr inbounds %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 6
  %n_histogram_entries = getelementptr inbounds %struct.dm_stat, ptr %s, i32 0, i32 7
  %7 = call ptr @memset(ptr %tmp, i32 0, i32 96)
  %8 = ptrtoint ptr %n_histogram_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_histogram_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool34.not = icmp eq i32 %9, 0
  br i1 %tobool34.not, label %if.end.if.end38_crit_edge, label %if.then35

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %histogram = getelementptr inbounds %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %histogram to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %histogram, align 8
  %add = shl i32 %9, 3
  %mul = add i32 %add, 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 %mul)
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end.if.end38_crit_edge
  %call39233 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call39233, i32 %13)
  %cmp234 = icmp ult i32 %call39233, %13
  br i1 %cmp234, label %for.body.lr.ph, label %if.end38.for.end178_crit_edge

if.end38.for.end178_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end178

for.body.lr.ph:                                   ; preds = %if.end38
  %histogram174 = getelementptr inbounds %struct.dm_stat_shared, ptr %shared, i32 0, i32 2, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end177.for.body_crit_edge, %for.body.lr.ph
  %call39235 = phi i32 [ %call39233, %for.body.lr.ph ], [ %call39, %if.end177.for.body_crit_edge ]
  %arrayidx41 = getelementptr %struct.dm_stat, ptr %s, i32 0, i32 15, i32 %call39235
  %14 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx41, align 4
  %arrayidx42 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load volatile i64, ptr %arrayidx42, align 8
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tmp, align 8
  %add52 = add i64 %19, %17
  store i64 %add52, ptr %tmp, align 8
  %arrayidx58 = getelementptr [2 x i64], ptr %arrayidx42, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load volatile i64, ptr %arrayidx58, align 8
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx11, align 8
  %add62 = add i64 %23, %21
  store i64 %add62, ptr %arrayidx11, align 8
  %ios67 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 1
  %24 = ptrtoint ptr %ios67 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load volatile i64, ptr %ios67, align 8
  %26 = ptrtoint ptr %ios to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ios, align 8
  %add72 = add i64 %27, %25
  store i64 %add72, ptr %ios, align 8
  %arrayidx78 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load volatile i64, ptr %arrayidx78, align 8
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx16, align 8
  %add82 = add i64 %31, %29
  store i64 %add82, ptr %arrayidx16, align 8
  %merges87 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 2
  %32 = ptrtoint ptr %merges87 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load volatile i64, ptr %merges87, align 8
  %34 = ptrtoint ptr %merges to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %merges, align 8
  %add92 = add i64 %35, %33
  store i64 %add92, ptr %merges, align 8
  %arrayidx98 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load volatile i64, ptr %arrayidx98, align 8
  %38 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx21, align 8
  %add102 = add i64 %39, %37
  store i64 %add102, ptr %arrayidx21, align 8
  %ticks107 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 3
  %40 = ptrtoint ptr %ticks107 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load volatile i64, ptr %ticks107, align 8
  %42 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ticks, align 8
  %add112 = add i64 %43, %41
  store i64 %add112, ptr %ticks, align 8
  %arrayidx118 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 3, i32 1
  %44 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load volatile i64, ptr %arrayidx118, align 8
  %46 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx26, align 8
  %add122 = add i64 %47, %45
  store i64 %add122, ptr %arrayidx26, align 8
  %io_ticks127 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 4
  %48 = ptrtoint ptr %io_ticks127 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load volatile i64, ptr %io_ticks127, align 8
  %50 = ptrtoint ptr %io_ticks to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %io_ticks, align 8
  %add132 = add i64 %51, %49
  store i64 %add132, ptr %io_ticks, align 8
  %arrayidx138 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 4, i32 1
  %52 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load volatile i64, ptr %arrayidx138, align 8
  %54 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx31, align 8
  %add142 = add i64 %55, %53
  store i64 %add142, ptr %arrayidx31, align 8
  %io_ticks_total147 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 5
  %56 = ptrtoint ptr %io_ticks_total147 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load volatile i64, ptr %io_ticks_total147, align 8
  %58 = ptrtoint ptr %io_ticks_total to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %io_ticks_total, align 8
  %add150 = add i64 %59, %57
  store i64 %add150, ptr %io_ticks_total, align 8
  %time_in_queue155 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 6
  %60 = ptrtoint ptr %time_in_queue155 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load volatile i64, ptr %time_in_queue155, align 8
  %62 = ptrtoint ptr %time_in_queue to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %time_in_queue, align 8
  %add158 = add i64 %63, %61
  store i64 %add158, ptr %time_in_queue, align 8
  %64 = ptrtoint ptr %n_histogram_entries to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n_histogram_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool160.not = icmp eq i32 %65, 0
  br i1 %tobool160.not, label %for.body.if.end177_crit_edge, label %for.cond162.preheader

for.body.if.end177_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

for.cond162.preheader:                            ; preds = %for.body
  %66 = ptrtoint ptr %n_histogram_entries to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_histogram_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp165231.not = icmp eq i32 %67, -1
  br i1 %cmp165231.not, label %for.cond162.preheader.if.end177_crit_edge, label %do.end169.lr.ph

for.cond162.preheader.if.end177_crit_edge:        ; preds = %for.cond162.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

do.end169.lr.ph:                                  ; preds = %for.cond162.preheader
  %histogram171 = getelementptr %struct.dm_stat_percpu, ptr %15, i32 %x, i32 7
  br label %do.end169

do.end169:                                        ; preds = %do.end169.do.end169_crit_edge, %do.end169.lr.ph
  %i.0232 = phi i32 [ 0, %do.end169.lr.ph ], [ %inc, %do.end169.do.end169_crit_edge ]
  %68 = ptrtoint ptr %histogram171 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %histogram171, align 8
  %arrayidx172 = getelementptr i64, ptr %69, i32 %i.0232
  %70 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load volatile i64, ptr %arrayidx172, align 8
  %72 = ptrtoint ptr %histogram174 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %histogram174, align 8
  %arrayidx175 = getelementptr i64, ptr %73, i32 %i.0232
  %74 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx175, align 8
  %add176 = add i64 %75, %71
  store i64 %add176, ptr %arrayidx175, align 8
  %inc = add nuw i32 %i.0232, 1
  %76 = ptrtoint ptr %n_histogram_entries to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_histogram_entries, align 8
  %add164 = add i32 %77, 1
  %cmp165 = icmp ult i32 %inc, %add164
  br i1 %cmp165, label %do.end169.do.end169_crit_edge, label %do.end169.if.end177_crit_edge

do.end169.if.end177_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

do.end169.do.end169_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end169

if.end177:                                        ; preds = %do.end169.if.end177_crit_edge, %for.cond162.preheader.if.end177_crit_edge, %for.body.if.end177_crit_edge
  %call39 = tail call i32 @cpumask_next(i32 noundef %call39235, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %78 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call39, %78
  br i1 %cmp, label %if.end177.for.body_crit_edge, label %if.end177.for.end178_crit_edge

if.end177.for.end178_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end178

if.end177.for.body_crit_edge:                     ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end178:                                       ; preds = %if.end177.for.end178_crit_edge, %if.end38.for.end178_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108}
!llvm.named.register.sp = !{!109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @dm_stats_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-stats.c", i32 196, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/md/dm-stats.c", i32 217, i32 8}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/md/dm-stats.c", i32 218, i32 5}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dm_stats_cleanup._entry, !6, !"_entry", i1 false, i1 false}
!9 = !{ptr @dm_stats_cleanup._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-stats.c", i32 655, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-stats.c", i32 1170, i32 27}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-stats.c", i32 1172, i32 32}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-stats.c", i32 1174, i32 32}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-stats.c", i32 1176, i32 32}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-stats.c", i32 1178, i32 32}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-stats.c", i32 1180, i32 32}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-stats.c", i32 1182, i32 32}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-stats.c", i32 1188, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dm_stats_message._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @dm_stats_message._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-stats.c", i32 1205, i32 3}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dm_statistics_exit._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @dm_statistics_exit._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__param_stats_current_allocated_bytes, !38, !"__param_stats_current_allocated_bytes", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-stats.c", i32 1208, i32 1}
!39 = !{ptr @__UNIQUE_ID_stats_current_allocated_bytestype355, !38, !"__UNIQUE_ID_stats_current_allocated_bytestype355", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_stats_current_allocated_bytes356, !41, !"__UNIQUE_ID_stats_current_allocated_bytes356", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-stats.c", i32 1209, i32 1}
!42 = !{ptr @dm_stat_need_rcu_barrier, !43, !"dm_stat_need_rcu_barrier", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-stats.c", i32 19, i32 12}
!44 = !{ptr @shared_memory_amount, !45, !"shared_memory_amount", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-stats.c", i32 79, i32 22}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-stats.c", i32 132, i32 6}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-stats.c", i32 134, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @free_shared_memory._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @free_shared_memory._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-stats.c", i32 77, i32 8}
!55 = !{ptr @shared_memory_lock, !54, !"shared_memory_lock", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/md/dm-stats.c", i32 607, i32 7}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/md/dm-stats.c", i32 608, i32 4}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @__dm_stat_bio._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @__dm_stat_bio._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!69 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/dm-stats.c", i32 976, i32 17}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/md/dm-stats.c", i32 981, i32 23}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/md/dm-stats.c", i32 990, i32 16}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/dm-stats.c", i32 998, i32 23}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/md/dm-stats.c", i32 1004, i32 21}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/md/dm-stats.c", i32 1009, i32 23}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/md/dm-stats.c", i32 1011, i32 29}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/md/dm-stats.c", i32 1043, i32 27}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/md/dm-stats.c", i32 1078, i32 22}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/md/dm-stats.c", i32 458, i32 4}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/md/dm-stats.c", i32 465, i32 5}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/dm-stats.c", i32 468, i32 5}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/md/dm-stats.c", i32 471, i32 7}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-stats.c", i32 472, i32 6}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/md/dm-stats.c", i32 475, i32 4}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/md/dm-stats.c", i32 1138, i32 23}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/md/dm-stats.c", i32 842, i32 3}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/md/dm-stats.c", i32 861, i32 5}
!106 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @__param_str_stats_current_allocated_bytes, !38, !"__param_str_stats_current_allocated_bytes", i1 false, i1 false}
!109 = !{!"sp"}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 2149945284}
!122 = !{!"auto-init"}
!123 = !{i64 1016526, i64 1016587}
!124 = !{i64 2148611846, i64 2148611872, i64 2148611901, i64 2148611935, i64 2148611966, i64 2148611989}
!125 = !{i64 2148614311, i64 2148614337, i64 2148614366, i64 2148614400, i64 2148614431, i64 2148614454}
!126 = !{i8 0, i8 2}
!127 = !{i64 1019258}
!128 = !{i64 1019543}
!129 = !{i64 2149945550}
!130 = !{i64 2148461631, i64 2148461911, i64 2148462245, i64 2148462579}
!131 = distinct !{!131, !132}
!132 = !{!"llvm.loop.peeled.count", i32 1}
!133 = !{i64 2151447796}
!134 = !{i64 1016961}
!135 = !{i64 1016771}
